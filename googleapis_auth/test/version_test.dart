// Copyright 2026 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

@TestOn('vm')
library;

import 'dart:io';
import 'dart:isolate';

import 'package:googleapis_auth/src/version.dart';
import 'package:test/test.dart';

void main() {
  test('packageVersion matches pubspec.yaml', () async {
    final pkgUri = await Isolate.resolvePackageUri(
      Uri.parse('package:googleapis_auth/googleapis_auth.dart'),
    );
    expect(pkgUri, isNotNull, reason: 'package URI must resolve');

    final pubspecFile = File.fromUri(pkgUri!.resolve('../pubspec.yaml'));
    expect(pubspecFile.existsSync(), isTrue, reason: 'pubspec.yaml must exist');

    final content = pubspecFile.readAsStringSync();
    final match = RegExp(
      r'^version:\s*(\S+)',
      multiLine: true,
    ).firstMatch(content);
    expect(
      match,
      isNotNull,
      reason: 'version must be declared in pubspec.yaml',
    );

    final pubspecVersion = match!.group(1);
    expect(
      packageVersion,
      pubspecVersion,
      reason:
          'packageVersion in lib/src/version.dart ($packageVersion) must match '
          'version in pubspec.yaml ($pubspecVersion).',
    );
  });

  test('xGoogApiClientHeaderValue is formatted properly on VM', () {
    expect(dartVersion, matches(RegExp(r'^\d+\.\d+\.\d+$')));
    expect(
      xGoogApiClientHeaderValue,
      'gl-dart/$dartVersion auth/$packageVersion',
    );
  });
}
