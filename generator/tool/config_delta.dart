import 'dart:collection';
import 'dart:io';

import 'package:yaml/yaml.dart';

/// Use this to print a CSV-friendly delta between an old config and a new
/// config.
Future<void> main(List<String> args) async {
  if (args.length != 2) {
    stderr.writeln(
      r'''
run with two args: <old_config_file_path> <new_config_file_path>',

You migt also want to do
  git show LAST_PUBLISHED_VERSION:config.yaml > old_config.yaml''',
    );
    exitCode = 1;
    return;
  }

  final configs = [
    ..._configs('old', args[0]),
    ..._configs('new', args[1]),
  ];

  stderr.writeln('config count: ${configs.length}');

  final allApis = SplayTreeSet.of(
    configs.expand((element) => element.apis.keys),
  );

  for (var name in _names) {
    stderr.writeln('\n### $name');
    final oldVer = configs.singleWhere(
        (element) => element.version == 'old' && element.name == name);
    final newVer = configs.singleWhere(
        (element) => element.version == 'new' && element.name == name);
    for (var api in allApis) {
      final oldApi = oldVer.apis[api].toString();
      final newApi = newVer.apis[api].toString();
      if (oldApi == newApi) {
        continue;
      }
      stderr.writeln([
        api.padRight(30),
        'old:',
        oldApi.padRight(10),
        'new:',
        newApi.padRight(10),
      ].join('\t'));
    }
  }

  final rows = [
    [
      'api',
      ...configs.map((e) => '${e.name}@${e.version}'),
    ],
    for (var api in allApis)
      [
        api,
        ...configs.map((e) => e.apis[api]?.join(',') ?? ''),
      ]
  ];

  print(rows.map((row) => row.map((e) => '"$e"').join(',')).join('\n'));
}

Iterable<Configuration> _configs(String version, String path) sync* {
  stderr.writeln('file: $version');
  final fileContents = File(path).readAsStringSync();
  final yaml = loadYaml(fileContents, sourceUrl: Uri.parse(path)) as YamlMap;
  final packages = yaml['packages'] as YamlList?;

  for (var name in _names) {
    stderr.writeln('  api: $name');
    final entry = packages!.singleWhere(
        (element) => element is Map && element.containsKey(name)) as YamlMap;

    final data = entry[name] as YamlMap;

    final apiList = (data['apis'] as YamlList).cast<String>();

    final apis = SplayTreeMap<String, Set<String>>();

    for (var api in apiList) {
      final split = api.split(':');
      assert(split.length == 2);
      final apiName = split[0];
      final apiVersion = split[1];

      apis.putIfAbsent(apiName, () => SplayTreeSet()).add(apiVersion);
    }
    yield Configuration(name, version, apis);
  }
}

const _names = {'googleapis', 'googleapis_beta'};

class Configuration {
  final String name;
  final String version;

  final Map<String, Set<String>> apis;

  Configuration(this.name, this.version, this.apis);
}
