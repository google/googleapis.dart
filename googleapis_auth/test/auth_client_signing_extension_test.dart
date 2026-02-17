// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:convert';

import 'package:googleapis_auth/src/auth_client_signing_extension.dart';
import 'package:googleapis_auth/src/auth_functions.dart';
import 'package:googleapis_auth/src/impersonated_auth_client.dart';
import 'package:googleapis_auth/src/service_account_client.dart';
import 'package:googleapis_auth/src/service_account_credentials.dart';
import 'package:http/http.dart' as http;
import 'package:test/test.dart';

import 'test_utils.dart';

void main() {
  final dataToSign = utf8.encode('data to sign');

  test('sign with service account credentials uses local signing', () async {
    // Create service account credentials with private key
    final credentials = ServiceAccountCredentials.fromJson({
      'private_key_id': '1',
      'private_key': testPrivateKeyString,
      'client_email': 'test@test.iam.gserviceaccount.com',
      'client_id': 'test',
      'type': 'service_account',
    });

    final client = await clientViaServiceAccount(
      credentials,
      ['https://www.googleapis.com/auth/cloud-platform'],
      baseClient: mockClient(
        (request) async => http.Response(
          jsonEncode({
            'access_token': 'test-token',
            'token_type': 'Bearer',
            'expires_in': 3600,
          }),
          200,
          headers: jsonContentType,
        ),
        expectClose: false,
      ),
    );

    // Should use local RSA signing, no HTTP requests to IAM API
    final signature = await client.sign(dataToSign);

    expect(signature, isNotEmpty);
    expect(
      signature.length,
      equals(344),
    ); // RSA-2048 signature base64-encoded length

    client.close();
  });

  test('sign with impersonated client uses IAM API', () async {
    var requestCount = 0;
    final baseClient = mockClient(
      expectAsync1((request) async {
        requestCount++;

        if (requestCount == 1) {
          // Initial generateAccessToken for impersonated client
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
          // signBlob request via ImpersonatedAuthClient.sign()
          expect(request.method, equals('POST'));
          expect(request.url.toString(), contains(':signBlob'));

          return http.Response(
            jsonEncode({
              'signedBlob': base64Encode([1, 2, 3, 4, 5]),
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
      targetScopes: ['https://www.googleapis.com/auth/cloud-platform'],
    );

    final signature = await impersonated.sign(dataToSign);

    expect(signature.signedBlob, equals(base64Encode([1, 2, 3, 4, 5])));

    impersonated.close();
  });

  test('explicitly calling extension on impersonated client delegates to '
      'instance method', () async {
    var requestCount = 0;
    final baseClient = mockClient(
      expectAsync1((request) async {
        requestCount++;

        if (requestCount == 1) {
          // Initial generateAccessToken for impersonated client
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
          // signBlob request via ImpersonatedAuthClient.sign()
          expect(request.method, equals('POST'));
          expect(request.url.toString(), contains(':signBlob'));

          return http.Response(
            jsonEncode({
              'signedBlob': base64Encode([5, 6, 7, 8]),
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
      targetScopes: ['https://www.googleapis.com/auth/cloud-platform'],
    );

    // Explicitly call the extension method with endpoint parameter
    // The endpoint is ignored since ImpersonatedAuthClient uses its
    // configured universe domain
    final signature = await AuthClientSigningExtension(
      impersonated,
    ).sign(dataToSign, endpoint: 'https://iamcredentials.example.com');

    expect(signature, equals(base64Encode([5, 6, 7, 8])));

    impersonated.close();
  });

  test('sign without service account credentials uses IAM API', () async {
    final baseClient = mockClient(
      expectAsync1((request) async {
        // IAM signBlob request
        expect(request.method, equals('POST'));
        expect(request.url.toString(), contains(':signBlob'));

        final body = jsonDecode(request.body) as Map<String, dynamic>;
        expect(body['payload'], equals(base64Encode(dataToSign)));

        return http.Response(
          jsonEncode({
            'signedBlob': base64Encode([10, 20, 30]),
            'keyId': 'key-id',
          }),
          200,
          headers: jsonContentType,
        );
      }),
      expectClose: false,
    );

    final credentials = AccessCredentials(
      AccessToken(
        'Bearer',
        'token',
        DateTime.now().toUtc().add(const Duration(hours: 1)),
      ),
      null,
      [],
    );
    final client = authenticatedClient(baseClient, credentials);

    final signature = await client.sign(dataToSign);

    expect(signature, equals(base64Encode([10, 20, 30])));

    client.close();
  }, testOn: 'vm');

  test('sign with custom endpoint extracts universe domain', () async {
    final baseClient = mockClient(
      expectAsync1((request) async {
        // IAM signBlob request - verify custom universe domain is used
        expect(request.url.host, equals('iamcredentials.example.com'));

        return http.Response(
          jsonEncode({
            'signedBlob': base64Encode([5, 6, 7]),
            'keyId': 'key-id',
          }),
          200,
          headers: jsonContentType,
        );
      }),
      expectClose: false,
    );

    final credentials = AccessCredentials(
      AccessToken(
        'Bearer',
        'token',
        DateTime.now().toUtc().add(const Duration(hours: 1)),
      ),
      null,
      [],
    );
    final client = authenticatedClient(baseClient, credentials);

    final signature = await client.sign(
      dataToSign,
      endpoint: 'https://iamcredentials.example.com',
    );

    expect(signature, equals(base64Encode([5, 6, 7])));

    client.close();
  }, testOn: 'vm');
}
