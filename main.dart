import "dart:io";
import "dart:async";

import '../discovery_api_dart_client_generator/lib/generator.dart';
import 'package:google_discovery_v1_api/discovery_v1_api_client.dart';
import 'package:yaml/yaml.dart';

main() {
  // Read the configuration.
  var configFile = Platform.script.resolve('config.yaml').path;
  var discoveryDocsDir = Platform.script.resolve('discovery').path;
  var config = loadYaml(new File(configFile).readAsStringSync());
  var pkgs = config['packages'];
  var packages = {};
  var supportedApis = [];
  var knownApis = [];
  pkgs.forEach((pkg) {
    pkg.forEach((name, values) {
      packages[name] = values != null ? values : [];
    });
  });
  var skippedApis = config['skipped_apis'];
  packages.forEach((_, values) => supportedApis.addAll(values));
  knownApis.addAll(supportedApis);
  knownApis.addAll(skippedApis);

  // Check that all APIs are mentioned in the configuration.
  var missingApis = [];
  listAllApis().then((List<DirectoryListItems> items) {
    items.forEach((item) {
      if (!knownApis.contains(item.id)) missingApis.add(item.id);
    });

    if (missingApis.isNotEmpty) {
      print('No configuration for the following APIs;');
      missingApis.forEach((id) => print('-  $id'));
      return;
    }

    // Delete downloaded discovery documents.
    var dir = new Directory(discoveryDocsDir);
    if (dir.existsSync()) dir.deleteSync(recursive: true);

    // Download the discovery documents for the packages to build.
    var futures = [];
    packages.forEach((name, values) {
      futures.add(downloadDiscoveryDocuments('discovery/$name', ids: values));
    });

    Future.wait(futures).then((_) {
      packages.forEach((name, values) {
        print('Generating library $name');
        generateAllLibraries('discovery/$name', 'generated/$name');
      });
      print('DONE');
    });
  });
}