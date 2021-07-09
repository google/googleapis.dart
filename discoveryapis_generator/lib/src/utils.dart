// Copyright (c) 2015, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library discoveryapis_generator.utils;

import 'dart:io';

import 'package:dart_style/dart_style.dart';
import 'package:path/path.dart';

final _cleanRegEx = RegExp(r'[^\w$]');
String _cleanName(String name) => name.replaceAll(_cleanRegEx, '_');

final _formatter = DartFormatter(lineEnding: '\n', pageWidth: 80);

String formatSource(String source) => _formatter.format(source);

// TODO: Is this all we have to do?
String escapeString(String string) => string
    .replaceAll(r'$', r'\$')
    .replaceAll("'", "\\'")
    .replaceAll('"', '\\"');

void orderedForEach<K extends Comparable<K>, V>(
  Map<K, V> map,
  void Function(K, V?) fun,
) {
  final keys = List<K>.from(map.keys)..sort();
  for (var key in keys) {
    fun(key, map[key]);
  }
}

void writeDartSource(String path, String content) {
  writeString(path, formatSource(content));
}

void writeString(String path, String content) {
  final file = File(path);
  if (!file.existsSync()) {
    file.createSync(recursive: true);
  }
  file.writeAsStringSync(content);
}

String? findPackageRoot(String path) {
  if (path.startsWith('file:')) {
    path = fromUri(path);
  }
  path = absolute(path);
  while (path != dirname(path)) {
    // We use the pubspec.yaml file as an indicator of being in the package
    // root directory.
    final pubspec = File(join(path, 'pubspec.yaml'));
    if (pubspec.existsSync()) return path;
    path = dirname(path);
  }
  return null;
}

class GenerateResult {
  final String? apiName;
  final String? apiVersion;
  final String? message;
  final String? packagePath;
  bool success = false;
  bool info = false;

  GenerateResult(
      String this.apiName, String this.apiVersion, String this.packagePath)
      : success = true,
        message = null;

  GenerateResult.fromMessage(this.message)
      : info = true,
        apiName = null,
        apiVersion = null,
        packagePath = null;

  GenerateResult.error(String this.apiName, String this.apiVersion,
      String this.packagePath, String this.message)
      : success = false;

  String get shortName =>
      _cleanName('${apiName}_${apiVersion}_api').toLowerCase();

  @override
  String toString() {
    if (info) {
      assert(message != null);
      return message!;
    } else {
      assert(apiName != null && apiVersion != null && packagePath != null);
      final flag = success ? '[SUCCESS]' : '[FAIL]';
      final msg = message != null && message!.isNotEmpty ? ':\n$message' : '';
      return '$flag $apiName $apiVersion @ $packagePath $msg';
    }
  }
}

class GeneratorError implements Exception {
  final String? api;
  final String? version;
  final String message;

  GeneratorError(this.api, this.version, this.message);

  @override
  String toString() => 'Error while generating API for $api/$version: $message';
}
