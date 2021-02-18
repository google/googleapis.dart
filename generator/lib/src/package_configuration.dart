// Copyright (c) 2014, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library googleapis_generator.package_configuration;

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:discoveryapis_generator/discoveryapis_generator.dart';
import 'package:yaml/yaml.dart';

import '../googleapis_generator.dart';

class Package {
  final String name;
  final List<String> apis;
  final Pubspec pubspec;
  final String readme;
  final String license;
  final String changelog;
  final String example;
  final String monoPkg;

  Package(
    this.name,
    this.apis,
    this.pubspec,
    this.readme,
    this.license,
    this.changelog,
    this.example,
    this.monoPkg,
  );
}

/// Configuration of a set of packages generated from a set of APIs exposed by
/// a Discovery Service.
class DiscoveryPackagesConfiguration {
  String configFile;
  Map yaml;
  Map<String, Package> packages;

  Set<String> excessApis;
  List<String> missingApis;
  final existingApiRevisions = <String, String>{};
  Map<String, String> newRevisions;
  Map<String, String> oldRevisions;

  /// Create a new discovery packages configuration.
  ///
  /// The format of a YAML document describing a number of packages looks
  /// like this:
  ///
  ///     packages:
  ///     - googleapis:
  ///         version: 0.1.0
  ///         repository: https://github.com/dart-lang/googleapis
  ///         readme: resources/README.md
  ///         license: resources/LICENSE
  ///         apis:
  ///         -  analytics:v3
  ///         -  bigquery:v2
  ///     - googleapis_beta:
  ///         version: 0.1.0
  ///         repository: https://github.com/dart-lang/googleapis
  ///         readme: resources/README.md
  ///         license: resources/LICENSE
  ///         apis:
  ///         -  datastore:v1beta2
  ///         -  dns:v1beta1
  ///     skipped_apis:
  ///     - adexchangebuyer:v1
  ///
  /// Each package to build is listed under the key `packages:`.
  ///
  /// The key `skipped_apis` is used to list APIs returned buy the Discovery
  /// Service but is not part of any generated packages.
  ///
  /// The file names for the content of readme and license files are resolved
  /// relative to the configuration file.
  DiscoveryPackagesConfiguration(this.configFile) {
    yaml = loadYaml(File(configFile).readAsStringSync()) as Map;
  }

  /// Downloads discovery documents from the configuration.
  ///
  /// [discoveryDocsDir] is the directory where all the downloaded discovery
  /// documents are stored.
  Future<void> download(
    String discoveryDocsDir,
    List<DirectoryListItems> items,
  ) async {
    // Delete all downloaded discovery documents.
    final dir = Directory(discoveryDocsDir);
    if (dir.existsSync()) {
      print('*** Cataloging and deleting existing discovery JSON files');
      for (var file in dir.listSync(recursive: true).whereType<File>()) {
        final json =
            jsonDecode(file.readAsStringSync()) as Map<String, dynamic>;
        final id = json['id'] as String;
        assert(id != null, 'id should not be null for ${file.path}');
        final revision = json['revision'] as String;
        assert(
          revision != null,
          'revision should not be null for ${file.path}',
        );
        assert(!existingApiRevisions.containsKey(id));
        existingApiRevisions[id] = revision;
      }

      print('Existing API count: ${existingApiRevisions.length}');

      dir.deleteSync(recursive: true);
    }

    // Get all rest discovery documents & initialize this object.
    final allApis = await fetchDiscoveryDocuments(
      existingRevisions: existingApiRevisions,
    );
    _initialize(allApis);

    var count = 0;
    for (var entry in packages.entries) {
      print(' ${++count} of ${packages.length} - ${entry.key}');

      writeDiscoveryDocuments(
        '$discoveryDocsDir/${entry.key}',
        entry.value.apis.map(
          (e) => allApis.singleWhere((element) => element.id == e, orElse: () {
            throw StateError('  !!! Colud not find an element for `$e`!');
          }),
        ),
      );
    }
  }

