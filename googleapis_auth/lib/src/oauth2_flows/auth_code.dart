// Copyright (c) 2014, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:async';
import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';

import 'package:crypto/crypto.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

import '../access_credentials.dart';
import '../client_id.dart';
import '../exceptions.dart';
import '../known_uris.dart';
import '../utils.dart';

Uri createAuthenticationUri({
  required String redirectUri,
  required String clientId,
  required Iterable<String> scopes,
  required String codeVerifier,
  String? hostedDomain,
  String? state,
  bool offline = false,
}) {
  final queryValues = {
    'client_id': clientId,
    'response_type': 'code',
    'redirect_uri': redirectUri,
    'scope': scopes.join(' '),
    'code_challenge': _codeVerifierShaEncode(codeVerifier),
    'code_challenge_method': 'S256',
    if (offline) 'access_type': 'offline',
    if (hostedDomain != null) 'hd': hostedDomain,
    if (state != null) 'state': state,
  };
  return googleOauth2AuthorizationEndpoint.replace(
    queryParameters: queryValues,
  );
}

/// https://developers.google.com/identity/protocols/oauth2/native-app#create-code-challenge
String createCodeVerifier() {
  final rnd = Random.secure();

  return List.generate(128, (index) => _safe[rnd.nextInt(_safe.length)]).join();
}

/// See https://developers.google.com/identity/protocols/oauth2/openid-connect#createxsrftoken
String randomState() {
  final rnd = Random.secure();

  final list = Uint32List(6);
  for (var i = 0; i < list.length; i++) {
    list[i] = rnd.nextInt(1 << 32);
  }

  final value = base64UrlEncode(Uint8List.view(list.buffer));
  return _stripBase64Equals(value);
}

// https://datatracker.ietf.org/doc/html/rfc3986#section-2.3
const _safe = '0123456789-._~'
    'abcdefghijklmnopqrstuvwxyz'
    'ABCDEFGHIJKLMNOPQRSTUVWXYZ';

String _codeVerifierShaEncode(String codeVerifier) {
  final asciiBytes = ascii.encode(codeVerifier);
  final sha26Bytes = sha256.convert(asciiBytes).bytes;
  final output = base64UrlEncode(sha26Bytes);
  return _stripBase64Equals(output);
}

String _stripBase64Equals(String value) {
  while (value.endsWith('=')) {
    value = value.substring(0, value.length - 1);
  }
  return value;
}

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
  final url = googleOauth2TokenInfoEndpoint.replace(
    queryParameters: {'access_token': accessToken},
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
  http.Client client, {
  List<String>? scopes,
  String? codeVerifier,
}) async {
  final jsonMap = await client.oauthTokenRequest(
    {
      'client_id': clientId.identifier,
      'client_secret': clientId.secret ?? '',
      'code': code,
      if (codeVerifier != null) 'code_verifier': codeVerifier,
      'grant_type': 'authorization_code',
      'redirect_uri': redirectUrl,
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
