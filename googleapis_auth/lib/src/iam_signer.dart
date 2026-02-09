// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

import 'exceptions.dart';
import 'utils.dart';

/// Signs data using the IAM Credentials API's signBlob endpoint.
///
/// This is useful when running on Cloud Run or Google Compute Engine with
/// Application Default Credentials, where there's no private key available
/// locally. Instead of signing locally, this class uses the IAM service to
/// perform signing operations.
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
  final String? _serviceAccountEmail;
  final String _endpoint;

  String? _cachedEmail;

  /// Creates an [IAMSigner] instance.
  ///
  /// [client] is used for making HTTP requests to the metadata server and
  /// IAM API.
  ///
  /// [serviceAccountEmail] is the optional service account email to use for
  /// signing. If not provided, it will be fetched from the GCE metadata server.
  ///
  /// [endpoint] specifies the IAM Credentials API endpoint.
  /// Defaults to `https://iamcredentials.googleapis.com`.
  IAMSigner(
    http.Client client, {
    String? serviceAccountEmail,
    String endpoint = 'https://iamcredentials.$defaultUniverseDomain',
  }) : _client = client,
       _serviceAccountEmail = serviceAccountEmail,
       _endpoint = endpoint;

  /// Returns the service account email.
  ///
  /// If an email was provided in the constructor, returns that email.
  /// Otherwise, queries the GCE metadata server to retrieve the default
  /// service account email.
  Future<String> getServiceAccountEmail() async {
    if (_serviceAccountEmail != null) {
      return _serviceAccountEmail;
    }

    if (_cachedEmail != null) {
      return _cachedEmail!;
    }

    final metadataHost =
        Platform.environment[gceMetadataHostEnvVar] ?? defaultMetadataHost;
    final emailUrl = Uri.parse(
      'http://$metadataHost/computeMetadata/v1/instance/service-accounts/default/email',
    );

    final response = await _client.get(emailUrl, headers: metadataFlavorHeader);
    if (response.statusCode != 200) {
      throw ServerRequestFailedException(
        'Failed to get service account email from metadata server.',
        statusCode: response.statusCode,
        responseContent: response.body,
      );
    }

    _cachedEmail = response.body.trim();
    return _cachedEmail!;
  }

  /// Signs the given [data] using the IAM Credentials API.
  ///
  /// Returns the signature as a String (base64-encoded).
  ///
  /// Throws a [ServerRequestFailedException] if the signing operation fails.
  Future<String> sign(List<int> data) async {
    final email = await getServiceAccountEmail();
    final encodedEmail = Uri.encodeComponent(email);

    final signBlobUrl = Uri.parse(
      '$_endpoint/v1/projects/-/serviceAccounts/$encodedEmail:signBlob',
    );

    final requestBody = jsonEncode({'payload': base64Encode(data)});
    final request = http.Request('POST', signBlobUrl)
      ..headers['Content-Type'] = 'application/json'
      ..body = requestBody;

    final responseJson = await _client.requestJson(
      request,
      'Failed to sign blob via IAM.',
    );

    final signedBlob = responseJson['signedBlob'] as String?;

    if (signedBlob == null) {
      throw ServerRequestFailedException(
        'IAM signBlob response missing signedBlob field.',
        responseContent: responseJson,
      );
    }

    return signedBlob;
  }
}
