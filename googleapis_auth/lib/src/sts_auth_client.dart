// Copyright 2026 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

import 'auth_http_utils.dart';
import 'service_account_credentials.dart';
import 'utils.dart';

/// An authenticated HTTP client that exchanges an external credential for a
/// Google access token using the Google Security Token Service (STS) API.
///
/// This client allows external workloads (like AWS, Azure, OIDC) to access
/// Google Cloud resources using Workload Identity Federation.
class StsAuthClient extends AutoRefreshDelegatingClient {
  final Map<String, dynamic> _credentialSource;
  final String _audience;
  final String _subjectTokenType;
  final String _tokenUrl;
  final List<String> _scopes;
  final String? _quotaProject;

  AccessCredentials _credentials;
  http.Client? _authClient;

  /// Creates an [StsAuthClient] instance.
  ///
  /// [credentialSource] is a map describing how to retrieve the external token.
  /// It typically contains a 'file' or 'url' key.
  ///
  /// [audience] is the audience for the token exchange.
  ///
  /// [subjectTokenType] specifies the type of the external token (e.g.,
  /// `urn:ietf:params:oauth:token-type:jwt`).
  ///
  /// [tokenUrl] is the endpoint for the token exchange, usually
  /// `https://sts.googleapis.com/v1/token`.
  ///
  /// [scopes] are the OAuth2 scopes to request.
  ///
  /// [baseClient] is an optional [http.Client] that will be used for
  /// the returned client's authenticated requests and for retrieving external
  /// tokens.
  StsAuthClient({
    required Map<String, dynamic> credentialSource,
    required String audience,
    required String subjectTokenType,
    required String tokenUrl,
    required List<String> scopes,
    String? quotaProject,
    http.Client? baseClient,
  }) : _credentialSource = credentialSource,
       _audience = audience,
       _subjectTokenType = subjectTokenType,
       _tokenUrl = tokenUrl,
       _scopes = List.unmodifiable(scopes),
       _quotaProject = quotaProject,
       _credentials = AccessCredentials(
         AccessToken('Bearer', '', DateTime.now().toUtc()),
         null,
         scopes,
       ),
       super(
         baseClient ?? http.Client(),
         closeUnderlyingClient: baseClient == null,
       );

  @override
  AccessCredentials get credentials => _credentials;

  /// Injects the generated credentials. Set internally during initialization.
  set initialCredentials(AccessCredentials credentials) {
    _credentials = credentials;
  }

  /// Generates a new access token via STS token exchange.
  ///
  /// This retrieves the subject token and exchanges it for a federated access
  /// token via the STS API.
  Future<AccessCredentials> generateAccessToken() async {
    final subjectToken = await _getSubjectToken();

    final responseJson = await baseClient.requestJson(
      'POST',
      Uri.parse(_tokenUrl),
      'Failed to exchange external account credential for access token.',
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'audience': _audience,
        'grantType': 'urn:ietf:params:oauth:grant-type:token-exchange',
        'requestedTokenType': 'urn:ietf:params:oauth:token-type:access_token',
        'subjectTokenType': _subjectTokenType,
        'subjectToken': subjectToken,
        'scope': _scopes.join(' '),
      }),
    );

    final (accessToken, expiresIn) = switch (responseJson) {
      {'access_token': final String t, 'expires_in': final int e} => (t, e),
      _ => throw ServerRequestFailedException(
        'STS generateAccessToken response missing required fields.',
        responseContent: responseJson,
      ),
    };

    return AccessCredentials(
      AccessToken('Bearer', accessToken, expiryDate(expiresIn)),
      null,
      _scopes,
    );
  }

  Future<String> _getSubjectToken() async {
    final source = _credentialSource;
    if (source case {'file': final String file}) {
      return await File(file).readAsString();
    } else if (source case {'url': final String url}) {
      final headers = switch (source['headers']) {
        final Map<String, dynamic> h => h.map(
          (key, value) => MapEntry(key, value.toString()),
        ),
        _ => null,
      };

      final response = await baseClient.get(Uri.parse(url), headers: headers);

      if (response.statusCode != 200) {
        throw ServerRequestFailedException(
          'Failed to retrieve subject token from URL: $url. '
          'Status code: ${response.statusCode}',
          responseContent: response.body,
          statusCode: response.statusCode,
        );
      }

      var token = response.body;

      if (source['format'] case {
        'type': 'json',
        'subject_token_field_name': final String fieldName,
      }) {
        try {
          final json = jsonDecode(token) as Map<String, dynamic>;
          if (json[fieldName] case final String subjectToken) {
            token = subjectToken;
          } else {
            throw ServerRequestFailedException(
              'Subject token field "$fieldName" not found in JSON response.',
              responseContent: token,
              statusCode: response.statusCode,
            );
          }
        } on FormatException {
          throw ServerRequestFailedException(
            'Failed to parse subject token from URL: $url. '
            'Response was not valid JSON.',
            responseContent: token,
            statusCode: response.statusCode,
          );
        }
      }
      return token;
    }
    throw const CredentialsFileException(
      'Unsupported credential source type. Must provide file or url.',
    );
  }

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) async {
    if (_credentials.accessToken.hasExpired) {
      final newCredentials = await generateAccessToken();
      notifyAboutNewCredentials(newCredentials);
      _credentials = newCredentials;
      _authClient = null; // Force re-creation of the authenticated client.
    }

    _authClient ??= AuthenticatedClient(
      baseClient,
      _credentials,
      quotaProject: _quotaProject,
    );
    return _authClient!.send(request);
  }
}

/// Obtains oauth2 credentials by exchanging an external credential for a
/// Google access token.
Future<StsAuthClient> clientViaStsTokenExchange({
  required Map<String, dynamic> credentialSource,
  required String audience,
  required String subjectTokenType,
  required String tokenUrl,
  required List<String> scopes,
  String? quotaProject,
  http.Client? baseClient,
}) async {
  final stsClient = StsAuthClient(
    credentialSource: credentialSource,
    audience: audience,
    subjectTokenType: subjectTokenType,
    tokenUrl: tokenUrl,
    scopes: scopes,
    quotaProject: quotaProject,
    baseClient: baseClient,
  );

  try {
    stsClient.initialCredentials = await stsClient.generateAccessToken();
    return stsClient;
  } catch (e) {
    stsClient.close();
    rethrow;
  }
}
