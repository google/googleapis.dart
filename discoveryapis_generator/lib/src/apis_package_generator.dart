// Copyright (c) 2015, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library discoveryapis_generator.apis_package_generator;

import 'dart:io';

import 'dart_api_library.dart';
import 'dart_api_test_library.dart';
import 'generated_googleapis/discovery/v1.dart';
import 'pubspec.dart';
import 'utils.dart';

/// Generates a dart package with all APIs given in the constructor.
///
/// This class generates a dart package with the following layout:
/// $packageFolderPath
///   |- .gitignore
///   |- pubspec.yaml
///   |- LICENSE
///   |- README.md
///   |- VERSION
///   |- lib/$API/... (for all APIs to generate)
///   |- test/$API/... (for all APIs to generate)
class ApisPackageGenerator {
  final List<RestDescription> descriptions;
  final String packageFolderPath;
  final Pubspec pubspec;
  final bool deleteExisting;

  /// [descriptions] is a list of API descriptions we want to generate code for.
  ///
  /// [pubspec] contains configuration parameters for this API package
  /// generator.
  ///
  /// [packageFolderPath] is the output directory where the dart package gets
  /// generated.
  ApisPackageGenerator(
    this.descriptions,
    this.pubspec,
    this.packageFolderPath, {
    this.deleteExisting = true,
  });

  /// Starts generating the API package with all the APIs given in the
  /// constructor.
  /// If the output directory already exists it will delete everything in it
  /// except ".git" folders.
  List<GenerateResult> generateApiPackage() {
    final libFolderPath = '$packageFolderPath/lib';
    final testFolderPath = '$packageFolderPath/test';
    final pubspecYamlPath = '$packageFolderPath/pubspec.yaml';
    final gitIgnorePath = '$packageFolderPath/.gitignore';

    // Clean contents of directory (except for .git folder)
    final packageDirectory = Directory(packageFolderPath);
    if (packageDirectory.existsSync()) {
      if (deleteExisting) {
        print('Emptying folder before library generation.');
        packageDirectory.listSync().forEach((FileSystemEntity fse) {
          if (fse is File) {
            fse.deleteSync();
          } else if (fse is Directory && !fse.path.endsWith('.git')) {
            fse.deleteSync(recursive: true);
          }
        });
      } else {
        print('WARNING: Directory exists, but NOT deleting contents.');
      }
    }

    writeFile(pubspecYamlPath, _writePubspec);
    writeString(gitIgnorePath, gitIgnore);

    writeDartSource(
      '$libFolderPath/$userAgentDartFilePath',
      """
/// User-Agent request header used by all libraries in this package
const userAgent = 'Dart package:${pubspec.name} / ${pubspec.version}';
""",
    );

    // Test utility
    writeDartSource(
      '$testFolderPath/$testSharedDartFileName',
      testHelperLibraryContent,
    );

    final results = <GenerateResult>[];
    for (var description in descriptions) {
      final name = description.name.toLowerCase();
      final version = description.version
          .toLowerCase()
          .replaceAll('.', '_')
          .replaceAll('-', '_');

      final apiFolderPath = '$libFolderPath/$name';
      final apiTestFolderPath = '$testFolderPath/$name';

      final apiVersionFile = '$libFolderPath/$name/$version.dart';
      final apiTestVersionFile = '$testFolderPath/$name/${version}_test.dart';

      final packagePath = 'package:${pubspec.name}/$name/$version.dart';

      try {
        // Create API itself.
        Directory(apiFolderPath).createSync();
        final apiLibrary = _generateApiLibrary(apiVersionFile, description);

        // Create Test for API.
        Directory(apiTestFolderPath).createSync();
        _generateApiTestLibrary(apiTestVersionFile, packagePath, apiLibrary);

        final result = GenerateResult(name, version, packagePath);
        results.add(result);
      } catch (error, stack) {
        var errorMessage = '';
        if (error is GeneratorError) {
          errorMessage = '$error';
        } else {
          errorMessage = '$error\nstack: $stack';
        }
        results.add(
          GenerateResult.error(name, version, packagePath, errorMessage),
        );
      }
    }
    return results;
  }

  DartApiLibrary _generateApiLibrary(
    String outputFile,
    RestDescription description,
  ) {
    final lib = DartApiLibrary.build(description, isPackage: true);
    writeDartSource(outputFile, lib.librarySource);
    return lib;
  }

  void _generateApiTestLibrary(
      String outputFile, String packageImportPath, DartApiLibrary apiLibrary) {
    final testLib =
        DartApiTestLibrary.build(apiLibrary, packageImportPath, pubspec.name);
    writeDartSource(outputFile, testLib.librarySource);
  }

  void _writePubspec(StringSink sink) {
    void writeDependencies(Map<String, dynamic> dependencies) {
      orderedForEach(dependencies, (String lib, Object value) {
        if (value is String) {
          if (lib.startsWith('_discoveryapis_commons')) {
            sink.writeln('  # This is a private package dependency used by the '
                'generated client stubs.');
          }
          sink.writeln('  $lib: $value');
        } else if (value is Map) {
          sink.writeln('  $lib:\n');
          value.forEach((k, v) {
            sink.writeln('    $k: $v\n');
          });
        }
      });
    }

    sink.writeln('name: ${pubspec.name}');
    sink.writeln('version: ${pubspec.version}');
    if (pubspec.author != null) {
      sink.writeln('author: ${pubspec.author}');
    }
    sink.writeln('description: ${pubspec.description}');
    if (pubspec.repository != null) {
      sink.writeln('repository: ${pubspec.repository}');
    }
    sink.writeln('environment:');
    sink.writeln("  sdk: '${pubspec.sdkConstraint}'");
    sink.writeln('dependencies:');
    writeDependencies(Pubspec.dependencies);
    sink.writeln('dev_dependencies:');
    writeDependencies(pubspec.devDependencies);
  }
}
