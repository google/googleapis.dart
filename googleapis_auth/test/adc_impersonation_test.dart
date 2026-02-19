// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

@TestOn('vm')
library;

import 'dart:convert';
import 'dart:io';

import 'package:googleapis_auth/src/adc_utils.dart'
    show fromApplicationsCredentialsFile;
import 'package:googleapis_auth/src/known_uris.dart';
import 'package:http/http.dart';
import 'package:test/test.dart';
import 'package:test_descriptor/test_descriptor.dart' as d;

import 'test_utils.dart';

void main() {
  test('impersonated_service_account credentials', () async {
    await d
        .file(
          'creds.json',
          json.encode({
            'type': 'impersonated_service_account',
            'service_account_impersonation_url':
                'https://iamcredentials.googleapis.com/v1/projects/-/serviceAccounts/target@example.com:generateAccessToken',
            'source_credentials': {
              'client_id': 'id',
              'client_secret': 'secret',
              'refresh_token': 'refresh',
              'type': 'authorized_user',
            },
          }),
        )
        .create();

    final c = await fromApplicationsCredentialsFile(
      File(d.path('creds.json')),
      'test-credentials-file',
      ['target_scope'], // Scopes for the TARGET service account
      mockClient(expectClose: false, (Request request) async {
        final url = request.url;

        // 1. Source Credential Refresh (authorized_user)
        if (url == googleOauth2TokenEndpoint) {
          expect(request.method, 'POST');
          // Expect standard refresh body
          expect(request.body, contains('grant_type=refresh_token'));
          expect(request.body, contains('refresh_token=refresh'));

          return Response(
            jsonEncode({
              'token_type': 'Bearer',
              'access_token': 'source_atoken',
              'expires_in': 3600,
            }),
            200,
            headers: jsonContentType,
          );
        }

        // 2. Impersonation Call (generateAccessToken)
        if (url.path.endsWith(':generateAccessToken')) {
          expect(request.method, 'POST');
          // Must use SOURCE token
          expect(request.headers['Authorization'], 'Bearer source_atoken');

          final body = jsonDecode(request.body) as Map<String, dynamic>;
          expect(body['scope'], ['target_scope']);

          // Use UTC time for expiry to satisfy AccessToken requirement
          return Response(
            jsonEncode({
              'accessToken': 'target_atoken',
              'expireTime': DateTime.now()
                  .toUtc()
                  .add(const Duration(hours: 1))
                  .toIso8601String(),
            }),
            200,
            headers: jsonContentType,
          );
        }

        // 3. Target API Call
        if (url.toString() == 'https://storage.googleapis.com/b/bucket/o/obj') {
          expect(request.method, 'GET');
          // Must use TARGET token
          expect(request.headers['Authorization'], 'Bearer target_atoken');
          return Response('hello world', 200);
        }

        return Response('not found: $url', 404);
      }),
    );

    // Initial credentials might be empty or expired until first request,
    // BUT clientViaServiceAccountImpersonation fetches initial token
    // Yes: "final credentials = await impersonatedClient
    //     .generateAccessToken();"
    // So 'c' should already have valid credentials.
    expect(c.credentials.accessToken.data, 'target_atoken');

    final r = await c.get(
      Uri.https('storage.googleapis.com', '/b/bucket/o/obj'),
    );
    expect(r.statusCode, 200);
    expect(r.body, 'hello world');

    c.close();
  });
}
