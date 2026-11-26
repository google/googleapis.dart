// Copyright 2021 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

import 'dart:async';
import 'dart:convert';

import 'package:googleapis_auth/src/known_uris.dart';
import 'package:googleapis_auth/src/oauth2_flows/jwt.dart';
import 'package:googleapis_auth/src/utils.dart'
    show maxExpectedTimeDiffInSeconds;
import 'package:http/http.dart';
import 'package:test/test.dart';

import '../test_utils.dart';

void main() {
  Future<Response> successfulSignRequest(Request request) async {
    expect(request.method, 'POST');
    expect(request.url, googleOauth2TokenEndpoint);

    // We are not asserting what comes after '&assertion=' because this is
    // time dependent.
    expect(
      request.body,
      startsWith(
        'grant_type=urn%3Aietf%3Aparams%3Aoauth%3Agrant-type%3Ajwt-bearer'
        '&assertion=',
      ),
    );
    final body = jsonEncode({
      'access_token': 'atok',
      'expires_in': 3600,
      'token_type': 'Bearer',
    });
    return Response(body, 200, headers: jsonContentType);
  }

  Future<Response> invalidAccessToken(Request request) async {
    final body = jsonEncode({
      // Missing 'expires_in' entry
      'access_token': 'atok',
      'token_type': 'Bearer',
    });
    return Response(body, 200, headers: jsonContentType);
  }

  const clientEmail = 'a@b.com';
  final scopes = ['s1', 's2'];

  test('successful run', () async {
    final flow = JwtFlow(
      clientEmail,
      testPrivateKey,
      null,
      scopes,
      mockClient(expectAsync1(successfulSignRequest), expectClose: false),
    );

    final credentials = await flow.run();
    expect(credentials.accessToken.data, 'atok');
    expect(credentials.accessToken.type, 'Bearer');
    expect(credentials.scopes, ['s1', 's2']);
    expectExpiryOneHourFromNow(credentials.accessToken);
  });

  test('successful run with user impersonation', () async {
    final flow = JwtFlow(
      clientEmail,
      testPrivateKey,
      'x@y.com',
      scopes,
      mockClient(expectAsync1(successfulSignRequest), expectClose: false),
    );

    final credentials = await flow.run();
    expect(credentials.accessToken.data, 'atok');
    expect(credentials.accessToken.type, 'Bearer');
    expect(credentials.scopes, ['s1', 's2']);
    expectExpiryOneHourFromNow(credentials.accessToken);
  });

  test('throws on invalid server response', () async {
    final flow = JwtFlow(
      clientEmail,
      testPrivateKey,
      null,
      scopes,
      mockClient(expectAsync1(invalidAccessToken), expectClose: false),
    );

    await expectLater(flow.run(), throwsA(isServerRequestFailedException));
  });

  test('throws on transport failure', () async {
    final flow = JwtFlow(
      clientEmail,
      testPrivateKey,
      null,
      scopes,
      transportFailure,
    );

    await expectLater(flow.run(), throwsA(isTransportException));
  });

  test('uses custom tokenUri for default universe domain', () async {
    final customTokenUri = Uri.parse('https://oauth2.custom.example/token');
    final flow = JwtFlow(
      clientEmail,
      testPrivateKey,
      null,
      scopes,
      mockClient(
        expectAsync1((request) async {
          expect(request.method, 'POST');
          expect(request.url, customTokenUri);

          final assertion = request.bodyFields['assertion']!;
          final parts = assertion.split('.');
          expect(parts, hasLength(3));
          final header =
              jsonDecode(
                    utf8.decode(
                      base64Url.decode(base64Url.normalize(parts[0])),
                    ),
                  )
                  as Map<String, dynamic>;
          final claims =
              jsonDecode(
                    utf8.decode(
                      base64Url.decode(base64Url.normalize(parts[1])),
                    ),
                  )
                  as Map<String, dynamic>;

          expect(header['alg'], 'RS256');
          expect(header['typ'], 'JWT');
          expect(header['kid'], 'key-123');
          expect(claims['iss'], clientEmail);
          expect(claims['aud'], googleOauth2TokenEndpoint.toString());
          expect(claims['scope'], 's1 s2');

          return Response(
            jsonEncode({
              'access_token': 'custom-atok',
              'expires_in': 3600,
              'token_type': 'Bearer',
            }),
            200,
            headers: jsonContentType,
          );
        }),
        expectClose: false,
      ),
      tokenUri: customTokenUri,
      privateKeyId: 'key-123',
    );

    final credentials = await flow.run();
    expect(credentials.accessToken.data, 'custom-atok');
    expect(credentials.universeDomain, 'googleapis.com');
  });

  test(
    'non-default universe uses self-signed JWT with zero HTTP requests',
    () async {
      final flow = JwtFlow(
        clientEmail,
        testPrivateKey,
        null,
        scopes,
        mockClient(
          (request) async =>
              fail('Unexpected HTTP request to ${request.url} in TPC universe'),
          expectClose: false,
        ),
        universeDomain: 's3nsapis.fr',
        tokenUri: googleOauth2TokenEndpoint,
        privateKeyId: 'tpc-key-id',
      );

      final credentials = await flow.run();
      expect(credentials.accessToken.type, 'Bearer');
      expect(credentials.universeDomain, 's3nsapis.fr');
      expect(credentials.scopes, scopes);

      final parts = credentials.accessToken.data.split('.');
      expect(parts, hasLength(3));
      final header =
          jsonDecode(
                utf8.decode(base64Url.decode(base64Url.normalize(parts[0]))),
              )
              as Map<String, dynamic>;
      final claims =
          jsonDecode(
                utf8.decode(base64Url.decode(base64Url.normalize(parts[1]))),
              )
              as Map<String, dynamic>;

      expect(header, {'alg': 'RS256', 'typ': 'JWT', 'kid': 'tpc-key-id'});
      expect(claims['iss'], clientEmail);
      expect(claims['sub'], clientEmail);
      expect(claims['scope'], 's1 s2');
      expect(claims, isNot(contains('aud')));

      final iat = claims['iat'] as int;
      final exp = claims['exp'] as int;
      expect(exp - iat, 3600);
      expect(
        credentials.accessToken.expiry,
        DateTime.fromMillisecondsSinceEpoch(
          (exp - maxExpectedTimeDiffInSeconds) * 1000,
          isUtc: true,
        ),
      );
    },
  );

  test(
    'non-default universe rejects domain-wide delegation before network calls',
    () async {
      final flow = JwtFlow(
        clientEmail,
        testPrivateKey,
        'user@example.com',
        scopes,
        mockClient(
          (request) async => fail('Unexpected HTTP request to ${request.url}'),
          expectClose: false,
        ),
        universeDomain: 's3nsapis.fr',
      );

      await expectLater(
        flow.run(),
        throwsA(
          isUnsupportedError.having(
            (e) => e.message,
            'message',
            contains('Domain-wide delegation'),
          ),
        ),
      );
    },
  );

  test(
    'non-default universe rejects empty scopes before network calls',
    () async {
      final flow = JwtFlow(
        clientEmail,
        testPrivateKey,
        null,
        const [],
        mockClient(
          (request) async => fail('Unexpected HTTP request to ${request.url}'),
          expectClose: false,
        ),
        universeDomain: 's3nsapis.fr',
      );

      await expectLater(
        flow.run(),
        throwsA(
          isArgumentError.having(
            (e) => e.message,
            'message',
            contains('Scopes cannot be empty'),
          ),
        ),
      );
    },
  );

  test('normalizes universeDomain casing and encodes non-ASCII kid', () async {
    final defaultUpperFlow = JwtFlow(
      clientEmail,
      testPrivateKey,
      null,
      scopes,
      mockClient(expectAsync1(successfulSignRequest), expectClose: false),
      universeDomain: 'GOOGLEAPIS.COM',
    );
    final defaultCreds = await defaultUpperFlow.run();
    expect(defaultCreds.universeDomain, 'googleapis.com');

    final tpcUpperFlow = JwtFlow(
      clientEmail,
      testPrivateKey,
      null,
      scopes,
      mockClient(
        (request) async => fail('Unexpected HTTP request to ${request.url}'),
        expectClose: false,
      ),
      universeDomain: 'S3NSAPIS.FR',
      privateKeyId: 'key-é-1',
    );
    final tpcCreds = await tpcUpperFlow.run();
    expect(tpcCreds.universeDomain, 's3nsapis.fr');
    final header =
        jsonDecode(
              utf8.decode(
                base64Url.decode(
                  base64Url.normalize(tpcCreds.accessToken.data.split('.')[0]),
                ),
              ),
            )
            as Map<String, dynamic>;
    expect(header['kid'], 'key-é-1');
  });

  test('validates universeDomain and tokenUri in constructor', () {
    final neverClient = mockClient(
      (request) async => fail('Unexpected HTTP request to ${request.url}'),
      expectClose: false,
    );
    expect(
      () => JwtFlow(
        clientEmail,
        testPrivateKey,
        null,
        scopes,
        neverClient,
        universeDomain: 'googleapis.com@evil.com',
      ),
      throwsArgumentError,
    );
    for (final badUri in [
      Uri.parse('http://oauth2.evil.com/token'),
      Uri.parse('https://user@oauth2.googleapis.com/token'),
      Uri.parse('https://oauth2.googleapis.com/token#frag'),
      Uri.parse('/relative/token'),
    ]) {
      expect(
        () => JwtFlow(
          clientEmail,
          testPrivateKey,
          null,
          scopes,
          neverClient,
          tokenUri: badUri,
        ),
        throwsArgumentError,
        reason: 'Should reject $badUri',
      );
    }
  });
}
