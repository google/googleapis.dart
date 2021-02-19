// Copyright (c) 2015, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library googleapis_generator;

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:discoveryapis_generator/discoveryapis_generator.dart';
import 'package:io/ansi.dart' as ansi;
import 'package:pool/pool.dart';

import 'src/client.dart';
import 'src/package_configuration.dart';
import 'src/utils.dart';

Future<List<DirectoryListItems>> _listAllApis() async {
  final client = CustomHttpClient();
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

Future<List<RestDescription>> fetchDiscoveryDocuments({
  Map<String, String> existingRevisions,
}) async {
  final client = CustomHttpClient();

  Future<RestDescription> download(DirectoryListItems item) async {
    try {
      final result = await client.get(Uri.parse(item.discoveryRestUrl));

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
      return null;
    }
  }

  try {
    final list = await DiscoveryApi(client).apis.list();

    final pool = Pool(10);
    try {
      var count = 0;
      return await pool
          .forEach(list.items, (DirectoryListItems item) async {
            print(ansi.darkGray.wrap(
              'Requesting ${++count} of ${list.items.length} - ${item.id}',
            ));

            RestDescription description;
            for (var i = 1; i <= 10; i++) {
              description = await download(item);
              if (i > 1) {
                print('  ${item.id} try #$i');
              }

              final existingRevision = existingRevisions[description?.id];
              if (existingRevision != null &&
                  existingRevision != description.revision) {
                final compare =
                    existingRevision.compareTo(description.revision);

                if (compare.isNegative) {
                  print(
                    '  New! ${description.id} '
                    'from $existingRevision to ${description.revision}',
                  );
                } else {
                  final tryAgainLag = i > 5 ? 5 : i;
                  print(
                    '  Old revision for ${description.id} '
                    'from $existingRevision to ${description.revision}.\n'
                    '    Trying again in $tryAgainLag second(s) – '
                    '${item.discoveryRestUrl}',
                  );
                  await Future.delayed(Duration(seconds: tryAgainLag));
                  continue;
                }
              }

              return description;
            }
            return description;
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
