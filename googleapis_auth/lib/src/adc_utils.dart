// Copyright 2021 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';

import 'auth_endpoints.dart';
import 'auth_functions.dart';
import 'auth_http_utils.dart';
import 'impersonated_auth_client.dart';
import 'service_account_client.dart';
import 'service_account_credentials.dart';
import 'sts_auth_client.dart';
import 'utils.dart';

Future<AutoRefreshingAuthClient> fromApplicationsCredentialsFile(
  File file,
  String fileSource,
  List<String> scopes,
  Client baseClient,
) async {
  Object? credentials;
  try {
    credentials = json.decode(await file.readAsString());
  } on IOException catch (e) {
    throw CredentialsFileException(
      'Failed to read credentials file from $fileSource',
      e,
    );
  } on FormatException catch (e) {
    throw CredentialsFileException(
      'Failed to parse JSON from credentials file from $fileSource',
      e,
    );
  }

  if (credentials is! Map) {
    throw CredentialsFileException(
      'Failed to parse JSON from credentials file from $fileSource',
    );
  }

  return _clientViaApplicationCredentials(
    credentials as Map<String, dynamic>,
    scopes,
    baseClient,
    fileSource: fileSource,
  );
}

const _maxSourceNestingDepth = 10;

String _sourceLabel(String? fileSource) =>
    fileSource ?? 'the provided credentials';

String _resolveTemplate(String url, String? universe) =>
    url.replaceAll('{universe_domain}', universe ?? defaultUniverseDomain);

void _checkUniverseMatch(
  String? expected,
  String? actual,
  String detail,
  String? fileSource,
) {
  if (expected != null && actual != null && expected != actual) {
    throw CredentialsFileException(
      'Universe domain mismatch in ${_sourceLabel(fileSource)}: $detail.',
    );
  }
}

Future<AutoRefreshingAuthClient> _clientViaApplicationCredentials(
  Map<String, dynamic> credentials,
  List<String> scopes,
  Client baseClient, {
  String? fileSource,
  int depth = 0,
}) async {
  if (depth > _maxSourceNestingDepth) {
    throw CredentialsFileException(
      'Impersonation credential chain exceeds maximum nesting depth in '
      '${_sourceLabel(fileSource)}.',
    );
  }
  final quotaProject =
      Platform.environment['GOOGLE_CLOUD_QUOTA_PROJECT'] ??
      _parseOptionalString(credentials, 'quota_project_id', fileSource);
  final jsonUniverseDomain = _parseUniverseDomain(credentials, fileSource);

  if (credentials case {
    'type': 'authorized_user',
    'client_id': final String clientIdString,
    'client_secret': final String? clientSecret,
    'refresh_token': final String? refreshToken,
  }) {
    return _clientFromAuthorizedUser(
      credentials,
      clientIdString: clientIdString,
      clientSecret: clientSecret,
      refreshToken: refreshToken,
      scopes: scopes,
      baseClient: baseClient,
      quotaProject: quotaProject,
      jsonUniverseDomain: jsonUniverseDomain,
      fileSource: fileSource,
    );
  }

  if (credentials case {
    'type': 'impersonated_service_account',
    'service_account_impersonation_url': final String url,
    'source_credentials': final Map<String, dynamic> source,
  }) {
    return _clientFromImpersonatedServiceAccount(
      credentials,
      impersonationUrl: url,
      source: source,
      scopes: scopes,
      baseClient: baseClient,
      quotaProject: quotaProject,
      jsonUniverseDomain: jsonUniverseDomain,
      fileSource: fileSource,
      depth: depth,
    );
  }

  if (credentials case {
    'type': 'external_account',
    'audience': final String audience,
    'subject_token_type': final String subjectTokenType,
    'credential_source': final Map<String, dynamic> credentialSource,
  }) {
    return _clientFromExternalAccount(
      credentials,
      audience: audience,
      subjectTokenType: subjectTokenType,
      credentialSource: credentialSource,
      scopes: scopes,
      baseClient: baseClient,
      quotaProject: quotaProject,
      jsonUniverseDomain: jsonUniverseDomain,
      fileSource: fileSource,
    );
  }

  return await clientViaServiceAccount(
    ServiceAccountCredentials.fromJson(credentials),
    scopes,
    baseClient: baseClient,
    quotaProject: quotaProject,
  );
}