  /// Generate packages from the configuration.
  ///
  /// [discoveryDocsDir] is the directory where all the downloaded discovery
  /// documents are stored.
  ///
  /// [generatedApisDir] is the directory where the packages are generated.
  /// Each package is generated in a sub-directory.
  void generate(
    String discoveryDocsDir,
    String generatedApisDir,
    bool deleteExisting,
  ) {
    // Delete all downloaded discovery documents.
    final dir = Directory(discoveryDocsDir);
    if (!dir.existsSync()) {
      throw Exception(
          'Error: The given `$discoveryDocsDir` directory does not exist.');
    }

    // Load discovery documents from disc & initialize this object.
    final allApis = <RestDescription>[];
    for (var package in yaml['packages'] as List) {
      (package as Map).forEach((name, _) {
        allApis.addAll(loadDiscoveryDocuments('$discoveryDocsDir/$name'));
      });
    }
    _initialize(allApis);

    // Generate packages.
    packages.forEach((name, package) {
      final results = generateAllLibraries(
        '$discoveryDocsDir/$name',
        '$generatedApisDir/$name',
        package.pubspec,
        deleteExisting: deleteExisting,
      );
      for (final result in results) {
        if (!result.success) {
          print(result.toString());
        }
      }

      File('$generatedApisDir/$name/README.md')
          .writeAsStringSync(package.readme);
      if (package.license != null) {
        File('$generatedApisDir/$name/LICENSE')
            .writeAsStringSync(package.license);
      }
      if (package.changelog != null) {
        File('$generatedApisDir/$name/CHANGELOG.md')
            .writeAsStringSync(package.changelog);
      }
      if (package.monoPkg != null) {
        File('$generatedApisDir/$name/mono_pkg.yaml')
            .writeAsStringSync(package.monoPkg);
      }
      if (package.example != null) {
        Directory('$generatedApisDir/$name/example').createSync();
        File('$generatedApisDir/$name/example/main.dart')
            .writeAsStringSync(package.example);
      }
    });
  }

  /// Initializes the missingApis/excessApis/packages properties from a list
  /// of [RestDescription]s.
  void _initialize(List<RestDescription> allApis) {
    packages =
        _packagesFromYaml(yaml['packages'] as YamlList, configFile, allApis);
    final knownApis = _calculateKnownApis(
      packages,
      _listFromYaml(yaml['skipped_apis'] as YamlList),
    );
    missingApis = _calculateMissingApis(knownApis, allApis);
    excessApis = _calculateExcessApis(knownApis, allApis);

    if (existingApiRevisions.isNotEmpty) {
      for (var api in allApis) {
        final existingRevision = existingApiRevisions[api.id];
        if (existingRevision != null) {
          final compare = api.revision.compareTo(existingRevision);
          if (compare == 0) {
            continue;
          }
          final value = 'previous: $existingRevision; current: ${api.revision}';
          if (compare.isNegative) {
            (oldRevisions ??= {})[api.id] = value;
          }
          if (compare > 0) {
            (newRevisions ??= {})[api.id] = value;
          }
        }
      }
    }
  }

  // Return empty list for YAML null value.
  static List _listFromYaml(List value) => value ?? [];

  static String _generateReadme(
    String readmeFile,
    List<RestDescription> items,
  ) {
    final sb = StringBuffer();
    if (readmeFile != null) {
      sb.write(File(readmeFile).readAsStringSync());
    }
    sb.writeln('''

## Available Google APIs

The following is a list of APIs that are currently available inside this
package.
''');
    for (var item in items) {
      sb.write('#### ');
      if (item.icons != null &&
          item.icons.x16 != null &&
          item.icons.x16.startsWith('https://')) {
        sb.write('![Logo](${item.icons.x16}) ');
      }
      sb..writeln('${item.title} - ${item.name} ${item.version}')..writeln();

      if (item.description != null && item.description.isNotEmpty) {
        sb..writeln(item.description)..writeln();
      }
      if (item.documentationLink != null) {
        sb
          ..writeln('Official API documentation: ${item.documentationLink}')
          ..writeln();
      }
    }
    return sb.toString();
  }

