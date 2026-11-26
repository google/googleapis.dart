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

http.Response? _mockMetadataEmailResponse(http.Request request) =>
    request.url.host == 'metadata.google.internal'
    ? http.Response(
        'test@test.iam.gserviceaccount.com',
        200,
        headers: {'Metadata-Flavor': 'Google'},
      )
    : null;

void main() {
  final dataToSign = utf8.encode('data to sign');

  test('sign with service account credentials uses local signing', () async {
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
        expectAsync1((_) async => oauthTokenResponse(token: 'test-token')),
        expectClose: false,
      ),
    );
    addTearDown(client.close);

    // Local RSA signing must not issue any second HTTP request to IAM API.
    final signature = await client.sign(
      dataToSign,
      serviceAccountCredentials: credentials,
    );
    expect(signature, hasLength(344)); // RSA-2048 base64 length
  });

  test('calling extension on impersonated client delegates and forwards '
      'endpoint', () async {
    var requestCount = 0;
    final baseClient = mockClient(
      expectAsync1((request) async {
        if (++requestCount == 1) return iamTokenResponse();
        expect(request.method, 'POST');
        expect(request.url.host, 'us-central1-iamcredentials.googleapis.com');
        expect(request.url.toString(), contains(':signBlob'));
        return signBlobResponse([5, 6, 7, 8]);
      }, count: 2),
      expectClose: false,
    );

    final impersonated = await clientViaServiceAccountImpersonation(
      sourceClient: testAuthClient(baseClient),
      targetServiceAccount: 'target@project.iam.gserviceaccount.com',
      targetScopes: ['https://www.googleapis.com/auth/cloud-platform'],
    );
    addTearDown(impersonated.close);

    final signature = await AuthClientSigningExtension(impersonated).sign(
      dataToSign,
      endpoint: 'https://us-central1-iamcredentials.googleapis.com',
    );
    expect(signature, base64Encode([5, 6, 7, 8]));
  });

  test(
    'sign without service account credentials uses IAM API',
    testOn: 'vm',
    () async {
      final baseClient = mockClient((request) async {
        if (_mockMetadataEmailResponse(request) case final r?) return r;

        expect(request.method, 'POST');
        expect(request.url.toString(), contains(':signBlob'));
        final body = jsonDecode(request.body) as Map<String, dynamic>;
        expect(body['payload'], base64Encode(dataToSign));
        return signBlobResponse([10, 20, 30]);
      }, expectClose: false);

      final client = testAuthClient(baseClient, token: 'token');
      addTearDown(client.close);

      expect(await client.sign(dataToSign), base64Encode([10, 20, 30]));
    },
  );

  test(
    'sign honors custom endpoint matching credential universe',
    testOn: 'vm',
    () async {
      final baseClient = mockClient((request) async {
        if (_mockMetadataEmailResponse(request) case final r?) return r;
        expect(request.url.host, 'iamcredentials.example.com');
        return signBlobResponse([5, 6, 7]);
      }, expectClose: false);

      final client = testAuthClient(
        baseClient,
        token: 'token',
        universeDomain: 'example.com',
      );
      addTearDown(client.close);

      expect(
        await client.sign(
          dataToSign,
          endpoint: 'https://iamcredentials.example.com',
        ),
        base64Encode([5, 6, 7]),
      );
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
