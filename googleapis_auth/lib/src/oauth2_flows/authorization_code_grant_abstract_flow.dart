// Copyright (c) 2021, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';

import 'package:crypto/crypto.dart';
import 'package:http/http.dart' as http;

import '../access_credentials.dart';
import '../client_id.dart';
import '../known_uris.dart';
import 'auth_code.dart';
import 'base_flow.dart';

abstract class AuthorizationCodeGrantAbstractFlow implements BaseFlow {
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

  Future<AccessCredentials> obtainAccessCredentialsUsingCodeImpl(
    String code,
    String redirectUri, {
    required String codeVerifier,
  }) =>
      obtainAccessCredentialsUsingCode(
        clientId,
        code,
        redirectUri,
        _client,
        codeVerifier: codeVerifier,
        scopes: scopes,
      );

  String authenticationUri(
    String redirectUri, {
    String? state,
    required String codeVerifier,
  }) {
    // TODO: Increase scopes with [include_granted_scopes].
    final queryValues = {
      'client_id': clientId.identifier,
      'response_type': 'code',
      'redirect_uri': redirectUri,
      'scope': scopes.join(' '),
      if (hostedDomain != null) 'hd': hostedDomain!,
      'code_challenge': _codeVerifierShaEncode(codeVerifier),
      'code_challenge_method': 'S256',
      if (state != null) 'state': state,
    };
    return googleOauth2AuthorizationEndpoint
        .replace(
          queryParameters: queryValues,
        )
        .toString();
  }
}

/// https://developers.google.com/identity/protocols/oauth2/native-app#create-code-challenge
/// Between 43 and 128 = 86
String createCodeVerifier() {
  final rnd = Random.secure();

  return List.generate(86, (index) => _safe[rnd.nextInt(_safe.length)]).join();
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

// https://datatracker.ietf.org/doc/html/rfc3986#section-2.3
const _safe = '0123456789-._~'
    'abcdefghijklmnopqrstuvwxyz'
    'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
