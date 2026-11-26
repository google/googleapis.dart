// Copyright 2026 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

@TestOn('vm')
library;

import 'dart:convert';
import 'package:googleapis_auth/googleapis_auth.dart';
import 'package:http/http.dart';
import 'package:http/testing.dart';
import 'package:test/test.dart';

import 'test_utils.dart';

void main() {
  test('signBlob posts to correct URL and returns signed blob', () async {
    final client = MockClient((request) async {
      if (request.url.path.contains('signBlob')) {
        expect(request.url.toString(), contains('test-email%40example.com'));
        expectXGoogApiClientHeader(request);
        final body = jsonDecode(request.body) as Map<String, dynamic>;
        expect(body['payload'], isNotNull);
        return Response(
          jsonEncode({'signedBlob': 'c2lnbmF0dXJl', 'keyId': 'key-id'}),
          200,
        );
      }
      if (request.url.path.endsWith('/email')) {
        return Response('test-email@example.com', 200);
      }
      return Response('Not Found', 404);
    });

    final signature = await signBlob(client, [
      1,
      2,
      3,
    ], serviceAccountEmail: 'test-email@example.com');
    expect(signature.signedBlob, 'c2lnbmF0dXJl');
  });

  test('signBlob fetch email from metadata server if not provided', () async {
    final client = MockClient((request) async {
      if (request.url.path.contains('signBlob')) {
        expect(
          request.url.toString(),
          contains('metadata-email%40example.com'),
        );
        return Response(
          jsonEncode({'signedBlob': 'c2lnbmF0dXJl', 'keyId': 'key-id'}),
          200,
        );
      }
      if (request.url.path.endsWith('/email')) {
        return Response('metadata-email@example.com', 200);
      }
      return Response('Not Found', 404);
    });

    final signature = await signBlob(client, [1, 2, 3], refresh: true);
    expect(signature.signedBlob, 'c2lnbmF0dXJl');
  });

  test('signBlob throws ClientException on error', () async {
    final client = MockClient((request) async {
      if (request.url.path.contains('signBlob')) {
        return Response('Error', 500);
      }
      if (request.url.path.contains('email')) {
        return Response('test-email@example.com', 200);
      }
      return Response('Error', 500);
    });

    await expectLater(
      signBlob(client, [
        1,
        2,
        3,
      ], serviceAccountEmail: 'test-email@example.com'),
      throwsA(isA<ClientException>()),
    );
  });

  test('signBlob normalizes trailing slash on custom endpoint', () async {
    final client = MockClient(
      expectAsync1((request) async {
        expect(
          request.url.toString(),
          'https://iamcredentials.s3nsapis.fr/v1/projects/-/serviceAccounts/test-email%40example.com:signBlob',
        );
        return Response(
          jsonEncode({'signedBlob': 'c2lnbmF0dXJl', 'keyId': 'key-id'}),
          200,
        );
      }),
    );

    final signature = await signBlob(
      client,
      [1, 2, 3],
      serviceAccountEmail: 'test-email@example.com',
      endpoint: 'https://iamcredentials.s3nsapis.fr/',
    );
    expect(signature.signedBlob, 'c2lnbmF0dXJl');
  });

  test('signBlob infers universeDomain from AuthClient credentials', () async {
    final baseClient = MockClient(
      expectAsync1((request) async {
        expect(
          request.url.toString(),
          'https://iamcredentials.s3nsapis.fr/v1/projects/-/serviceAccounts/sa%40tpc.iam.gserviceaccount.com:signBlob',
        );
        expect(request.headers['Authorization'], 'Bearer tpc-token');
        return Response(
          jsonEncode({'signedBlob': 'c2lnbmF0dXJl', 'keyId': 'tpc-key'}),
          200,
        );
      }),
    );
    final tpcClient = authenticatedClient(
      baseClient,
      AccessCredentials(
        AccessToken(
          'Bearer',
          'tpc-token',
          DateTime.now().toUtc().add(const Duration(hours: 1)),
        ),
        null,
        [],
        universeDomain: 's3nsapis.fr',
      ),
    );
    addTearDown(tpcClient.close);

    final signature = await signBlob(tpcClient, [
      1,
      2,
      3,
    ], serviceAccountEmail: 'sa@tpc.iam.gserviceaccount.com');
    expect(signature.signedBlob, 'c2lnbmF0dXJl');
  });

  test(
    'signBlob rejects cross-universe overrides and malformed endpoints',
    () async {
      final neverClient = MockClient(
        (request) async =>
            fail('Should not issue HTTP request: ${request.url}'),
      );
      final tpcClient = authenticatedClient(
        neverClient,
        AccessCredentials(
          AccessToken(
            'Bearer',
            'tpc-token',
            DateTime.now().toUtc().add(const Duration(hours: 1)),
          ),
          null,
          [],
          universeDomain: 's3nsapis.fr',
        ),
      );
      addTearDown(tpcClient.close);

      await expectLater(
        signBlob(
          tpcClient,
          [1, 2, 3],
          serviceAccountEmail: 'sa@tpc.iam.gserviceaccount.com',
          universeDomain: 'googleapis.com',
        ),
        throwsA(
          isArgumentError.having(
            (e) => e.message,
            'message',
            contains('universe'),
          ),
        ),
      );

      await expectLater(
        signBlob(
          tpcClient,
          [1, 2, 3],
          serviceAccountEmail: 'sa@tpc.iam.gserviceaccount.com',
          endpoint: 'https://iamcredentials.googleapis.com',
        ),
        throwsA(
          isArgumentError.having(
            (e) => e.message,
            'message',
            contains('Endpoint universe'),
          ),
        ),
      );

      for (final badEndpoint in [
        '',
        'http://iamcredentials.s3nsapis.fr',
        'https://user@iamcredentials.s3nsapis.fr',
        'https://iamcredentials.s3nsapis.fr/extra',
        'https://iamcredentials.s3nsapis.fr?q=1',
        'https://iamcredentials.s3nsapis.fr#frag',
      ]) {
        await expectLater(
          signBlob(
            tpcClient,
            [1, 2, 3],
            serviceAccountEmail: 'sa@tpc.iam.gserviceaccount.com',
            endpoint: badEndpoint,
          ),
          throwsArgumentError,
          reason: 'Should reject endpoint "$badEndpoint"',
        );
      }

      await expectLater(
        signBlob(
          neverClient,
          [1, 2, 3],
          serviceAccountEmail: 'sa@example.com',
          universeDomain: 'googleapis.com@evil.com',
        ),
        throwsArgumentError,
      );
    },
  );
}
