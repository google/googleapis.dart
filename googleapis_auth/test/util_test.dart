// Copyright 2021 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

@Timeout(Duration(seconds: 2))
library;

import 'dart:convert';

import 'package:googleapis_auth/googleapis_auth.dart' as public_api;
import 'package:googleapis_auth/src/utils.dart';
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

  test('defaultUniverseDomain is exported publicly', () {
    expect(public_api.defaultUniverseDomain, 'googleapis.com');
  });

  test('universeDomainFromIamHost and universeDomainFromStsHost parse global, '
      'regional, mTLS, REP, and PSC hosts', () {
    const iamCases = {
      'iamcredentials.googleapis.com': 'googleapis.com',
      'iamcredentials.s3nsapis.fr': 's3nsapis.fr',
      'us-central1-iamcredentials.googleapis.com': 'googleapis.com',
      'eu-west9-iamcredentials.s3nsapis.fr': 's3nsapis.fr',
      'iamcredentials.mtls.googleapis.com': 'googleapis.com',
      'iamcredentials.mtls.s3nsapis.fr': 's3nsapis.fr',
      'us-central1-iamcredentials.mtls.s3nsapis.fr': 's3nsapis.fr',
      'iamcredentials.us-central1.rep.googleapis.com': 'googleapis.com',
      'iamcredentials.eu-west9.rep.s3nsapis.fr': 's3nsapis.fr',
      'iamcredentials.eu-west9.rep.mtls.s3nsapis.fr': 's3nsapis.fr',
      'iamcredentials.mtls.eu-west9.rep.s3nsapis.fr': 's3nsapis.fr',
      'iamcredentials-mypsc.p.googleapis.com': 'googleapis.com',
      'iamcredentials-mypsc.p.s3nsapis.fr': 's3nsapis.fr',
      'attacker.com-iamcredentials.googleapis.com': null,
      'iamcredentials.mtls.com': null,
      'proxy.corp.example': null,
      'localhost': null,
    };
    for (final MapEntry(key: host, value: expected) in iamCases.entries) {
      expect(universeDomainFromIamHost(host), expected, reason: host);
    }

    const stsCases = {
      'sts.googleapis.com': 'googleapis.com',
      'sts.s3nsapis.fr': 's3nsapis.fr',
      'us-central1-sts.googleapis.com': 'googleapis.com',
      'eu-west9-sts.s3nsapis.fr': 's3nsapis.fr',
      'sts.mtls.googleapis.com': 'googleapis.com',
      'sts.mtls.s3nsapis.fr': 's3nsapis.fr',
      'us-central1-sts.mtls.s3nsapis.fr': 's3nsapis.fr',
      'sts.us-central1.rep.googleapis.com': 'googleapis.com',
      'sts.eu-west9.rep.s3nsapis.fr': 's3nsapis.fr',
      'sts.eu-west9.rep.mtls.s3nsapis.fr': 's3nsapis.fr',
      'sts.mtls.eu-west9.rep.s3nsapis.fr': 's3nsapis.fr',
      'sts-mypsc.p.googleapis.com': 'googleapis.com',
      'sts-mypsc.p.s3nsapis.fr': 's3nsapis.fr',
      'attacker.com-sts.googleapis.com': null,
      'sts.mtls.com': null,
      'proxy.corp.example': null,
      'localhost': null,
    };
    for (final MapEntry(key: host, value: expected) in stsCases.entries) {
      expect(universeDomainFromStsHost(host), expected, reason: host);
    }
  });

  test('validateIamEndpoint allows same-universe mTLS/REP/PSC and rejects '
      'cross-universe variants', () {
    for (final valid in [
      'https://iamcredentials.mtls.s3nsapis.fr',
      'https://iamcredentials.eu-west9.rep.s3nsapis.fr',
      'https://iamcredentials.eu-west9.rep.mtls.s3nsapis.fr',
      'https://iamcredentials-mypsc.p.s3nsapis.fr',
    ]) {
      expect(validateIamEndpoint(valid, 's3nsapis.fr'), valid);
    }

    for (final mismatched in [
      'https://iamcredentials.mtls.googleapis.com',
      'https://iamcredentials.us-central1.rep.googleapis.com',
      'https://iamcredentials-mypsc.p.googleapis.com',
    ]) {
      expect(
        () => validateIamEndpoint(mismatched, 's3nsapis.fr'),
        throwsArgumentError,
        reason: mismatched,
      );
    }

    for (final tpcEndpoint in [
      'https://iamcredentials.s3nsapis.fr',
      'https://iamcredentials.mtls.s3nsapis.fr',
      'https://iamcredentials.eu-west9.rep.s3nsapis.fr',
      'https://iamcredentials-mypsc.p.s3nsapis.fr',
    ]) {
      expect(
        () => validateIamEndpoint(tpcEndpoint, defaultUniverseDomain),
        throwsArgumentError,
        reason: tpcEndpoint,
      );
    }
  });
}
