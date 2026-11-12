// Copyright 2026 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

import 'dart:convert';
import 'dart:io';

import 'package:discoveryapis_generator/discoveryapis_generator.dart';
import 'package:googleapis_generator_dependency/googleapis_generator.dart';
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

({Directory root, Directory out, File sentinel}) _createOutEnv() {
  final root = Directory.systemTemp.createTempSync('write_docs_');
  addTearDown(() => root.deleteSync(recursive: true));
  final out = Directory(p.join(root.path, 'out'))..createSync();
  final sentinel = File(p.join(out.path, 'keep.txt'))
    ..writeAsStringSync('keep');
  return (root: root, out: out, sentinel: sentinel);
}

void main() {
  group('writeDiscoveryDocuments path validation', () {
    for (final bad in <String?>[..._invalidSegments, null]) {
      test('rejects invalid name/version ${jsonEncode(bad)}', () {
        for (final (name, version) in [(bad, 'v1'), ('drive', bad)]) {
          final env = _createOutEnv();
          expect(
            () => writeDiscoveryDocuments(env.out.path, [
              RestDescription(name: name, version: version),
            ]),
            throwsArgumentError,
          );
          expect(env.sentinel.existsSync(), isTrue);
          expect(
            File(p.join(env.root.path, 'escaped__v1.json')).existsSync(),
            isFalse,
          );
        }
      });
    }

    test('accepts legitimate real-world names and versions', () {
      final env = _createOutEnv();
      writeDiscoveryDocuments(env.out.path, [
        for (final (name, version) in _validPairs)
          RestDescription(name: name, version: version),
      ]);
      for (final (name, version) in _validPairs) {
        expect(
          File(p.join(env.out.path, '${name}__$version.json')).existsSync(),
          isTrue,
        );
      }
    });
  });
}
