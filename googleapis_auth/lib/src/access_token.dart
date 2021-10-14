// Copyright (c) 2021, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'exceptions.dart';
import 'utils.dart';

/// An OAuth2 access token.
class AccessToken {
  /// The token type, usually "Bearer"
  final String type;

  /// The access token data.
  final String data;

  /// Time at which the token will be expired (UTC time)
  final DateTime expiry;

  /// [expiry] must be a UTC `DateTime`.
  AccessToken(this.type, this.data, this.expiry) {
    if (!expiry.isUtc) {
      throw ArgumentError.value(
        expiry,
        'expiry',
        'The expiry date must be a Utc DateTime.',
      );
    }
  }

  factory AccessToken.fromJson(Map<String, dynamic> json) => AccessToken(
        json['type'] as String,
        json['data'] as String,
        DateTime.parse(json['expiry'] as String),
      );

  bool get hasExpired => DateTime.now().toUtc().isAfter(expiry);

  @override
  String toString() => 'AccessToken(type=$type, data=$data, expiry=$expiry)';

  Map<String, dynamic> toJson() => <String, dynamic>{
        'type': type,
        'data': data,
        'expiry': expiry.toIso8601String(),
      };
}

AccessToken parseAccessToken(int statusCode, Map<String, dynamic> jsonMap) {
  if (statusCode != 200) {
    final error = _errorString(jsonMap);
    final message = [
      'Failed to exchange authorization code. Status code: $statusCode.',
      if (error != null) error,
    ].join(' ');
    throw ServerRequestFailedException(message);
  }

  final tokenType = jsonMap['token_type'];
  final accessToken = jsonMap['access_token'];
  final expiresIn = jsonMap['expires_in'];

  if (accessToken is! String || expiresIn is! int || tokenType != 'Bearer') {
    throw ServerRequestFailedException(
      'Failed to exchange authorization code. Invalid server response.',
    );
  }

  return AccessToken('Bearer', accessToken, expiryDate(expiresIn));
}

/// Returns an error string for [json] if it contains error data in keys
/// `error` and `error_description`.
///
/// Otherwise, returns `null`.
String? _errorString(Map<String, dynamic> json) {
  final error = json['error'];
  if (error == null) {
    return null;
  }

  final description = json['error_description'];

  return [
    'Error: $error',
    if (description != null) '$description',
  ].join(' ');
}