Future<AutoRefreshingAuthClient> _clientFromAuthorizedUser(
  Map<String, dynamic> credentials, {
  required String clientIdString,
  required String? clientSecret,
  required String? refreshToken,
  required List<String> scopes,
  required Client baseClient,
  required String? quotaProject,
  required String? jsonUniverseDomain,
  required String? fileSource,
}) async {
  final sourceLabel = _sourceLabel(fileSource);
  if (jsonUniverseDomain != null &&
      jsonUniverseDomain != defaultUniverseDomain) {
    throw CredentialsFileException(
      'Unsupported universe_domain "$jsonUniverseDomain" for '
      'authorized_user credentials from $sourceLabel.',
    );
  }
  final tokenUriString = _parseOptionalString(
    credentials,
    'token_uri',
    fileSource,
  );
  if (tokenUriString != null &&
      tokenUriString.isNotEmpty &&
      !_isSupportedAuthorizedUserTokenUri(tokenUriString)) {
    throw CredentialsFileException(
      'Unsupported token_uri "$tokenUriString" for authorized_user '
      'credentials from $sourceLabel.',
    );
  }
  if (refreshToken == null) {
    throw CredentialsFileException(
      'Failed to parse JSON from credentials file from $sourceLabel'
      ': refresh_token is missing.',
    );
  }
  final clientId = ClientId(clientIdString, clientSecret);
  return AutoRefreshingClient(
    baseClient,
    const GoogleAuthEndpoints(),
    clientId,
    await refreshCredentials(
      clientId,
      AccessCredentials(
        // Deliberately expired — forces a token exchange immediately.
        AccessToken(
          'Bearer',
          '',
          DateTime.fromMillisecondsSinceEpoch(0, isUtc: true),
        ),
        refreshToken,
        scopes,
      ),
      baseClient,
    ),
    quotaProject: quotaProject,
  );
}

Future<AutoRefreshingAuthClient> _clientFromImpersonatedServiceAccount(
  Map<String, dynamic> credentials, {
  required String impersonationUrl,
  required Map<String, dynamic> source,
  required List<String> scopes,
  required Client baseClient,
  required String? quotaProject,
  required String? jsonUniverseDomain,
  required String? fileSource,
  required int depth,
}) async {
  final declaredSourceUniverse = _inferUniverseDomainFromJson(
    source,
    fileSource,
    depth: depth + 1,
  );
  final impersonationInfo = _parseImpersonationUrl(
    _resolveTemplate(
      impersonationUrl,
      jsonUniverseDomain ?? declaredSourceUniverse,
    ),
    fileSource,
  );
  final urlUniverse = impersonationInfo.hostUniverse;
  _checkUniverseMatch(
    jsonUniverseDomain,
    urlUniverse,
    'universe_domain "$jsonUniverseDomain" does not match '
    'service_account_impersonation_url universe "$urlUniverse"',
    fileSource,
  );
  final targetUniverse =
      jsonUniverseDomain ?? urlUniverse ?? declaredSourceUniverse;
  _checkUniverseMatch(
    declaredSourceUniverse,
    targetUniverse,
    'source_credentials universe "$declaredSourceUniverse" does not match '
    'impersonation universe "$targetUniverse"',
    fileSource,
  );

  final delegates = _parseDelegates(credentials['delegates'], fileSource);
  final sourceClient = await _clientViaApplicationCredentials(
    source,
    ['https://www.googleapis.com/auth/iam'],
    baseClient,
    fileSource: fileSource,
    depth: depth + 1,
  );

  final sourceUniverse = sourceClient.credentials.universeDomain;
  final resolvedUniverse = targetUniverse ?? sourceUniverse;
  if (sourceUniverse != resolvedUniverse) {
    sourceClient.close();
    throw CredentialsFileException(
      'Universe domain mismatch in ${_sourceLabel(fileSource)}: '
      'source credentials universe "$sourceUniverse" does not match '
      'impersonation universe "$resolvedUniverse".',
    );
  }

  return _impersonateWithCleanup(
    sourceClient: sourceClient,
    impersonationInfo: impersonationInfo,
    universeDomain: resolvedUniverse,
    scopes: scopes,
    delegates: delegates,
    quotaProject: quotaProject,
    baseClient: baseClient,
  );
}

