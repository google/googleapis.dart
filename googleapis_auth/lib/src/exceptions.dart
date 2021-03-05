// Copyright (c) 2021, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/// Thrown if an attempt to refresh a token failed.
class RefreshFailedException implements Exception {
  final String message;

  RefreshFailedException(this.message);

  @override
  String toString() => message;
}

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

  UserConsentException(this.message);

  @override
  String toString() => message;
}
