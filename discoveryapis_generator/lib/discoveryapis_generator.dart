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
import 'src/pubspec.dart';
import 'src/utils.dart';

export 'src/generated_googleapis/discovery/v1.dart';
export 'src/pubspec.dart';
export 'src/utils.dart' show GenerateResult;

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
      .whereType<File>()
      .where((fse) => fse.path.endsWith('.json'))
      .map((entity) => RestDescription.fromJson(
            json.decode(entity.readAsStringSync()) as Map,
          ))
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
