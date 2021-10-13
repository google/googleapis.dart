// Copyright (c) 2014, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

import '../access_credentials.dart';
import '../access_token.dart';
import '../client_id.dart';
import '../exceptions.dart';
import '../http_client_base.dart';
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

  final response = await client.post(url);
  if (response.statusCode == 200) {
    final json = jsonDecode(response.body) as Map;
    final scope = json['scope'];
    if (scope is! String) {
      throw Exception(
        'The response did not include a `scope` value of type `String`.',
      );
    }
    return scope.split(' ').toList();
  } else {
    throw Exception(
      'Unable to obtain list of scopes an access token '
      'is valid for. Server responded with ${response.statusCode}.',
    );
  }
}

Future<AccessCredentials> obtainAccessCredentialsUsingCode(
  ClientId clientId,
  String code,
  String redirectUrl,
  http.Client client, [
  List<String>? scopes,
]) async {
  final formValues = [
    'grant_type=authorization_code',
    'code=${Uri.encodeQueryComponent(code)}',
    'redirect_uri=${Uri.encodeQueryComponent(redirectUrl)}',
    'client_id=${Uri.encodeQueryComponent(clientId.identifier)}',
    'client_secret=${Uri.encodeQueryComponent(clientId.secret ?? '')}',
  ];

  final body = Stream<List<int>>.value(ascii.encode(formValues.join('&')));
  final request = RequestImpl('POST', googleOauthTokenUri, body);
  request.headers['content-type'] = contentTypeUrlEncoded;

  final response = await client.send(request);
  final jsonMap = await readJsonMap(response);

  final idToken = jsonMap['id_token'] as String?;
  final tokenType = jsonMap['token_type'];
  final accessToken = jsonMap['access_token'] as String?;
  final seconds = jsonMap['expires_in'];
  final refreshToken = jsonMap['refresh_token'] as String?;
  final error = errorString(jsonMap);

  if (response.statusCode != 200 && error != null) {
    throw Exception(
      'Failed to exchange authorization code. '
      'Response was ${response.statusCode}. $error',
    );
  }

  if (response.statusCode != 200 ||
      accessToken == null ||
      seconds is! int ||
      tokenType != 'Bearer') {
    throw Exception(
      'Failed to exchange authorization code. '
      'Invalid server response. '
      'Http status code was: ${response.statusCode}.',
    );
  }

  if (scopes != null) {
    return AccessCredentials(
      AccessToken('Bearer', accessToken, expiryDate(seconds)),
      refreshToken,
      scopes,
      idToken: idToken,
    );
  }

  scopes = await obtainScopesFromAccessToken(accessToken, client);
  return AccessCredentials(
    AccessToken('Bearer', accessToken, expiryDate(seconds)),
    refreshToken,
    scopes,
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
  final List<String> scopes;
  final http.Client _client;

  AuthorizationCodeGrantAbstractFlow(this.clientId, this.scopes, this._client);

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

  String _authenticationUri(String redirectUri, {String? state}) {
    // TODO: Increase scopes with [include_granted_scopes].
    final queryValues = [
      'response_type=code',
      'client_id=${Uri.encodeQueryComponent(clientId.identifier)}',
      'redirect_uri=${Uri.encodeQueryComponent(redirectUri)}',
      'scope=${Uri.encodeQueryComponent(scopes.join(' '))}',
      if (state != null) 'state=${Uri.encodeQueryComponent(state)}',
    ];
    return Uri.parse(
      'https://accounts.google.com/o/oauth2/auth'
      '?${queryValues.join('&')}',
    ).toString();
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
    this.userPrompt,
  ) : super(clientId, scopes, client);

  @override
  Future<AccessCredentials> run() async {
    final server = await HttpServer.bind('localhost', 0);

    try {
      final port = server.port;
      final redirectionUri = 'http://localhost:$port';
      final state = 'authcodestate${DateTime.now().millisecondsSinceEpoch}';

      // Prompt user and wait until he goes to URL and the google authorization
      // server calls back to our locally running HTTP server.
      userPrompt(_authenticationUri(redirectionUri, state: state));

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
    this.userPrompt,
  ) : super(clientId, scopes, client);

  @override
  Future<AccessCredentials> run() async {
    const redirectionUri = 'urn:ietf:wg:oauth:2.0:oob';

    // Prompt user and wait until he goes to URL and copy&pastes the auth code
    // in.
    final code = await userPrompt(_authenticationUri(redirectionUri));
    // Use code to obtain credentials
    return _obtainAccessCredentialsUsingCode(code, redirectionUri);
  }
}

// TODO: Server app flow is missing here.
