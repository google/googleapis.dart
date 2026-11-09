// Copyright 2026 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

import 'dart:io';

import 'package:discoveryapis_generator/src/client/client_api_library.dart';
import 'package:discoveryapis_generator/src/dart_api_library.dart';
import 'package:discoveryapis_generator/src/generated_googleapis/discovery/v1.dart';
import 'package:discoveryapis_generator/src/namer.dart';
import 'package:discoveryapis_generator/src/shared_output.dart';
import 'package:discoveryapis_generator/src/utils.dart';
import 'package:path/path.dart' as p;
import 'package:source_helper/source_helper.dart';
import 'package:test/test.dart';

RestDescription _description({
  String name = 'testapi',
  String version = 'v1',
  Map<String, Object?>? methods,
  Map<String, Object?>? schemas,
}) => RestDescription.fromJson({
  'name': name,
  'version': version,
  'rootUrl': 'https://example.com/',
  'servicePath': '$name/v1/',
  'methods': ?methods,
  'schemas': ?schemas,
});

String _buildLib({
  String name = 'testapi',
  String version = 'v1',
  Map<String, Object?>? methods,
  Map<String, Object?>? schemas,
}) => DartApiLibrary.build(
  _description(
    name: name,
    version: version,
    methods: methods,
    schemas: schemas,
  ),
  isPackage: false,
).librarySource;

String _norm(String s) => s.split('\n').map((l) => l.trim()).join('\n');

Map<String, Object?> _objectSchema(Iterable<String> keys) => {
  'type': 'object',
  'properties': {
    for (final key in keys) key: {'type': 'string'},
  },
};

