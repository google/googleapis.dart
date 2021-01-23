// Copyright (c) 2015, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library discoveryapis_generator.dart_api_library;

import 'dart_resources.dart';
import 'dart_schemas.dart';
import 'generated_googleapis/discovery/v1.dart';
import 'namer.dart';
import 'utils.dart';

const _ignoreForFileSet = {
  'camel_case_types', // violated by `container` v1 API,
  'comment_references',
  'constant_identifier_names',
  'directives_ordering',
  'library_names',
  'lines_longer_than_80_chars',
  'non_constant_identifier_names',
  'omit_local_variable_types',
  'prefer_final_locals',
  'prefer_interpolation_to_compose_strings',
  'unnecessary_brace_in_string_interps',
  'unnecessary_cast',
  'unnecessary_parenthesis',
  'unnecessary_string_interpolations',
};

String get ignoreForFileComments =>
    _ignoreForFileSet.map((e) => '// ignore_for_file: $e').join('\n');

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

  String get coreJsonMap =>
      '${core.ref()}Map<${core.ref()}String, ${core.ref()}dynamic>';
}

abstract class BaseApiLibrary {
  final ApiLibraryNamer namer;
  final RestDescription description;

  DartApiImports imports;

  BaseApiLibrary(this.description, String apiClassSuffix,
      {bool useCorePrefixes = true})
      : namer = ApiLibraryNamer(apiClassSuffix: apiClassSuffix) {
    imports = DartApiImports.fromNamer(namer, useCorePrefixes: useCorePrefixes);
  }
}

/// Generates a API library based on a [RestDescription].
class DartApiLibrary extends BaseApiLibrary {
  DartSchemaTypeDB schemaDB;
  DartApiClass apiClass;
  bool exposeMedia;
  String libraryName;

  /// Generates a API library for [description].
  DartApiLibrary.build(
    RestDescription description,
    String packageName, {
    bool useCorePrefixes = true,
  }) : super(description, 'Api', useCorePrefixes: useCorePrefixes) {
    libraryName =
        namer.libraryName(packageName, description.name, description.version);
    schemaDB = parseSchemas(imports, description);
    apiClass = parseResources(imports, schemaDB, description);
    exposeMedia = parseMediaUse(apiClass);
    namer.nameAllIdentifiers();
  }

  String get librarySource {
    final sink = StringBuffer();
    final schemas = generateSchemas(schemaDB);
    final resources = generateResources(apiClass);
    sink.write(libraryHeader());
    if (resources.isNotEmpty) {
      sink.write('$resources\n$schemas');
    } else {
      sink.write(schemas);
    }
    return formatSource(sink.toString());
  }

  /// Create the library header. Note, this must be called after the library
  /// source string has been generated, since it relies on [Identifier] usage
  /// counts being calculated
  String libraryHeader() {
    var exportedMediaClasses = '';
    if (exposeMedia) {
      exportedMediaClasses = ', Media, UploadOptions,\n'
          '    ResumableUploadOptions, DownloadOptions, '
          'PartialDownloadOptions,\n'
          '    ByteRange';
    }

    var result = '''
// This is a generated file (see the discoveryapis_generator project).

$ignoreForFileComments

library $libraryName;

''';

    if (imports.core.hasPrefix) {
      result += "import 'dart:core' as ${imports.core};\n";
    }

    if (imports.collection.wasCalled) {
      result += "import 'dart:collection' as ${imports.collection};\n";
    }

    if (imports.async.hasPrefix) {
      result += "import 'dart:async' as ${imports.async};\n";
    } else {
      result += "import 'dart:async';\n";
    }

    if (imports.convert.wasCalled) {
      result += "import 'dart:convert' as ${imports.convert};\n";
    }

    result += """

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as ${imports.commons};
""";

    return result +
        """
import 'package:http/http.dart' as ${imports.http};

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart' show
    ApiRequestError, DetailedApiRequestError$exportedMediaClasses;

const ${imports.core.ref()}String USER_AGENT = 'dart-api-client ${description.name}/${description.version}';

""";
  }
}
