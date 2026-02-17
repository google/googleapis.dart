// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:convert';

import 'package:http/http.dart' as http;

import 'auth_functions.dart';
import 'auth_http_utils.dart';
import 'iam_signer.dart';
import 'service_account_credentials.dart';
import 'utils.dart';

/// Obtains oauth2 credentials by impersonating a service account via IAM API.
///
/// Uses a source credential to call the IAM Credentials API to obtain access
/// tokens and sign data as a target service account.
///
/// See: https://cloud.google.com/iam/docs/create-short-lived-credentials-direct
///
/// {@macro googleapis_auth_client_for_creds}
///
/// The source client must have the `roles/iam.serviceAccountTokenCreator` role
/// on the target service account.
///
/// Example:
/// ```dart
/// // Get source client
/// final sourceClient = await clientViaServiceAccount(credentials, scopes);
///
/// // Create impersonated client
/// final impersonated = await clientViaServiceAccountImpersonation(
///   sourceClient: sourceClient,
///   targetServiceAccount: 'target@project.iam.gserviceaccount.com',
///   targetScopes: ['https://www.googleapis.com/auth/cloud-platform'],
/// );
///
/// // Make authenticated requests
/// await impersonated.get(Uri.parse('https://...'));
///
/// // Sign data as the impersonated account
/// final signature = await impersonated.sign([1, 2, 3, 4, 5]);
///
/// // Explicitly generate a new access token
/// final token = await impersonated.generateAccessToken();
/// ```
Future<ImpersonatedAuthClient> clientViaServiceAccountImpersonation({
  required AuthClient sourceClient,
  required String targetServiceAccount,
  required List<String> targetScopes,
  List<String>? delegates,
  String universeDomain = defaultUniverseDomain,
  Duration lifetime = const Duration(hours: 1),
}) async {
  final impersonatedClient = ImpersonatedAuthClient(
    sourceClient: sourceClient,
    targetServiceAccount: targetServiceAccount,
    targetScopes: targetScopes,
    delegates: delegates,
    universeDomain: universeDomain,
    lifetime: lifetime,
  );

  // Generate initial credentials
  try {
    final credentials = await impersonatedClient.generateAccessToken();
    impersonatedClient._credentials = credentials;
    return impersonatedClient;
  } catch (e) {
    impersonatedClient.close();
    rethrow;
  }
}

/// An authenticated HTTP client that impersonates a service account.
///
/// This client allows a source credential to act as a different service account
/// through Google's IAM Credentials API. It supports:
/// - Auto-refreshing access tokens
/// - Signing data as the impersonated account
/// - Delegation chains for multi-hop impersonation
/// - Custom universe domains
class ImpersonatedAuthClient extends AutoRefreshDelegatingClient {
  final AuthClient _sourceClient;
  final String _targetServiceAccount;
  final List<String> _targetScopes;
  final List<String>? _delegates;
  final String _universeDomain;
  final Duration _lifetime;

  AccessCredentials _credentials;
  http.Client? _authClient;

  /// Creates an [ImpersonatedAuthClient] instance.
  ///
  /// [sourceClient] is the authenticated client used to make IAM API requests.
  ///
  /// [targetServiceAccount] is the email of the service account to impersonate.
  ///
  /// [targetScopes] are the OAuth2 scopes to request for the impersonated
  /// service account.
  ///
  /// [delegates] is an optional list of service accounts in a delegation chain.
  /// Each service account must be granted `roles/iam.serviceAccountTokenCreator`
  /// on the next service account in the chain.
  ///
  /// [universeDomain] specifies the universe domain for constructing the IAM
  /// endpoint. Defaults to [defaultUniverseDomain].
  ///
  /// [lifetime] specifies how long the access token should be valid. Defaults
  /// to 3600 seconds (1 hour). Maximum is 43200 seconds (12 hours).
  ImpersonatedAuthClient({
    required AuthClient sourceClient,
    required String targetServiceAccount,
    required List<String> targetScopes,
    List<String>? delegates,
    String universeDomain = defaultUniverseDomain,
    Duration lifetime = const Duration(hours: 1),
  }) : _sourceClient = sourceClient,
       _targetServiceAccount = targetServiceAccount,
       _targetScopes = List.unmodifiable(targetScopes),
       _delegates = delegates != null ? List.unmodifiable(delegates) : null,
       _universeDomain = universeDomain,
       _lifetime = lifetime,
       _credentials = AccessCredentials(
         AccessToken('Bearer', '', DateTime.now().toUtc()),
         null,
         targetScopes,
       ),
       super(sourceClient, closeUnderlyingClient: false);

  /// The email of the target service account being impersonated.
  String get targetServiceAccount => _targetServiceAccount;

  @override
  AccessCredentials get credentials => _credentials;

  @override
  ServiceAccountCredentials? get serviceAccountCredentials => null;

  /// Generates a new access token for the impersonated service account.
  ///
  /// This method calls the IAM Credentials API generateAccessToken endpoint
  /// to obtain a new access token. The token will be valid for the duration
  /// specified when the client was created.
  ///
  /// Returns [AccessCredentials] containing the new access token.
  ///
  /// Throws [ServerRequestFailedException] if the request fails.
  Future<AccessCredentials> generateAccessToken() async {
    final encodedEmail = Uri.encodeComponent(_targetServiceAccount);
    final tokenUrl = Uri.parse(
      'https://iamcredentials.$_universeDomain/v1/projects/-/serviceAccounts/$encodedEmail:generateAccessToken',
    );

    final requestBody = jsonEncode({
      'scope': _targetScopes,
      if (_delegates != null) 'delegates': _delegates,
      'lifetime': '${_lifetime.inSeconds}s',
    });

    final responseJson = await _sourceClient.requestJson(
      'POST',
      tokenUrl,
      'Failed to generate access token for impersonated service account.',
      headers: {'Content-Type': 'application/json'},
      body: requestBody,
    );

    final (accessToken, expireTime) = switch (responseJson) {
      {'accessToken': final String t, 'expireTime': final String e} => (t, e),
      _ => throw ServerRequestFailedException(
        'IAM generateAccessToken response missing required fields.',
        responseContent: responseJson,
      ),
    };

    // Parse RFC 3339 timestamp
    final expiry = DateTime.parse(expireTime);

    return AccessCredentials(
      AccessToken('Bearer', accessToken, expiry),
      null,
      _targetScopes,
    );
  }

  /// Signs the given [data] using the IAM Credentials API.
  ///
  /// This method calls the IAM Credentials API signBlob endpoint to sign data
  /// as the impersonated service account.
  ///
  /// Returns a record containing the signature as a base64-encoded String and
  /// the key ID used to sign the blob.
  ///
  /// Throws [ServerRequestFailedException] if the signing operation fails.
  ///
  /// See: https://cloud.google.com/iam/docs/reference/credentials/rest/v1/projects.serviceAccounts/signBlob
  Future<({String signedBlob, String keyId})> sign(List<int> data) {
    final signer = IAMSigner(
      _sourceClient,
      serviceAccountEmail: _targetServiceAccount,
      universeDomain: _universeDomain,
    );
    return signer.sign(data);
  }

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) async {
    if (_credentials.accessToken.hasExpired) {
      final newCredentials = await generateAccessToken();
      notifyAboutNewCredentials(newCredentials);
      _credentials = newCredentials;
      _authClient = authenticatedClient(baseClient, _credentials);
    }

    _authClient ??= authenticatedClient(baseClient, _credentials);
    return _authClient!.send(request);
  }
}
