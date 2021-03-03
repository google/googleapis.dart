// Copyright (c) 2014, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:googleapis_auth/googleapis_auth.dart';
import 'package:googleapis_auth/src/oauth2_flows/auth_code.dart';
import 'package:http/http.dart';
import 'package:test/test.dart';

import '../test_utils.dart';

typedef RequestHandler = Future<Response> Function(Request _);

void main() {
  final clientId = ClientId('id', 'secret');
  final scopes = ['s1', 's2'];

  // Validation + Responses from the authorization server.

  RequestHandler successFullResponse({bool? manual}) =>
      (Request request) async {
        expect(request.method, equals('POST'));
        expect('${request.url}',
            equals('https://accounts.google.com/o/oauth2/token'));
        expect(
            request.headers['content-type']!
                .startsWith('application/x-www-form-urlencoded'),
            isTrue);

        final pairs = request.body.split('&');
        expect(pairs, hasLength(5));
        expect(pairs[0], equals('grant_type=authorization_code'));
        expect(pairs[1], equals('code=mycode'));
        expect(pairs[3], equals('client_id=id'));
        expect(pairs[4], equals('client_secret=secret'));
        if (manual!) {
          expect(pairs[2],
              equals('redirect_uri=urn%3Aietf%3Awg%3Aoauth%3A2.0%3Aoob'));
        } else {
          expect(pairs[2], startsWith('redirect_uri='));

          final url = Uri.parse(
              Uri.decodeComponent(pairs[2].substring('redirect_uri='.length)));
          expect(url.scheme, equals('http'));
          expect(url.host, equals('localhost'));
        }

        final result = {
          'token_type': 'Bearer',
          'access_token': 'tokendata',
          'expires_in': 3600,
          'refresh_token': 'my-refresh-token',
          'id_token': 'my-id-token',
        };
        return Response(jsonEncode(result), 200);
      };

  Future<Response> invalidResponse(Request request) {
    // Missing expires_in field!
    final result = {
      'token_type': 'Bearer',
      'access_token': 'tokendata',
      'refresh_token': 'my-refresh-token',
      'id_token': 'my-id-token',
    };
    return Future.value(Response(jsonEncode(result), 200));
  }

  // Validation functions for user prompt and access credentials.

  void validateAccessCredentials(AccessCredentials credentials) {
    expect(credentials.accessToken.data, equals('tokendata'));
    expect(credentials.accessToken.type, equals('Bearer'));
    expect(credentials.scopes, equals(['s1', 's2']));
    expect(credentials.refreshToken, equals('my-refresh-token'));
    expect(credentials.idToken, equals('my-id-token'));
    expectExpiryOneHourFromNow(credentials.accessToken);
  }

  Uri validateUserPromptUri(String url, {bool manual = false}) {
    final uri = Uri.parse(url);
    expect(uri.scheme, equals('https'));
    expect(uri.host, equals('accounts.google.com'));
    expect(uri.path, equals('/o/oauth2/auth'));
    expect(uri.queryParameters['client_id'], equals(clientId.identifier));
    expect(uri.queryParameters['response_type'], equals('code'));
    expect(uri.queryParameters['scope'], equals('s1 s2'));
    expect(uri.queryParameters['redirect_uri'], isNotNull);

    final redirectUri = Uri.parse(uri.queryParameters['redirect_uri']!);

    if (manual) {
      expect('$redirectUri', equals('urn:ietf:wg:oauth:2.0:oob'));
    } else {
      expect(uri.queryParameters['state'], isNotNull);
      expect(redirectUri.scheme, equals('http'));
      expect(redirectUri.host, equals('localhost'));
    }

    return redirectUri;
  }

  group('authorization-code-flow', () {
    group('manual-copy-paste', () {
      Future<String> manualUserPrompt(String url) {
        validateUserPromptUri(url, manual: true);
        return Future.value('mycode');
      }

      test('successfull', () async {
        final flow = AuthorizationCodeGrantManualFlow(
            clientId,
            scopes,
            mockClient(successFullResponse(manual: true), expectClose: false),
            manualUserPrompt);
        validateAccessCredentials(await flow.run());
      });

      test('user-exception', () {
        // We use a TransportException here for convenience.
        Future<String> manualUserPromptError(String url) =>
            Future.error(TransportException());

        final flow = AuthorizationCodeGrantManualFlow(
            clientId,
            scopes,
            mockClient(successFullResponse(manual: true), expectClose: false),
            manualUserPromptError);
        expect(flow.run(), throwsA(isTransportException));
      });

      test('transport-exception', () {
        final flow = AuthorizationCodeGrantManualFlow(
            clientId, scopes, transportFailure, manualUserPrompt);
        expect(flow.run(), throwsA(isTransportException));
      });

      test('invalid-server-response', () {
        final flow = AuthorizationCodeGrantManualFlow(clientId, scopes,
            mockClient(invalidResponse, expectClose: false), manualUserPrompt);
        expect(flow.run(), throwsA(isException));
      });
    });

    group('http-server', () {
      void callRedirectionEndpoint(Uri authCodeCall) {
        final ioClient = HttpClient();
        ioClient
            .getUrl(authCodeCall)
            .then((request) => request.close())
            .then((response) => response.drain())
            .whenComplete(expectAsync0(ioClient.close));
      }

      void userPrompt(String url) {
        final redirectUri = validateUserPromptUri(url);
        final authCodeCall = Uri(
            scheme: redirectUri.scheme,
            host: redirectUri.host,
            port: redirectUri.port,
            path: redirectUri.path,
            queryParameters: {
              'state': Uri.parse(url).queryParameters['state'],
              'code': 'mycode',
            });
        callRedirectionEndpoint(authCodeCall);
      }

      void userPromptInvalidAuthCodeCallback(String url) {
        final redirectUri = validateUserPromptUri(url);
        final authCodeCall = Uri(
            scheme: redirectUri.scheme,
            host: redirectUri.host,
            port: redirectUri.port,
            path: redirectUri.path,
            queryParameters: {
              'state': Uri.parse(url).queryParameters['state'],
              'error': 'failed to authenticate',
            });
        callRedirectionEndpoint(authCodeCall);
      }

      test('successfull', () async {
        final flow = AuthorizationCodeGrantServerFlow(
            clientId,
            scopes,
            mockClient(successFullResponse(manual: false), expectClose: false),
            expectAsync1(userPrompt));
        validateAccessCredentials(await flow.run());
      });

      test('transport-exception', () {
        final flow = AuthorizationCodeGrantServerFlow(
            clientId, scopes, transportFailure, expectAsync1(userPrompt));
        expect(flow.run(), throwsA(isTransportException));
      });

      test('invalid-server-response', () {
        final flow = AuthorizationCodeGrantServerFlow(
            clientId,
            scopes,
            mockClient(invalidResponse, expectClose: false),
            expectAsync1(userPrompt));
        expect(flow.run(), throwsA(isException));
      });

      test('failed-authentication', () {
        final flow = AuthorizationCodeGrantServerFlow(
            clientId,
            scopes,
            mockClient(successFullResponse(manual: false), expectClose: false),
            expectAsync1(userPromptInvalidAuthCodeCallback));
        expect(flow.run(), throwsA(isUserConsentException));
      });
    }, testOn: '!browser');
  });

  group('scopes-from-tokeninfo-endpoint', () {
    final successfulResponseJson = jsonEncode({
      'issued_to': 'XYZ.apps.googleusercontent.com',
      'audience': 'XYZ.apps.googleusercontent.com',
      'scope': 'scopeA scopeB',
      'expires_in': 3210,
      'access_type': 'offline'
    });
    const expectedUri =
        'https://www.googleapis.com/oauth2/v2/tokeninfo?access_token=my_token';

    test('successfull', () async {
      final http = mockClient(expectAsync1((BaseRequest request) async {
        expect(request.url.toString(), expectedUri);
        return Response(successfulResponseJson, 200);
      }), expectClose: false);
      final scopes = await obtainScopesFromAccessToken('my_token', http);
      expect(scopes, equals(['scopeA', 'scopeB']));
    });

    test('non-200-status-code', () {
      final http = mockClient(expectAsync1((BaseRequest request) async {
        expect(request.url.toString(), expectedUri);
        return Response(successfulResponseJson, 201);
      }), expectClose: false);
      expect(obtainScopesFromAccessToken('my_token', http), throwsException);
    });

    test('no-scope', () {
      final http = mockClient(expectAsync1((BaseRequest request) async {
        expect(request.url.toString(), expectedUri);
        return Response(jsonEncode({}), 200);
      }), expectClose: false);
      expect(obtainScopesFromAccessToken('my_token', http), throwsException);
    });
  });
}
