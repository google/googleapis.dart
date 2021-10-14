// Copyright (c) 2021, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/// No longer used. Replaced by [ServerRequestFailedException].
@Deprecated('No longer used. Replaced by ServerRequestFailedException.')
typedef RefreshFailedException = ServerRequestFailedException;

/// Thrown if an attempt to make an authorized request failed.
class AccessDeniedException implements Exception {
  final String message;

  AccessDeniedException(this.message);

  @override
  String toString() => message;
}

/// Thrown if user did not give his consent.
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
  final String message;

  ServerRequestFailedException(this.message);

  @override
  String toString() => message;
}