Future<AutoRefreshingAuthClient> _clientFromExternalAccount(
  Map<String, dynamic> credentials, {
  required String audience,
  required String subjectTokenType,
  required Map<String, dynamic> credentialSource,
  required List<String> scopes,
  required Client baseClient,
  required String? quotaProject,
  required String? jsonUniverseDomain,
  required String? fileSource,
}) async {
  final rawTokenUrl = _parseOptionalString(
    credentials,
    'token_url',
    fileSource,
  );
  final tokenUrl = (rawTokenUrl == null || rawTokenUrl.isEmpty)
      ? 'https://sts.{universe_domain}/v1/token'
      : rawTokenUrl;
  final serviceAccountImpersonationUrl = _parseOptionalString(
    credentials,
    'service_account_impersonation_url',
    fileSource,
  );
  final resolvedTokenUrl = _resolveTemplate(tokenUrl, jsonUniverseDomain);
  final stsHostUniverse = universeDomainFromStsHost(
    _parseAdcUri(resolvedTokenUrl, 'token_url', fileSource).host,
  );
  _checkUniverseMatch(
    jsonUniverseDomain,
    stsHostUniverse,
    'universe_domain "$jsonUniverseDomain" does not match '
    'token_url universe "$stsHostUniverse"',
    fileSource,
  );

  var effectiveUniverse = jsonUniverseDomain ?? stsHostUniverse;
  _ParsedImpersonationUrl? impersonationInfo;
  if (serviceAccountImpersonationUrl != null) {
    // Parse and validate before exchanging the STS token so a mismatched or
    // malformed impersonation URL fails fast without transmitting a live
    // token across universe boundaries (AIP-4117).
    impersonationInfo = _parseImpersonationUrl(
      _resolveTemplate(serviceAccountImpersonationUrl, effectiveUniverse),
      fileSource,
    );
    _checkUniverseMatch(
      effectiveUniverse,
      impersonationInfo.hostUniverse,
      'STS universe "$effectiveUniverse" does not match '
      'service_account_impersonation_url universe '
      '"${impersonationInfo.hostUniverse}"',
      fileSource,
    );
    effectiveUniverse ??= impersonationInfo.hostUniverse;
  }

  final resolvedUniverse = effectiveUniverse ?? defaultUniverseDomain;
  final stsClient = await clientViaStsTokenExchange(
    credentialSource: credentialSource,
    audience: audience,
    subjectTokenType: subjectTokenType,
    tokenUrl: resolvedTokenUrl,
    scopes: scopes,
    quotaProject: quotaProject,
    universeDomain: resolvedUniverse,
    baseClient: baseClient,
  );

  if (impersonationInfo != null) {
    return _impersonateWithCleanup(
      sourceClient: stsClient,
      impersonationInfo: impersonationInfo,
      universeDomain: resolvedUniverse,
      scopes: scopes,
      quotaProject: quotaProject,
      baseClient: baseClient,
    );
  }
  return stsClient;
}

Future<ImpersonatedAuthClient> _impersonateWithCleanup({
  required AuthClient sourceClient,
  required _ParsedImpersonationUrl impersonationInfo,
  required String universeDomain,
  required List<String> scopes,
  required String? quotaProject,
  required Client baseClient,
  List<String>? delegates,
}) async {
  try {
    return await clientViaServiceAccountImpersonation(
      sourceClient: sourceClient,
      targetServiceAccount: impersonationInfo.serviceAccount,
      targetScopes: scopes,
      delegates: delegates,
      universeDomain: universeDomain,
      endpoint: impersonationInfo.customEndpoint,
      quotaProject: quotaProject,
      baseClient: baseClient,
    );
  } catch (_) {
    sourceClient.close();
    rethrow;
  }
}

typedef _ParsedImpersonationUrl = ({
  String serviceAccount,
  String? hostUniverse,
  String? customEndpoint,
});

/// Matches the target service account email from a service account
/// impersonation URL path.
final _impersonationUrlRegExp = RegExp(
  r'^/v1/projects/[^/]+/serviceAccounts/([^/:]+):generateAccessToken$',
);

bool _isSupportedAuthorizedUserTokenUri(String tokenUriString) {
  final uri = Uri.tryParse(tokenUriString);
  if (uri == null ||
      uri.scheme != 'https' ||
      uri.port != 443 ||
      uri.userInfo.isNotEmpty ||
      uri.hasQuery ||
      uri.hasFragment) {
    return false;
  }
  return switch ((uri.host.toLowerCase(), uri.path)) {
    ('oauth2.googleapis.com', '/token') ||
    ('oauth2.mtls.googleapis.com', '/token') ||
    ('accounts.google.com', '/o/oauth2/token') ||
    ('www.googleapis.com', '/oauth2/v4/token') => true,
    _ => false,
  };
}

