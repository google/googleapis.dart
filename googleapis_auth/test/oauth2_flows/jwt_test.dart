// Copyright 2021 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

import 'dart:async';
import 'dart:convert';

import 'package:googleapis_auth/src/known_uris.dart';
import 'package:googleapis_auth/src/oauth2_flows/jwt.dart';
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
          expect(claims['aud'], customTokenUri.toString());
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
      expectExpiryOneHourFromNow(credentials.accessToken);

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

      await expectLater(flow.run(), throwsUnsupportedError);
    },
  );
}
