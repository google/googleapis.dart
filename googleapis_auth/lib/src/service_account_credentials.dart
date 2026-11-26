// Copyright 2021 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

import 'dart:convert';
import 'dart:typed_data';

import 'client_id.dart';
import 'crypto/pem.dart';
import 'crypto/rsa.dart';
import 'crypto/rsa_sign.dart';
import 'utils.dart';

export 'access_credentials.dart' show AccessCredentials;
export 'access_token.dart' show AccessToken;
export 'auth_client.dart';
export 'client_id.dart';
export 'exceptions.dart';
export 'response_type.dart';

/// Represents credentials for a service account.
class ServiceAccountCredentials {
  /// The email address of this service account.
  final String email;

  /// The clientId.
  final ClientId clientId;

  /// Private key.
  final String privateKey;

  /// Impersonated user, if any. If not impersonating any user this is `null`.
  final String? impersonatedUser;

  /// The project ID from the service account JSON file, if available.
  final String? projectId;

  /// The private key ID from the service account JSON file, if available.
  final String? privateKeyId;

  /// The universe domain for this service account.
  ///
  /// Defaults to [defaultUniverseDomain] if not specified in
  /// the JSON file.
  /// Used to construct correct API endpoints for non-default universe domains
  /// (e.g., Government Cloud or other isolated environments).
  final String universeDomain;

  /// The quota project to use for requests.
  final String? quotaProject;

  /// The OAuth 2.0 token endpoint URI from the service account JSON file,
  /// if available.
  ///
  /// Used for OAuth 2.0 token exchanges in the default universe domain
  /// ([defaultUniverseDomain]). For non-default universe domains, self-signed
  /// JWTs are used directly without calling this endpoint.
  final Uri? tokenUri;

  /// Private key as an [RSAPrivateKey].
  final RSAPrivateKey privateRSAKey;

  /// Creates a new [ServiceAccountCredentials] from JSON.
  ///
  /// [json] can be either a [Map] or a JSON map encoded as a [String].
  ///
  /// The optional named argument [impersonatedUser] is used to set the user
  /// to impersonate if impersonating a user.
  factory ServiceAccountCredentials.fromJson(
    Object? json, {
    String? impersonatedUser,
  }) {
    if (json is String) {
      json = jsonDecode(json);
    }
    return switch (json) {
      final Map map &&
              {
                'type': 'service_account',
                'client_id': final String identifier,
                'private_key': final String privateKey,
                'client_email': final String email,
              }
          when (map['project_id'] is String?) &&
              (map['private_key_id'] is String?) &&
              (map['universe_domain'] is String?) &&
              (map['quota_project_id'] is String?) &&
              (map['token_uri'] is String?) =>
        ServiceAccountCredentials(
          email,
          ClientId(identifier),
          privateKey,
          impersonatedUser: impersonatedUser,
          projectId: map['project_id'] as String?,
          privateKeyId: map['private_key_id'] as String?,
          universeDomain: switch (map['universe_domain'] as String?) {
            null || '' => defaultUniverseDomain,
            final domain => domain,
          },
          quotaProject: map['quota_project_id'] as String?,
          tokenUri: _parseTokenUri(map['token_uri'] as String?),
        ),
      final Map map when map['type'] != 'service_account' =>
        throw ArgumentError(
          'The given credentials are not of type '
          'service_account (was: ${map['type']}).',
        ),
      Map _ => throw ArgumentError(
        'The given credentials do not contain all the '
        'fields: client_id, private_key and client_email.',
      ),
      _ => throw ArgumentError(
        'json must be a Map or a String encoding a Map.',
      ),
    };
  }

  /// Creates a new [ServiceAccountCredentials].
  ///
  /// [email] is the e-mail address of the service account.
  ///
  /// [clientId] is the client ID for the service account.
  ///
  /// [privateKey] is the base 64 encoded, unencrypted private key, including
  /// the '-----BEGIN PRIVATE KEY-----' and '-----END PRIVATE KEY-----'
  /// boundaries.
  ///
  /// The optional named argument [impersonatedUser] is used to set the user
  /// to impersonate if impersonating a user is needed.
  ///
  /// The optional named argument [projectId] is the GCP project ID.
  ///
  /// The optional named argument [privateKeyId] is the key ID included in
  /// signed JWT headers when present.
  ///
  /// The optional named argument [universeDomain] specifies the universe
  /// domain.
  /// Defaults to [defaultUniverseDomain] if not provided or empty.
  ///
  /// The optional named argument [quotaProject] specifies the quota project
  /// to use for requests.
  ///
  /// The optional named argument [tokenUri] specifies a custom OAuth 2.0 token
  /// endpoint URI for default-universe token exchange.
  ServiceAccountCredentials(
    this.email,
    this.clientId,
    this.privateKey, {
    this.impersonatedUser,
    this.projectId,
    this.privateKeyId,
    String universeDomain = defaultUniverseDomain,
    this.quotaProject,
    this.tokenUri,
  }) : universeDomain = universeDomain.isEmpty
           ? defaultUniverseDomain
           : universeDomain,
       privateRSAKey = keyFromString(privateKey);

  /// Signs the given [data] using RSA-SHA256 with this service account's
  /// private key.
  ///
  /// This is useful for creating custom signed tokens or signing arbitrary
  /// data with the service account's credentials.
  Uint8List sign(List<int> data) => RS256Signer(privateRSAKey).sign(data);
}

Uri? _parseTokenUri(String? value) {
  if (value == null || value.isEmpty) return null;
  final uri = Uri.tryParse(value);
  if (uri == null || !uri.hasScheme || uri.host.isEmpty) {
    throw ArgumentError.value(
      value,
      'token_uri',
      'Invalid token_uri: must be a valid absolute URI.',
    );
  }
  final isLoopback =
      uri.host == 'localhost' || uri.host == '127.0.0.1' || uri.host == '::1';
  if (uri.scheme != 'https' && !(uri.scheme == 'http' && isLoopback)) {
    throw ArgumentError.value(
      value,
      'token_uri',
      'Invalid token_uri: must use https (or http for localhost).',
    );
  }
  return uri;
}
