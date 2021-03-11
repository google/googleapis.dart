// Copyright (c) 2014, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

import '../access_credentials.dart';
import '../access_token.dart';
import '../crypto/rsa.dart';
import '../crypto/rsa_sign.dart';
import '../http_client_base.dart';
import '../utils.dart';
import 'base_flow.dart';

class JwtFlow extends BaseFlow {
  // All details are described at:
  // https://developers.google.com/accounts/docs/OAuth2ServiceAccount
  // JSON Web Signature (JWS) requires signing a string with a private key.

  static const _googleOauth2TokenUrl =
      'https://accounts.google.com/o/oauth2/token';

  final String _clientEmail;
  final RS256Signer _signer;
  final List<String> _scopes;
  final String? _user;
  final http.Client _client;

  JwtFlow(
    this._clientEmail,
    RSAPrivateKey key,
    this._user,
    this._scopes,
    this._client,
  ) : _signer = RS256Signer(key);

  @override
  Future<AccessCredentials> run() async {
    final timestamp = DateTime.now().toUtc().millisecondsSinceEpoch ~/ 1000 -
        maxExpectedTimeDiffInSeconds;

    final jwtHeader = {'alg': 'RS256', 'typ': 'JWT'};
    final jwtHeaderBase64 = _base64url(ascii.encode(jsonEncode(jwtHeader)));

    final jwtClaimSet = {
      'iss': _clientEmail,
      'scope': _scopes.join(' '),
      'aud': _googleOauth2TokenUrl,
      'exp': timestamp + 3600,
      'iat': timestamp,
      if (_user != null) 'sub': _user!,
    };
    final jwtClaimSetBase64 = _base64url(utf8.encode(jsonEncode(jwtClaimSet)));

    final jwtSignatureInput = '$jwtHeaderBase64.$jwtClaimSetBase64';
    final jwtSignatureInputInBytes = ascii.encode(jwtSignatureInput);

    final signature = _signer.sign(jwtSignatureInputInBytes);
    final jwt = '$jwtSignatureInput.${_base64url(signature)}';

    final requestParameters = 'grant_type=${Uri.encodeComponent(_uri)}&'
        'assertion=${Uri.encodeComponent(jwt)}';

    final body = Stream<List<int>>.fromIterable(
        <List<int>>[utf8.encode(requestParameters)]);
    final request = RequestImpl('POST', Uri.parse(_googleOauth2TokenUrl), body)
      ..headers['content-type'] = contentTypeUrlEncoded;

    final httpResponse = await _client.send(request);
    final response = await httpResponse.stream
        .transform(utf8.decoder)
        .transform(json.decoder)
        .first as Map;
    final tokenType = response['token_type'] as String;
    final token = response['access_token'] as String?;
    final expiresIn = response['expires_in'];
    final error = response['error'];

    if (httpResponse.statusCode != 200 && error != null) {
      throw Exception('Unable to obtain credentials. Error: $error.');
    }

    if (tokenType != 'Bearer' || token == null || expiresIn is! int) {
      throw Exception(
        'Unable to obtain credentials. Invalid response from server.',
      );
    }
    final accessToken = AccessToken(tokenType, token, expiryDate(expiresIn));
    return AccessCredentials(accessToken, null, _scopes);
  }
}

const _uri = 'urn:ietf:params:oauth:grant-type:jwt-bearer';

String _base64url(List<int> bytes) =>
    base64Url.encode(bytes).replaceAll('=', '');
