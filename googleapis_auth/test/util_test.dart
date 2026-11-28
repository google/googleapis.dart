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

    test(
      'validateTokenUri and parseTokenUri enforce HTTPS or loopback HTTP',
      () {
        for (final valid in [
          'https://oauth2.googleapis.com/token',
          'http://localhost:8080/token',
          'http://127.0.0.1:8080/token',
          'http://[::1]:8080/token',
        ]) {
          expect(parseTokenUri(valid).toString(), valid);
          expect(validateTokenUri(Uri.parse(valid)).toString(), valid);
        }

        for (final invalid in [
          '',
          'not-a-uri',
          '/relative/token',
          'http://oauth2.evil.com/token',
          'https://user@oauth2.googleapis.com/token',
          'https://oauth2.googleapis.com/token#frag',
        ]) {
          expect(
            () => parseTokenUri(invalid),
            throwsArgumentError,
            reason: invalid,
          );
        }
      },
    );

    test('universeDomainFromIamHost parses global, regional, mTLS, REP, and '
        'PSC hosts', () {
      const templates = [
        ('{s}.googleapis.com', 'googleapis.com'),
        ('{s}.s3nsapis.fr', 's3nsapis.fr'),
        ('us-central1-{s}.googleapis.com', 'googleapis.com'),
        ('eu-west9-{s}.s3nsapis.fr', 's3nsapis.fr'),
        ('{s}.mtls.googleapis.com', 'googleapis.com'),
        ('{s}.mtls.s3nsapis.fr', 's3nsapis.fr'),
        ('us-central1-{s}.mtls.s3nsapis.fr', 's3nsapis.fr'),
        ('{s}.us-central1.rep.googleapis.com', 'googleapis.com'),
        ('{s}.eu-west9.rep.s3nsapis.fr', 's3nsapis.fr'),
        ('{s}.eu-west9.rep.mtls.s3nsapis.fr', 's3nsapis.fr'),
        ('{s}.mtls.eu-west9.rep.s3nsapis.fr', 's3nsapis.fr'),
        ('{s}-mypsc.p.googleapis.com', 'googleapis.com'),
        ('{s}-mypsc.p.s3nsapis.fr', 's3nsapis.fr'),
        ('attacker.com-{s}.googleapis.com', null),
        ('{s}.mtls.com', null),
        ('proxy.corp.example', null),
        ('localhost', null),
      ];

      for (final (template, expected) in templates) {
        final iamHost = template.replaceAll('{s}', 'iamcredentials');
        expect(universeDomainFromIamHost(iamHost), expected, reason: iamHost);
      }
    });

    test('validateIamEndpoint enforces origin format and symmetric universe '
        'isolation', () {
      for (final valid in [
        'https://iamcredentials.mtls.s3nsapis.fr',
        'https://iamcredentials.eu-west9.rep.s3nsapis.fr',
        'https://iamcredentials.eu-west9.rep.mtls.s3nsapis.fr',
        'https://iamcredentials-mypsc.p.s3nsapis.fr',
        'https://custom-proxy.example',
        'http://localhost:8080',
      ]) {
        expect(validateIamEndpoint(valid, 's3nsapis.fr'), valid);
      }
      expect(
        validateIamEndpoint('https://iamcredentials.s3nsapis.fr/', null),
        'https://iamcredentials.s3nsapis.fr',
      );

      for (final (endpoint, universe) in [
        ('', 's3nsapis.fr'),
        ('http://iamcredentials.s3nsapis.fr', 's3nsapis.fr'),
        ('https://user@iamcredentials.s3nsapis.fr', 's3nsapis.fr'),
        ('https://iamcredentials.s3nsapis.fr/extra', 's3nsapis.fr'),
        ('https://iamcredentials.s3nsapis.fr?q=1', 's3nsapis.fr'),
        ('https://iamcredentials.s3nsapis.fr#frag', 's3nsapis.fr'),
        ('https://iamcredentials.mtls.googleapis.com', 's3nsapis.fr'),
        (
          'https://iamcredentials.us-central1.rep.googleapis.com',
          's3nsapis.fr',
        ),
        ('https://iamcredentials-mypsc.p.googleapis.com', 's3nsapis.fr'),
        ('https://iamcredentials.s3nsapis.fr', defaultUniverseDomain),
        ('https://iamcredentials.mtls.s3nsapis.fr', defaultUniverseDomain),
        (
          'https://iamcredentials.eu-west9.rep.s3nsapis.fr',
          defaultUniverseDomain,
        ),
        ('https://iamcredentials-mypsc.p.s3nsapis.fr', defaultUniverseDomain),
      ]) {
        expect(
          () => validateIamEndpoint(endpoint, universe),
          throwsArgumentError,
          reason: '$endpoint for $universe',
        );
      }
    });
  });
}
