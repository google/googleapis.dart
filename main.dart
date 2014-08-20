import "dart:io";
import "dart:async";

import '../discovery_api_dart_client_generator/lib/generator.dart';
import 'package:google_discovery_v1_api/discovery_v1_api_client.dart';
import 'package:yaml/yaml.dart';

class Package {
  final String name;
  final List<String> apis;
  final Pubspec pubspec;
  final String readme;
  final String license;

  Package(this.name, this.apis, this.pubspec, this.readme, this.license);
}

String generateReadme(String readmeFile, List<DirectoryListItems> items) {
  var sb = new StringBuffer();
  if (readmeFile != null) {
    sb.write(new File(readmeFile).readAsStringSync());
  }
  sb.writeln('''

## Available Google APIs

The following is a list of APIs that are currently available inside this
package.
''');
  for (DirectoryListItems item in items) {
    sb.write("#### ");
    if (item.icons != null && item.icons.x16 != null) {
      sb.write("![Logo](${item.icons.x16}) ");
    }
    sb..writeln('${item.title} - ${item.name} ${item.version}')
        ..writeln()
        ..writeln('${item.description}')
        ..writeln();
    if (item.documentationLink != null) {
      sb.writeln(
          'Official API documentation: ${item.documentationLink}');
      sb.writeln();
    }
  }
  return sb.toString();
}

main() {
  listFromYaml(value) => value != null ? value : [];

  // Set up paths to directories 'discovery' and 'generated'.
  var discoveryDocsDir = Platform.script.resolve('discovery').path;
  var generatedApisDir = Platform.script.resolve('generated').path;

  // Read the configuration.
  var configFile = Platform.script.resolve('config.yaml').path;
  var config = loadYaml(new File(configFile).readAsStringSync());

  listAllApis().then((List<DirectoryListItems> items) {
    var pkgs = config['packages'];
    var packages = {};
    var supportedApis = [];
    pkgs.forEach((package) {
      package.forEach((name, values) {
        var apis = listFromYaml(values['apis']);
        var version =
            values['version'] != null ? values['version'] : '0.1.0-dev';
        var author = values['author'];
        var homepage = values['homepage'];
        var readmeFile;
        if (values['readme'] != null) {
          readmeFile = Platform.script.resolve(values['readme']).path;
        }
        var licenseFile;
        if (values['license'] != null) {
          licenseFile = Platform.script.resolve(values['license']).path;
        }


        // Generate package description.
        var apiDescriptions = [];
        var sb = new StringBuffer()
            ..write('"Auto-generated client libraries for accessing '
                    'the following APIs:\\n');
        items.forEach((DirectoryListItems apiDescription) {
          if (apis.contains(apiDescription.id)) {
            sb..writeln('')
                ..write('  ')
                ..write(apiDescription.id)
                ..write(' - ')
                ..write(apiDescription.description)
                ..write('\\n');
            apiDescriptions.add(apiDescription);
          }
        });
        sb.write('"');

        // Generate the README.md file content.
        var readme = generateReadme(readmeFile, apiDescriptions);

        // Read the LICENSE
        var license = new File(licenseFile).readAsStringSync();

        // Create package description with pubspec.yaml information.
        var pubspec = new Pubspec(
            name, version, sb.toString(), author: author, homepage: homepage);
        packages[name] = new Package(name, apis, pubspec, readme, license);
      });
    });

    // Check that all APIs are mentioned in the configuration.
    var skippedApis = listFromYaml(config['skipped_apis']);
    packages.forEach((_, package) => supportedApis.addAll(package.apis));
    var knownApis = new Set();
    knownApis.addAll(supportedApis);
    knownApis.addAll(skippedApis);
    var excessApis = new Set.from(knownApis);

    var missingApis = [];
    items.forEach((item) {
      if (!knownApis.contains(item.id)) missingApis.add(item.id);
      excessApis.remove(item.id);
    });

    if (missingApis.isNotEmpty) {
      print('WARNING: No configuration for the following APIs:');
      missingApis.forEach((id) => print('- $id'));
    }

    if (excessApis.isNotEmpty) {
      print('WARNING: The following APIs does not exist:');
      excessApis.forEach((id) => print('- $id'));
    }

    // Delete downloaded discovery documents.
    var dir = new Directory(discoveryDocsDir);
    if (dir.existsSync()) dir.deleteSync(recursive: true);

    // Download the discovery documents for the packages to build.
    var futures = [];
    packages.forEach((name, package) {
      futures.add(downloadDiscoveryDocuments('$discoveryDocsDir/$name',
                                             ids: package.apis));
    });

    Future.wait(futures).then((_) {
      packages.forEach((name, package) {
        print('Generating library $name');
        generateAllLibraries('$discoveryDocsDir/$name',
                             '$generatedApisDir/$name',
                             package.pubspec);
        new File('$generatedApisDir/$name/README.md')
            .writeAsStringSync(package.readme);
        if (package.license != null) {
          new File('$generatedApisDir/$name/LICENSE')
              .writeAsStringSync(package.license);
        }
      });
      print('DONE');
    });
  });
}