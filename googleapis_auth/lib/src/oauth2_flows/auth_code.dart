// Copyright (c) 2014, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:async';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';

import '../access_credentials.dart';
import '../client_id.dart';
import '../exceptions.dart';
import '../typedefs.dart';
import '../utils.dart';

// The OAuth2 Token endpoint can be used to make requests as
//    https://www.googleapis.com/oauth2/v2/tokeninfo?access_token=<token>
//
// A successful response from the server will give an HTTP response status
// 200 and a body of the following type:
// {
//   "issued_to": "XYZ.apps.googleusercontent.com",
//   "audience": "XYZ.apps.googleusercontent.com",
//   "scope": "https://www.googleapis.com/auth/bigquery",
//   "expires_in": 3547,
//   "access_type": "offline"
// }
//
// Scopes are separated by spaces.
Future<List<String>> obtainScopesFromAccessToken(
  String accessToken,
  http.Client client,
) async {
  final url = Uri.parse(
    'https://www.googleapis.com/oauth2/v2/tokeninfo'
    '?access_token=${Uri.encodeQueryComponent(accessToken)}',
  );

  final json = await client.requestJson(
    Request('POST', url),
    'Failed to obtain scopes from access token.',
  );

  final scope = json['scope'];
  if (scope is! String) {
    throw ServerRequestFailedException(
      'The response did not include a `scope` value of type `String`.',
      responseContent: json,
    );
  }
  return scope.split(' ').toList();
}

Future<AccessCredentials> obtainAccessCredentialsUsingCode(
  ClientId clientId,
  String code,
  String redirectUrl,
  http.Client client, [
  List<String>? scopes,
]) async {
  final jsonMap = await client.oauthTokenRequest(
    {
      'grant_type': 'authorization_code',
      'code': code,
      'redirect_uri': redirectUrl,
      'client_id': clientId.identifier,
      'client_secret': clientId.secret ?? '',
    },
  );
  final accessToken = parseAccessToken(jsonMap);

  final idToken = jsonMap['id_token'] as String?;
  final refreshToken = jsonMap['refresh_token'] as String?;

  return AccessCredentials(
    accessToken,
    refreshToken,
    scopes ?? await obtainScopesFromAccessToken(accessToken.data, client),
    idToken: idToken,
  );
}

/// Abstract class for obtaining access credentials via the authorization code
/// grant flow
///
/// See
///   * [AuthorizationCodeGrantServerFlow]
///   * [AuthorizationCodeGrantManualFlow]
/// for further details.
abstract class AuthorizationCodeGrantAbstractFlow {
  final ClientId clientId;
  final String? hostedDomain;
  final List<String> scopes;
  final http.Client _client;

  AuthorizationCodeGrantAbstractFlow(
    this.clientId,
    this.scopes,
    this._client, {
    this.hostedDomain,
  });

  Future<AccessCredentials> run();

  Future<AccessCredentials> _obtainAccessCredentialsUsingCode(
    String code,
    String redirectUri,
  ) =>
      obtainAccessCredentialsUsingCode(
        clientId,
        code,
        redirectUri,
        _client,
        scopes,
      );

  Uri _authenticationUri(String redirectUri, {String? state}) {
    // TODO: Increase scopes with [include_granted_scopes].
    final queryValues = {
      'response_type': 'code',
      'client_id': clientId.identifier,
      'redirect_uri': redirectUri,
      'scope': scopes.join(' '),
      if (hostedDomain != null) 'hd': hostedDomain!,
      if (state != null) 'state': state,
    };
    return Uri.https('accounts.google.com', 'o/oauth2/v2/auth', queryValues);
  }
}

