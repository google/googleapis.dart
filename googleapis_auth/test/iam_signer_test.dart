// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

@TestOn('vm')
library;

import 'dart:convert';

import 'package:googleapis_auth/src/exceptions.dart';
import 'package:googleapis_auth/src/iam_signer.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:test/test.dart';

void main() {
  group('iam-signer', () {
    test('getServiceAccountEmail returns provided email', () async {
      final mockClient = MockClient((request) async {
        fail('Should not make HTTP requests when email is provided');
      });

      final signer = IAMSigner(
        mockClient,
        serviceAccountEmail: 'test@example.iam.gserviceaccount.com',
      );

      final email = await signer.getServiceAccountEmail();
      expect(email, equals('test@example.iam.gserviceaccount.com'));
    });

    test('getServiceAccountEmail fetches from metadata server', () async {
      final mockClient = MockClient(
        expectAsync1((request) async {
          expect(request.method, equals('GET'));
          expect(
            request.url.toString(),
            equals(
              'http://metadata.google.internal/computeMetadata/v1/instance/service-accounts/default/email',
            ),
          );
          expect(request.headers['Metadata-Flavor'], equals('Google'));

          return http.Response('fetched@example.iam.gserviceaccount.com', 200);
        }),
      );

      final signer = IAMSigner(mockClient);

      final email = await signer.getServiceAccountEmail();
      expect(email, equals('fetched@example.iam.gserviceaccount.com'));
    });

    test('getServiceAccountEmail caches metadata server result', () async {
      var callCount = 0;
      final mockClient = MockClient((request) async {
        callCount++;
        return http.Response('cached@example.iam.gserviceaccount.com', 200);
      });

      final signer = IAMSigner(mockClient);

      final email1 = await signer.getServiceAccountEmail();
      final email2 = await signer.getServiceAccountEmail();

      expect(email1, equals('cached@example.iam.gserviceaccount.com'));
      expect(email2, equals('cached@example.iam.gserviceaccount.com'));
      expect(callCount, equals(1)); // Should only call once
    });

    test('getServiceAccountEmail handles metadata server error', () async {
      final mockClient = MockClient(
        (request) async => http.Response('Not found', 404),
      );

      final signer = IAMSigner(mockClient);

      expect(
        signer.getServiceAccountEmail,
        throwsA(
          isA<ServerRequestFailedException>()
              .having((e) => e.statusCode, 'statusCode', 404)
              .having(
                (e) => e.toString(),
                'message',
                contains('Failed to get service account email'),
              ),
        ),
      );
    });

    test('sign calls IAM signBlob endpoint', () async {
      var requestCount = 0;
      final mockClient = MockClient(
        expectAsync1((request) async {
          requestCount++;

          if (requestCount == 1) {
            // First request: get email from metadata server
            expect(request.method, equals('GET'));
            return http.Response('signer@example.iam.gserviceaccount.com', 200);
          } else {
            // Second request: sign blob
            expect(request.method, equals('POST'));
            expect(
              request.url.toString(),
              equals(
                'https://iamcredentials.googleapis.com/v1/projects/-/serviceAccounts/signer%40example.iam.gserviceaccount.com:signBlob',
              ),
            );
            expect(request.headers['Content-Type'], equals('application/json'));

            final body = jsonDecode(request.body) as Map<String, dynamic>;
            expect(body['payload'], equals(base64Encode([1, 2, 3, 4, 5])));

            return http.Response(
              jsonEncode({
                'signedBlob': base64Encode([10, 20, 30, 40, 50]),
              }),
              200,
              headers: {'content-type': 'application/json'},
            );
          }
        }, count: 2),
      );

      final signer = IAMSigner(mockClient);

      final signature = await signer.sign([1, 2, 3, 4, 5]);
      expect(signature, equals(base64Encode([10, 20, 30, 40, 50])));
    });

    test('sign with provided email skips metadata server', () async {
      final mockClient = MockClient(
        expectAsync1((request) async {
          // Should only make the signBlob request
          expect(request.method, equals('POST'));
          expect(
            request.url.toString(),
            equals(
              'https://iamcredentials.googleapis.com/v1/projects/-/serviceAccounts/provided%40example.iam.gserviceaccount.com:signBlob',
            ),
          );

          return http.Response(
            jsonEncode({
              'signedBlob': base64Encode([99, 88, 77]),
            }),
            200,
            headers: {'content-type': 'application/json'},
          );
        }),
      );

      final signer = IAMSigner(
        mockClient,
        serviceAccountEmail: 'provided@example.iam.gserviceaccount.com',
      );

      final signature = await signer.sign([1, 2, 3]);
      expect(signature, equals(base64Encode([99, 88, 77])));
    });

    test('sign with custom universe domain', () async {
      final mockClient = MockClient(
        expectAsync1((request) async {
          if (request.method == 'POST') {
            expect(
              request.url.toString(),
              equals(
                'https://iamcredentials.example.com/v1/projects/-/serviceAccounts/custom%40example.iam.gserviceaccount.com:signBlob',
              ),
            );

            return http.Response(
              jsonEncode({
                'signedBlob': base64Encode([11, 22, 33]),
              }),
              200,
              headers: {'content-type': 'application/json'},
            );
          }
          fail('Unexpected request: ${request.method} ${request.url}');
        }),
      );

      final signer = IAMSigner(
        mockClient,
        serviceAccountEmail: 'custom@example.iam.gserviceaccount.com',
        universeDomain: 'example.com',
      );

      final signature = await signer.sign([5, 6, 7]);
      expect(signature, equals(base64Encode([11, 22, 33])));
    });

    test('sign handles IAM API error', () async {
      final mockClient = MockClient((request) async {
        if (request.method == 'POST') {
          return http.Response(
            jsonEncode({'error': 'Permission denied'}),
            403,
            headers: {'content-type': 'application/json'},
          );
        }
        return http.Response('test@example.iam.gserviceaccount.com', 200);
      });

      final signer = IAMSigner(mockClient);

      expect(
        () => signer.sign([1, 2, 3]),
        throwsA(
          isA<ServerRequestFailedException>()
              .having((e) => e.statusCode, 'statusCode', 403)
              .having(
                (e) => e.toString(),
                'message',
                contains('Failed to sign blob via IAM'),
              ),
        ),
      );
    });

    test('sign handles missing signedBlob in response', () async {
      final mockClient = MockClient((request) async {
        if (request.method == 'POST') {
          return http.Response(
            jsonEncode({}),
            200,
            headers: {'content-type': 'application/json'},
          );
        }
        return http.Response('test@example.iam.gserviceaccount.com', 200);
      });

      final signer = IAMSigner(mockClient);

      expect(
        () => signer.sign([1, 2, 3]),
        throwsA(
          isA<ServerRequestFailedException>().having(
            (e) => e.toString(),
            'message',
            contains('missing signedBlob field'),
          ),
        ),
      );
    });
  });
}
