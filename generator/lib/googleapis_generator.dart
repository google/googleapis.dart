// Copyright (c) 2015, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library googleapis_generator;

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:discoveryapis_generator/discoveryapis_generator.dart';
import 'package:http/http.dart' as http;
import 'package:io/ansi.dart' as ansi;
import 'package:pool/pool.dart';

import 'src/package_configuration.dart';
import 'src/utils.dart';

Future<List<DirectoryListItems>> _listAllApis() async {
  final client = http.Client();
  try {
    final result = await DiscoveryApi(client).apis.list();
    return result.items;
  } finally {
    client.close();
  }
}

Future<List<RestDescription>> downloadDiscoveryDocuments(
  String outputDir,
) async {
  final apis = await fetchDiscoveryDocuments();
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
    file.writeAsStringSync(encoder.convert(description.toJson()));
    print('Wrote: $name');
  }
}

Future<List<RestDescription>> fetchDiscoveryDocuments() async {
  final client = http.Client();

  try {
    final discovery = DiscoveryApi(client);

    final list = await discovery.apis.list();

    final pool = Pool(10);
    try {
      var count = 0;
      return await pool
          .forEach(list.items, (DirectoryListItems item) async {
            print(ansi.darkGray.wrap(
              'Requesting ${++count} of ${list.items.length} - ${item.id}',
            ));

            try {
              final result = await client.get(item.discoveryRestUrl);

              if (result.statusCode != 200) {
                throw StateError(
                  'Not a 200 – ${result.statusCode}\n${result.body}',
                );
              }

              final description = RestDescription.fromJson(
                jsonDecode(result.body) as Map<String, dynamic>,
              );

              // Sort members here for stability in the output!
              description.sort();

              return description;
            } catch (e, stack) {
              print(
                ansi.red.wrap(
                  '''
${item.discoveryRestUrl}
Failed to retrieve document for "${item.name}:${item.version}" -> Ignoring!
$e
$stack
''',
                ),
              );
            }
          })
          .where((rd) => rd != null)
          .toList();
    } finally {
      await pool.close();
    }
  } finally {
    client.close();
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
  final items = await _listAllApis();

  final configuration = DiscoveryPackagesConfiguration(configFile);

  // Generate the packages.
  final configFileUri = Uri.file(configFile);
  await configuration.download(configFileUri.resolve('discovery').path, items);

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

  void prettyNotNull(String header, Map<String, String> value) {
    if (value == null || value.isEmpty) return;

    print(header);
    for (var entry in value.entries) {
      print('  ${entry.key.padRight(30)} ${entry.value}');
    }
  }

  prettyNotNull('new revisions', configuration.newRevisions);
  prettyNotNull('old revisions', configuration.oldRevisions);
}

void generateFromConfiguration(
  String configFile,
  bool generateNullSafe,
  bool deleteExisting,
) {
  final configuration = DiscoveryPackagesConfiguration(configFile);

  // Generate the packages.
  final configFileUri = Uri.file(configFile);
  return configuration.generate(
    configFileUri.resolve('discovery').path,
    configFileUri.resolve('generated').path,
    generateNullSafe,
    deleteExisting,
  );
}
