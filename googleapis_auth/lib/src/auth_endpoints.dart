// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'known_uris.dart';

/// {@template AuthEndpoints}
/// The endpoints required for an OAuth 2.0 authorization code flow.
/// {@endtemplate}
abstract class AuthEndpoints {
  /// {@macro AuthEndpoints}
  const AuthEndpoints();

  /// The OAuth endpoint used to obtain a single-use authorization code.
  Uri get authorizationEndpoint;

  /// The OAuth endpoint used to exchange an authorization code for access
  /// credentials.
  Uri get tokenEndpoint;
}

/// {@template GoogleAuthEndpoints}
/// The endpoints required for an OAuth 2.0 authorization code flow with Google.
///
/// This is the only implementation of [AuthEndpoints] provided by this package.
/// Package consumers can provide their own implementation if they are using a
/// different OAuth 2.0 provider or providers.
/// {@endtemplate}
class GoogleAuthEndpoints extends AuthEndpoints {
  /// {@macro GoogleAuthEndpoints}
  const GoogleAuthEndpoints();

  @override
  Uri get authorizationEndpoint => googleOauth2AuthorizationEndpoint;

  @override
  Uri get tokenEndpoint => googleOauth2TokenEndpoint;
}
