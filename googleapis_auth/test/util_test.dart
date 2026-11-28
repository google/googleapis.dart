// Copyright 2021 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

@Timeout(Duration(seconds: 2))
library;

import 'dart:convert';

import 'package:googleapis_auth/googleapis_auth.dart'
    show defaultUniverseDomain;
import 'package:googleapis_auth/src/utils.dart' hide defaultUniverseDomain;
import 'package:http/http.dart';
import 'package:test/test.dart';

import 'test_utils.dart';

void main() {
  test('requestJson throws for non-UTF-8 response', () async {
    const body = [
      // https://man7.org/linux/man-pages/man7/utf-8.7.html
      // 0xC0 is never used in UTF8-encoding!
      0xC0,
    ];
    final client = mockClient(
      (request) async => Response.bytes(body, 200, headers: jsonContentType),
      expectClose: false,
    );

    await expectLater(
      client.requestJson('GET', Uri.parse('localhost:8080'), 'bob'),
      throwsA(
        isServerRequestFailedException
            .having(
              (e) => e.message,
              'message',
              contains('The response was not valid UTF-8.'),
            )
            .having((e) => e.responseContent, 'responseContent', body),
      ),
    );
  });

  test('requestJson throws for non-JSON response', () async {
    const body = 'this is not good json!';
    final client = mockClient(
      (request) async => Response(body, 200, headers: jsonContentType),
      expectClose: false,
    );

    await expectLater(
      client.requestJson('GET', Uri.parse('localhost:8080'), 'bob'),
      throwsA(
        isServerRequestFailedException
            .having(
              (e) => e.message,
              'message',
              contains('Could not decode the response as JSON.'),
            )
            .having((e) => e.responseContent, 'responseContent', body),
      ),
    );
  });

  test('requestJson throws for JSON that is not a Map', () async {
    final body = <void>[];
    final client = mockClient(
      (request) async =>
          Response(jsonEncode(body), 200, headers: jsonContentType),
      expectClose: false,
    );

    await expectLater(
      client.requestJson('GET', Uri.parse('localhost:8080'), 'bob'),
      throwsA(
        isServerRequestFailedException
            .having(
              (e) => e.message,
              'message',
              'The returned JSON response was not a Map.',
            )
            .having((e) => e.responseContent, 'responseContent', body),
      ),
    );
  });

  test('requestJson throws for non-200 status code', () async {
    final client = mockClient(
      (request) async =>
          Response(jsonEncode({}), 500, headers: jsonContentType),
      expectClose: false,
    );

    await expectLater(
      client.requestJson('GET', Uri.parse('localhost:8080'), 'bob'),
      throwsA(
        isServerRequestFailedException.having(
          (e) => e.statusCode,
          'statusCode',
          500,
        ),
      ),
    );
  });

  group('universe domain helpers', () {
    test('normalizeUniverseDomain normalizes valid values', () {
      expect(normalizeUniverseDomain(null), defaultUniverseDomain);
      expect(normalizeUniverseDomain(''), defaultUniverseDomain);
      expect(normalizeUniverseDomain('GOOGLEAPIS.COM'), defaultUniverseDomain);
      expect(normalizeUniverseDomain('S3NSAPIS.FR'), 's3nsapis.fr');
      expect(
        normalizeUniverseDomain('my-universe.cloud.example'),
        'my-universe.cloud.example',
      );
    });

    test('normalizeUniverseDomain rejects malformed values', () {
      for (final invalid in [
        '   ',
        's3nsapis.fr ',
        ' s3nsapis.fr',
        'singlelabel',
        '.s3nsapis.fr',
        's3nsapis.fr.',
        's3nsapis..fr',
        '-s3nsapis.fr',
        's3nsapis-.fr',
        'googleapis.com@evil.com',
        's3nsapis.fr/evil',
        's3nsapis.fr?x=1',
        's3nsapis.fr#frag',
        's3nsapis.fr:443',
        'https://s3nsapis.fr',
        '${'a' * 64}.example.com',
        '${'a' * 60}.${'b' * 60}.${'c' * 60}.${'d' * 60}.${'e' * 20}',
      ]) {
        expect(
          () => normalizeUniverseDomain(invalid),
          throwsArgumentError,
          reason: 'Should reject "$invalid"',
        );
        expect(tryNormalizeUniverseDomain(invalid), isNull);
      }
    });
  });
}
