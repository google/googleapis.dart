// Copyright (c) 2015, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library discoveryapis_generator;

import 'dart:convert';
import 'dart:io';

import 'src/apis_files_generator.dart';
import 'src/apis_package_generator.dart';
import 'src/generated_googleapis/discovery/v1.dart';
import 'src/null_safety.dart' as null_safety;
import 'src/utils.dart';

export 'src/generated_googleapis/discovery/v1.dart';
export 'src/utils.dart' show GenerateResult;

/// Specification of the pubspec.yaml for a generated package.
class Pubspec {
  final String name;
  final String version;
  final String description;
  final String author;
  final String homepage;

  Pubspec(this.name, this.version, this.description,
      {this.author, this.homepage});

  String get sdkConstraint => '>=2.10.0 <3.0.0';

  static const dependencies = {
    'http': '\'>=0.11.1 <0.13.0\'',
    '_discoveryapis_commons': '\'>=0.1.0 <0.3.0\'',
  };

  static const devDependencies = {
    'test': '\'>=0.12.0 <2.0.0\'',
  };
}

List<GenerateResult> generateApiPackage(
  List<RestDescription> descriptions,
  String outputDirectory,
  Pubspec pubspec, {
  bool deleteExisting = true,
}) {
  final apisPackageGenerator = ApisPackageGenerator(
    descriptions,
    pubspec,
    outputDirectory,
    deleteExisting: deleteExisting,
  );

  return apisPackageGenerator.generateApiPackage();
}

List<GenerateResult> generateAllLibraries(
  String inputDirectory,
  String outputDirectory,
  Pubspec pubspec, {
  bool generateNullSafe = false,
  bool deleteExisting = true,
}) {
  null_safety.generateNullSafeCode = generateNullSafe;

  final apiDescriptions = Directory(inputDirectory)
      .listSync()
      .where((fse) => fse is File && fse.path.endsWith('.json'))
      .map((FileSystemEntity entity) => RestDescription.fromJson(
          json.decode((entity as File).readAsStringSync())))
      .toList();
  return generateApiPackage(
    apiDescriptions,
    outputDirectory,
    pubspec,
    deleteExisting: deleteExisting,
  );
}

List<GenerateResult> generateApiFiles(
    String inputDirectory, String outputDirectory,
    {bool updatePubspec = false, bool useCorePrefixes = true}) {
  final descriptions = <DescriptionImportPair>[];
  Directory(inputDirectory)
      .listSync()
      .where((fse) => fse is File && fse.path.endsWith('.json'))
      .forEach((FileSystemEntity entity) {
    final diPair =
        DescriptionImportPair((entity as File).readAsStringSync(), null);
    descriptions.add(diPair);
  });
  final clientFileGenerator = ApisFilesGenerator(descriptions, outputDirectory,
      updatePubspec: updatePubspec, useCorePrefixes: useCorePrefixes);
  return clientFileGenerator.generate();
}