Uri _parseAdcUri(
  String url,
  String name,
  String? fileSource, {
  bool allowQuery = true,
}) {
  final (:uri, :error) = tryValidateHttpsUri(url, name, allowQuery: allowQuery);
  if (error != null) {
    throw CredentialsFileException(
      '$error ("$url" in ${_sourceLabel(fileSource)}).',
    );
  }
  return uri!;
}

_ParsedImpersonationUrl _parseImpersonationUrl(String url, String? fileSource) {
  final uri = _parseAdcUri(
    url,
    'service_account_impersonation_url',
    fileSource,
    allowQuery: false,
  );
  final match = _impersonationUrlRegExp.firstMatch(uri.path);
  if (match == null) {
    throw CredentialsFileException(
      'Invalid service_account_impersonation_url path "$url" in '
      '${_sourceLabel(fileSource)}.',
    );
  }

  final hostUniverse = universeDomainFromIamHost(uri.host);
  final serviceAccount = Uri.decodeComponent(match.group(1)!);
  final isStandardGlobalHost =
      hostUniverse != null &&
      uri.scheme == 'https' &&
      uri.host.toLowerCase() == 'iamcredentials.$hostUniverse' &&
      !uri.hasPort;

  return (
    serviceAccount: serviceAccount,
    hostUniverse: hostUniverse,
    customEndpoint: isStandardGlobalHost ? null : uri.origin,
  );
}

String? _parseOptionalString(
  Map<String, dynamic> credentials,
  String key,
  String? fileSource,
) {
  final raw = credentials[key];
  if (raw == null) return null;
  if (raw is! String) {
    throw CredentialsFileException(
      'Invalid $key in ${_sourceLabel(fileSource)}: expected a String.',
    );
  }
  return raw;
}

String? _parseUniverseDomain(
  Map<String, dynamic> credentials,
  String? fileSource,
) {
  final raw = _parseOptionalString(credentials, 'universe_domain', fileSource);
  if (raw == null || raw.isEmpty) return null;
  final normalized = tryNormalizeUniverseDomain(raw);
  if (normalized == null) {
    throw CredentialsFileException(
      'Invalid universe_domain "$raw" in ${_sourceLabel(fileSource)}: '
      'must be a valid DNS domain name.',
    );
  }
  return normalized;
}

String? _inferUniverseDomainFromJson(
  Map<String, dynamic> credentials,
  String? fileSource, {
  int depth = 0,
}) {
  if (depth > _maxSourceNestingDepth) {
    throw CredentialsFileException(
      'Impersonation credential chain exceeds maximum nesting depth in '
      '${_sourceLabel(fileSource)}.',
    );
  }
  final explicit = _parseUniverseDomain(credentials, fileSource);
  if (explicit != null) return explicit;
  return switch (credentials['type']) {
    'service_account' || 'authorized_user' => defaultUniverseDomain,
    'external_account' => switch (credentials['token_url']) {
      final String url when url.isNotEmpty => _hostUniverse(
        _resolveTemplate(url, null),
        universeDomainFromStsHost,
      ),
      null || '' => defaultUniverseDomain,
      _ => null,
    },
    'impersonated_service_account' => _inferImpersonationSourceUniverse(
      credentials,
      fileSource,
      depth: depth,
    ),
    _ => null,
  };
}

String? _hostUniverse(String url, String? Function(String host) extract) {
  final uri = Uri.tryParse(url);
  return uri != null ? extract(uri.host) : null;
}

String? _inferImpersonationSourceUniverse(
  Map<String, dynamic> credentials,
  String? fileSource, {
  required int depth,
}) {
  final url = credentials['service_account_impersonation_url'];
  if (url is String && !url.contains('{universe_domain}')) {
    final hostUniverse = _hostUniverse(url, universeDomainFromIamHost);
    if (hostUniverse != null) return hostUniverse;
  }
  return switch (credentials['source_credentials']) {
    final Map<String, dynamic> nestedSource => _inferUniverseDomainFromJson(
      nestedSource,
      fileSource,
      depth: depth + 1,
    ),
    _ => null,
  };
}

List<String>? _parseDelegates(Object? raw, String? fileSource) {
  if (raw == null) return null;
  if (raw is! List || raw.any((e) => e is! String)) {
    throw CredentialsFileException(
      'Invalid delegates in ${_sourceLabel(fileSource)}: '
      'expected a List of Strings.',
    );
  }
  return raw.cast<String>();
}
