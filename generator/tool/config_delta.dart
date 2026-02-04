import 'dart:collection';
import 'dart:convert';
import 'dart:io';

import 'package:pub_semver/pub_semver.dart';
import 'package:yaml/yaml.dart';

Future<void> main() async {
  // 1. Find the latest googleapis-vX.Y.Z tag
  final tagsResult = await Process.run('git', ['tag', '-l', 'googleapis-v*']);
  if (tagsResult.exitCode != 0) {
    stderr.writeln('Failed to list git tags: ${tagsResult.stderr}');
    exitCode = 1;
    return;
  }

  final tags =
      LineSplitter.split(
        tagsResult.stdout as String,
      ).where((t) => t.trim().isNotEmpty).toList();

  if (tags.isEmpty) {
    stderr.writeln('No googleapis-v* tags found.');
    exitCode = 1;
    return;
  }

  // Parse versions to find the latest
  String? latestTag;
  Version? latestVersion;

  for (var tag in tags) {
    final versionStr = tag.substring('googleapis-v'.length);
    try {
      final version = Version.parse(versionStr);
      if (latestVersion == null || version > latestVersion) {
        latestVersion = version;
        latestTag = tag;
      }
    } catch (e) {
      // Ignore tags that don't match the expected format
      continue;
    }
  }

  if (latestTag == null) {
    stderr.writeln('Could not find a valid latest version tag.');
    exitCode = 1;
    return;
  }

  stderr.writeln('Comparing against latest tag: $latestTag');

  // 2. Read config.yaml from that tag
  final oldConfigContent = await _gitShow(latestTag, 'config.yaml');
  if (oldConfigContent == null) {
    stderr.writeln('Could not read config.yaml from $latestTag');
    exitCode = 1;
    return;
  }

  // 3. Read current config.yaml
  final newConfigContent = File('config.yaml').readAsStringSync();

  // 4. Parse configurations
  final oldApis = _parseApis(oldConfigContent);
  final newApis = _parseApis(newConfigContent);

  // 5. Calculate Delta
  final allApiNames =
      SplayTreeSet<String>()
        ..addAll(oldApis.keys)
        ..addAll(newApis.keys);

  for (var api in allApiNames) {
    if (!oldApis.containsKey(api)) {
      print('- `$api` - new');
      continue;
    }

    if (!newApis.containsKey(api)) {
      print('- `$api` - removed');
      continue;
    }

    final oldVersions = oldApis[api]!;
    final newVersions = newApis[api]!;

    final added = newVersions.difference(oldVersions);
    final removed = oldVersions.difference(newVersions);

    for (var v in removed) {
      print('- `$api` - removed `$v`');
    }
    for (var v in added) {
      print('- `$api` - added `$v`');
    }
  }
}

Future<String?> _gitShow(String ref, String path) async {
  final result = await Process.run('git', ['show', '$ref:$path']);
  if (result.exitCode != 0) {
    return null;
  }
  return result.stdout as String;
}

Map<String, Set<String>> _parseApis(String yamlContent) {
  final doc = loadYaml(yamlContent);
  if (doc is! Map) throw const FormatException('Config must be a map');

  final apis = <String, Set<String>>{};

  // We need to look for 'packages' key which is a list
  final packages = doc['packages'] as List;

  // Find the 'googleapis' entry
  final googleapisConfig =
      packages
          .whereType<Map>()
          .where((element) => element.containsKey('googleapis'))
          .firstOrNull;

  if (googleapisConfig == null) return apis;

  final googleapisMap = googleapisConfig['googleapis'] as Map;
  if (!googleapisMap.containsKey('apis')) return apis;

  final apiList = googleapisMap['apis'] as List;

  for (var entry in apiList) {
    // format is "api:version"
    final parts = (entry as String).split(':');
    if (parts.length == 2) {
      final name = parts[0];
      final version = parts[1];
      apis.putIfAbsent(name, SplayTreeSet.new).add(version);
    }
  }

  return apis;
}
