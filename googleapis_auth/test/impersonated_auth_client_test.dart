// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:convert';

import 'package:googleapis_auth/googleapis_auth.dart';
import 'package:googleapis_auth/src/impersonated_auth_client.dart';
import 'package:http/http.dart' as http;
import 'package:test/test.dart';

import 'test_utils.dart';

void main() {
  test('clientViaServiceAccountImpersonation creates client', () async {
    var requestCount = 0;
    final baseClient = mockClient(
      expectAsync1((request) async {
        requestCount++;

        // Initial generateAccessToken call
        expect(request.method, 'POST');
        expect(
          request.url.toString(),
          'https://iamcredentials.googleapis.com/v1/projects/-/serviceAccounts/target%40project.iam.gserviceaccount.com:generateAccessToken',
        );
        expect(request.headers['Content-Type'], 'application/json');

        final body = jsonDecode(request.body) as Map<String, dynamic>;
        expect(body['scope'], ['scope1', 'scope2']);
        expect(body['lifetime'], '3600s');

        final expireTime = DateTime.now().toUtc().add(const Duration(hours: 1));
        return http.Response(
          jsonEncode({
            'accessToken': 'impersonated-token',
            'expireTime': expireTime.toIso8601String(),
          }),
          200,
          headers: jsonContentType,
        );
      }),
      expectClose: false,
    );

    final sourceCredentials = AccessCredentials(
      AccessToken(
        'Bearer',
        'source-token',
        DateTime.now().toUtc().add(const Duration(hours: 1)),
      ),
      null,
      [],
    );
    final sourceClient = authenticatedClient(baseClient, sourceCredentials);

    final impersonated = await clientViaServiceAccountImpersonation(
      sourceClient: sourceClient,
      targetServiceAccount: 'target@project.iam.gserviceaccount.com',
      targetScopes: ['scope1', 'scope2'],
    );

    expect(
      impersonated.targetServiceAccount,
      'target@project.iam.gserviceaccount.com',
    );
    expect(impersonated.credentials.accessToken.data, 'impersonated-token');
    expect(requestCount, 1);

    impersonated.close();
  });

  test('generateAccessToken with delegates', () async {
    final baseClient = mockClient(
      expectAsync1((request) async {
        expect(request.method, 'POST');

        final body = jsonDecode(request.body) as Map<String, dynamic>;
        expect(body['delegates'], [
          'delegate1@project.iam.gserviceaccount.com',
        ]);

        final expireTime = DateTime.now().toUtc().add(const Duration(hours: 1));
        return http.Response(
          jsonEncode({
            'accessToken': 'impersonated-token',
            'expireTime': expireTime.toIso8601String(),
          }),
          200,
          headers: jsonContentType,
        );
      }),
      expectClose: false,
    );

    final sourceCredentials = AccessCredentials(
      AccessToken(
        'Bearer',
        'source-token',
        DateTime.now().toUtc().add(const Duration(hours: 1)),
      ),
      null,
      [],
    );
    final sourceClient = authenticatedClient(baseClient, sourceCredentials);

    final impersonated = await clientViaServiceAccountImpersonation(
      sourceClient: sourceClient,
      targetServiceAccount: 'target@project.iam.gserviceaccount.com',
      targetScopes: ['scope1'],
      delegates: ['delegate1@project.iam.gserviceaccount.com'],
    );

    expect(impersonated.credentials.accessToken.data, 'impersonated-token');
    impersonated.close();
  });

  test('generateAccessToken with custom universe domain', () async {
    final baseClient = mockClient(
      expectAsync1((request) async {
        expect(
          request.url.toString(),
          'https://iamcredentials.example.com/v1/projects/-/serviceAccounts/target%40project.iam.gserviceaccount.com:generateAccessToken',
        );

        final expireTime = DateTime.now().toUtc().add(const Duration(hours: 1));
        return http.Response(
          jsonEncode({
            'accessToken': 'impersonated-token',
            'expireTime': expireTime.toIso8601String(),
          }),
          200,
          headers: jsonContentType,
        );
      }),
      expectClose: false,
    );

    final sourceCredentials = AccessCredentials(
      AccessToken(
        'Bearer',
        'source-token',
        DateTime.now().toUtc().add(const Duration(hours: 1)),
      ),
      null,
      [],
    );
    final sourceClient = authenticatedClient(baseClient, sourceCredentials);

    final impersonated = await clientViaServiceAccountImpersonation(
      sourceClient: sourceClient,
      targetServiceAccount: 'target@project.iam.gserviceaccount.com',
      targetScopes: ['scope1'],
      universeDomain: 'example.com',
    );

    expect(impersonated.credentials.accessToken.data, 'impersonated-token');
    impersonated.close();
  });

  test('generateAccessToken with custom lifetime', () async {
    final baseClient = mockClient(
      expectAsync1((request) async {
        final body = jsonDecode(request.body) as Map<String, dynamic>;
        expect(body['lifetime'], '7200s'); // 2 hours

        final expireTime = DateTime.now().toUtc().add(const Duration(hours: 2));
        return http.Response(
          jsonEncode({
            'accessToken': 'impersonated-token',
            'expireTime': expireTime.toIso8601String(),
          }),
          200,
          headers: jsonContentType,
        );
      }),
      expectClose: false,
    );

    final sourceCredentials = AccessCredentials(
      AccessToken(
        'Bearer',
        'source-token',
        DateTime.now().toUtc().add(const Duration(hours: 1)),
      ),
      null,
      [],
    );
    final sourceClient = authenticatedClient(baseClient, sourceCredentials);

    final impersonated = await clientViaServiceAccountImpersonation(
      sourceClient: sourceClient,
      targetServiceAccount: 'target@project.iam.gserviceaccount.com',
      targetScopes: ['scope1'],
      lifetime: const Duration(hours: 2),
    );

    expect(impersonated.credentials.accessToken.data, 'impersonated-token');
    impersonated.close();
  });

  test('sign calls IAM signBlob endpoint', () async {
    var requestCount = 0;
    final baseClient = mockClient(
      expectAsync1((request) async {
        requestCount++;

        if (requestCount == 1) {
          // Initial generateAccessToken
          final expireTime = DateTime.now().toUtc().add(
            const Duration(hours: 1),
          );
          return http.Response(
            jsonEncode({
              'accessToken': 'impersonated-token',
              'expireTime': expireTime.toIso8601String(),
            }),
            200,
            headers: jsonContentType,
          );
        } else {
          // signBlob request
          expect(request.method, 'POST');
          expect(
            request.url.toString(),
            'https://iamcredentials.googleapis.com/v1/projects/-/serviceAccounts/target%40project.iam.gserviceaccount.com:signBlob',
          );
          expect(request.headers['Content-Type'], 'application/json');

          final body = jsonDecode(request.body) as Map<String, dynamic>;
          expect(body['payload'], base64Encode([1, 2, 3, 4, 5]));

          return http.Response(
            jsonEncode({
              'signedBlob': base64Encode([10, 20, 30]),
              'keyId': 'key-id',
            }),
            200,
            headers: jsonContentType,
          );
        }
      }, count: 2),
      expectClose: false,
    );

    final sourceCredentials = AccessCredentials(
      AccessToken(
        'Bearer',
        'source-token',
        DateTime.now().toUtc().add(const Duration(hours: 1)),
      ),
      null,
      [],
    );
    final sourceClient = authenticatedClient(baseClient, sourceCredentials);

    final impersonated = await clientViaServiceAccountImpersonation(
      sourceClient: sourceClient,
      targetServiceAccount: 'target@project.iam.gserviceaccount.com',
      targetScopes: ['scope1'],
    );

    final signature = await impersonated.sign([1, 2, 3, 4, 5]);
    expect(signature.signedBlob, base64Encode([10, 20, 30]));

    impersonated.close();
  });

  test('generateAccessToken throws on IAM API error', () async {
    final baseClient = mockClient(
      (request) async => http.Response(
        jsonEncode({'error': 'Permission denied'}),
        403,
        headers: jsonContentType,
      ),
      expectClose: false,
    );

    final sourceCredentials = AccessCredentials(
      AccessToken(
        'Bearer',
        'source-token',
        DateTime.now().toUtc().add(const Duration(hours: 1)),
      ),
      null,
      [],
    );
    final sourceClient = authenticatedClient(baseClient, sourceCredentials);

    expect(
      () => clientViaServiceAccountImpersonation(
        sourceClient: sourceClient,
        targetServiceAccount: 'target@project.iam.gserviceaccount.com',
        targetScopes: ['scope1'],
      ),
      throwsA(
        isA<ServerRequestFailedException>()
            .having((e) => e.statusCode, 'statusCode', 403)
            .having(
              (e) => e.message,
              'message',
              contains('Failed to generate access token'),
            ),
      ),
    );
  });

  test('generateAccessToken throws on missing fields in response', () async {
    final baseClient = mockClient(
      (request) async =>
          http.Response(jsonEncode({}), 200, headers: jsonContentType),
      expectClose: false,
    );

    final sourceCredentials = AccessCredentials(
      AccessToken(
        'Bearer',
        'source-token',
        DateTime.now().toUtc().add(const Duration(hours: 1)),
      ),
      null,
      [],
    );
    final sourceClient = authenticatedClient(baseClient, sourceCredentials);

    expect(
      () => clientViaServiceAccountImpersonation(
        sourceClient: sourceClient,
        targetServiceAccount: 'target@project.iam.gserviceaccount.com',
        targetScopes: ['scope1'],
      ),
      throwsA(
        isA<ServerRequestFailedException>().having(
          (e) => e.message,
          'message',
          contains('missing required fields'),
        ),
      ),
    );
  });

  test('sign throws on IAM API error', () async {
    var requestCount = 0;
    final baseClient = mockClient((request) async {
      requestCount++;

      if (requestCount == 1) {
        // Initial generateAccessToken succeeds
        final expireTime = DateTime.now().toUtc().add(const Duration(hours: 1));
        return http.Response(
          jsonEncode({
            'accessToken': 'impersonated-token',
            'expireTime': expireTime.toIso8601String(),
          }),
          200,
          headers: jsonContentType,
        );
      } else {
        // signBlob fails
        return http.Response(
          jsonEncode({'error': 'Permission denied'}),
          403,
          headers: jsonContentType,
        );
      }
    }, expectClose: false);

    final sourceCredentials = AccessCredentials(
      AccessToken(
        'Bearer',
        'source-token',
        DateTime.now().toUtc().add(const Duration(hours: 1)),
      ),
      null,
      [],
    );
    final sourceClient = authenticatedClient(baseClient, sourceCredentials);

    final impersonated = await clientViaServiceAccountImpersonation(
      sourceClient: sourceClient,
      targetServiceAccount: 'target@project.iam.gserviceaccount.com',
      targetScopes: ['scope1'],
    );

    expect(
      () => impersonated.sign([1, 2, 3]),
      throwsA(isA<http.ClientException>()),
    );

    impersonated.close();
  });

  test('sign throws on missing signedBlob in response', () async {
    var requestCount = 0;
    final baseClient = mockClient((request) async {
      requestCount++;

      if (requestCount == 1) {
        // Initial generateAccessToken succeeds
        final expireTime = DateTime.now().toUtc().add(const Duration(hours: 1));
        return http.Response(
          jsonEncode({
            'accessToken': 'impersonated-token',
            'expireTime': expireTime.toIso8601String(),
          }),
          200,
          headers: jsonContentType,
        );
      } else {
        // signBlob returns empty response
        return http.Response(jsonEncode({}), 200, headers: jsonContentType);
      }
    }, expectClose: false);

    final sourceCredentials = AccessCredentials(
      AccessToken(
        'Bearer',
        'source-token',
        DateTime.now().toUtc().add(const Duration(hours: 1)),
      ),
      null,
      [],
    );
    final sourceClient = authenticatedClient(baseClient, sourceCredentials);

    final impersonated = await clientViaServiceAccountImpersonation(
      sourceClient: sourceClient,
      targetServiceAccount: 'target@project.iam.gserviceaccount.com',
      targetScopes: ['scope1'],
    );

    expect(
      () => impersonated.sign([1, 2, 3]),
      throwsA(isA<http.ClientException>()),
    );

    impersonated.close();
  });
}
