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
  final quotaProject = credentials['quota_project_id'] as String?;
  if (credentials case {
    'type': 'authorized_user',
    'client_id': final String clientIdString,
    'client_secret': final String? clientSecret,
    'refresh_token': final String? refreshToken,
  }) {
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
    final sourceClient = await _clientViaApplicationCredentials(
      source,
      ['https://www.googleapis.com/auth/iam'],
      baseClient,
      fileSource: fileSource,
    );

    final match = _impersonationUrlRegExp.firstMatch(url);
    if (match == null) {
      throw ArgumentError.value(
        url,
        'service_account_impersonation_url',
        'Invalid impersonation URL',
      );
    }
    final targetServiceAccount = match.group(1)!;

    return clientViaServiceAccountImpersonation(
      sourceClient: sourceClient,
      targetServiceAccount: targetServiceAccount,
      targetScopes: scopes,
      baseClient: baseClient,
    );
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

    final stsClient = await clientViaStsTokenExchange(
      credentialSource: credentialSource,
      audience: audience,
      subjectTokenType: subjectTokenType,
      tokenUrl: tokenUrl,
      scopes: scopes,
      quotaProject: credentials['quota_project_id'] as String?,
      baseClient: baseClient,
    );

    if (serviceAccountImpersonationUrl != null) {
      // It's possible for external credentials to specify a service account
      // to impersonate. This is common in Workload Identity Federation where
      // the external identity (e.g. AWS, Azure, OIDC) is first exchanged for
      // an STS token, which is then used to impersonate a specific Google Cloud
      // service account.
      //
      // See: https://cloud.google.com/iam/docs/workload-identity-federation
      // See also the "service_account_impersonation_url" definition at:
      // https://google.aip.dev/auth/4117
      final match = _impersonationUrlRegExp.firstMatch(
        serviceAccountImpersonationUrl,
      );
      if (match == null) {
        throw ArgumentError.value(
          serviceAccountImpersonationUrl,
          'service_account_impersonation_url',
          'Invalid impersonation URL',
        );
      }
      final targetServiceAccount = match.group(1)!;

      return clientViaServiceAccountImpersonation(
        sourceClient: stsClient,
        targetServiceAccount: targetServiceAccount,
        targetScopes: scopes,
        baseClient: baseClient,
      );
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

/// Matches the target service account email from a service account
/// impersonation URL.
///
/// Example URL:
/// `https://iamcredentials.googleapis.com/v1/projects/-/serviceAccounts/SA_NAME@PROJECT.iam.gserviceaccount.com:generateAccessToken`
///
/// See:
/// https://cloud.google.com/iam/docs/reference/credentials/rest/v1/projects.serviceAccounts/generateAccessToken
final _impersonationUrlRegExp = RegExp(
  r'serviceAccounts/([^:]+):generateAccessToken',
);
