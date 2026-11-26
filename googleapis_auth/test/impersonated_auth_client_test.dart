// Copyright 2026 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

import 'dart:convert';

import 'package:googleapis_auth/src/impersonated_auth_client.dart';
import 'package:http/http.dart' as http;
import 'package:test/test.dart';

import 'test_utils.dart';

const _targetSa = 'target@project.iam.gserviceaccount.com';

void main() {
  test('clientViaServiceAccountImpersonation creates client', () async {
    var requestCount = 0;
    final baseClient = mockClient(
      expectAsync1((request) async {
        requestCount++;
        expect(request.method, 'POST');
        expect(
          request.url.toString(),
          'https://iamcredentials.googleapis.com/v1/projects/-/serviceAccounts/target%40project.iam.gserviceaccount.com:generateAccessToken',
        );
        expect(request.headers['Content-Type'], 'application/json');

        final body = jsonDecode(request.body) as Map<String, dynamic>;
        expect(body['scope'], ['scope1', 'scope2']);
        expect(body['lifetime'], '3600s');

        return iamTokenResponse();
      }),
      expectClose: false,
    );

    final impersonated = await clientViaServiceAccountImpersonation(
      sourceClient: testAuthClient(baseClient),
      targetServiceAccount: _targetSa,
      targetScopes: ['scope1', 'scope2'],
    );
    addTearDown(impersonated.close);

    expect(impersonated.targetServiceAccount, _targetSa);
    expect(impersonated.credentials.accessToken.data, 'impersonated-token');
    expect(requestCount, 1);
  });

  test('generateAccessToken with delegates, custom lifetime, and custom '
      'universe domain', () async {
    final baseClient = mockClient(
      expectAsync1((request) async {
        expect(
          request.url.toString(),
          'https://iamcredentials.example.com/v1/projects/-/serviceAccounts/target%40project.iam.gserviceaccount.com:generateAccessToken',
        );
        final body = jsonDecode(request.body) as Map<String, dynamic>;
        expect(body['delegates'], [
          'delegate1@project.iam.gserviceaccount.com',
        ]);
        expect(body['lifetime'], '7200s');
        return iamTokenResponse(expiresIn: const Duration(hours: 2));
      }),
      expectClose: false,
    );

    final impersonated = await clientViaServiceAccountImpersonation(
      sourceClient: testAuthClient(baseClient, universeDomain: 'example.com'),
      targetServiceAccount: _targetSa,
      targetScopes: ['scope1'],
      delegates: ['delegate1@project.iam.gserviceaccount.com'],
      universeDomain: 'example.com',
      lifetime: const Duration(hours: 2),
    );
    addTearDown(impersonated.close);

    expect(impersonated.credentials.accessToken.data, 'impersonated-token');
    expect(impersonated.credentials.universeDomain, 'example.com');
  });

  test('sign calls IAM signBlob endpoint', () async {
    var requestCount = 0;
    final baseClient = mockClient(
      expectAsync1((request) async {
        if (++requestCount == 1) return iamTokenResponse();

        expect(request.method, 'POST');
        expect(
          request.url.toString(),
          'https://iamcredentials.googleapis.com/v1/projects/-/serviceAccounts/target%40project.iam.gserviceaccount.com:signBlob',
        );
        expect(request.headers['Content-Type'], 'application/json');
        final body = jsonDecode(request.body) as Map<String, dynamic>;
        expect(body['payload'], base64Encode([1, 2, 3, 4, 5]));
        return signBlobResponse([10, 20, 30]);
      }, count: 2),
      expectClose: false,
    );

    final impersonated = await clientViaServiceAccountImpersonation(
      sourceClient: testAuthClient(baseClient),
      targetServiceAccount: _targetSa,
      targetScopes: ['scope1'],
    );
    addTearDown(impersonated.close);

    final signature = await impersonated.sign([1, 2, 3, 4, 5]);
    expect(signature.signedBlob, base64Encode([10, 20, 30]));
  });

  test(
    'generateAccessToken throws on IAM API error or missing fields',
    () async {
      final errorClient = mockClient(
        (_) async =>
            jsonResponse({'error': 'Permission denied'}, statusCode: 403),
        expectClose: false,
      );
      await expectLater(
        clientViaServiceAccountImpersonation(
          sourceClient: testAuthClient(errorClient),
          targetServiceAccount: _targetSa,
          targetScopes: ['scope1'],
        ),
        throwsA(
          isServerRequestFailedException
              .having((e) => e.statusCode, 'statusCode', 403)
              .having(
                (e) => e.message,
                'message',
                contains('Failed to generate access token'),
              ),
        ),
      );

      final missingFieldsClient = mockClient(
        (_) async => jsonResponse({}),
        expectClose: false,
      );
      await expectLater(
        clientViaServiceAccountImpersonation(
          sourceClient: testAuthClient(missingFieldsClient),
          targetServiceAccount: _targetSa,
          targetScopes: ['scope1'],
        ),
        throwsA(
          isServerRequestFailedException.having(
            (e) => e.message,
            'message',
            contains('missing required fields'),
          ),
        ),
      );
    },
  );

  test('sign throws on IAM API error or missing signedBlob', () async {
    for (final errorResponse in [
      jsonResponse({'error': 'Permission denied'}, statusCode: 403),
      jsonResponse({}),
    ]) {
      var requestCount = 0;
      final baseClient = mockClient(
        (_) async => ++requestCount == 1 ? iamTokenResponse() : errorResponse,
        expectClose: false,
      );
      final impersonated = await clientViaServiceAccountImpersonation(
        sourceClient: testAuthClient(baseClient),
        targetServiceAccount: _targetSa,
        targetScopes: ['scope1'],
      );
      addTearDown(impersonated.close);

      await expectLater(
        impersonated.sign([1, 2, 3]),
        throwsA(isA<http.ClientException>()),
      );
    }
  });

  test('uses provided baseClient for authenticated requests', () async {
    var generateTokenCalled = false;
    final sourceBaseClient = mockClient((_) async {
      generateTokenCalled = true;
      return iamTokenResponse();
    }, expectClose: false);

    var authenticatedRequestCalled = false;
    final customBaseClient = mockClient((request) async {
      authenticatedRequestCalled = true;
      expect(request.headers['Authorization'], 'Bearer impersonated-token');
      expectXGoogApiClientHeader(request);
      return http.Response('ok', 200);
    }, expectClose: false);

    final impersonated = await clientViaServiceAccountImpersonation(
      sourceClient: testAuthClient(sourceBaseClient),
      targetServiceAccount: _targetSa,
      targetScopes: ['scope1'],
      baseClient: customBaseClient,
    );
    addTearDown(impersonated.close);

    expect(generateTokenCalled, isTrue);
    final response = await impersonated.get(Uri.parse('https://example.com'));
    expect(response.statusCode, 200);
    expect(authenticatedRequestCalled, isTrue);
  });

  test(
    'inherits universeDomain from TPC sourceClient when not specified',
    () async {
      var requestCount = 0;
      final baseClient = mockClient(
        expectAsync1((request) async {
          expect(request.url.host, 'iamcredentials.s3nsapis.fr');
          if (++requestCount == 1) {
            expect(request.url.path, endsWith(':generateAccessToken'));
            return iamTokenResponse(token: 'tpc-imp-token');
          }
          expect(request.url.path, endsWith(':signBlob'));
          return signBlobResponse([9, 8, 7], keyId: 'tpc-key');
        }, count: 2),
        expectClose: false,
      );

      final sourceClient = testAuthClient(
        baseClient,
        token: 'tpc-source-token',
        universeDomain: 's3nsapis.fr',
      );
      addTearDown(sourceClient.close);

      final impersonated = await clientViaServiceAccountImpersonation(
        sourceClient: sourceClient,
        targetServiceAccount: _targetSa,
        targetScopes: ['scope1'],
      );
      addTearDown(impersonated.close);

      expect(impersonated.universeDomain, 's3nsapis.fr');
      expect(impersonated.credentials.universeDomain, 's3nsapis.fr');
      final sig = await impersonated.sign([1, 2, 3]);
      expect(sig.signedBlob, base64Encode([9, 8, 7]));
    },
  );

  test(
    'rejects symmetric cross-universe mismatches and malformed endpoints',
    () async {
      final tpcSource = testAuthClient(
        neverClient,
        token: 'tpc-source-token',
        universeDomain: 's3nsapis.fr',
      );
      final gduSource = testAuthClient(neverClient, token: 'gdu-source-token');
      addTearDown(() {
        tpcSource.close();
        gduSource.close();
      });

      for (final (label, source, universe, endpoint) in [
        ('TPC -> GDU universe', tpcSource, 'googleapis.com', null),
        (
          'TPC -> GDU endpoint',
          tpcSource,
          null,
          'https://iamcredentials.googleapis.com',
        ),
        ('GDU -> TPC universe', gduSource, 's3nsapis.fr', null),
        (
          'GDU -> TPC endpoint',
          gduSource,
          null,
          'https://iamcredentials.s3nsapis.fr',
        ),
        (
          'non-HTTPS endpoint',
          tpcSource,
          null,
          'http://iamcredentials.s3nsapis.fr',
        ),
      ]) {
        expect(
          () => ImpersonatedAuthClient(
            sourceClient: source,
            targetServiceAccount: _targetSa,
            targetScopes: ['scope1'],
            universeDomain: universe,
            endpoint: endpoint,
          ),
          throwsArgumentError,
          reason: label,
        );
      }

      final validTpc = ImpersonatedAuthClient(
        sourceClient: tpcSource,
        targetServiceAccount: _targetSa,
        targetScopes: ['scope1'],
      );
      addTearDown(validTpc.close);

      await expectLater(
        validTpc.sign([
          1,
          2,
          3,
        ], endpoint: 'https://iamcredentials.googleapis.com'),
        throwsA(
          isArgumentError.having(
            (e) => e.message,
            'message',
            contains('Endpoint universe'),
          ),
        ),
      );
    },
  );

  test(
    'auto-refresh preserves TPC universeDomain, endpoint, and quota',
    () async {
      var generateCount = 0;
      final sourceBase = mockClient(
        expectAsync1((request) async {
          generateCount++;
          expect(request.url.host, 'eu-west9-iamcredentials.s3nsapis.fr');
          expect(request.url.path, endsWith(':generateAccessToken'));
          final body = jsonDecode(request.body) as Map<String, dynamic>;
          expect(body['delegates'], ['mid@project.iam.gserviceaccount.com']);
          return iamTokenResponse(
            token: 'tpc-token-$generateCount',
            expiresIn: generateCount == 1
                ? const Duration(minutes: -5)
                : const Duration(hours: 1),
          );
        }, count: 2),
        expectClose: false,
      );
      final apiBase = mockClient(
        expectAsync1((request) async {
          expect(request.headers['Authorization'], 'Bearer tpc-token-2');
          expect(request.headers['X-Goog-User-Project'], 'tpc-quota');
          return http.Response('ok', 200);
        }),
        expectClose: false,
      );
      final sourceClient = testAuthClient(
        sourceBase,
        token: 'tpc-source',
        universeDomain: 's3nsapis.fr',
      );
      addTearDown(sourceClient.close);

      final impersonated = await clientViaServiceAccountImpersonation(
        sourceClient: sourceClient,
        targetServiceAccount: _targetSa,
        targetScopes: ['scope1'],
        delegates: ['mid@project.iam.gserviceaccount.com'],
        endpoint: 'https://eu-west9-iamcredentials.s3nsapis.fr',
        quotaProject: 'tpc-quota',
        baseClient: apiBase,
      );
      addTearDown(impersonated.close);

      final response = await impersonated.get(
        Uri.https('storage.s3nsapis.fr', '/b/bucket'),
      );
      expect(response.statusCode, 200);
      expect(impersonated.credentials.accessToken.data, 'tpc-token-2');
      expect(impersonated.credentials.universeDomain, 's3nsapis.fr');
    },
  );

  test(
    'ImpersonatedAuthClient can be subclassed via generative constructor',
    () {
      final sourceClient = testAuthClient(
        neverClient,
        token: 'tpc-source',
        universeDomain: 's3nsapis.fr',
      );
      addTearDown(sourceClient.close);

      final sub = _TestImpersonatedSubclass(sourceClient: sourceClient);
      addTearDown(sub.close);
      expect(sub.universeDomain, 's3nsapis.fr');
      expect(sub.credentials.universeDomain, 's3nsapis.fr');
    },
  );

  test('sign honors explicit endpoint override and delegates', () async {
    var requestCount = 0;
    final baseClient = mockClient(
      expectAsync1((request) async {
        if (++requestCount == 1) return iamTokenResponse(token: 'imp-token');

        expect(request.url.host, 'custom-iam.example.com');
        expect(request.url.path, endsWith(':signBlob'));
        final body = jsonDecode(request.body) as Map<String, dynamic>;
        expect(body['delegates'], ['delegate@project.iam.gserviceaccount.com']);
        return signBlobResponse([1, 2], keyId: 'key-1');
      }, count: 2),
      expectClose: false,
    );
    final sourceClient = testAuthClient(baseClient);
    addTearDown(sourceClient.close);

    final impersonated = await clientViaServiceAccountImpersonation(
      sourceClient: sourceClient,
      targetServiceAccount: _targetSa,
      targetScopes: ['scope1'],
      delegates: ['delegate@project.iam.gserviceaccount.com'],
    );
    addTearDown(impersonated.close);

    final sig = await impersonated.sign([
      1,
      2,
      3,
    ], endpoint: 'https://custom-iam.example.com');
    expect(sig.signedBlob, base64Encode([1, 2]));
  });
}

class _TestImpersonatedSubclass extends ImpersonatedAuthClient {
  _TestImpersonatedSubclass({required super.sourceClient})
    : super(targetServiceAccount: _targetSa, targetScopes: const ['scope1']);
}
