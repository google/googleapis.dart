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

Future<AutoRefreshingAuthClient> _clientViaApplicationCredentials(
  Map<String, dynamic> credentials,
  List<String> scopes,
  Client baseClient, {
  String? fileSource,
}) async {
  final quotaProject =
      Platform.environment['GOOGLE_CLOUD_QUOTA_PROJECT'] ??
      credentials['quota_project_id'] as String?;
  final jsonUniverseDomain = _parseUniverseDomain(credentials, fileSource);

  if (credentials case {
    'type': 'authorized_user',
    'client_id': final String clientIdString,
    'client_secret': final String? clientSecret,
    'refresh_token': final String? refreshToken,
  }) {
    if (jsonUniverseDomain != null &&
        jsonUniverseDomain != defaultUniverseDomain) {
      throw CredentialsFileException(
        'Unsupported universe_domain "$jsonUniverseDomain" for '
        'authorized_user credentials from '
        '${fileSource ?? 'the provided credentials'}.',
      );
    }
    if (refreshToken == null) {
      throw CredentialsFileException(
        'Failed to parse JSON from credentials file from '
        '${fileSource ?? 'the provided credentials'}'
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

  if (credentials case {
    'type': 'impersonated_service_account',
    'service_account_impersonation_url': final String url,
    'source_credentials': final Map<String, dynamic> source,
  }) {
    final impersonationInfo = _parseImpersonationUrl(url);
    final urlUniverse = impersonationInfo.universeDomain;
    if (jsonUniverseDomain != null &&
        urlUniverse != null &&
        jsonUniverseDomain != urlUniverse) {
      throw CredentialsFileException(
        'Universe domain mismatch in '
        '${fileSource ?? 'the provided credentials'}: '
        'universe_domain "$jsonUniverseDomain" does not match '
        'service_account_impersonation_url universe "$urlUniverse".',
      );
    }
    final declaredTargetUniverse = jsonUniverseDomain ?? urlUniverse;
    final declaredSourceUniverse = _inferUniverseDomainFromJson(
      source,
      fileSource,
    );
    if (declaredTargetUniverse != null &&
        declaredSourceUniverse != null &&
        declaredTargetUniverse != declaredSourceUniverse) {
      throw CredentialsFileException(
        'Universe domain mismatch in '
        '${fileSource ?? 'the provided credentials'}: '
        'source_credentials universe "$declaredSourceUniverse" does not match '
        'impersonation universe "$declaredTargetUniverse".',
      );
    }

    final delegates = _parseDelegates(credentials['delegates'], fileSource);

    final sourceClient = await _clientViaApplicationCredentials(
      source,
      ['https://www.googleapis.com/auth/iam'],
      baseClient,
      fileSource: fileSource,
    );

    final sourceUniverse = sourceClient.credentials.universeDomain;
    final targetUniverse = declaredTargetUniverse ?? sourceUniverse;
    if (sourceUniverse != targetUniverse) {
      sourceClient.close();
      throw CredentialsFileException(
        'Universe domain mismatch in '
        '${fileSource ?? 'the provided credentials'}: '
        'source credentials universe "$sourceUniverse" does not match '
        'impersonation universe "$targetUniverse".',
      );
    }

    try {
      return await clientViaServiceAccountImpersonation(
        sourceClient: sourceClient,
        targetServiceAccount: impersonationInfo.serviceAccount,
        targetScopes: scopes,
        delegates: delegates,
        universeDomain: targetUniverse,
        endpoint: impersonationInfo.customEndpoint,
        quotaProject: quotaProject,
        baseClient: baseClient,
      );
    } catch (_) {
      sourceClient.close();
      rethrow;
    }
  }

  if (credentials case {
    'type': 'external_account',
    'audience': final String audience,
    'subject_token_type': final String subjectTokenType,
    'token_url': final String tokenUrl,
    'credential_source': final Map<String, dynamic> credentialSource,
  }) {
    final serviceAccountImpersonationUrl =
        credentials['service_account_impersonation_url'] as String?;
    final resolvedTokenUrl = tokenUrl.replaceAll(
      '{universe_domain}',
      jsonUniverseDomain ?? defaultUniverseDomain,
    );
    final stsHostUniverse = _universeDomainFromStsTokenUrl(resolvedTokenUrl);
    if (jsonUniverseDomain != null &&
        stsHostUniverse != null &&
        jsonUniverseDomain != stsHostUniverse) {
      throw CredentialsFileException(
        'Universe domain mismatch in '
        '${fileSource ?? 'the provided credentials'}: '
        'universe_domain "$jsonUniverseDomain" does not match '
        'token_url universe "$stsHostUniverse".',
      );
    }
    final stsUniverse =
        jsonUniverseDomain ?? stsHostUniverse ?? defaultUniverseDomain;

    _ParsedImpersonationUrl? impersonationInfo;
    if (serviceAccountImpersonationUrl != null) {
      // Parse and validate before exchanging the STS token so a mismatched or
      // malformed impersonation URL fails fast without transmitting a live
      // token across universe boundaries.
      //
      // See: https://cloud.google.com/iam/docs/workload-identity-federation
      // See also the "service_account_impersonation_url" definition at:
      // https://google.aip.dev/auth/4117
      impersonationInfo = _parseImpersonationUrl(
        serviceAccountImpersonationUrl,
      );
      final impersonationUniverse = impersonationInfo.universeDomain;
      if (impersonationUniverse != null &&
          impersonationUniverse != stsUniverse) {
        throw CredentialsFileException(
          'Universe domain mismatch in '
          '${fileSource ?? 'the provided credentials'}: '
          'STS universe "$stsUniverse" does not match '
          'service_account_impersonation_url universe '
          '"$impersonationUniverse".',
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
      try {
        return await clientViaServiceAccountImpersonation(
          sourceClient: stsClient,
          targetServiceAccount: impersonationInfo.serviceAccount,
          targetScopes: scopes,
          universeDomain: impersonationInfo.universeDomain ?? stsUniverse,
          endpoint: impersonationInfo.customEndpoint,
          quotaProject: quotaProject,
          baseClient: baseClient,
        );
      } catch (_) {
        stsClient.close();
        rethrow;
      }
    }
    return stsClient;
  }

  return await clientViaServiceAccount(
    ServiceAccountCredentials.fromJson(credentials),
    scopes,
    baseClient: baseClient,
    quotaProject: quotaProject,
  );
}

typedef _ParsedImpersonationUrl = ({
  String serviceAccount,
  String? universeDomain,
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
  r'/v1/projects/[^/]+/serviceAccounts/([^/:]+):generateAccessToken$',
);

_ParsedImpersonationUrl _parseImpersonationUrl(String url) {
  final uri = Uri.tryParse(url);
  if (uri == null || uri.scheme != 'https' || uri.host.isEmpty) {
    throw ArgumentError.value(
      url,
      'service_account_impersonation_url',
      'Invalid impersonation URL',
    );
  }
  final match = _impersonationUrlRegExp.firstMatch(uri.path);
  if (match == null) {
    throw ArgumentError.value(
      url,
      'service_account_impersonation_url',
      'Invalid impersonation URL',
    );
  }

  final serviceAccount = Uri.decodeComponent(match.group(1)!);
  final host = uri.host.toLowerCase();
  String? universeDomain;
  String? customEndpoint;

  if (host.startsWith('iamcredentials.') &&
      host.length > 'iamcredentials.'.length) {
    universeDomain = host.substring('iamcredentials.'.length);
    if (uri.hasPort) {
      customEndpoint = uri.origin;
    }
  } else {
    final regionalMarker = host.indexOf('-iamcredentials.');
    if (regionalMarker > 0 &&
        regionalMarker + '-iamcredentials.'.length < host.length) {
      universeDomain = host.substring(
        regionalMarker + '-iamcredentials.'.length,
      );
      customEndpoint = uri.origin;
    } else {
      customEndpoint = uri.origin;
    }
  }

  return (
    serviceAccount: serviceAccount,
    universeDomain: universeDomain,
    customEndpoint: customEndpoint,
  );
}

String? _parseUniverseDomain(
  Map<String, dynamic> credentials,
  String? fileSource,
) {
  final raw = credentials['universe_domain'];
  if (raw == null) return null;
  if (raw is! String) {
    throw CredentialsFileException(
      'Invalid universe_domain in '
      '${fileSource ?? 'the provided credentials'}: expected a String.',
    );
  }
  return raw.isEmpty ? null : raw;
}

String? _universeDomainFromStsTokenUrl(String tokenUrl) {
  final uri = Uri.tryParse(tokenUrl);
  if (uri == null || uri.host.isEmpty) return null;
  final host = uri.host.toLowerCase();
  if (host.startsWith('sts.') && host.length > 'sts.'.length) {
    return host.substring('sts.'.length);
  }
  final regionalMarker = host.indexOf('-sts.');
  if (regionalMarker > 0 && regionalMarker + '-sts.'.length < host.length) {
    return host.substring(regionalMarker + '-sts.'.length);
  }
  return null;
}

String? _inferUniverseDomainFromJson(
  Map<String, dynamic> credentials,
  String? fileSource,
) {
  final explicit = _parseUniverseDomain(credentials, fileSource);
  if (explicit != null) return explicit;
  return switch (credentials['type']) {
    'service_account' || 'authorized_user' => defaultUniverseDomain,
    'external_account' => switch (credentials['token_url']) {
      final String tokenUrl =>
        _universeDomainFromStsTokenUrl(
              tokenUrl.replaceAll('{universe_domain}', defaultUniverseDomain),
            ) ??
            defaultUniverseDomain,
      _ => null,
    },
    _ => null,
  };
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
