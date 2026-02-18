// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/// @docImport 'auth_client.dart';
library;

import 'dart:convert';

import 'package:google_cloud/general.dart';
import 'iam_signer.dart';
import 'impersonated_auth_client.dart';
import 'service_account_credentials.dart';

/// Extension providing smart signing capabilities for [AuthClient].
///
/// This extension adds a universal [sign] method that automatically selects
/// the appropriate signing strategy based on the authentication context:
///
/// 1. **ImpersonatedAuthClient**: Uses IAM signBlob with the target principal
/// 2. **Service account credentials**: Uses local RSA-SHA256 signing
/// 3. **Other auth clients** (ADC on GCE/Cloud Run): Uses IAM signBlob with
///    the default service account from metadata server
///
/// Example usage:
/// ```dart
/// // Works with service account credentials
/// final client = await clientViaServiceAccount(credentials, scopes);
/// final signature = await client.sign(utf8.encode('data to sign'));
///
/// // Works with ADC on GCE/Cloud Run
/// final client = await clientViaApplicationDefaultCredentials(scopes: scopes);
/// final signature = await client.sign(utf8.encode('data to sign'));
///
/// // Works with impersonated credentials
/// final client = await clientViaServiceAccountImpersonation(
///   sourceClient: sourceClient,
///   targetServiceAccount: 'target@project.iam.gserviceaccount.com',
///   targetScopes: scopes,
/// );
/// final signature = await client.sign(utf8.encode('data to sign'));
/// ```
extension AuthClientSigningExtension on AuthClient {
  /// Queries the GCE metadata server to retrieve the default
  /// service account email.
  ///
  /// The result is cached for the lifetime of the Dart process.
  ///
  /// If [refresh] is `true`, the cache is cleared and the value is re-computed.
  Future<String> getServiceAccountEmail({bool refresh = false}) async =>
      await serviceAccountEmailFromMetadataServer(
        client: this,
        refresh: refresh,
      );

  /// Signs some bytes using the credentials from this auth client.
  ///
  /// The signing behavior depends on the auth client type:
  /// - [ImpersonatedAuthClient]: Uses IAM signBlob API to sign using the
  ///   target principal.
  /// - Auth clients with service account credentials: Signs locally using
  ///   RSA-SHA256.
  /// - Other auth clients: Uses IAM signBlob API with the default service
  ///   account.
  ///
  /// [serviceAccountCredentials] can be provided to sign the data locally
  /// using RSA-SHA256 if the credentials have a private key.
  ///
  /// [endpoint] is an optional custom IAM Credentials API endpoint. This is
  /// useful when working with different universe domains. If not provided,
  /// the endpoint is automatically determined from the credential's universe
  /// domain (e.g., `https://iamcredentials.googleapis.com` for the default
  /// universe, or a custom universe domain from the service account JSON).
  ///
  /// Returns the signature as a String (base64-encoded).
  ///
  /// Example:
  /// ```dart
  /// import 'dart:convert';
  ///
  /// final client = await clientViaServiceAccount(credentials, scopes);
  /// final data = utf8.encode('data to sign');
  /// final signature = await client.sign(
  ///   data,
  ///   serviceAccountCredentials: credentials,
  /// );
  /// print('Signature (base64): ${signature.signedBlob}');
  /// ```
  Future<String> sign(
    List<int> data, {
    ServiceAccountCredentials? serviceAccountCredentials,
    String? endpoint,
  }) async {
    // Check if this is an impersonated client
    if (this is ImpersonatedAuthClient) {
      final impersonated = this as ImpersonatedAuthClient;
      return (await impersonated.sign(data)).signedBlob;
    }

    if (serviceAccountCredentials != null) {
      // Use local signing with service account credentials
      return base64Encode(serviceAccountCredentials.sign(data));
    }

    return (await signBlob(this, data, endpoint: endpoint)).signedBlob;
  }
}
