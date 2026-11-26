// Copyright 2026 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

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
/// [sourceClient] will be used for making the HTTP requests needed to create
/// the returned [AccessCredentials].
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
///
/// [baseClient] is an optional [http.Client] that will be used for
/// the returned client's authenticated requests. If not provided, a new
/// [http.Client] will be instantiated.
Future<ImpersonatedAuthClient> clientViaServiceAccountImpersonation({
  required AuthClient sourceClient,
  required String targetServiceAccount,
  required List<String> targetScopes,
  List<String>? delegates,
  String? universeDomain,
  String? endpoint,
  String? quotaProject,
  Duration lifetime = const Duration(hours: 1),
  http.Client? baseClient,
}) async {
  final impersonatedClient = ImpersonatedAuthClient(
    sourceClient: sourceClient,
    targetServiceAccount: targetServiceAccount,
    targetScopes: targetScopes,
    delegates: delegates,
    universeDomain: universeDomain,
    endpoint: endpoint,
    quotaProject: quotaProject,
    lifetime: lifetime,
    baseClient: baseClient,
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
  /// The email of the target service account being impersonated.
  final String targetServiceAccount;

  /// The universe domain used for IAM Credentials API requests and issued
  /// credentials.
  final String universeDomain;

  final AuthClient _sourceClient;
  final List<String> _targetScopes;
  final List<String>? _delegates;
  final String? _endpoint;
  final String? _quotaProject;
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
  /// endpoint. If omitted or empty, inherits [sourceClient]'s credential
  /// universe domain (which defaults to [defaultUniverseDomain]). Throws an
  /// [ArgumentError] if [sourceClient]'s credential universe domain does not
  /// match [universeDomain].
  ///
  /// [endpoint] specifies an optional custom IAM Credentials API base endpoint
  /// URL (e.g. `https://us-central1-iamcredentials.googleapis.com`). If
  /// provided, takes precedence over [universeDomain]. Must use `https` (or
  /// `http` for loopback hosts) with no path, query, fragment, or userinfo, and
  /// cannot point to an IAM host from a different universe.
  ///
  /// [quotaProject] specifies an optional quota project to send in the
  /// `X-Goog-User-Project` header on authenticated requests.
  ///
  /// [lifetime] specifies how long the access token should be valid. Defaults
  /// to 3600 seconds (1 hour). Maximum is 43200 seconds (12 hours).
  ///
  /// [baseClient] is an optional [http.Client] that will be used for
  /// the returned client's authenticated requests. If not provided, a new
  /// [http.Client] will be instantiated.
  ImpersonatedAuthClient({
    required AuthClient sourceClient,
    required this.targetServiceAccount,
    required List<String> targetScopes,
    List<String>? delegates,
    String? universeDomain,
    String? endpoint,
    String? quotaProject,
    Duration lifetime = const Duration(hours: 1),
    http.Client? baseClient,
  }) : universeDomain = _resolveUniverseDomain(sourceClient, universeDomain),
       _sourceClient = sourceClient,
       _targetScopes = List.unmodifiable(targetScopes),
       _delegates = delegates != null ? List.unmodifiable(delegates) : null,
       _endpoint = _resolveEndpoint(sourceClient, universeDomain, endpoint),
       _quotaProject = quotaProject,
       _lifetime = lifetime,
       _credentials = AccessCredentials(
         AccessToken('Bearer', '', DateTime.now().toUtc()),
         null,
         targetScopes,
         universeDomain: _resolveUniverseDomain(sourceClient, universeDomain),
       ),
       super(
         baseClient ?? http.Client(),
         closeUnderlyingClient: baseClient == null,
       );

  static String _resolveUniverseDomain(
    AuthClient sourceClient,
    String? universeDomain,
  ) {
    final sourceUniverse = sourceClient.credentials.universeDomain;
    final resolvedUniverse = (universeDomain == null || universeDomain.isEmpty)
        ? sourceUniverse
        : normalizeUniverseDomain(universeDomain);
    if (sourceUniverse != resolvedUniverse) {
      throw ArgumentError.value(
        universeDomain,
        'universeDomain',
        'Cannot impersonate in universe "$resolvedUniverse" using source '
            'credentials from universe "$sourceUniverse".',
      );
    }
    return resolvedUniverse;
  }

  static String? _resolveEndpoint(
    AuthClient sourceClient,
    String? universeDomain,
    String? endpoint,
  ) {
    if (endpoint == null) return null;
    final resolvedUniverse = _resolveUniverseDomain(
      sourceClient,
      universeDomain,
    );
    return validateIamEndpoint(endpoint, resolvedUniverse);
  }

  @override
  AccessCredentials get credentials => _credentials;

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
    final encodedEmail = Uri.encodeComponent(targetServiceAccount);
    final baseEndpoint = _endpoint ?? 'https://iamcredentials.$universeDomain';
    final tokenUrl = Uri.parse(
      '$baseEndpoint/v1/projects/-/serviceAccounts/$encodedEmail:generateAccessToken',
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
      universeDomain: universeDomain,
    );
  }

  /// Signs the given [data] using the IAM Credentials API.
  ///
  /// This method calls the IAM Credentials API signBlob endpoint to sign data
  /// as the impersonated service account.
  ///
  /// If [endpoint] is provided, it overrides the configured IAM Credentials
  /// API base endpoint / [universeDomain] for this request.
  ///
  /// Returns a record containing the signature as a base64-encoded String and
  /// the key ID used to sign the blob.
  ///
  /// Throws [http.ClientException] if the signing operation fails.
  ///
  /// See: https://cloud.google.com/iam/docs/reference/credentials/rest/v1/projects.serviceAccounts/signBlob
  Future<({String signedBlob, String keyId})> sign(
    List<int> data, {
    String? endpoint,
  }) => signBlob(
    _sourceClient,
    data,
    serviceAccountEmail: targetServiceAccount,
    delegates: _delegates,
    endpoint: endpoint != null
        ? validateIamEndpoint(endpoint, universeDomain)
        : _endpoint,
    universeDomain: universeDomain,
  );

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) async {
    if (_credentials.accessToken.hasExpired) {
      final newCredentials = await generateAccessToken();
      notifyAboutNewCredentials(newCredentials);
      _credentials = newCredentials;
      _authClient = authenticatedClient(
        baseClient,
        _credentials,
        quotaProject: _quotaProject,
      );
    }

    _authClient ??= authenticatedClient(
      baseClient,
      _credentials,
      quotaProject: _quotaProject,
    );
    return _authClient!.send(request);
  }
}
