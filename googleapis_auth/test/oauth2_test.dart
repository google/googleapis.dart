// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:async';
import 'dart:convert';

import 'package:googleapis_auth/auth_io.dart';
import 'package:googleapis_auth/src/http_client_base.dart';
import 'package:googleapis_auth/src/known_uris.dart';
import 'package:googleapis_auth/src/utils.dart';
import 'package:http/http.dart';
import 'package:test/test.dart';

import 'test_utils.dart';

final _defaultResponse = Response('', 500);

Future<Response> _defaultResponseHandler(Request _) async => _defaultResponse;

void main() {
  test('access-token', () {
    final expiry = DateTime.now().subtract(const Duration(seconds: 1));
    final expiryUtc = expiry.toUtc();

    expect(() => AccessToken('foo', 'bar', expiry), throwsArgumentError);

    final token = AccessToken('foo', 'bar', expiryUtc);
    expect(token.type, equals('foo'));
    expect(token.data, equals('bar'));
    expect(token.expiry, equals(expiryUtc));
    expect(token.hasExpired, isTrue);

    final nonExpiredToken = AccessToken(
      'foo',
      'bar',
      expiryUtc.add(const Duration(days: 1)),
    );
    expect(nonExpiredToken.hasExpired, isFalse);
  });

  test('access-credentials', () {
    final expiry = DateTime.now().add(const Duration(days: 1)).toUtc();
    final aToken = AccessToken('foo', 'bar', expiry);

    final credentials = AccessCredentials(aToken, 'refresh', ['scope']);
    expect(credentials.accessToken, equals(aToken));
    expect(credentials.refreshToken, equals('refresh'));
    expect(credentials.scopes, equals(['scope']));
  });

  test('client-id', () {
    final clientId = ClientId('id', 'secret');
    expect(clientId.identifier, equals('id'));
    expect(clientId.secret, equals('secret'));
  });

  group('service-account-credentials', () {
    final clientId = ClientId.serviceAccount('id');

    const credentials = {
      'private_key_id': '301029',
      'private_key': testPrivateKeyString,
      'client_email': 'a@b.com',
      'client_id': 'myid',
      'type': 'service_account',
      'project_id': 'test-project',
      'universe_domain': 'example.com',
    };

    test('from-valid-individual-params', () {
      final credentials = ServiceAccountCredentials(
        'email',
        clientId,
        testPrivateKeyString,
        projectId: 'test-project',
      );
      expect(credentials.email, equals('email'));
      expect(credentials.clientId, equals(clientId));
      expect(credentials.privateKey, equals(testPrivateKeyString));
      expect(credentials.impersonatedUser, isNull);
      expect(credentials.projectId, 'test-project');
      expect(credentials.universeDomain, equals(defaultUniverseDomain));
    });

    test('from-valid-individual-params-with-user', () {
      final credentials = ServiceAccountCredentials(
        'email',
        clientId,
        testPrivateKeyString,
        impersonatedUser: 'x@y.com',
        projectId: 'test-project',
      );
      expect(credentials.email, equals('email'));
      expect(credentials.clientId, equals(clientId));
      expect(credentials.privateKey, equals(testPrivateKeyString));
      expect(credentials.impersonatedUser, equals('x@y.com'));
      expect(credentials.projectId, 'test-project');
      expect(credentials.universeDomain, equals(defaultUniverseDomain));
    });

    test('from-json-string', () {
      final credentialsFromJson = ServiceAccountCredentials.fromJson(
        jsonEncode(credentials),
      );
      expect(credentialsFromJson.email, equals('a@b.com'));
      expect(credentialsFromJson.clientId.identifier, equals('myid'));
      expect(credentialsFromJson.clientId.secret, isNull);
      expect(credentialsFromJson.privateKey, equals(testPrivateKeyString));
      expect(credentialsFromJson.impersonatedUser, isNull);
      expect(credentialsFromJson.projectId, equals('test-project'));
      expect(credentialsFromJson.universeDomain, equals('example.com'));
    });

    test('from-json-string-with-user', () {
      final credentialsFromJson = ServiceAccountCredentials.fromJson(
        jsonEncode(credentials),
        impersonatedUser: 'x@y.com',
      );
      expect(credentialsFromJson.email, equals('a@b.com'));
      expect(credentialsFromJson.clientId.identifier, equals('myid'));
      expect(credentialsFromJson.clientId.secret, isNull);
      expect(credentialsFromJson.privateKey, equals(testPrivateKeyString));
      expect(credentialsFromJson.impersonatedUser, equals('x@y.com'));
      expect(credentialsFromJson.projectId, equals('test-project'));
      expect(credentialsFromJson.universeDomain, equals('example.com'));
    });

    test('from-json-map', () {
      final credentialsFromJson = ServiceAccountCredentials.fromJson(
        credentials,
      );
      expect(credentialsFromJson.email, equals('a@b.com'));
      expect(credentialsFromJson.clientId.identifier, equals('myid'));
      expect(credentialsFromJson.clientId.secret, isNull);
      expect(credentialsFromJson.privateKey, equals(testPrivateKeyString));
      expect(credentialsFromJson.impersonatedUser, isNull);
      expect(credentialsFromJson.projectId, equals('test-project'));
      expect(credentialsFromJson.universeDomain, equals('example.com'));
    });

    test('from-json-map-with-user', () {
      final credentialsFromJson = ServiceAccountCredentials.fromJson(
        credentials,
        impersonatedUser: 'x@y.com',
      );
      expect(credentialsFromJson.email, equals('a@b.com'));
      expect(credentialsFromJson.clientId.identifier, equals('myid'));
      expect(credentialsFromJson.clientId.secret, isNull);
      expect(credentialsFromJson.privateKey, equals(testPrivateKeyString));
      expect(credentialsFromJson.impersonatedUser, equals('x@y.com'));
      expect(credentialsFromJson.projectId, equals('test-project'));
      expect(credentialsFromJson.universeDomain, equals('example.com'));
    });

    test('sign-data', () {
      final credentials = ServiceAccountCredentials.fromJson({
        'private_key_id': '301029',
        'private_key': testPrivateKeyString,
        'client_email': 'a@b.com',
        'client_id': 'myid',
        'type': 'service_account',
      });

      // Sign "hello world" and verify signature matches expected output
      final signature = credentials.sign(ascii.encode('hello world'));
      expect(
        signature,
        equals([
          89, 157, 111, 129, 193, 15, 214, 241, 88, 70, 45, 77, 201, 184, //
          105, 29, 177, 224, 224, 38, 164, 222, 73, 216, 79, 90, 172, 219,
          129, 171, 16, 39, 58, 244, 90, 248, 187, 218, 169, 132, 190, 199,
          90, 251, 185, 46, 10, 102, 143, 120, 213, 203, 201, 130, 11, 87, 54,
          252, 188, 66, 27, 245, 250, 118, 183, 1, 76, 188, 45, 185, 254, 32,
          85, 98, 245, 135, 140, 188, 227, 88, 166, 198, 138, 239, 22,
          200, 74, 133, 1, 110, 223, 5, 67, 200, 239, 53, 55, 159, 27, 41, 87,
          235, 199, 147, 137, 117, 245, 101, 129, 10, 108, 140, 68, 53, 173,
          115, 137, 144, 83, 66, 38, 243, 49, 169, 6, 241, 50, 32, 72, 163,
          225, 104, 61, 134, 103, 69, 116, 25, 145, 117, 201, 40, 202, 139,
          51, 99, 237, 162, 177, 144, 230, 225, 10, 31, 135, 236, 2, 248, 146,
          3, 207, 14, 48, 73, 176, 241, 114, 41, 163, 156, 46, 204, 124, 135,
          101, 17, 31, 56, 52, 211, 62, 254, 175, 142, 49, 240, 16, 31, 245,
          113, 221, 144, 246, 199, 186, 93, 16, 12, 99, 235, 164, 60, 165, 23,
          154, 153, 82, 45, 182, 39, 150, 140, 226, 68, 99, 53, 31, 4, 111,
          184, 49, 230, 212, 71, 49, 13, 60, 54, 108, 191, 20, 223, 220, 45,
          83, 199, 202, 209, 236, 109, 149, 55, 47, 134, 20, 218, 108, 4, 161,
          253, 69, 250, 149, 224, 4, 191,
        ]),
      );
    });

    test('sign-empty-data', () {
      final credentials = ServiceAccountCredentials.fromJson({
        'private_key_id': '301029',
        'private_key': testPrivateKeyString,
        'client_email': 'a@b.com',
        'client_id': 'myid',
        'type': 'service_account',
      });

      // Sign empty bytes and verify signature
      final signature = credentials.sign([]);
      expect(
        signature,
        equals([
          113, 99, 2, 245, 156, 215, 253, 172, 157, 46, 126, 165, 174, //
          158, 186, 213, 211, 85, 118, 63, 208, 122, 196, 214, 154, 221, 92,
          105, 27, 29, 153, 35, 91, 111, 5, 10, 82, 213, 179, 41, 165, 122,
          227, 145, 217, 108, 249, 153, 116, 80, 140, 238, 158, 140, 142, 118,
          224, 10, 225, 58, 77, 210, 27, 66, 177, 165, 228, 40, 225, 211, 140,
          254, 31, 242, 230, 223, 21, 199, 221, 113, 146, 46, 213, 20, 63,
          148, 140, 144, 245, 105, 193, 124, 206, 235, 191, 252, 138, 155,
          148, 175, 185, 160, 98, 102, 156, 197, 29, 80, 202, 49, 26, 173,
          176, 53, 202, 13, 204, 180, 180, 190, 152, 223, 199, 65, 9, 173, 82,
          167, 12, 244, 127, 141, 8, 103, 155, 213, 2, 53, 83, 179, 157, 101,
          190, 205, 85, 58, 50, 89, 255, 11, 67, 18, 232, 252, 229, 197, 200,
          228, 130, 104, 250, 228, 19, 178, 183, 45, 156, 22, 73, 229, 170,
          163, 179, 116, 21, 149, 31, 81, 253, 100, 132, 46, 216, 143, 134,
          185, 96, 75, 57, 139, 21, 131, 114, 221, 124, 47, 104, 92, 235, 254,
          62, 69, 126, 117, 170, 141, 64, 121, 181, 101, 69, 135, 115, 102,
          74, 157, 233, 127, 139, 14, 79, 137, 156, 248, 117, 114, 205, 142,
          60, 8, 116, 77, 182, 28, 119, 149, 143, 252, 141, 46, 111, 100, 242,
          184, 21, 130, 61, 138, 27, 226, 70, 119, 195, 223, 180, 121,
        ]),
      );
    });
  });

  group('client-wrappers', () {
    final clientId = ClientId('id', 'secret');
    final tomorrow = DateTime.now().add(const Duration(days: 1)).toUtc();
    final yesterday = DateTime.now().subtract(const Duration(days: 1)).toUtc();
    final aToken = AccessToken('Bearer', 'bar', tomorrow);
    final credentials = AccessCredentials(aToken, 'refresh', ['s1', 's2']);

    Future<Response> successfulRefresh(Request request) async {
      expect(request.method, equals('POST'));
      expect(request.url, googleOauth2TokenEndpoint);
      expect(
        request.body,
        equals(
          'client_id=id&'
          'client_secret=secret&'
          'refresh_token=refresh&'
          'grant_type=refresh_token',
        ),
      );
      final body = jsonEncode({
        'token_type': 'Bearer',
        'access_token': 'atoken',
        'expires_in': 3600,
      });

      return Response(body, 200, headers: jsonContentType);
    }

    Future<Response> refreshErrorResponse(Request request) async {
      final body = jsonEncode({'error': 'An error occurred'});
      return Response(body, 400, headers: jsonContentType);
    }

    Future<Response> serverError(Request request) =>
        Future<Response>.error(Exception('transport layer exception'));

    test('refreshCredentials-successful', () async {
      final newCredentials = await refreshCredentials(
        clientId,
        credentials,
        mockClient(expectAsync1(successfulRefresh), expectClose: false),
      );
      final expectedResultUtc = DateTime.now().toUtc().add(
        const Duration(seconds: 3600 - maxExpectedTimeDiffInSeconds),
      );

      final accessToken = newCredentials.accessToken;
      expect(accessToken.type, equals('Bearer'));
      expect(accessToken.data, equals('atoken'));
      expect(
        accessToken.expiry.difference(expectedResultUtc).inSeconds,
        equals(0),
      );

      expect(newCredentials.refreshToken, equals('refresh'));
      expect(newCredentials.scopes, equals(['s1', 's2']));
    });

    test('refreshCredentials-http-error', () async {
      await expectLater(
        refreshCredentials(
          clientId,
          credentials,
          mockClient(serverError, expectClose: false),
        ),
        throwsA(
          isA<Exception>().having(
            (p0) => p0.toString(),
            'toString',
            'Exception: transport layer exception',
          ),
        ),
      );
    });

    test('refreshCredentials-error-response', () async {
      await expectLater(
        refreshCredentials(
          clientId,
          credentials,
          mockClient(refreshErrorResponse, expectClose: false),
        ),
        throwsA(isServerRequestFailedException),
      );
    });

    group('authenticatedClient', () {
      final url = Uri.parse('http://www.example.com');

      test('successful', () async {
        final client = authenticatedClient(
          mockClient(
            expectAsync1((request) async {
              expect(request.method, equals('POST'));
              expect(request.url, equals(url));
              expect(request.headers, hasLength(1));
              expect(
                request.headers,
                containsPair('Authorization', 'Bearer bar'),
              );

              return Response('', 204);
            }),
            expectClose: false,
          ),
          credentials,
        );
        expect(client.credentials, equals(credentials));

        final response = await client.send(RequestImpl('POST', url));
        expect(response.statusCode, equals(204));
      });

      test('access-denied', () {
        final client = authenticatedClient(
          mockClient(
            expectAsync1((request) async {
              expect(request.method, equals('POST'));
              expect(request.url, equals(url));
              expect(request.headers, hasLength(1));
              expect(
                request.headers,
                containsPair('Authorization', 'Bearer bar'),
              );

              const headers = {'www-authenticate': 'foobar'};
              return Response('', 401, headers: headers);
            }),
            expectClose: false,
          ),
          credentials,
        );
        expect(client.credentials, equals(credentials));

        expect(
          client.send(RequestImpl('POST', url)),
          throwsA(isAccessDeniedException),
        );
      });

      test('non-bearer-token', () {
        final aToken = credentials.accessToken;
        final nonBearerCredentials = AccessCredentials(
          AccessToken('foobar', aToken.data, aToken.expiry),
          'refresh',
          ['s1', 's2'],
        );

        expect(
          () => authenticatedClient(
            mockClient(_defaultResponseHandler, expectClose: false),
            nonBearerCredentials,
          ),
          throwsA(isArgumentError),
        );
      });
    });

    group('autoRefreshingClient', () {
      final url = Uri.parse('http://www.example.com');

      test('up-to-date', () async {
        final client = autoRefreshingClient(
          clientId,
          credentials,
          mockClient(
            expectAsync1((request) async => Response('', 200)),
            expectClose: false,
          ),
        );
        expect(client.credentials, equals(credentials));

        final response = await client.send(RequestImpl('POST', url));
        expect(response.statusCode, equals(200));
      });

      test('no-refresh-token', () {
        final credentials = AccessCredentials(
          AccessToken('Bearer', 'bar', yesterday),
          null,
          ['s1', 's2'],
        );

        expect(
          () => autoRefreshingClient(
            clientId,
            credentials,
            mockClient(_defaultResponseHandler, expectClose: false),
          ),
          throwsA(isArgumentError),
        );
      });

      test('refresh-failed', () {
        final credentials = AccessCredentials(
          AccessToken('Bearer', 'bar', yesterday),
          'refresh',
          ['s1', 's2'],
        );

        final client = autoRefreshingClient(
          clientId,
          credentials,
          mockClient(
            expectAsync1((request) {
              // This should be a refresh request.
              expect(request.headers, isNot(contains('foo')));
              return refreshErrorResponse(request);
            }),
            expectClose: false,
          ),
        );
        expect(client.credentials, equals(credentials));

        final request = RequestImpl('POST', url);
        request.headers.addAll({'foo': 'bar'});
        expect(client.send(request), throwsA(isServerRequestFailedException));
      });

      test('invalid-content-type', () {
        final credentials = AccessCredentials(
          AccessToken('Bearer', 'bar', yesterday),
          'refresh',
          ['s1', 's2'],
        );

        final client = autoRefreshingClient(
          clientId,
          credentials,
          mockClient(
            expectAsync1((request) async {
              // This should be a refresh request.
              expect(request.headers, isNot(contains('foo')));
              final headers = {'content-type': 'image/png'};

              return Response('', 200, headers: headers);
            }),
            expectClose: false,
          ),
        );
        expect(client.credentials, equals(credentials));

        final request = RequestImpl('POST', url);
        request.headers.addAll({'foo': 'bar'});
        expect(client.send(request), throwsA(isServerRequestFailedException));
      });

      test('successful-refresh', () async {
        var serverInvocation = 0;

        final credentials = AccessCredentials(
          AccessToken('Bearer', 'bar', yesterday),
          'refresh',
          ['s1'],
        );

        final client = autoRefreshingClient(
          clientId,
          credentials,
          mockClient(
            expectAsync1((request) async {
              if (serverInvocation++ == 0) {
                // This should be a refresh request.
                expect(request.headers, isNot(contains('foo')));
                return successfulRefresh(request);
              } else {
                // This is the real request.
                expect(request.headers, containsPair('foo', 'bar'));
                return Response('', 200);
              }
            }, count: 2),
          ),
        );
        expect(client.credentials, equals(credentials));

        var executed = false;
        client.credentialUpdates.listen(
          expectAsync1((newCredentials) {
            expect(newCredentials.accessToken.type, equals('Bearer'));
            expect(newCredentials.accessToken.data, equals('atoken'));
            executed = true;
          }),
          onDone: expectAsync0(() {}),
        );

        final request = RequestImpl('POST', url);
        request.headers.addAll({'foo': 'bar'});

        final response = await client.send(request);
        expect(response.statusCode, equals(200));

        // The `client.send()` will have triggered a credentials refresh.
        expect(executed, isTrue);

        client.close();
      });
    });

    group('service-account-credentials-access', () {
      test('clientViaServiceAccount exposes credentials', () async {
        final credentials = ServiceAccountCredentials.fromJson({
          'private_key_id': '301029',
          'private_key': testPrivateKeyString,
          'client_email': 'test@test.iam.gserviceaccount.com',
          'client_id': 'myid',
          'type': 'service_account',
        });

        final client = await clientViaServiceAccount(
          credentials,
          ['https://www.googleapis.com/auth/cloud-platform'],
          baseClient: mockClient(
            expectAsync1((request) async {
              expect(request.method, equals('POST'));
              expect(request.url, googleOauth2TokenEndpoint);
              return Response(
                jsonEncode({
                  'access_token': 'test_token',
                  'token_type': 'Bearer',
                  'expires_in': 3600,
                }),
                200,
                headers: jsonContentType,
              );
            }),
            expectClose: false,
          ),
        );

        // Verify that we can access the service account credentials
        expect(client.serviceAccountCredentials, isNotNull);
        expect(
          client.serviceAccountCredentials!.email,
          equals('test@test.iam.gserviceaccount.com'),
        );
        expect(
          client.serviceAccountCredentials!.clientId.identifier,
          equals('myid'),
        );

        client.close();
      });

      test('clientViaMetadataServer returns null credentials', () async {
        final client = await clientViaMetadataServer(
          baseClient: mockClient(
            expectAsync1((request) async {
              final url = request.url.toString();
              if (url.contains('/token')) {
                return Response(
                  jsonEncode({
                    'access_token': 'test_token',
                    'token_type': 'Bearer',
                    'expires_in': 3600,
                  }),
                  200,
                  headers: jsonContentType,
                );
              } else if (url.contains('/scopes')) {
                return Response('s1\ns2', 200);
              }
              return Response('Not found', 404);
            }, count: 2),
            expectClose: false,
          ),
        );

        // Metadata server client should not have service account credentials
        expect(client.serviceAccountCredentials, isNull);

        client.close();
      }, testOn: 'vm');
    });
  });
}
