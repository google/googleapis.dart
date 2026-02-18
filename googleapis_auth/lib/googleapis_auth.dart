// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: comment_references

/// Contains common libraries used across the package.
///
/// In most cases, you'll want to import either
/// [auth_io] or [auth_browser] depending on your platform.
///
/// {@canonicalFor access_credentials.AccessCredentials}
/// {@canonicalFor access_token.AccessToken}
/// {@canonicalFor auth_client.AuthClient}
/// {@canonicalFor auth_client.AutoRefreshingAuthClient}
/// {@canonicalFor auth_functions.authenticatedClient}
/// {@canonicalFor auth_functions.autoRefreshingClient}
/// {@canonicalFor auth_functions.clientViaApiKey}
/// {@canonicalFor auth_functions.refreshCredentials}
/// {@canonicalFor client_id.ClientId}
/// {@canonicalFor exceptions.AccessDeniedException}
/// {@canonicalFor exceptions.ServerRequestFailedException}
/// {@canonicalFor exceptions.UserConsentException}
/// {@canonicalFor response_type.ResponseType}
/// {@canonicalFor service_account_credentials.ServiceAccountCredentials}
///
/// {@template googleapis_auth_returned_auto_refresh_client}
/// Returns an [AutoRefreshingAuthClient] that will automatically refresh the
/// [AccessCredentials] before they expire.
/// {@endtemplate}
///
/// {@template googleapis_auth_user_consent_return}
/// Returns the [AccessCredentials] containing the access token.
/// {@endtemplate}
///
/// {@template googleapis_auth_client_for_creds}
/// The provided `client` will be used for making the HTTP requests needed to
/// create the returned [AccessCredentials].
/// {@endtemplate}
library;

export 'src/auth_client.dart';
export 'src/auth_client_signing_extension.dart';
export 'src/auth_endpoints.dart';
export 'src/auth_functions.dart';
export 'src/client_id.dart';
export 'src/crypto/rsa.dart' show RSAPrivateKey;
export 'src/exceptions.dart';
export 'src/iam_signer.dart';
export 'src/response_type.dart';
export 'src/service_account_credentials.dart';
