// Copyright 2026 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

@TestOn('vm')
library;

import 'dart:convert';
import 'package:googleapis_auth/src/iam_signer.dart';
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

  test('signBlob allows custom endpoint on raw http.Client and normalizes '
      'trailing slash', () async {
    final client = MockClient(
      expectAsync1((request) async {
        expect(
          request.url.toString(),
          'https://iamcredentials.s3nsapis.fr/v1/projects/-/serviceAccounts/test-email%40example.com:signBlob',
        );
        return signBlobResponse(utf8.encode('signature'));
      }),
    );

    final signature = await signBlob(
      client,
      [1, 2, 3],
      serviceAccountEmail: 'test-email@example.com',
      endpoint: 'https://iamcredentials.s3nsapis.fr/',
    );
    expect(signature.signedBlob, base64Encode(utf8.encode('signature')));
  });

  test('signBlob infers universeDomain from AuthClient credentials', () async {
    final baseClient = MockClient(
      expectAsync1((request) async {
        expect(
          request.url.toString(),
          'https://iamcredentials.s3nsapis.fr/v1/projects/-/serviceAccounts/sa%40tpc.iam.gserviceaccount.com:signBlob',
        );
        expect(request.headers['Authorization'], 'Bearer tpc-token');
        return signBlobResponse(utf8.encode('signature'), keyId: 'tpc-key');
      }),
    );
    final tpcClient = testAuthClient(
      baseClient,
      token: 'tpc-token',
      universeDomain: 's3nsapis.fr',
    );
    addTearDown(tpcClient.close);

    final signature = await signBlob(tpcClient, [
      1,
      2,
      3,
    ], serviceAccountEmail: 'sa@tpc.iam.gserviceaccount.com');
    expect(signature.signedBlob, base64Encode(utf8.encode('signature')));
  });

  test('signBlob rejects symmetric cross-universe overrides and invalid '
      'endpoints before network calls', () async {
    final tpcClient = testAuthClient(
      neverClient,
      token: 'tpc-token',
      universeDomain: 's3nsapis.fr',
    );
    final gduClient = testAuthClient(neverClient, token: 'gdu-token');
    addTearDown(() {
      tpcClient.close();
      gduClient.close();
    });

    for (final (label, client, universe, endpoint) in [
      ('TPC client -> GDU universe', tpcClient, 'googleapis.com', null),
      (
        'TPC client -> GDU endpoint',
        tpcClient,
        null,
        'https://iamcredentials.googleapis.com',
      ),
      ('GDU client -> TPC universe', gduClient, 's3nsapis.fr', null),
      (
        'GDU client -> TPC endpoint',
        gduClient,
        null,
        'https://iamcredentials.s3nsapis.fr',
      ),
      (
        'malformed endpoint',
        tpcClient,
        null,
        'http://iamcredentials.s3nsapis.fr',
      ),
      ('malformed universe', neverClient, 'googleapis.com@evil.com', null),
    ]) {
      await expectLater(
        signBlob(
          client,
          [1, 2, 3],
          serviceAccountEmail: 'sa@example.com',
          universeDomain: universe,
          endpoint: endpoint,
        ),
        throwsArgumentError,
        reason: label,
      );
    }
  });
}
