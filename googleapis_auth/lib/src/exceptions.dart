// Copyright 2021 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

/// Thrown if an attempt to make an authorized request failed.
class AccessDeniedException implements Exception {
  final String message;

  AccessDeniedException(this.message);

  @override
  String toString() => message;
}

/// Thrown if user did not give their consent.
class UserConsentException implements Exception {
  final String message;

  final String? details;

  UserConsentException(this.message, {this.details});

  @override
  String toString() => [message, if (details != null) details].join(' ');
}

/// Thrown when a request to or the response from an authentication service is
/// invalid.
///
/// This could indicate invalid credentials.
class ServerRequestFailedException implements Exception {
  /// Describes the failure.
  final String message;

  /// The HTTP status code of the response, if known.
  ///
  /// If `null`, the status code was likely `200` and there was another issue
  /// with the response.
  final int? statusCode;

  /// Data representing the content of the response, if any.
  ///
  /// This may be a [String] representing the raw content of the response or
  /// the a parsed JSON literal of the content.
  final Object? responseContent;

  ServerRequestFailedException(
    this.message, {
    this.statusCode,
    required this.responseContent,
  });

  @override
  String toString() =>
      [message, if (statusCode != null) 'Status code: $statusCode'].join(' ');
}

/// Thrown when an error occurs reading or parsing a credentials file.
class CredentialsFileException implements Exception {
  final String message;
  final Object? innerError;

  const CredentialsFileException(this.message, [this.innerError]);

  @override
  String toString() => [
    'CredentialsFileException: $message',
    if (innerError != null) '($innerError)',
  ].join(' ');
}

/// Thrown when the oauth2 callback request from the authorization server is
/// invalid or an error occurs during the authorization code grant flow.
class AuthorizationCallbackException implements Exception {
  final String message;

  const AuthorizationCallbackException(this.message);

  @override
  String toString() => 'AuthorizationCallbackException: $message';
}
