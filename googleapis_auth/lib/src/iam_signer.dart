// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:convert';
import 'package:google_cloud/general.dart';
import 'package:http/http.dart' as http;

import 'utils.dart';

/// Signs data using the IAM Credentials API's signBlob endpoint.
///
/// This is useful when running on Cloud Run or Google Compute Engine with
/// Application Default Credentials, where there's no private key available
/// locally. Instead of signing locally, this class uses the IAM service to
/// perform signing operations.
///
/// Does not close the [http.Client] passed to the constructor.
///
/// See: https://docs.cloud.google.com/iam/docs/reference/credentials/rest/v1/projects.serviceAccounts/signBlob
///
/// Example usage:
/// ```dart
/// import 'dart:convert';
/// import 'package:googleapis_auth/googleapis_auth.dart';
///
/// // Get an authenticated client (e.g., via metadata server)
/// final authClient = await clientViaMetadataServer();
///
/// // Create an IAMSigner with explicit service account email
/// final signer = IAMSigner(
///   authClient,
///   serviceAccountEmail: 'my-service@project.iam.gserviceaccount.com',
/// );
///
/// // Or let it fetch the email from metadata server
/// final signer = IAMSigner(authClient);
///
/// // Sign some data
/// final data = utf8.encode('data to sign');
/// final signature = await signer.sign(data);
/// ```
class IAMSigner {
  final http.Client _client;
  final String? serviceAccountEmail;
  final String endpoint;

  /// Creates an [IAMSigner] instance.
  ///
  /// [client] is used for making HTTP requests to the metadata server and
  /// IAM API.
  ///
  /// [serviceAccountEmail] is the optional service account email to use for
  /// signing. If not provided, it will be fetched from the GCE metadata server.
  ///
  /// [universeDomain] specifies the universe domain for constructing the IAM
  /// endpoint. Defaults to [defaultUniverseDomain].
  ///
  /// [endpoint] specifies a custom IAM Credentials API endpoint URL.
  /// If provided, takes precedence over [universeDomain].
  IAMSigner(
    http.Client client, {
    this.serviceAccountEmail,
    String? endpoint,
    String universeDomain = defaultUniverseDomain,
  }) : _client = client,
       endpoint = endpoint ?? 'https://iamcredentials.$universeDomain';

  /// Returns the service account email.
  ///
  /// If an [serviceAccountEmail] was provided in the constructor, returns that
  /// email.
  /// Otherwise, queries the GCE metadata server to retrieve the default
  /// service account email.
  ///
  /// The result is cached for the lifetime of the Dart process.
  /// Subsequent calls return the cached value without performing discovery
  /// again.
  ///
  /// If [refresh] is `true`, the cache is cleared and the value is re-computed.
  ///
  /// If the metadata server cannot be contacted or returns a non-200 status
  /// code, a [MetadataServerException] is thrown.
  Future<String> getServiceAccountEmail({bool refresh = false}) async =>
      serviceAccountEmail ??
      await serviceAccountEmailFromMetadataServer(
        client: _client,
        refresh: refresh,
      );

  /// Signs the given [data] using the IAM Credentials API.
  ///
  /// Returns a record containing the signature as a base64-encoded String and
  /// the key ID used to sign the blob.
  ///
  /// If [refresh] is `true`, the service account email cache is cleared and
  /// re-computed before signing.
  ///
  /// [delegates] specifies the sequence of service accounts in a delegation
  /// chain.
  ///
  /// If [serviceAccountEmail] is not set, [getServiceAccountEmail] is called.
  ///
  /// Each service account must be granted the `roles/iam.serviceAccountTokenCreator`
  /// role on its next service account in the chain. The last service account in
  /// the chain must be granted the `roles/iam.serviceAccountTokenCreator` role
  /// on the service account that is specified by [serviceAccountEmail] (or the
  /// discovered service account email).
  ///
  /// Throws [http.ClientException] if the signing operation fails.
  Future<({String signedBlob, String keyId})> sign(
    List<int> data, {
    bool refresh = false,
    List<String>? delegates,
  }) async {
    final email =
        serviceAccountEmail ?? await getServiceAccountEmail(refresh: refresh);
    final encodedEmail = Uri.encodeComponent(email);

    final signBlobUrl = Uri.parse(
      '$endpoint/v1/projects/-/serviceAccounts/$encodedEmail:signBlob',
    );

    final requestBody = jsonEncode({
      'payload': base64Encode(data),
      'delegates': ?delegates,
    });

    final response = await _client.post(
      signBlobUrl,
      headers: {'Content-Type': 'application/json'},
      body: requestBody,
    );

    if (response.statusCode != 200) {
      throw http.ClientException(
        'Failed to sign blob via IAM. '
        'Status: ${response.statusCode}, Body: ${response.body}',
        signBlobUrl,
      );
    }

    final responseJson = jsonDecode(response.body) as Map<String, dynamic>;

    if (responseJson case {
      'signedBlob': final String signedBlob,
      'keyId': final String keyId,
    }) {
      return (signedBlob: signedBlob, keyId: keyId);
    }

    throw http.ClientException(
      'IAM signBlob response missing signedBlob or keyId field. '
      'Body: ${response.body}',
      signBlobUrl,
    );
  }
}
