// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

@TestOn('vm')
library;

import 'dart:convert';
import 'dart:io';
import 'package:google_cloud/general.dart';
import 'package:googleapis_auth/src/iam_signer.dart';
import 'package:http/http.dart';
import 'package:http/testing.dart';
import 'package:test/test.dart';

void main() {
  test('getServiceAccountEmail hits metadata server', () async {
    final client = MockClient((request) async {
      if (request.url.path.contains('service-accounts/default/email')) {
        return Response('test-email@example.com', 200);
      }
      return Response('Not Found', 404);
    });

    final signer = IAMSigner(client);
    expect(
      await signer.getServiceAccountEmail(refresh: true),
      'test-email@example.com',
    );
  });

  test('sign posts to correct URL and returns signed blob', () async {
    final client = MockClient((request) async {
      if (request.url.path.contains('signBlob')) {
        expect(request.url.toString(), contains('test-email%40example.com'));
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

    final signer = IAMSigner(client);
    final signature = await signer.sign([1, 2, 3], refresh: true);
    expect(signature.signedBlob, 'c2lnbmF0dXJl');
  });

  test('sign throws ClientException on error', () async {
    final client = MockClient((request) async {
      if (request.url.path.contains('signBlob')) {
        return Response('Error', 500);
      }
      if (request.url.path.contains('email')) {
        return Response('test-email@example.com', 200);
      }
      return Response('Error', 500);
    });

    final signer = IAMSigner(client);
    await expectLater(
      signer.sign([1, 2, 3], refresh: true),
      throwsA(isA<ClientException>()),
    );
  });

  test(
    'getServiceAccountEmail throws MetadataServerException on error',
    () async {
      final client = MockClient((request) async {
        throw const SocketException('Failed to connect');
      });

      final signer = IAMSigner(client);
      await expectLater(
        signer.getServiceAccountEmail(refresh: true),
        throwsA(
          isA<MetadataServerException>().having(
            (e) => e.message,
            'message',
            contains('Could not connect to metadata.google.internal.'),
          ),
        ),
      );
    },
  );

  test('getServiceAccountEmail caches result by default', () async {
    var hitCount = 0;
    final client = MockClient((request) async {
      hitCount++;
      if (request.url.path.contains('service-accounts/default/email')) {
        return Response('cached-email@example.com', 200);
      }
      return Response('Not Found', 404);
    });

    final signer = IAMSigner(client);

    // First call - should hit the server
    expect(
      await signer.getServiceAccountEmail(refresh: true),
      'cached-email@example.com',
    );
    expect(hitCount, 1);

    // Second call - should use cache (refresh: false by default)
    expect(await signer.getServiceAccountEmail(), 'cached-email@example.com');
    expect(hitCount, 1, reason: 'Should not hit server on second call');

    // Third call with refresh: true - should hit server again
    expect(
      await signer.getServiceAccountEmail(refresh: true),
      'cached-email@example.com',
    );
    expect(hitCount, 2, reason: 'Should hit server when refresh is true');
  });
}
