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
  test(
    'addXGoogApiClientHeader uses pubspec.yaml version and VM Dart version',
    () async {
      final pkgUri = await Isolate.resolvePackageUri(
        Uri.parse('package:googleapis_auth/googleapis_auth.dart'),
      );
      expect(pkgUri, isNotNull, reason: 'package URI must resolve');

      final pubspecFile = File.fromUri(pkgUri!.resolve('../pubspec.yaml'));
      expect(
        pubspecFile.existsSync(),
        isTrue,
        reason: 'pubspec.yaml must exist',
      );

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
      final expectedDartVersion = Platform.version
          .split(RegExp('[^0-9]'))
          .take(3)
          .join('.');
      expect(expectedDartVersion, matches(RegExp(r'^\d+\.\d+\.\d+$')));

      final headers = addXGoogApiClientHeader({});
      expect(headers, {
        'x-goog-api-client':
            'gl-dart/$expectedDartVersion auth/$pubspecVersion',
      });
    },
  );

  test(
    'addXGoogApiClientHeader preserves existing header case-insensitively',
    () {
      final headers = addXGoogApiClientHeader({
        'X-Goog-Api-Client': 'gl-dart/3.8.0 gdcl/17.0.0',
      });
      expect(headers, {'X-Goog-Api-Client': 'gl-dart/3.8.0 gdcl/17.0.0'});
    },
  );
}
