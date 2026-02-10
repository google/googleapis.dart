// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:convert';

import 'auth_client.dart';
import 'iam_signer.dart';
import 'impersonated_auth_client.dart';
import 'utils.dart';

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
  /// [data] is the bytes to be signed.
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
  /// final signature = await client.sign(data);
  /// print('Signature (base64): $signature');
  /// ```
  Future<String> sign(List<int> data, {String? endpoint}) async {
    // Check if this is an impersonated client
    if (this is ImpersonatedAuthClient) {
      final impersonated = this as ImpersonatedAuthClient;
      return impersonated.sign(data);
    }

    // Check if we have service account credentials for local signing
    final serviceAccountCreds = serviceAccountCredentials;

    if (serviceAccountCreds != null) {
      // Use local signing with service account credentials
      return base64Encode(serviceAccountCreds.sign(data));
    }

    // If we're NOT using local signing, use IAM API signing
    final universeDomain =
        serviceAccountCreds?.universeDomain ?? defaultUniverseDomain;
    endpoint ??= 'https://iamcredentials.$universeDomain';
    return IAMSigner(this, endpoint: endpoint).sign(data);
  }
}
