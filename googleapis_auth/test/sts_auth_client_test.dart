// Copyright 2026 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

import 'dart:convert';

import 'package:googleapis_auth/src/exceptions.dart';
import 'package:googleapis_auth/src/sts_auth_client.dart';
import 'package:http/http.dart';
import 'package:test/test.dart';
import 'package:test_descriptor/test_descriptor.dart' as d;

import 'test_utils.dart';

void main() {
  test('clientViaStsTokenExchange file credentials', testOn: 'vm', () async {
    await d.file('token.txt', 'my-token').create();

    final c = await clientViaStsTokenExchange(
      credentialSource: {'file': d.path('token.txt')},
      audience: 'my-audience',
      subjectTokenType: 'my-token-type',
      tokenUrl: 'https://sts.googleapis.com/v1/token',
      scopes: ['s1'],
      baseClient: mockClient(expectClose: false, (Request request) async {
        if (request.url.toString() == 'https://sts.googleapis.com/v1/token') {
          final body = jsonDecode(request.body) as Map<String, dynamic>;
          expect(body['subjectToken'], 'my-token');
          expect(body['audience'], 'my-audience');
          return Response(
            jsonEncode({
              'token_type': 'Bearer',
              'access_token': 'atoken',
              'expires_in': 3600,
            }),
            200,
            headers: {'content-type': 'application/json'},
          );
        }
        return Response('not found', 404);
      }),
    );

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
      tokenUrl: 'https://sts.googleapis.com/v1/token',
      scopes: ['s1'],
      baseClient: mockClient(expectClose: false, (Request request) async {
        if (request.url.toString() == 'http://localhost/token') {
          expect(request.headers['x-header'], 'value');
          return Response(jsonEncode({'special_token': 'my-url-token'}), 200);
        }
        if (request.url.toString() == 'https://sts.googleapis.com/v1/token') {
          final body = jsonDecode(request.body) as Map<String, dynamic>;
          expect(body['subjectToken'], 'my-url-token');
          return Response(
            jsonEncode({
              'token_type': 'Bearer',
              'access_token': 'atoken',
              'expires_in': 3600,
            }),
            200,
            headers: {'content-type': 'application/json'},
          );
        }
        return Response('not found', 404);
      }),
    );

    expect(c.credentials.accessToken.data, 'atoken');
  });

  test(
    'clientViaStsTokenExchange url credentials invalid json format',
    () async {
      expect(
        () => clientViaStsTokenExchange(
          credentialSource: {
            'url': 'http://localhost/token',
            'format': {
              'type': 'json',
              'subject_token_field_name': 'special_token',
            },
          },
          audience: 'my-audience',
          subjectTokenType: 'my-token-type',
          tokenUrl: 'https://sts.googleapis.com/v1/token',
          scopes: ['s1'],
          baseClient: mockClient(expectClose: false, (Request request) async {
            if (request.url.toString() == 'http://localhost/token') {
              return Response('not-valid-json', 200);
            }
            return Response('not found', 404);
          }),
        ),
        throwsA(isA<ServerRequestFailedException>()),
      );
    },
  );
}
