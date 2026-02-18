// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

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

  /// The universe domain for this service account.
  ///
  /// Defaults to [defaultUniverseDomain] if not specified in
  /// the JSON file.
  /// Used to construct correct API endpoints for non-default universe domains
  /// (e.g., Government Cloud or other isolated environments).
  final String universeDomain;

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
          } =>
        ServiceAccountCredentials(
          email,
          ClientId(identifier),
          privateKey,
          impersonatedUser: impersonatedUser,
          projectId: map['project_id'] as String?,
          universeDomain:
              map['universe_domain'] as String? ?? defaultUniverseDomain,
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
  /// The optional named argument [universeDomain] specifies the universe
  /// domain.
  /// Defaults to [defaultUniverseDomain] if not provided.
  ServiceAccountCredentials(
    this.email,
    this.clientId,
    this.privateKey, {
    this.impersonatedUser,
    this.projectId,
    this.universeDomain = defaultUniverseDomain,
  }) : privateRSAKey = keyFromString(privateKey);

  /// Signs the given [data] using RSA-SHA256 with this service account's
  /// private key.
  ///
  /// This is useful for creating custom signed tokens or signing arbitrary
  /// data with the service account's credentials.
  Uint8List sign(List<int> data) => RS256Signer(privateRSAKey).sign(data);
}
