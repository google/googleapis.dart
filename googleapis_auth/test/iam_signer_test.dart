// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

@TestOn('vm')
library;

import 'dart:convert';
import 'package:googleapis_auth/src/iam_signer.dart';
import 'package:http/http.dart';
import 'package:http/testing.dart';
import 'package:test/test.dart';

void main() {
  test('signBlob posts to correct URL and returns signed blob', () async {
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
}
