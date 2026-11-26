// Copyright 2021 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

import '../access_credentials.dart';
import '../access_token.dart';
import '../crypto/rsa.dart';
import '../crypto/rsa_sign.dart';
import '../known_uris.dart';
import '../utils.dart';
import 'base_flow.dart';

class JwtFlow extends BaseFlow {
  // All details are described at:
  // https://developers.google.com/accounts/docs/OAuth2ServiceAccount
  // JSON Web Signature (JWS) requires signing a string with a private key.

  final String _clientEmail;
  final RS256Signer _signer;
  final List<String> _scopes;
  final String? _user;
  final http.Client _client;
  final String _universeDomain;
  final Uri? _tokenUri;
  final String? _privateKeyId;

  JwtFlow(
    this._clientEmail,
    RSAPrivateKey key,
    this._user,
    this._scopes,
    this._client, {
    String universeDomain = defaultUniverseDomain,
    Uri? tokenUri,
    String? privateKeyId,
  }) : _signer = RS256Signer(key),
       _universeDomain = normalizeUniverseDomain(universeDomain),
       _tokenUri = tokenUri != null ? validateTokenUri(tokenUri) : null,
       _privateKeyId = privateKeyId;

  @override
  Future<AccessCredentials> run() async {
    final timestamp =
        DateTime.now().toUtc().millisecondsSinceEpoch ~/ 1000 -
        maxExpectedTimeDiffInSeconds;

    final jwtHeader = {
      'alg': 'RS256',
      'typ': 'JWT',
      if (_privateKeyId != null && _privateKeyId.isNotEmpty)
        'kid': _privateKeyId,
    };
    final jwtHeaderBase64 = _base64url(utf8.encode(jsonEncode(jwtHeader)));

    // Per AIP-4111, non-default universe domains use self-signed JWTs directly
    // instead of exchanging an assertion at oauth2.googleapis.com/token.
    if (_universeDomain != defaultUniverseDomain) {
      if (_user != null) {
        throw UnsupportedError(
          'Domain-wide delegation is not supported for non-default universe '
          'domains.',
        );
      }
      if (_scopes.isEmpty) {
        throw ArgumentError.value(
          _scopes,
          'scopes',
          'Scopes cannot be empty for self-signed JWTs in non-default '
              'universe domains.',
        );
      }

      final jwtClaimSet = {
        'iss': _clientEmail,
        'sub': _clientEmail,
        'scope': _scopes.join(' '),
        'exp': timestamp + 3600,
        'iat': timestamp,
      };
      final jwt = _signJwt(jwtHeaderBase64, jwtClaimSet);
      final expiry = DateTime.fromMillisecondsSinceEpoch(
        (timestamp + 3600) * 1000,
        isUtc: true,
      );
      return AccessCredentials(
        AccessToken('Bearer', jwt, expiry),
        null,
        _scopes,
        universeDomain: _universeDomain,
      );
    }

    final tokenEndpoint = _tokenUri ?? googleOauth2TokenEndpoint;
    final jwtClaimSet = {
      'iss': _clientEmail,
      'scope': _scopes.join(' '),
      'aud': tokenEndpoint.toString(),
      'exp': timestamp + 3600,
      'iat': timestamp,
      if (_user != null) 'sub': _user,
    };
    final jwt = _signJwt(jwtHeaderBase64, jwtClaimSet);

    // https://developers.google.com/identity/protocols/oauth2/service-account#authorizingrequests
    final response = await _client.requestJson(
      'POST',
      tokenEndpoint,
      'Failed to obtain access credentials.',
      body: {'grant_type': _uri, 'assertion': jwt},
    );
    final accessToken = parseAccessToken(response);
    return AccessCredentials(
      accessToken,
      null,
      _scopes,
      universeDomain: _universeDomain,
    );
  }

  String _signJwt(String jwtHeaderBase64, Map<String, Object> jwtClaimSet) {
    final jwtClaimSetBase64 = _base64url(utf8.encode(jsonEncode(jwtClaimSet)));
    final jwtSignatureInput = '$jwtHeaderBase64.$jwtClaimSetBase64';
    final jwtSignatureInputInBytes = ascii.encode(jwtSignatureInput);
    final signature = _signer.sign(jwtSignatureInputInBytes);
    return '$jwtSignatureInput.${_base64url(signature)}';
  }
}

const _uri = 'urn:ietf:params:oauth:grant-type:jwt-bearer';

String _base64url(List<int> bytes) =>
    base64Url.encode(bytes).replaceAll('=', '');
