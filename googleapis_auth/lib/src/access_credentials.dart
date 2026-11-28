// Copyright 2021 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

import 'access_token.dart';
import 'utils.dart';

/// OAuth2 Credentials.
class AccessCredentials {
  /// An access token.
  final AccessToken accessToken;

  /// A refresh token, which can be used to refresh the access credentials.
  final String? refreshToken;

  /// A JWT used in calls to Google APIs that accept an id_token param.
  final String? idToken;

  /// Scopes these credentials are valid for.
  final List<String> scopes;

  /// The universe domain for these credentials.
  ///
  /// Defaults to [defaultUniverseDomain] (`googleapis.com`).
  final String universeDomain;

  AccessCredentials(
    this.accessToken,
    this.refreshToken,
    this.scopes, {
    this.idToken,
    String universeDomain = defaultUniverseDomain,
  }) : universeDomain = normalizeUniverseDomain(universeDomain);

  factory AccessCredentials.fromJson(Map<String, dynamic> json) {
    final rawUniverse = json['universeDomain'];
    if (rawUniverse is! String?) {
      throw ArgumentError.value(
        rawUniverse,
        'universeDomain',
        'Expected a String or null.',
      );
    }
    return AccessCredentials(
      AccessToken.fromJson(json['accessToken'] as Map<String, dynamic>),
      json['refreshToken'] as String?,
      (json['scopes'] as List<dynamic>).map((e) => e as String).toList(),
      idToken: json['idToken'] as String?,
      universeDomain: rawUniverse ?? defaultUniverseDomain,
    );
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
    'accessToken': accessToken,
    if (refreshToken != null) 'refreshToken': refreshToken,
    'idToken': idToken,
    'scopes': scopes,
    if (universeDomain != defaultUniverseDomain)
      'universeDomain': universeDomain,
  };
}
