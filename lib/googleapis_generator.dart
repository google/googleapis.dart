// Copyright (c) 2015, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library googleapis_generator;

import "dart:io";
import "dart:async";
import "dart:convert";

import 'package:discoveryapis_generator/discoveryapis_generator.dart';
import 'package:http/http.dart' as http;

import 'src/package_configuration.dart';

Future<List<DirectoryListItems>> _listAllApis() {
  var client = new http.Client();
  return _discoveryClient(client).apis.list().then((DirectoryList list) {
    return list.items;
  }).whenComplete(() => client.close());
}

Future<List<RestDescription>> downloadDiscoveryDocuments(
    String outputDir, {List<String> ids}) {
  return fetchDiscoveryDocuments(ids: ids).then((List<RestDescription> apis) {
    var directory = new Directory(outputDir);
    if (directory.existsSync()) {
      print('Deleting directory $outputDir.');
      directory.deleteSync(recursive: true);
    }
    directory.createSync(recursive: true);

    for (var description in apis) {
      var name = '$outputDir/${description.name}__${description.version}.json';
      var file = new File(name);
      var encoder = new JsonEncoder.withIndent('    ');
      file.writeAsStringSync(encoder.convert(description.toJson()));
      print('Written: $name');
    }
    return apis;
  });
}

Future<List<RestDescription>> fetchDiscoveryDocuments({List<String> ids}) {
  var apiDescriptions = <RestDescription>[];

  var client = new http.Client();
  var discovery = _discoveryClient(client);
  return discovery.apis.list().then((DirectoryList list) async {
    for (var item in list.items) {
      if (ids == null || ids.contains(item.id)) {
        try {
          var doc = await discovery.apis.getRest(item.name, item.version);
          apiDescriptions.add(doc);
        } catch (e) {
          print('Failed to retrieve document for "${item.name}:${item.version}"'
                ' -> Ignoring!');
        }
      }
    }
    await client.close();
    return apiDescriptions;
  });
}

List<RestDescription> loadDiscoveryDocuments(String directory) {
  var apiDescriptions = new Directory(directory).listSync()
      .where((fse) => fse is File && fse.path.endsWith('.json'))
      .map((File file) {
    return new RestDescription.fromJson(JSON.decode(file.readAsStringSync()));
  }).toList();
  return apiDescriptions;
}

Future downloadFromConfiguration(String configFile) {
  return _listAllApis().then((List<DirectoryListItems> items) {
    var configuration = new DiscoveryPackagesConfiguration(configFile);

    // Generate the packages.
    var configFileUri = new Uri.file(configFile);
    return configuration.download(
        configFileUri.resolve('discovery').path, items).then((_) {
      // Print warnings for APIs not mentioned.
      if (configuration.missingApis.isNotEmpty) {
        print('WARNING: No configuration for the following APIs:');
        configuration.missingApis.forEach((id) => print('- $id'));
      }
      if (configuration.excessApis.isNotEmpty) {
        print('WARNING: The following APIs do not exist:');
        configuration.excessApis.forEach((id) => print('- $id'));
      }
    });
  });
}

void generateFromConfiguration(String configFile) {
  var configuration =
      new DiscoveryPackagesConfiguration(configFile);

  // Generate the packages.
  var configFileUri = new Uri.file(configFile);
  return configuration.generate(configFileUri.resolve('discovery').path,
                                configFileUri.resolve('generated').path);
}

DiscoveryApi _discoveryClient(http.Client client) => new DiscoveryApi(client);
