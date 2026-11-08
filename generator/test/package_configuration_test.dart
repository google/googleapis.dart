// Copyright 2026 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

import 'dart:io';

import 'package:googleapis_generator_dependency/src/package_configuration.dart';
import 'package:path/path.dart' as p;
import 'package:test/test.dart';

void main() {
  test('repository config.yaml is valid', () {
    expect(
      () => DiscoveryPackagesConfiguration('../config.yaml'),
      returnsNormally,
    );
  });

  group('DiscoveryPackagesConfiguration validation', () {
    late Directory tempDir;

    setUp(() {
      tempDir = Directory.systemTemp.createTempSync('googleapis_config_test_');
    });

    tearDown(() {
      tempDir.deleteSync(recursive: true);
    });

    String writeConfig(String content) {
      final file = File(p.join(tempDir.path, 'config.yaml'))
        ..writeAsStringSync(content);
      return file.path;
    }

    test('throws StateError when an API is in both apis and skipped_apis', () {
      final configPath = writeConfig('''
packages:
  googleapis:
    apis:
      - foo:v1
      - bar:v1
skipped_apis:
  - bar:v1
''');

      expect(
        () => DiscoveryPackagesConfiguration(configPath),
        throwsA(
          isA<StateError>().having(
            (e) => e.message,
            'message',
            contains(
              'API `bar:v1` is listed more than once: '
              'skipped_apis, packages.googleapis.apis.',
            ),
          ),
        ),
      );
    });

    test('throws StateError when an API is duplicated across packages', () {
      final configPath = writeConfig('''
packages:
  googleapis:
    apis:
      - foo:v1
  googleapis_beta:
    apis:
      - foo:v1
skipped_apis: []
''');

      expect(
        () => DiscoveryPackagesConfiguration(configPath),
        throwsA(
          isA<StateError>().having(
            (e) => e.message,
            'message',
            contains(
              'API `foo:v1` is listed more than once: '
              'packages.googleapis.apis, packages.googleapis_beta.apis.',
            ),
          ),
        ),
      );
    });

    test('throws StateError when deprecation_map or skip_tests references an '
        'unconfigured API', () {
      final configPath = writeConfig('''
packages:
  googleapis:
    apis:
      - foo:v1
    deprecation_map:
      missing:v1: replacement_pkg
skip_tests:
  - another_missing:v1
skipped_apis: []
''');

      expect(
        () => DiscoveryPackagesConfiguration(configPath),
        throwsA(
          isA<StateError>().having(
            (e) => e.message,
            'message',
            allOf(
              contains(
                'API `missing:v1` in `packages.googleapis.deprecation_map` '
                'is not listed in `packages.googleapis.apis`.',
              ),
              contains(
                'API `another_missing:v1` in `skip_tests` is not listed in '
                'any package `apis`.',
              ),
            ),
          ),
        ),
      );
    });

    test(
      'updateConfigurationFile preserves inline YAML comments when adding and '
      'removing APIs',
      () {
        final configPath = writeConfig('''
packages:
  googleapis:
    apis:
      - alpha_keep:v1 # keep comment
      - old_remove:v1 # remove comment
      - zeta_keep:v1
skipped_apis:
  - beta_keep:v1 # sunset (2026-12-15)
  - old_skip:v1beta # obsolete beta
  - omega_keep:v2 # superseded by omega_keep:v3
''');

        final config = DiscoveryPackagesConfiguration(configPath)
          ..missingApis = ['middle_new:v1', 'middle_skip:v1alpha']
          ..excessApis = {'old_remove:v1', 'old_skip:v1beta'};

        expect(config.updateConfigurationFile(), isTrue);

        expect(File(configPath).readAsStringSync(), '''
packages:
  googleapis:
    apis:
      - alpha_keep:v1 # keep comment
      - middle_new:v1
      - zeta_keep:v1
skipped_apis:
  - beta_keep:v1 # sunset (2026-12-15)
  - middle_skip:v1alpha
  - omega_keep:v2 # superseded by omega_keep:v3
''');
      },
    );
  });
}
