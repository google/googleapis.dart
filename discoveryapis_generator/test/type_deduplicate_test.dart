// Copyright 2026 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

import 'dart:io';

import 'package:discoveryapis_generator/discoveryapis_generator.dart';
import 'package:discoveryapis_generator/src/apis_package_generator.dart';
import 'package:discoveryapis_generator/src/type_deduplicate.dart';
import 'package:discoveryapis_generator/src/utils.dart';
import 'package:path/path.dart' as p;
import 'package:test/test.dart';

void main() {
  late Directory tmpDir;
  setUpAll(() {
    omitCopyrightHeaders = true;
    tmpDir = Directory.systemTemp.createTempSync();
  });
  tearDownAll(() => tmpDir.deleteSync(recursive: true));

  ({String shared, String apiOne}) gen(String id1, String s1, String s2) {
    final dir = tmpDir.createTempSync();
    final results = ApisPackageGenerator(
      [_desc('api_one', id1, s1), _desc('api_two', 'api_two:v1', s2)],
      Pubspec('test_pkg', '1.0.0', 'Test'),
      dir.path,
      skipTests: const {},
    ).generateApiPackage();
    expect(results.every((r) => r.success), isTrue, reason: '$results');
    final shared = File(
      p.join(dir.path, 'lib', sharedLibraryName),
    ).readAsStringSync();
    final apiOne = File(
      p.join(dir.path, 'lib', 'api_one', 'v1.dart'),
    ).readAsStringSync();
    expect(shared, isNot(contains(RegExp(r'[\r\u2028\u2029]'))));
    expect(() => formatSource(shared), returnsNormally);
    expect(() => formatSource(apiOne), returnsNormally);
    return (shared: shared, apiOne: apiOne);
  }

  void expectDocOnly(String src, int count) {
    final lines = src.split('\n').where((l) => l.contains('void injected()'));
    expect(lines, hasLength(count));
    for (final line in lines) {
      expect(line, startsWith('/// - '));
    }
  }

  group('DuplicateItem.definition sanitization', () {
    for (final e in const {
      'CR': '\r',
      'CRLF': '\r\n',
      'LF': '\n',
      'LS': '\u2028',
      'PS': '\u2029',
    }.entries) {
      test('sanitizes ${e.key} in api.id', () {
        final s = e.value;
        final out = gen('api_one:v1${s}void injected() {}$s//', 'Item', 'Item');
        expect(out.shared, contains('/// Used by:'));
        expect(out.shared, contains(r'class $Item'));
        expectDocOnly(out.shared, 1);
      });
    }

    test('sanitizes trailing terminators and schema.id', () {
      final out = gen('api_one:v1\r\n', 'Item', 'Item\rvoid injected() {}\r//');
      expect(out.shared, contains(r'class $Shared'));
      expect(out.shared, contains('/// - api_one:v1 : Item'));
      expectDocOnly(out.shared, 1);
    });

    for (final entry in const {
      'braces': 'Foo {} void injected() {}',
      'CR': 'Foo\rvoid injected() {}',
    }.entries) {
      test('sanitizes shared schema.id (${entry.key})', () {
        final out = gen('api_one:v1', entry.value, entry.value);
        expectDocOnly(out.shared, 2);
        expect(out.apiOne, isNot(contains('void injected()')));
        expect(out.shared, contains(r'class $Foo_'));
        expect(out.apiOne, contains(r'typedef Foo_'));
      });
    }
  });
}

RestDescription _desc(String name, String id, String sId) => RestDescription(
  name: name,
  version: 'v1',
  id: id,
  rootUrl: 'https://example.googleapis.com/',
  servicePath: '$name/v1/',
  schemas: {
    sId: JsonSchema(
      id: sId,
      type: 'object',
      properties: {'v': JsonSchema(type: 'string')},
    ),
  },
  methods: {
    'get': RestMethod(
      id: '$name.get',
      path: 'items',
      httpMethod: 'GET',
      response: RestMethodResponse(P_ref: sId),
    ),
  },
);