void main() {
  setUpAll(() => omitCopyrightHeaders = true);

  group('requestHeadersField version escaping', () {
    const adversarialVersions = [
      "1.0', 'evil': 'injected",
      '1.0", "evil": "injected',
      r'1.0${1 + 1}$injected',
      r"""1.0' "${1 + 1}" $injected""",
      '1.0\r\nfinal pwn = true;',
      '1.0\u2028\u2029',
      r"1.0\'\\",
    ];

    test('preserves standard output for normal versions', () {
      final generated = formatSource(requestHeadersField('1.0'));
      expect(
        generated,
        contains("'user-agent': 'google-api-dart-client/1.0',"),
      );
      expect(
        generated,
        contains(
          r"'x-goog-api-client': 'gl-dart/${commons.dartVersion} gdcl/1.0',",
        ),
      );
    });

    test('escapes crafted versions', () {
      for (final version in adversarialVersions) {
        final formatted = formatSource(requestHeadersField(version));
        final ua = escapeDartString('google-api-dart-client/$version');
        expect(formatted, contains("'user-agent': $ua,"));
        expect(
          RegExp('^final ', multiLine: true).allMatches(formatted),
          hasLength(1),
        );
        expect(formatted, contains("'x-goog-api-client':"));

        expect(
          _buildLib(version: version),
          contains('final requestHeaders = {'),
        );
      }
    });

    test('generated requestHeaders passes dart analyze and runtime check', () {
      final tempDir = Directory.systemTemp.createTempSync('code_inj_headers_');
      addTearDown(() => tempDir.deleteSync(recursive: true));

      final buffer = StringBuffer(
        'class _Commons { const _Commons(); '
        "String get dartVersion => '3.9.0'; }\n"
        'const commons = _Commons();\n',
      );
      for (var i = 0; i < adversarialVersions.length; i++) {
        buffer.writeln(
          requestHeadersField(
            adversarialVersions[i],
          ).replaceFirst('final requestHeaders =', 'final requestHeaders$i ='),
        );
      }
      buffer.writeln('void main() {');
      for (var i = 0; i < adversarialVersions.length; i++) {
        buffer.writeln(
          'if (requestHeaders$i.length != 2) throw StateError("len $i");\n'
          "final client$i = requestHeaders$i['x-goog-api-client']!;\n"
          "if (!client$i.startsWith('gl-dart/3.9.0 gdcl/')) "
          "throw StateError('hdr $i');",
        );
      }
      buffer.writeln('}');

      final file = File(p.join(tempDir.path, 'headers_check.dart'))
        ..writeAsStringSync(formatSource(buffer.toString()));
      for (final args in [
        ['analyze', '--fatal-infos', file.path],
        ['run', file.path],
      ]) {
        final result = Process.runSync(Platform.resolvedExecutable, args);
        expect(
          result.exitCode,
          0,
          reason: '${args.first}:\n${result.stdout}\n${result.stderr}',
        );
      }
    });
  });

  test('DartResourceMethod escapes crafted httpMethod', () {
    for (final httpMethod in const [
      "GET', body: 'injected",
      "POST'); throw 'pwn'; //",
      r'GET$injected',
      r'GET${1 + 1}',
      'GET\r\nfinal pwn = 1;',
      r'''GET"'${1 + 1}\''',
      'GET\u2028\u2029',
    ]) {
      final source = _buildLib(
        methods: {
          'doThing': {
            'id': 'testapi.doThing',
            'path': 'things',
            'httpMethod': httpMethod,
          },
        },
      );
      final escaped = escapeDartString(httpMethod);
      final call = formatSource(
        'Future<void> f() async { '
        'await _requester.request(url_, $escaped, downloadOptions: null); }',
      );
      final inner = call.substring(
        call.indexOf('\n') + 1,
        call.lastIndexOf('}'),
      );
      expect(
        _norm(source),
        contains(_norm(inner)),
        reason: 'httpMethod ${httpMethod.codeUnits}',
      );
    }
  });

  test('AbstractVariantType escapes crafted discriminant and type_value', () {
    for (final payload in const [
      'type" || true) { return LineGeometry(); } //',
      "type']; throw 'pwn'; //",
      r'type${1 + 1}$injected',
      'type\r\nfinal pwn = 1;',
      r'''type"'${1 + 1}\''',
      'type\u2028\u2029',
    ]) {
      final source = _buildLib(
        name: 'variantapi',
        schemas: {
          'Geometry': {
            'type': 'object',
            'variant': {
              'discriminant': payload,
              'map': [
                {'type_value': payload, r'$ref': 'LineGeometry'},
              ],
            },
          },
          'LineGeometry': _objectSchema([payload, 'label']),
        },
      );
      final escaped = escapeDartString(payload);
      expect(source, contains('abstract class Geometry'));
      expect(source, contains('var discriminant = json[$escaped];'));
      expect(source, contains('if (discriminant == $escaped) {'));
    }
  });

  group('Scope.toValidIdentifier ASCII punctuation escaping', () {
    test('replaces [, \\, ], ^, and ` with underscores', () {
      const cases = {
        'a[b]c': 'a_b_c',
        r'a\bc': 'a_bc',
        'a^bc': 'a_bc',
        'a`bc': 'a_bc',
        '[leading': 'P_leading',
        '`leading`': 'P_leading_',
        r'a[\]^_`b': 'a_____b',
        'remove_underscore': 'removeUnderscore',
      };
      cases.forEach(
        (input, expected) => expect(Scope.toValidIdentifier(input), expected),
      );
      expect(
        Scope.toValidIdentifier(r'a[\]^_`b', removeUnderscores: false),
        'a______b',
      );
      expect(
        Scope.toValidIdentifier('keep_underscore', removeUnderscores: false),
        'keep_underscore',
      );
    });

    test('generated library with [\\]^_` property names formats cleanly', () {
      final source = _buildLib(
        name: 'namerapi',
        schemas: {
          'Payload': _objectSchema(['a[0]', r'b\c', 'd^e', 'f`g', 'ok_name']),
        },
      );
      for (final field in ['a_0_', 'b_c', 'd_e', 'f_g', 'okName']) {
        expect(source, contains('core.String? $field;'));
      }
    });
  });

  test(
    'ClientObjectType toJson emits escaped keys without extra double quotes',
    () {
      final clientLib = ClientApiLibrary.build(
        _description(
          name: 'clientapi',
          schemas: {
            'Item': _objectSchema([
              'normalKey',
              "single'quote",
              'double"quote',
              r'dollar$expr${1+1}',
              'newline\r\n"\\\'key',
            ]),
          },
        ),
        {'Item': 'package:clientapi/messages.dart'},
        'clientapi',
        '/tmp/clientapi',
      );
      final formatted = formatSource(clientLib.librarySource);

      expect(formatted, contains("'normalKey': ?normalKey,"));
      expect(formatted, isNot(contains('"\'normalKey\'"')));
      expect(formatted, contains('''"single'quote": ?single_quote,'''));
      expect(
        formatted,
        contains(r'''r'dollar$expr${1+1}': ?dollar_expr__1_1_,'''),
      );
      expect(formatted, contains('static Item fromJson('));
      expect(
        formatted,
        contains('static core.Map<core.String, core.dynamic> toJson('),
      );
    },
  );
}
