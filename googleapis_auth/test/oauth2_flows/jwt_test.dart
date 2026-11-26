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
      routeMockClient({
        '$customTokenUri': (request) {
          expect(request.method, 'POST');
          final (:header, :claims) = decodeJwt(
            request.bodyFields['assertion']!,
          );
          expect(header, {'alg': 'RS256', 'typ': 'JWT', 'kid': 'key-123'});
          expect(claims['iss'], clientEmail);
          expect(claims['aud'], '$googleOauth2TokenEndpoint');
          expect(claims['scope'], 's1 s2');
          return oauthTokenResponse(token: 'custom-atok');
        },
      }, count: 1),
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
        neverClient,
        universeDomain: 's3nsapis.fr',
        tokenUri: googleOauth2TokenEndpoint,
        privateKeyId: 'tpc-key-id',
      );

      final credentials = await flow.run();
      expect(credentials.accessToken.type, 'Bearer');
      expect(credentials.universeDomain, 's3nsapis.fr');
      expect(credentials.scopes, scopes);

      final (:header, :claims) = decodeJwt(credentials.accessToken.data);
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
        neverClient,
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
        neverClient,
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
    final defaultCreds = await JwtFlow(
      clientEmail,
      testPrivateKey,
      null,
      scopes,
      mockClient(expectAsync1(successfulSignRequest), expectClose: false),
      universeDomain: 'GOOGLEAPIS.COM',
    ).run();
    expect(defaultCreds.universeDomain, 'googleapis.com');

    final tpcCreds = await JwtFlow(
      clientEmail,
      testPrivateKey,
      null,
      scopes,
      neverClient,
      universeDomain: 'S3NSAPIS.FR',
      privateKeyId: 'key-é-1',
    ).run();
    expect(tpcCreds.universeDomain, 's3nsapis.fr');
    expect(decodeJwt(tpcCreds.accessToken.data).header['kid'], 'key-é-1');
  });

  test('validates universeDomain and tokenUri in constructor', () {
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
    expect(
      () => JwtFlow(
        clientEmail,
        testPrivateKey,
        null,
        scopes,
        neverClient,
        tokenUri: Uri.parse('http://oauth2.evil.com/token'),
      ),
      throwsArgumentError,
    );
  });
}
