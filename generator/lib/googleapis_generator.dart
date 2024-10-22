// Copyright (c) 2015, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:discoveryapis_generator/discoveryapis_generator.dart';

import 'src/fetch_core.dart';
import 'src/package_configuration.dart';
import 'src/utils.dart';

Future<List<RestDescription>> downloadDiscoveryDocuments(
  String outputDir,
) async {
  final apis = await const FetchCore.service().fetchDiscoveryDocuments();
  writeDiscoveryDocuments(outputDir, apis);
  return apis;
}

void writeDiscoveryDocuments(
  String outputDir,
  Iterable<RestDescription> apis,
) {
  final directory = Directory(outputDir);
  if (directory.existsSync()) {
    print('Deleting directory $outputDir.');
    directory.deleteSync(recursive: true);
  }
  directory.createSync(recursive: true);

  for (var description in apis) {
    final name = '$outputDir/${description.name}__${description.version}.json';
    final file = File(name);
    const encoder = JsonEncoder.withIndent('    ');
    file.writeAsStringSync('${encoder.convert(description.toJsonSorted())}\n');
    print('Wrote: $name');
  }
}

List<RestDescription> loadDiscoveryDocuments(String directory) =>
    Directory(directory)
        .listSync()
        .where((fse) => fse is File && fse.path.endsWith('.json'))
        .map(
          (FileSystemEntity file) => RestDescription.fromJson(
              json.decode((file as File).readAsStringSync()) as Map),
        )
        .toList();

Future downloadFromConfiguration(String configFile) async {
  final configuration = DiscoveryPackagesConfiguration(configFile);

  // Generate the packages.
  final configFileUri = Uri.file(configFile);
  await configuration.download(
    discoveryPathFromConfigFileUri(configFileUri),
  );

  // Print warnings for APIs not mentioned.
  if (configuration.missingApis.isNotEmpty) {
    print('WARNING: No configuration for the following APIs:');
    for (var id in configuration.missingApis) {
      print('- $id');
    }
  }
  if (configuration.excessApis.isNotEmpty) {
    print('WARNING: The following APIs do not exist:');
    for (var id in configuration.excessApis) {
      print('- $id');
    }
  }

  void prettyNotNull(String header, Map<String?, String>? value) {
    if (value == null || value.isEmpty) return;

    print(header);
    for (var entry in value.entries) {
      print('  ${entry.key!.padRight(30)} ${entry.value}');
    }
  }

  prettyNotNull('new revisions', configuration.newRevisions);
  prettyNotNull('old revisions', configuration.oldRevisions);
}

void generateFromConfiguration(
  String configFile,
  bool deleteExisting,
) {
  final configuration = DiscoveryPackagesConfiguration(configFile);

  // Generate the packages.
  final configFileUri = Uri.file(configFile);
  return configuration.generate(
    discoveryPathFromConfigFileUri(configFileUri),
    configFileUri.resolve('generated').path,
    deleteExisting,
  );
}

String discoveryPathFromConfigFileUri(Uri configFileUri) =>
    configFileUri.resolve('discovery').path;
