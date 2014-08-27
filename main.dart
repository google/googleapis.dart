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

/**
 * Configuration of a set of packages generated from a set of APIs exposed by
 * a Discovery Service.
 */
class DiscoveryPackagesConfiguration {
  Map<String, Package> packages = {};
  Iterable<String> excessApis;
  Iterable<String> missingApis;

  /**
   * Create a new discovery packages configuration.
   *
   * [config] is the path to the YAML configuration file.
   *
   * [allApis] is the list of all supported APIs returned by the Discovery
   * Service.
   *
   * The format of a YAML document describing a number of packages looks
   * like this:
   *
   *     packages:
   *     - googleapis:
   *         version: 0.1.0
   *         author: Dart Team <misc@dartlang.org>
   *         homepage: http://www.dartlang.org
   *         readme: resources/README.md
   *         license: resources/LICENSE
   *         apis:
   *         -  analytics:v3
   *         -  bigquery:v2
   *     - googleapis_beta:
   *         version: 0.1.0
   *         author: Dart Team <misc@dartlang.org>
   *         homepage: http://www.dartlang.org
   *         readme: resources/README.md
   *         license: resources/LICENSE
   *         apis:
   *         -  datastore:v1beta2
   *         -  dns:v1beta1
   *     skipped_apis:
   *     - adexchangebuyer:v1
   *
   * Each package to build is listed under the key `packages:`.
   *
   * The key `skipped_apis` is used to list APIs returned buy the Discovery
   * Service but is not part of any generated packages.
   *
   * The file names for the content of readme and license files are resolved
   * relative to the configuration file.
   */
  DiscoveryPackagesConfiguration(
      String configFile, List<DirectoryListItems> allApis) {
    var configYaml = new File(configFile).readAsStringSync();
    var yaml = loadYaml(configYaml);
    packages = _packagesFromYaml(yaml['packages'], configFile, allApis);
    var knownApis = _calculateKnownApis(packages,
                                        _listFromYaml(yaml['skipped_apis']));
    missingApis = _calculateMissingApis(knownApis, allApis);
    excessApis = _calculateExcessApis(knownApis, allApis);
  }

  /**
   * Generate packages from the configuration.
   *
   * [discoveryDocsDir] is the directory where all the downloaded discovery
   * documents are stored.
   *
   * [generatedApisDir] is the directory where the packages are generated.
   * Each package is generated in a sub-directory.
   */
  Future generate(String discoveryDocsDir, String generatedApisDir) {
    // Delete all downloaded discovery documents.
    var dir = new Directory(discoveryDocsDir);
    if (dir.existsSync()) dir.deleteSync(recursive: true);

    // Download the discovery documents for the packages to build.
    var futures = [];
    packages.forEach((name, package) {
      futures.add(downloadDiscoveryDocuments('$discoveryDocsDir/$name',
                                             ids: package.apis));
    });

    return Future.wait(futures).then((_) {
      packages.forEach((name, package) {
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
    });
  }

  // Return empty list for YAML null value.
  static List _listFromYaml(value) => value != null ? value : [];

  static String _generateReadme(
      String readmeFile, List<DirectoryListItems> items) {
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

  static Map<String, Package>_packagesFromYaml(
      YamlList configPackages,
      String configFile,
      List<DirectoryListItems>  allApis) {
    var supportedApis = [];
    var packages = {};
    configPackages.forEach((package) {
      package.forEach((name, values) {
        packages[name] = _packageFromYaml(name, values, configFile, allApis);
      });
    });

    return packages;
  }

  static Package _packageFromYaml(String name,
                                  YamlMap values,
                                  String configFile,
                                  List<DirectoryListItems> allApis) {
    var apis = _listFromYaml(values['apis']);
    var version =
        values['version'] != null ? values['version'] : '0.1.0-dev';
    var author = values['author'];
    var homepage = values['homepage'];
    var readmeFile;
    if (values['readme'] != null) {
      readmeFile = new Uri.file(configFile).resolve(values['readme']).path;
    }
    var licenseFile;
    if (values['license'] != null) {
      licenseFile =
          new Uri.file(configFile).resolve(values['license']).path;
    }

    // Generate package description.
    var apiDescriptions = [];
    var sb = new StringBuffer()
        ..write('"Auto-generated client libraries for accessing '
                'the following APIs:\\n');
    allApis.forEach((DirectoryListItems apiDescription) {
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
    var readme = _generateReadme(readmeFile, apiDescriptions);

    // Read the LICENSE
    var license = new File(licenseFile).readAsStringSync();

    // Create package description with pubspec.yaml information.
    var pubspec = new Pubspec(
        name, version, sb.toString(), author: author, homepage: homepage);
    return new Package(name, apis, pubspec, readme, license);
  }

  /// The known APIs are the APis mentioned in each package together with
  /// the APIs explicitly skipped.
  static Set<String> _calculateKnownApis(Map<String, Package> packages,
                                         YamlList skippedApis) {
    var knownApis = new Set();
    knownApis.addAll(skippedApis);
    packages.forEach((_, package) => knownApis.addAll(package.apis));
    return knownApis;
  }

  /// The missing APIs are the APIs returned from the Discovery Service
  /// but not mentioned in the configuration.
  static Iterable<String> _calculateMissingApis(
      Iterable<String> knownApis, List<DirectoryListItems> allApis) {
    return allApis
        .where((item) => !knownApis.contains(item.id))
        .map((item) => item.id);
  }

  /// The excess APIs are the APIs mentioned in the configuration but not
  /// returned from the Discovery Service.
  static Iterable<String> _calculateExcessApis(
      Iterable<String> knownApis, List<DirectoryListItems> allApis) {
    var excessApis = new Set.from(knownApis);
    allApis.forEach((item) => excessApis.remove(item.id));
    return excessApis;
  }
}

main() {
  listAllApis().then((List<DirectoryListItems> items) {
    var configuration = new DiscoveryPackagesConfiguration(
        Platform.script.resolve('config.yaml').path, items);

    // Print warnings for APIs not mentioned.
    if (configuration.missingApis.isNotEmpty) {
      print('WARNING: No configuration for the following APIs:');
      configuration.missingApis.forEach((id) => print('- $id'));
    }
    if (configuration.excessApis.isNotEmpty) {
      print('WARNING: The following APIs do not exist:');
      configuration.excessApis.forEach((id) => print('- $id'));
    }

    // Generate the packages.
    configuration.generate(Platform.script.resolve('discovery').path,
                           Platform.script.resolve('generated').path)
        .then((_) => print('Done!'));
  });
}