/// Runs an oauth2 authorization code grant flow using an HTTP server.
///
/// This class is able to run an oauth2 authorization flow. It takes a user
/// supplied function which will be called with an URI. The user is expected
/// to navigate to that URI and to grant access to the client.
///
/// Once the user has granted access to the client, Google will redirect the
/// user agent to a URL pointing to a locally running HTTP server. Which in turn
/// will be able to extract the authorization code from the URL and use it to
/// obtain access credentials.
class AuthorizationCodeGrantServerFlow
    extends AuthorizationCodeGrantAbstractFlow {
  final PromptUserForConsent userPrompt;

  AuthorizationCodeGrantServerFlow(
    ClientId clientId,
    List<String> scopes,
    http.Client client,
    this.userPrompt, {
    String? hostedDomain,
  }) : super(clientId, scopes, client, hostedDomain: hostedDomain);

  @override
  Future<AccessCredentials> run() async {
    final server = await HttpServer.bind('localhost', 0);

    try {
      final port = server.port;
      final redirectionUri = 'http://localhost:$port';
      final state = 'authcodestate${DateTime.now().millisecondsSinceEpoch}';

      // Prompt user and wait until they go to URL and the google authorization
      // server calls back to our locally running HTTP server.
      userPrompt(_authenticationUri(redirectionUri, state: state).toString());

      final request = await server.first;
      final uri = request.uri;

      try {
        final returnedState = uri.queryParameters['state'];
        final code = uri.queryParameters['code'];
        final error = uri.queryParameters['error'];

        if (request.method != 'GET') {
          throw Exception(
            'Invalid response from server '
            '(expected GET request callback, got: ${request.method}).',
          );
        }

        if (state != returnedState) {
          throw Exception(
            'Invalid response from server (state did not match).',
          );
        }

        if (error != null) {
          throw UserConsentException(
            'Error occurred while obtaining access credentials: $error',
          );
        }

        if (code == null || code == '') {
          throw Exception(
            'Invalid response from server (no auth code transmitted).',
          );
        }
        final credentials =
            await _obtainAccessCredentialsUsingCode(code, redirectionUri);

        // TODO: We could introduce a user-defined redirect page.
        request.response
          ..statusCode = 200
          ..headers.set('content-type', 'text/html; charset=UTF-8')
          ..write(
            '''
<!DOCTYPE html>

<html>
  <head>
    <meta charset="utf-8">
    <title>Authorization successful.</title>
  </head>

  <body>
    <h2 style="text-align: center">Application has successfully obtained access credentials</h2>
    <p style="text-align: center">This window can be closed now.</p>
  </body>
</html>''',
          );
        await request.response.close();
        return credentials;
      } catch (e) {
        request.response.statusCode = 500;
        await request.response.close().catchError((_) {});
        rethrow;
      }
    } finally {
      await server.close();
    }
  }
}

/// Runs an oauth2 authorization code grant flow using manual Copy&Paste.
///
/// This class is able to run an oauth2 authorization flow. It takes a user
/// supplied function which will be called with an URI. The user is expected
/// to navigate to that URI and to grant access to the client.
///
/// Google will give the resource owner a code. The user supplied function needs
/// to complete with that code.
///
/// The authorization code will then be used to obtain access credentials.
class AuthorizationCodeGrantManualFlow
    extends AuthorizationCodeGrantAbstractFlow {
  final PromptUserForConsentManual userPrompt;

  AuthorizationCodeGrantManualFlow(
    ClientId clientId,
    List<String> scopes,
    http.Client client,
    this.userPrompt, {
    String? hostedDomain,
  }) : super(clientId, scopes, client, hostedDomain: hostedDomain);

  @override
  Future<AccessCredentials> run() async {
    const redirectionUri = 'urn:ietf:wg:oauth:2.0:oob';

    // Prompt user and wait until they go to URL and copy&pastes the auth code
    // in.
    final code =
        await userPrompt(_authenticationUri(redirectionUri).toString());
    // Use code to obtain credentials
    return _obtainAccessCredentialsUsingCode(code, redirectionUri);
  }
}

// TODO: Server app flow is missing here.
