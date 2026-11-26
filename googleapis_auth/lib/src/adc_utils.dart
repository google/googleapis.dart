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
import 'known_uris.dart';
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
      '${fileSource ?? 'the provided credentials'}.',
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
    'token_url': final String tokenUrl,
    'credential_source': final Map<String, dynamic> credentialSource,
  }) {
    return _clientFromExternalAccount(
      credentials,
      audience: audience,
      subjectTokenType: subjectTokenType,
      tokenUrl: tokenUrl,
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
  final sourceLabel = fileSource ?? 'the provided credentials';
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
  if (tokenUriString != null && tokenUriString.isNotEmpty) {
    final uri = Uri.tryParse(tokenUriString);
    final isDefaultEndpoint =
        uri != null &&
        uri.scheme == 'https' &&
        uri.host.toLowerCase() == googleOauth2TokenEndpoint.host &&
        (!uri.hasPort || uri.port == 443) &&
        uri.userInfo.isEmpty &&
        !uri.hasQuery &&
        !uri.hasFragment &&
        uri.path == '/token';
    if (!isDefaultEndpoint) {
      throw CredentialsFileException(
        'Unsupported token_uri "$tokenUriString" for authorized_user '
        'credentials from $sourceLabel.',
      );
    }
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
  final sourceLabel = fileSource ?? 'the provided credentials';
  final declaredSourceUniverse = _inferUniverseDomainFromJson(
    source,
    fileSource,
    depth: depth + 1,
  );
  final resolvedUrl = impersonationUrl.replaceAll(
    '{universe_domain}',
    jsonUniverseDomain ?? declaredSourceUniverse ?? defaultUniverseDomain,
  );
  final impersonationInfo = _parseImpersonationUrl(resolvedUrl);
  final urlUniverse = impersonationInfo.universeDomain;
  if (jsonUniverseDomain != null && jsonUniverseDomain != urlUniverse) {
    throw CredentialsFileException(
      'Universe domain mismatch in $sourceLabel: '
      'universe_domain "$jsonUniverseDomain" does not match '
      'service_account_impersonation_url universe "$urlUniverse".',
    );
  }
  if (declaredSourceUniverse != null && declaredSourceUniverse != urlUniverse) {
    throw CredentialsFileException(
      'Universe domain mismatch in $sourceLabel: '
      'source_credentials universe "$declaredSourceUniverse" does not match '
      'impersonation universe "$urlUniverse".',
    );
  }

  final delegates = _parseDelegates(credentials['delegates'], fileSource);

  final sourceClient = await _clientViaApplicationCredentials(
    source,
    ['https://www.googleapis.com/auth/iam'],
    baseClient,
    fileSource: fileSource,
    depth: depth + 1,
  );

  final sourceUniverse = sourceClient.credentials.universeDomain;
  if (sourceUniverse != urlUniverse) {
    sourceClient.close();
    throw CredentialsFileException(
      'Universe domain mismatch in $sourceLabel: '
      'source credentials universe "$sourceUniverse" does not match '
      'impersonation universe "$urlUniverse".',
    );
  }

  return _impersonateWithCleanup(
    sourceClient: sourceClient,
    impersonationInfo: impersonationInfo,
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
  required String tokenUrl,
  required Map<String, dynamic> credentialSource,
  required List<String> scopes,
  required Client baseClient,
  required String? quotaProject,
  required String? jsonUniverseDomain,
  required String? fileSource,
}) async {
  final sourceLabel = fileSource ?? 'the provided credentials';
  final serviceAccountImpersonationUrl = _parseOptionalString(
    credentials,
    'service_account_impersonation_url',
    fileSource,
  );
  final resolvedTokenUrl = tokenUrl.replaceAll(
    '{universe_domain}',
    jsonUniverseDomain ?? defaultUniverseDomain,
  );
  final stsUniverse = _parseStsTokenUrlUniverse(resolvedTokenUrl, fileSource);
  if (jsonUniverseDomain != null && jsonUniverseDomain != stsUniverse) {
    throw CredentialsFileException(
      'Universe domain mismatch in $sourceLabel: '
      'universe_domain "$jsonUniverseDomain" does not match '
      'token_url universe "$stsUniverse".',
    );
  }

  _ParsedImpersonationUrl? impersonationInfo;
  if (serviceAccountImpersonationUrl != null) {
    // Parse and validate before exchanging the STS token so a mismatched or
    // malformed impersonation URL fails fast without transmitting a live
    // token across universe boundaries.
    //
    // See: https://cloud.google.com/iam/docs/workload-identity-federation
    // See also the "service_account_impersonation_url" definition at:
    // https://google.aip.dev/auth/4117
    final resolvedImpersonationUrl = serviceAccountImpersonationUrl.replaceAll(
      '{universe_domain}',
      stsUniverse,
    );
    impersonationInfo = _parseImpersonationUrl(resolvedImpersonationUrl);
    if (impersonationInfo.universeDomain != stsUniverse) {
      throw CredentialsFileException(
        'Universe domain mismatch in $sourceLabel: '
        'STS universe "$stsUniverse" does not match '
        'service_account_impersonation_url universe '
        '"${impersonationInfo.universeDomain}".',
      );
    }
  }

  final stsClient = await clientViaStsTokenExchange(
    credentialSource: credentialSource,
    audience: audience,
    subjectTokenType: subjectTokenType,
    tokenUrl: resolvedTokenUrl,
    scopes: scopes,
    quotaProject: quotaProject,
    universeDomain: stsUniverse,
    baseClient: baseClient,
  );

  if (impersonationInfo != null) {
    return _impersonateWithCleanup(
      sourceClient: stsClient,
      impersonationInfo: impersonationInfo,
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
      universeDomain: impersonationInfo.universeDomain,
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
  String universeDomain,
  String? customEndpoint,
});

/// Matches the target service account email from a service account
/// impersonation URL path.
///
/// Example URL:
/// `https://iamcredentials.googleapis.com/v1/projects/-/serviceAccounts/SA_NAME@PROJECT.iam.gserviceaccount.com:generateAccessToken`
///
/// See:
/// https://cloud.google.com/iam/docs/reference/credentials/rest/v1/projects.serviceAccounts/generateAccessToken
final _impersonationUrlRegExp = RegExp(
  r'^/v1/projects/[^/]+/serviceAccounts/([^/:]+):generateAccessToken$',
);

_ParsedImpersonationUrl _parseImpersonationUrl(String url) {
  final uri = Uri.tryParse(url);
  if (uri == null ||
      uri.scheme != 'https' ||
      uri.host.isEmpty ||
      uri.userInfo.isNotEmpty ||
      uri.hasQuery ||
      uri.hasFragment) {
    throw ArgumentError.value(
      url,
      'service_account_impersonation_url',
      'Invalid impersonation URL: must use https without userinfo, query, '
          'or fragment.',
    );
  }
  final match = _impersonationUrlRegExp.firstMatch(uri.path);
  if (match == null) {
    throw ArgumentError.value(
      url,
      'service_account_impersonation_url',
      'Invalid impersonation URL path.',
    );
  }

  final universeDomain = universeDomainFromIamHost(uri.host);
  if (universeDomain == null) {
    throw ArgumentError.value(
      url,
      'service_account_impersonation_url',
      'Invalid impersonation URL: host must be an IAM Credentials API host.',
    );
  }

  final serviceAccount = Uri.decodeComponent(match.group(1)!);
  final host = uri.host.toLowerCase();
  final isStandardGlobalHost =
      host == 'iamcredentials.$universeDomain' && !uri.hasPort;

  return (
    serviceAccount: serviceAccount,
    universeDomain: universeDomain,
    customEndpoint: isStandardGlobalHost ? null : uri.origin,
  );
}

String _parseStsTokenUrlUniverse(String tokenUrl, String? fileSource) {
  final sourceLabel = fileSource ?? 'the provided credentials';
  final uri = Uri.tryParse(tokenUrl);
  if (uri == null ||
      uri.scheme != 'https' ||
      uri.host.isEmpty ||
      uri.userInfo.isNotEmpty ||
      uri.hasFragment) {
    throw CredentialsFileException(
      'Invalid token_url "$tokenUrl" in $sourceLabel: must use https without '
      'userinfo or fragment.',
    );
  }
  final universe = universeDomainFromStsHost(uri.host);
  if (universe == null) {
    throw CredentialsFileException(
      'Invalid token_url "$tokenUrl" in $sourceLabel: host must be an STS '
      'API host.',
    );
  }
  return universe;
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
      'Invalid $key in ${fileSource ?? 'the provided credentials'}: '
      'expected a String.',
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
      'Invalid universe_domain "$raw" in '
      '${fileSource ?? 'the provided credentials'}: must be a valid DNS '
      'domain name.',
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
      '${fileSource ?? 'the provided credentials'}.',
    );
  }
  final explicit = _parseUniverseDomain(credentials, fileSource);
  if (explicit != null) return explicit;
  return switch (credentials['type']) {
    'service_account' || 'authorized_user' => defaultUniverseDomain,
    'external_account' => switch (credentials['token_url']) {
      final String tokenUrl => () {
        final resolved = tokenUrl.replaceAll(
          '{universe_domain}',
          defaultUniverseDomain,
        );
        final uri = Uri.tryParse(resolved);
        return uri != null ? universeDomainFromStsHost(uri.host) : null;
      }(),
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

String? _inferImpersonationSourceUniverse(
  Map<String, dynamic> credentials,
  String? fileSource, {
  required int depth,
}) {
  final url = credentials['service_account_impersonation_url'];
  if (url is String && !url.contains('{universe_domain}')) {
    final uri = Uri.tryParse(url);
    final hostUniverse = uri != null
        ? universeDomainFromIamHost(uri.host)
        : null;
    if (hostUniverse != null) return hostUniverse;
  }
  final nestedSource = credentials['source_credentials'];
  if (nestedSource is Map<String, dynamic>) {
    return _inferUniverseDomainFromJson(
      nestedSource,
      fileSource,
      depth: depth + 1,
    );
  }
  return null;
}

List<String>? _parseDelegates(Object? raw, String? fileSource) {
  if (raw == null) return null;
  if (raw is! List || raw.any((e) => e is! String)) {
    throw CredentialsFileException(
      'Invalid delegates in ${fileSource ?? 'the provided credentials'}: '
      'expected a List of Strings.',
    );
  }
  return raw.cast<String>();
}
