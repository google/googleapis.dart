// Copyright 2026 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

import 'dart:convert';
import 'dart:io';

import 'package:discoveryapis_generator/discoveryapis_generator.dart';
import 'package:discoveryapis_generator/src/apis_files_generator.dart';
import 'package:discoveryapis_generator/src/apis_package_generator.dart';
import 'package:discoveryapis_generator/src/utils.dart';
import 'package:path/path.dart' as p;
import 'package:test/test.dart';

const _invalidSegments = <String>[
  '',
  ' ',
  '.',
  '..',
  '...',
  '.hidden',
  'foo.',
  'a..b',
  '../escaped',
  '../../escaped',
  '/tmp/evil',
  r'..\escaped',
  r'\tmp\evil',
  'sub/dir',
  r'sub\dir',
  'C:evil',
  r'C:\evil',
  'evil\x00name',
  'evil\nname',
  'evil\rname',
  "evil'; void pwn() {}",
  r'evil$var',
  'evil"name',
];

const _validPairs = <(String name, String version)>[
  ('drive', 'v3'),
  ('admin', 'directory_v1'),
  ('prod_tt_sasportal', 'v1alpha1'),
  ('analytics', 'v1beta1'),
  ('example', 'v1.4'),
  ('example', 'v2.0'),
  ('my-api', 'v1-beta'),
  ('my.api', 'v1beta3'),
];

Map<String, Object?> _descMap({String? name, String? version}) => {
  'kind': 'discovery#restDescription',
  if (name != null && version != null) 'id': '$name:$version',
  'name': ?name,
  'version': ?version,
  'title': 'Test API',
  'rootUrl': 'https://example.com/',
  'servicePath': 'api/',
  'schemas': <String, Object?>{},
};

({Directory root, Directory pkg, Directory client}) _createFilesEnv() {
  final root = Directory.systemTemp.createTempSync('files_gen_');
  addTearDown(() => root.deleteSync(recursive: true));
  final pkg = Directory(p.join(root.path, 'pkg'))..createSync();
  File(
    p.join(pkg.path, 'pubspec.yaml'),
  ).writeAsStringSync('name: test_pkg\nenvironment:\n  sdk: ^3.9.0\n');
  final client = Directory(p.join(pkg.path, 'lib', 'clients'))
    ..createSync(recursive: true);
  return (root: root, pkg: pkg, client: client);
}

({Directory root, Directory out, File sentinel}) _createOutEnv() {
  final root = Directory.systemTemp.createTempSync('pkg_gen_');
  addTearDown(() => root.deleteSync(recursive: true));
  final out = Directory(p.join(root.path, 'out'))..createSync();
  final sentinel = File(p.join(out.path, 'keep.txt'))
    ..writeAsStringSync('keep');
  return (root: root, out: out, sentinel: sentinel);
}

void main() {
  setUpAll(() => omitCopyrightHeaders = true);

  group('ApisFilesGenerator path validation', () {
    for (final bad in <String?>[..._invalidSegments, null]) {
      test('rejects invalid name ${jsonEncode(bad)}', () {
        final env = _createFilesEnv();
        final gen = ApisFilesGenerator([
          DescriptionImportPair(
            jsonEncode(_descMap(name: bad, version: 'v1')),
            null,
          ),
        ], env.client.path);
        expect(gen.generate, throwsArgumentError);
        expect(
          File(p.join(env.root.path, 'escaped.dart')).existsSync(),
          isFalse,
        );
        expect(
          File(p.join(env.pkg.path, 'lib', 'escaped.dart')).existsSync(),
          isFalse,
        );
      });
    }

    for (final (name, version) in _validPairs) {
      test('accepts legitimate ($name, $version)', () {
        final env = _createFilesEnv();
        final results = ApisFilesGenerator([
          DescriptionImportPair(
            jsonEncode(_descMap(name: name, version: version)),
            null,
          ),
        ], env.client.path).generate();
        expect(results.first.success, isTrue);
        expect(
          File(
            p.join(env.client.path, '${name.toLowerCase()}.dart'),
          ).existsSync(),
          isTrue,
        );
      });
    }
  });

  group('ApisPackageGenerator path validation', () {
    final pubspec = Pubspec('test_apis', '0.1.0', 'Test generated package');

    for (final bad in <String?>[..._invalidSegments, null]) {
      test('rejects invalid name/version ${jsonEncode(bad)}', () {
        for (final (name, version) in [(bad, 'v1'), ('drive', bad)]) {
          final env = _createOutEnv();
          final gen = ApisPackageGenerator(
            [RestDescription.fromJson(_descMap(name: name, version: version))],
            pubspec,
            env.out.path,
            skipTests: const {},
          );
          expect(gen.generateApiPackage, throwsArgumentError);
          expect(env.sentinel.existsSync(), isTrue);
          expect(
            Directory(p.join(env.root.path, 'escaped')).existsSync(),
            isFalse,
          );
        }
      });
    }

    for (final (name, version) in _validPairs) {
      test('accepts legitimate ($name, $version)', () {
        final env = _createOutEnv();
        final results = ApisPackageGenerator(
          [RestDescription.fromJson(_descMap(name: name, version: version))],
          pubspec,
          env.out.path,
          skipTests: const {},
        ).generateApiPackage();
        expect(results, hasLength(1));
        expect(results.single.success, isTrue);

        final normName = name.toLowerCase();
        final normVer = version
            .toLowerCase()
            .replaceAll('.', '_')
            .replaceAll('-', '_');
        expect(
          File(
            p.join(env.out.path, 'lib', normName, '$normVer.dart'),
          ).existsSync(),
          isTrue,
        );
        expect(
          File(
            p.join(env.out.path, 'test', normName, '${normVer}_test.dart'),
          ).existsSync(),
          isTrue,
        );
      });
    }
  });
}
