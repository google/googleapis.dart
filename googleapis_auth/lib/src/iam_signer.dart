// Copyright 2026 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

import 'dart:convert';

import 'package:http/http.dart' as http;

import 'metadata_server_stub.dart'
    if (dart.library.io) 'metadata_server_io.dart';
import 'utils.dart';

/// Signs the given [data] using the IAM Credentials API.
///
/// Returns a record containing the signature as a base64-encoded String and
/// the key ID used to sign the blob.
///
/// [client] is used for making HTTP requests to the IAM API. It must be
/// authenticated with the appropriate scopes (usually
/// `https://www.googleapis.com/auth/cloud-platform`).
///
/// [serviceAccountEmail] is the email of the service account to sign with.
/// If not provided, it will be fetched from the GCE metadata server.
/// Note: On web platforms, [serviceAccountEmail] must be explicitly provided;
/// otherwise, attempting to fetch it from the GCE metadata server will throw
/// an [UnsupportedError].
///
/// [delegates] specifies the sequence of service accounts in a delegation
/// chain.
///
/// [endpoint] specifies a custom IAM Credentials API endpoint URL.
/// If provided, takes precedence over [universeDomain].
///
/// [universeDomain] specifies the universe domain for constructing the IAM
/// endpoint. Defaults to [defaultUniverseDomain].
///
/// [refresh] if `true`, the service account email cache is cleared and
/// re-computed before signing (only used if [serviceAccountEmail] is `null`).
Future<({String signedBlob, String keyId})> signBlob(
  http.Client client,
  List<int> data, {
  String? serviceAccountEmail,
  List<String>? delegates,
  String? endpoint,
  String universeDomain = defaultUniverseDomain,
  bool refresh = false,
}) async {
  final email =
      serviceAccountEmail ??
      await serviceAccountEmailFromMetadataServer(
        client: client,
        refresh: refresh,
      );
  final encodedEmail = Uri.encodeComponent(email);

  endpoint ??= 'https://iamcredentials.$universeDomain';

  final signBlobUrl = Uri.parse(
    '$endpoint/v1/projects/-/serviceAccounts/$encodedEmail:signBlob',
  );

  final requestBody = jsonEncode({
    'payload': base64Encode(data),
    'delegates': ?delegates,
  });

  final response = await client.post(
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
