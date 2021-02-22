// Copyright (c) 2015, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library discoveryapis_generator.apis_files_generator;

import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as path;
import 'package:yaml/yaml.dart';

import 'client/client_api_library.dart';
import 'dart_api_library.dart';
import 'generated_googleapis/discovery/v1.dart';
import 'pubspec.dart';
import 'utils.dart';

class DescriptionImportPair {
  final String apiDescription;
  final Map<String, String> importMap;

  DescriptionImportPair(this.apiDescription, this.importMap);
}

/// Generates one or more API files based on the given descriptions.
class ApisFilesGenerator {
  final List<DescriptionImportPair> descriptions;
  final String clientFolderPath;
  final bool updatePubspec;
  final bool useCorePrefixes;
  String packageRoot;
  File pubspecFile;

  /// [descriptions] is a list of API descriptions we want to generate code for.
  /// [clientFolderPath] is the output directory for the generated client stub
  /// code.
  ApisFilesGenerator(this.descriptions, this.clientFolderPath,
      {this.updatePubspec = false, this.useCorePrefixes = true}) {
    // Create the output directory.
    final clientDirectory = Directory(clientFolderPath);
    packageRoot = findPackageRoot(path.absolute(clientDirectory.path));
    if (packageRoot == null) {
      throw Exception(
          'Client folder: \'$clientFolderPath\' must be in a package.');
    }
    if (!clientDirectory.existsSync()) {
      clientDirectory.createSync(recursive: true);
    }
    pubspecFile = File(path.join(packageRoot, 'pubspec.yaml'));
    assert(pubspecFile.existsSync());
  }

  /// Generates the client stub code with all the APIs given in the constructor.
  List<GenerateResult> generate() {
    // Get the package name.
    final pubspec = loadYaml(pubspecFile.readAsStringSync()) as YamlMap;
    final packageName = (pubspec != null ? pubspec['name'] : null) as String;
    if (packageName == null) {
      throw Exception('Invalid pubspec.yaml for package $packageRoot');
    }

    var processPubspec = false;
    final results = <GenerateResult>[];

    for (var diPair in descriptions) {
      final description =
          RestDescription.fromJson(json.decode(diPair.apiDescription) as Map);
      final name = description.name.toLowerCase();
      final version = description.version.toLowerCase();
      final apiFile = path.join(clientFolderPath, '$name.dart');
      try {
        BaseApiLibrary lib;
        if (diPair.importMap == null) {
          // Build a normal client stub file without using the same message
          // classes.
          lib = DartApiLibrary.build(
            description,
            useCorePrefixes: useCorePrefixes,
            isPackage: false,
          );
        } else {
          // Build a client stub api using common message classes.
          lib = ClientApiLibrary.build(
            description,
            diPair.importMap,
            packageName,
            packageRoot,
          );
        }
        writeDartSource(apiFile, lib.librarySource);
        final result = GenerateResult(name, version, clientFolderPath);
        results.add(result);
        processPubspec = true;
      } catch (error, stack) {
        var errorMessage = '';
        if (error is GeneratorError) {
          errorMessage = '$error';
        } else {
          errorMessage = '$error\nstack: $stack';
        }
        results.add(
          GenerateResult.error(name, version, clientFolderPath, errorMessage),
        );
      }
    }

    // Print or add required dependencies to the pubspec.yaml file.
    if (processPubspec) {
      final msg = _processPubspec();
      results.add(GenerateResult.fromMessage(msg));
    }

    return results;
  }

  String _processPubspec() {
    void writeValue(StringSink sink, String key, dynamic value, String indent) {
      if (value is String) {
        final val = value as String;
        // Encapsulate constraints with ''
        if (val.contains(RegExp('<|>')) && !val.startsWith(RegExp('\''))) {
          value = '\'$value\'';
        }
        sink.writeln('$indent$key: $value');
      } else if (value is Map<String, dynamic>) {
        sink.writeln('$indent$key:');
        value.forEach((key, value) {
          writeValue(sink, key, value, '$indent  ');
        });
      } else {
        throw UnimplementedError();
      }
    }

    const pubspecKeys = <String>[
      'name',
      'version',
      'description',
      'author',
      'authors',
      'homepage',
      'documentation',
      'environment',
      'dependencies',
      'dev_dependencies',
      'dependency_overrides',
      'executables',
      'transformers'
    ];

    // Process pubspec and either print the dependencies that has to be added
    // or if the updatePubspec flag is set add the required dependencies to the
    // existing pubspec.yaml file.
    final pubspec = loadYaml(pubspecFile.readAsStringSync()) as YamlMap;
    if (updatePubspec) {
      final sink = StringBuffer();
      for (var key in pubspecKeys) {
        Map value;
        if (key == 'dependencies') {
          // patch up dependencies.
          value = pubspec[key] as Map;
          value = value != null ? value = Map.from(value) : {};
          value.addAll(_computeNewDependencies(value));
        } else {
          value = pubspec[key] as Map;
        }
        writeValue(sink, key, value, '');
      }
      pubspecFile.writeAsStringSync(sink.toString());
      return 'Updated pubspec.yaml file with required dependencies.';
    } else {
      final newDeps =
          _computeNewDependencies(pubspec['dependencies'] as YamlMap);
      final sink = StringBuffer();
      if (newDeps.isNotEmpty) {
        sink.writeln('Please update your pubspec.yaml file with the following '
            'dependencies:');
        newDeps.forEach((k, v) => sink.writeln('  $k: $v'));
      }
      return sink.toString();
    }
  }

  Map<String, dynamic> _computeNewDependencies(Map current) {
    final result = <String, dynamic>{};
    Pubspec.dependencies.forEach((String k, Object v) {
      if (current == null || !current.containsKey(k)) {
        result[k] = v;
      }
    });
    return result;
  }
}
