// Copyright (c) 2015, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as path;

import 'src/apis_files_generator.dart';
import 'src/apis_package_generator.dart';
import 'src/generated_googleapis/discovery/v1.dart';
import 'src/pubspec.dart';
import 'src/utils.dart';

export 'src/generated_googleapis/discovery/v1.dart';
export 'src/generated_googleapis/src/user_agent.dart';
export 'src/pubspec.dart';
export 'src/utils.dart' show GenerateResult;

List<GenerateResult> generateApiPackage(
  List<RestDescription> descriptions,
  String outputDirectory,
  Pubspec pubspec, {
  bool deleteExisting = true,
  required Set<String> skipTests,
}) {
  final apisPackageGenerator = ApisPackageGenerator(
    descriptions,
    pubspec,
    outputDirectory,
    deleteExisting: deleteExisting,
    skipTests: skipTests,
  );

  return apisPackageGenerator.generateApiPackage();
}

List<GenerateResult> generateAllLibraries(
  String inputDirectory,
  String outputDirectory,
  Pubspec pubspec, {
  bool deleteExisting = true,
  required Set<String> skipTests,
  Set<String>? knownApis,
}) {
  final apiDescriptions = Directory(inputDirectory)
      .listSync()
      .whereType<File>()
      .where((fse) {
        final isApiFile = fse.path.endsWith('.json');
        final filename = path.basenameWithoutExtension(fse.path);
        if (knownApis != null) {
          final apiName = filename.replaceAll('__', ':');
          return knownApis.contains(apiName) && isApiFile;
        }
        return isApiFile;
      })
      .map((entity) => RestDescription.fromJson(
            json.decode(entity.readAsStringSync()) as Map,
          ))
      .toList();
  return generateApiPackage(
    apiDescriptions,
    outputDirectory,
    pubspec,
    deleteExisting: deleteExisting,
    skipTests: skipTests,
  );
}

List<GenerateResult> generateApiFiles(
  String inputDirectory,
  String outputDirectory, {
  bool updatePubspec = false,
  bool? useCorePrefixes = true,
}) {
  final descriptions = <DescriptionImportPair>[];
  Directory(inputDirectory)
      .listSync()
      .where((fse) => fse is File && fse.path.endsWith('.json'))
      .forEach((FileSystemEntity entity) {
    final diPair =
        DescriptionImportPair((entity as File).readAsStringSync(), null);
    descriptions.add(diPair);
  });
  final clientFileGenerator = ApisFilesGenerator(
    descriptions,
    outputDirectory,
    updatePubspec: updatePubspec,
    useCorePrefixes: useCorePrefixes,
  );
  return clientFileGenerator.generate();
}