  static Map<String, Package> _packagesFromYaml(
    YamlList configPackages,
    String configFile,
    List<RestDescription> allApis,
  ) {
    final packages = <String, Package>{};
    for (var package in configPackages) {
      (package as Map).forEach((name, values) {
        packages[name as String] = _packageFromYaml(
          name as String,
          values as YamlMap,
          configFile,
          allApis,
        );
      });
    }

    return packages;
  }

  static Package _packageFromYaml(
    String name,
    YamlMap values,
    String configFile,
    List<RestDescription> allApis,
  ) {
    final apis = _listFromYaml(values['apis'] as List).cast<String>();
    final version = values['version'] as String ?? '0.1.0-dev';
    final author = values['author'] as String;
    final repository = values['repository'] as String;

    Map<String, String> extraDevDependencies;
    if (values.containsKey('extraDevDependencies')) {
      extraDevDependencies =
          (values['extraDevDependencies'] as YamlMap).cast<String, String>();
    }

    final configUri = Uri.file(configFile);

    allApis.sort((RestDescription a, RestDescription b) {
      final result = a.name.compareTo(b.name);
      if (result != 0) return result;
      return a.version.compareTo(b.version);
    });

    String readmeFile;
    if (values['readme'] != null) {
      readmeFile = configUri.resolve(values['readme'] as String).path;
    }
    String licenseFile;
    if (values['license'] != null) {
      licenseFile = configUri.resolve(values['license'] as String).path;
    }
    String changelogFile;
    if (values['changelog'] != null) {
      changelogFile = configUri.resolve(values['changelog'] as String).path;
    }
    String example;
    if (values['example'] != null) {
      final exampleFile = configUri.resolve(values['example'] as String).path;
      example = File(exampleFile).readAsStringSync();
    }

    String monoPkg;
    if (values['mono_pkg'] != null) {
      final monoPkgFile = configUri.resolve(values['mono_pkg'] as String).path;
      monoPkg = File(monoPkgFile).readAsStringSync();
    }

    // Generate package description.
    final apiDescriptions = <RestDescription>[];
    const description = 'Auto-generated client libraries for accessing Google '
        'APIs described through the API discovery service.';
    for (var apiDescription in allApis) {
      if (apis.contains(apiDescription.id)) {
        apiDescriptions.add(apiDescription);
      }
    }

    // Generate the README.md file content.
    final readme = _generateReadme(readmeFile, apiDescriptions);

    // Read the LICENSE
    final license = File(licenseFile).readAsStringSync();

    // Read CHANGELOG.md
    final changelog = File(changelogFile).readAsStringSync();

    // Create package description with pubspec.yaml information.
    final pubspec = Pubspec(
      name,
      version,
      description,
      author: author,
      repository: repository,
      extraDevDependencies: extraDevDependencies,
    );
    return Package(
      name,
      List<String>.from(apis),
      pubspec,
      readme,
      license,
      changelog,
      example,
      monoPkg,
    );
  }

  /// The known APIs are the APis mentioned in each package together with
  /// the APIs explicitly skipped.
  static Set<String> _calculateKnownApis(
    Map<String, Package> packages,
    List skippedApis,
  ) {
    final knownApis = <String>{...skippedApis.cast<String>()};
    packages.forEach((_, package) => knownApis.addAll(package.apis));
    return knownApis;
  }

  /// The missing APIs are the APIs returned from the Discovery Service
  /// but not mentioned in the configuration.
  static List<String> _calculateMissingApis(
    Iterable<String> knownApis,
    List<RestDescription> allApis,
  ) =>
      allApis
          .where((item) => !knownApis.contains(item.id))
          .map((item) => item.id)
          .toList();

  /// The excess APIs are the APIs mentioned in the configuration but not
  /// returned from the Discovery Service.
  static Set<String> _calculateExcessApis(
    Iterable<String> knownApis,
    List<RestDescription> allApis,
  ) =>
      Set<String>.from(knownApis)..removeAll(allApis.map((e) => e.id));
}
