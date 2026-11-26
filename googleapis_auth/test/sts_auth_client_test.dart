// Copyright 2026 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

import 'dart:convert';

import 'package:googleapis_auth/src/sts_auth_client.dart';
import 'package:http/http.dart';
import 'package:test/test.dart';
import 'package:test_descriptor/test_descriptor.dart' as d;

import 'test_utils.dart';

const _stsUrl = 'https://sts.googleapis.com/v1/token';

void main() {
  test('clientViaStsTokenExchange file credentials', testOn: 'vm', () async {
    await d.file('token.txt', 'my-token').create();

    final c = await clientViaStsTokenExchange(
      credentialSource: {'file': d.path('token.txt')},
      audience: 'my-audience',
      subjectTokenType: 'my-token-type',
      tokenUrl: _stsUrl,
      scopes: const ['s1'],
      baseClient: routeMockClient({
        _stsUrl: (request) {
          expectXGoogApiClientHeader(request);
          final body = jsonDecode(request.body) as Map<String, dynamic>;
          expect(body['subjectToken'], 'my-token');
          expect(body['audience'], 'my-audience');
          return oauthTokenResponse();
        },
      }, count: 1),
    );
    addTearDown(c.close);

    expect(c.credentials.accessToken.data, 'atoken');
  });

  test('clientViaStsTokenExchange url credentials json format', () async {
    final c = await clientViaStsTokenExchange(
      credentialSource: {
        'url': 'http://localhost/token',
        'headers': {'x-header': 'value'},
        'format': {'type': 'json', 'subject_token_field_name': 'special_token'},
      },
      audience: 'my-audience',
      subjectTokenType: 'my-token-type',
      tokenUrl: _stsUrl,
      scopes: const ['s1'],
      baseClient: routeMockClient({
        'http://localhost/token': (request) {
          expect(request.headers['x-header'], 'value');
          return jsonResponse({'special_token': 'my-url-token'});
        },
        _stsUrl: (request) {
          final body = jsonDecode(request.body) as Map<String, dynamic>;
          expect(body['subjectToken'], 'my-url-token');
          return oauthTokenResponse();
        },
      }, count: 2),
    );
    addTearDown(c.close);

    expect(c.credentials.accessToken.data, 'atoken');
  });

  test(
    'clientViaStsTokenExchange url credentials invalid json format',
    () async {
      await expectLater(
        clientViaStsTokenExchange(
          credentialSource: {
            'url': 'http://localhost/token',
            'format': {
              'type': 'json',
              'subject_token_field_name': 'special_token',
            },
          },
          audience: 'my-audience',
          subjectTokenType: 'my-token-type',
          tokenUrl: _stsUrl,
          scopes: const ['s1'],
          baseClient: routeMockClient({
            'http://localhost/token': (_) => Response('not-valid-json', 200),
          }, count: 1),
        ),
        throwsA(isServerRequestFailedException),
      );
    },
  );

  test('StsAuthClient validates tokenUrl and universeDomain', () {
    expect(
      () => StsAuthClient(
        credentialSource: const {'file': 'unused'},
        audience: 'aud',
        subjectTokenType: 'type',
        tokenUrl: 'http://sts.s3nsapis.fr/v1/token',
        scopes: const ['s1'],
        baseClient: neverClient,
      ),
      throwsArgumentError,
    );
    expect(
      () => StsAuthClient(
        credentialSource: const {'file': 'unused'},
        audience: 'aud',
        subjectTokenType: 'type',
        tokenUrl: 'https://sts.s3nsapis.fr/v1/token',
        scopes: const ['s1'],
        universeDomain: 'googleapis.com@evil.com',
        baseClient: neverClient,
      ),
      throwsArgumentError,
    );
  });
}
