// Copyright (c) 2015, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'base_api_library.dart';
import 'dart_comments.dart';
import 'dart_resources.dart';
import 'dart_schemas.dart';
import 'generated_googleapis/discovery/v1.dart';
import 'namer.dart';
import 'shared_output.dart';
import 'type_deduplicate.dart';

const ignoreForFileSet = {
  // violated by `container` v1 API,
  'camel_case_types',
  // Can remove when https://github.com/dart-lang/linter/issues/2442 is fixed!
  'comment_references',
  'deprecated_member_use_from_same_package',
  // Need to find-replace these in comment refs
  'doc_directive_unknown',
  'lines_longer_than_80_chars',
  'non_constant_identifier_names',
  'prefer_interpolation_to_compose_strings',
  // Lots of violations in generated doc comments
  'unintended_html_in_doc_comment',
  'unnecessary_brace_in_string_interps',
  'unnecessary_lambdas',
  'unnecessary_string_interpolations',
};

String ignoreForFileComments(Iterable<String> ignores) =>
    (ignores.toList()..sort()).map((e) => '// ignore_for_file: $e').join('\n');

/// Encapsulates names of prefix-imported libraries.
class DartApiImports {
  final ApiLibraryNamer namer;

  final Identifier core;
  final Identifier collection;
  final Identifier async;
  final Identifier convert;
  final Identifier http;
  final Identifier commons;

  DartApiImports.fromNamer(this.namer, {bool useCorePrefixes = true})
    : core = useCorePrefixes ? namer.import('core') : namer.noPrefix(),
      collection = namer.import('collection'),
      async = useCorePrefixes ? namer.import('async') : namer.noPrefix(),
      convert = namer.import('convert'),
      http = namer.import('http'),
      commons = namer.import('commons');

  String get coreJsonTypeArgs => '<${core.ref()}String, ${core.ref()}dynamic>';

  String get coreJsonMap => '${core.ref()}Map$coreJsonTypeArgs';

  String get deprecatedMsg =>
      "@${core.ref()}Deprecated('Not supported. "
      "Member documentation may have more information.',)";
}

const exportedMediaClasses = {
  'Media',
  'UploadOptions',
  'ResumableUploadOptions',
  'DownloadOptions',
  'PartialDownloadOptions',
  'ByteRange',
};

/// Generates a API library based on a [RestDescription].
class DartApiLibrary extends BaseApiLibrary {
  @override
  late final DartSchemaTypeDB schemaDB;

  @override
  late final DartApiClass apiClass;

  final bool isPackage;
  late final bool exposeMedia;
  late final String libraryName;

  /// Generates a API library for [description].
  DartApiLibrary.build(
    RestDescription description, {
    required this.isPackage,
    bool useCorePrefixes = true,
  }) : super(description, 'Api', useCorePrefixes: useCorePrefixes) {
    libraryName = ApiLibraryNamer.libraryName(
      description.name,
      description.version,
    );
    schemaDB = parseSchemas(imports, description);
    apiClass = parseResources(imports, schemaDB, description);
    exposeMedia = parseMediaUse(apiClass);
    namer.nameAllIdentifiers();
  }

  /// Create the library header. Note, this must be called after the library
  /// source string has been generated, since it relies on [Identifier] usage
  /// counts being calculated
  @override
  String libraryHeader() {
    final exportedClasses = <String>{};
    if (exposeMedia) {
      exportedClasses.addAll(exportedMediaClasses);
    }

    var libraryComments = _commentFromRestDescription(
      description,
      apiClass,
    ).asDartDoc(0).trim();

    if (libraryComments.isNotEmpty) {
      libraryComments = '$libraryComments\nlibrary;';
    }

    final result = [
      '// This is a generated file (see the discoveryapis_generator project).',
      '',
      ignoreForFileComments(ignoreForFileSet),
      '',
      libraryComments,
      if (imports.async.hasPrefix) "import 'dart:async' as ${imports.async};",
      if (!imports.async.hasPrefix) "import 'dart:async';",
      if (imports.collection.wasCalled)
        "import 'dart:collection' as ${imports.collection};",
      if (imports.convert.wasCalled)
        "import 'dart:convert' as ${imports.convert};",
      if (imports.core.hasPrefix) "import 'dart:core' as ${imports.core};",
      """

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as ${imports.commons};""",
      "import 'package:http/http.dart' as ${imports.http};",
      ..._sharedBits(exportedClasses),
    ];

    return result.join('\n');
  }

  Iterable<String> _sharedBits(Set<String> exportedClasses) sync* {
    if (isPackage) {
      yield '';

      yield* [
        if (generatedDuplicateLibraries()) "import '../$sharedLibraryName';",
        "import '../$userAgentDartFilePath';",
      ];
    }

    final exports = ({
      'ApiRequestError',
      'DetailedApiRequestError',
      ...exportedClasses,
    }.toList(growable: false)..sort()).join(', ');

    yield "\nexport 'package:_discoveryapis_commons/_discoveryapis_commons.dart' show $exports;";
    if (!isPackage) {
      yield requestHeadersField(description.version);
    }
  }
}

const userAgentDartFilePath = 'src/user_agent.dart';

Comment _commentFromRestDescription(
  RestDescription description,
  DartApiClass apiClass,
) {
  final lines = [
    _descriptionTitle(description),
    if (description.description != null) description.description,
    if (description.documentationLink != null)
      'For more information, see <${description.documentationLink}>',
  ];

  final hierarchy = <String>[];
  void addLines(DartResourceClass resourceClass, int depth) {
    if (depth == 0) {
      if (resourceClass.subResources.isEmpty) {
        return;
      }
      hierarchy.addAll([
        'Create an instance of [${resourceClass.className.name}] '
            'to access these resources:',
        '',
      ]);
    } else {
      hierarchy.add('${'  ' * (depth - 1)}- [${resourceClass.className.name}]');
    }
    for (var child in resourceClass.subResources) {
      addLines(child, depth + 1);
    }
  }

  addLines(apiClass, 0);
  if (hierarchy.isNotEmpty) {
    lines.add(hierarchy.join('\n'));
  }

  return Comment(
    lines
        .where((element) => element != null && element.isNotEmpty)
        .join('\n\n'),
  );
}

String? _descriptionTitle(RestDescription description) {
  var title = description.title;
  if (title == null) {
    return null;
  }

  if (description.version != null) {
    title = '$title - ${description.version}';
  }

  return title;
}
