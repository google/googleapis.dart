// Copyright (c) 2014, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:async';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';

import '../access_credentials.dart';
import '../client_id.dart';
import '../exceptions.dart';
import '../known_uris.dart';
import '../utils.dart';

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
