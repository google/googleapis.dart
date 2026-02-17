// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:convert';

import 'package:googleapis_auth/src/access_credentials.dart';
import 'package:googleapis_auth/src/access_token.dart';
import 'package:googleapis_auth/src/auth_functions.dart';
import 'package:googleapis_auth/src/impersonated_auth_client.dart';
import 'package:http/http.dart' as http;
import 'package:test/test.dart';

import 'test_utils.dart';

void main() {
  group('impersonated-auth-client', () {
    test('clientViaServiceAccountImpersonation creates client', () async {
      var requestCount = 0;
      final baseClient = mockClient(
        expectAsync1((request) async {
          requestCount++;

          // Initial generateAccessToken call
          expect(request.method, equals('POST'));
          expect(
            request.url.toString(),
            equals(
              'https://iamcredentials.googleapis.com/v1/projects/-/serviceAccounts/target%40project.iam.gserviceaccount.com:generateAccessToken',
            ),
          );
          expect(request.headers['Content-Type'], equals('application/json'));

          final body = jsonDecode(request.body) as Map<String, dynamic>;
          expect(body['scope'], equals(['scope1', 'scope2']));
          expect(body['lifetime'], equals('3600s'));

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
        equals('target@project.iam.gserviceaccount.com'),
      );
      expect(
        impersonated.credentials.accessToken.data,
        equals('impersonated-token'),
      );
      expect(requestCount, equals(1));

      impersonated.close();
    });

    test('generateAccessToken with delegates', () async {
      final baseClient = mockClient(
        expectAsync1((request) async {
          expect(request.method, equals('POST'));

          final body = jsonDecode(request.body) as Map<String, dynamic>;
          expect(
            body['delegates'],
            equals(['delegate1@project.iam.gserviceaccount.com']),
          );

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

      expect(
        impersonated.credentials.accessToken.data,
        equals('impersonated-token'),
      );
      impersonated.close();
    });

    test('generateAccessToken with custom universe domain', () async {
      final baseClient = mockClient(
        expectAsync1((request) async {
          expect(
            request.url.toString(),
            equals(
              'https://iamcredentials.example.com/v1/projects/-/serviceAccounts/target%40project.iam.gserviceaccount.com:generateAccessToken',
            ),
          );

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

      expect(
        impersonated.credentials.accessToken.data,
        equals('impersonated-token'),
      );
      impersonated.close();
    });

    test('generateAccessToken with custom lifetime', () async {
      final baseClient = mockClient(
        expectAsync1((request) async {
          final body = jsonDecode(request.body) as Map<String, dynamic>;
          expect(body['lifetime'], equals('7200s')); // 2 hours

          final expireTime = DateTime.now().toUtc().add(
            const Duration(hours: 2),
          );
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

      expect(
        impersonated.credentials.accessToken.data,
        equals('impersonated-token'),
      );
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
            expect(request.method, equals('POST'));
            expect(
              request.url.toString(),
              equals(
                'https://iamcredentials.googleapis.com/v1/projects/-/serviceAccounts/target%40project.iam.gserviceaccount.com:signBlob',
              ),
            );
            expect(request.headers['Content-Type'], equals('application/json'));

            final body = jsonDecode(request.body) as Map<String, dynamic>;
            expect(body['payload'], equals(base64Encode([1, 2, 3, 4, 5])));

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
      expect(signature.signedBlob, equals(base64Encode([10, 20, 30])));

      impersonated.close();
    });

    test('generateAccessToken handles IAM API error', () async {
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
          isServerRequestFailedException
              .having((e) => e.statusCode, 'statusCode', 403)
              .having(
                (e) => e.toString(),
                'message',
                contains('Failed to generate access token'),
              ),
        ),
      );
    });

    test('generateAccessToken handles missing fields in response', () async {
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
          isServerRequestFailedException.having(
            (e) => e.toString(),
            'message',
            contains('missing required fields'),
          ),
        ),
      );
    });

    test('sign handles IAM API error', () async {
      var requestCount = 0;
      final baseClient = mockClient((request) async {
        requestCount++;

        if (requestCount == 1) {
          // Initial generateAccessToken succeeds
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

    test('sign handles missing signedBlob in response', () async {
      var requestCount = 0;
      final baseClient = mockClient((request) async {
        requestCount++;

        if (requestCount == 1) {
          // Initial generateAccessToken succeeds
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
  });
}
