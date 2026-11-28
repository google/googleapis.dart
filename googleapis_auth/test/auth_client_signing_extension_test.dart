// Copyright 2026 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

import 'dart:convert';

import 'package:googleapis_auth/googleapis_auth.dart';
import 'package:googleapis_auth/src/impersonated_auth_client.dart';
import 'package:googleapis_auth/src/service_account_client.dart';
import 'package:http/http.dart' as http;
import 'package:test/test.dart';

import 'test_utils.dart';

http.Response? _mockMetadataResponse(http.Request request) {
  if (request.url.host == 'metadata.google.internal') {
    if (request.url.path.contains('universe_domain')) {
      return http.Response(
        'googleapis.com',
        200,
        headers: {'Metadata-Flavor': 'Google'},
      );
    }
    return http.Response(
      'test@test.iam.gserviceaccount.com',
      200,
      headers: {'Metadata-Flavor': 'Google'},
    );
  }
  return null;
}

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
    final signature = await client.sign(
      dataToSign,
      serviceAccountCredentials: credentials,
    );

    expect(signature, isNotEmpty);
    expect(
      signature,
      hasLength(344),
    ); // RSA-2048 signature base64-encoded length

    client.close();
  });

  test('sign with impersonated client uses IAM API', () async {
    var requestCount = 0;
    final baseClient = mockClient((request) async {
      final metadataResponse = _mockMetadataResponse(request);
      if (metadataResponse != null) return metadataResponse;

      requestCount++;

      if (requestCount == 1) {
        // Initial generateAccessToken for impersonated client
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
        // signBlob request via ImpersonatedAuthClient.sign()
        expect(request.method, 'POST');
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
      targetScopes: ['https://www.googleapis.com/auth/cloud-platform'],
    );

    final signature = await impersonated.sign(dataToSign);

    expect(signature.signedBlob, base64Encode([1, 2, 3, 4, 5]));

    impersonated.close();
  });

  test(
    'calling extension on impersonated client delegates to instance method',
    () async {
      var requestCount = 0;
      final baseClient = mockClient((request) async {
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
          expect(request.method, 'POST');
          expect(request.url.host, 'us-central1-iamcredentials.googleapis.com');
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
        targetScopes: ['https://www.googleapis.com/auth/cloud-platform'],
      );

      // Explicitly call the extension method with a same-universe endpoint
      // override, forwarded to ImpersonatedAuthClient.sign().
      final signature = await AuthClientSigningExtension(impersonated).sign(
        dataToSign,
        endpoint: 'https://us-central1-iamcredentials.googleapis.com',
      );

      expect(signature, base64Encode([5, 6, 7, 8]));

      impersonated.close();
    },
  );

  test(
    'sign without service account credentials uses IAM API',
    testOn: 'vm',
    () async {
      final baseClient = mockClient((request) async {
        final metadataResponse = _mockMetadataResponse(request);
        if (metadataResponse != null) return metadataResponse;

        // IAM signBlob request
        expect(request.method, 'POST');
        expect(request.url.toString(), contains(':signBlob'));

        final body = jsonDecode(request.body) as Map<String, dynamic>;
        expect(body['payload'], base64Encode(dataToSign));

        return http.Response(
          jsonEncode({
            'signedBlob': base64Encode([10, 20, 30]),
            'keyId': 'key-id',
          }),
          200,
          headers: jsonContentType,
        );
      }, expectClose: false);

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

      expect(signature, base64Encode([10, 20, 30]));

      client.close();
    },
  );

  test(
    'sign with custom endpoint extracts universe domain',
    testOn: 'vm',
    () async {
      final baseClient = mockClient((request) async {
        final metadataResponse = _mockMetadataResponse(request);
        if (metadataResponse != null) return metadataResponse;

        // IAM signBlob request - verify custom universe domain is used
        expect(request.url.host, 'iamcredentials.example.com');

        return http.Response(
          jsonEncode({
            'signedBlob': base64Encode([5, 6, 7]),
            'keyId': 'key-id',
          }),
          200,
          headers: jsonContentType,
        );
      }, expectClose: false);

      final credentials = AccessCredentials(
        AccessToken(
          'Bearer',
          'token',
          DateTime.now().toUtc().add(const Duration(hours: 1)),
        ),
        null,
        [],
        universeDomain: 'example.com',
      );
      final client = authenticatedClient(baseClient, credentials);

      final signature = await client.sign(
        dataToSign,
        endpoint: 'https://iamcredentials.example.com',
      );

      expect(signature, base64Encode([5, 6, 7]));

      client.close();
    },
  );

  test('sign uses credentials.universeDomain when endpoint is omitted '
      '(including through delegating AuthClient wrappers)', () async {
    final baseClient = mockClient(
      expectAsync1((request) async {
        expect(request.method, 'POST');
        expect(request.url.host, 'iamcredentials.s3nsapis.fr');
        expect(request.url.path, endsWith(':signBlob'));
        expect(request.headers['Authorization'], 'Bearer tpc-token');
        return signBlobResponse([11, 22, 33], keyId: 'tpc-key-id');
      }),
      expectClose: false,
    );

    final wrappedClient = _DelegatingAuthClient(
      testAuthClient(
        baseClient,
        token: 'tpc-token',
        universeDomain: 's3nsapis.fr',
      ),
    );
    addTearDown(wrappedClient.close);

    final signature = await wrappedClient.sign(
      dataToSign,
      serviceAccountEmail: 'sa@tpc.iam.gserviceaccount.com',
    );
    expect(signature, base64Encode([11, 22, 33]));
  });

  test('sign rejects cross-universe endpoint overrides symmetrically before '
      'network calls', () async {
    final wrappedTpc = _DelegatingAuthClient(
      testAuthClient(
        neverClient,
        token: 'tpc-token',
        universeDomain: 's3nsapis.fr',
      ),
    );
    final gduClient = testAuthClient(neverClient, token: 'gdu-token');
    addTearDown(() {
      wrappedTpc.close();
      gduClient.close();
    });

    for (final (client, endpoint) in [
      (wrappedTpc, 'https://iamcredentials.googleapis.com'),
      (gduClient, 'https://iamcredentials.s3nsapis.fr'),
    ]) {
      await expectLater(
        client.sign(
          dataToSign,
          serviceAccountEmail: 'sa@example.com',
          endpoint: endpoint,
        ),
        throwsA(
          isArgumentError.having(
            (e) => e.message,
            'message',
            contains('Endpoint universe'),
          ),
        ),
      );
    }
  });
}

class _DelegatingAuthClient extends http.BaseClient implements AuthClient {
  _DelegatingAuthClient(this._inner);

  final AuthClient _inner;

  @override
  AccessCredentials get credentials => _inner.credentials;

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) =>
      _inner.send(request);

  @override
  void close() => _inner.close();
}
