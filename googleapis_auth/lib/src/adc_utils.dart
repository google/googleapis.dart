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

Future<AutoRefreshingAuthClient> fromApplicationsCredentialsFile(
  File file,
  String fileSource,
  List<String> scopes,
  Client baseClient,
) async {
  Object? credentials;
  try {
    credentials = json.decode(await file.readAsString());
  } on IOException {
    throw Exception('Failed to read credentials file from $fileSource');
  } on FormatException {
    throw Exception(
      'Failed to parse JSON from credentials file from $fileSource',
    );
  }

  if (credentials is! Map) {
    throw Exception(
      'Failed to parse JSON from credentials file from $fileSource',
    );
  }

  return _clientViaApplicationCredentials(
    credentials as Map<String, dynamic>,
    scopes,
    baseClient,
  );
}

Future<AutoRefreshingAuthClient> _clientViaApplicationCredentials(
  Map<String, dynamic> credentials,
  List<String> scopes,
  Client baseClient,
) async {
  final quotaProject = credentials['quota_project_id'] as String?;
  if (credentials case {
    'type': 'authorized_user',
    'client_id': final String clientIdString,
    'client_secret': final String? clientSecret,
    'refresh_token': final String? refreshToken,
  }) {
    final clientId = ClientId(clientIdString, clientSecret);
    return AutoRefreshingClient(
      baseClient,
      const GoogleAuthEndpoints(),
      clientId,
      await refreshCredentials(
        clientId,
        AccessCredentials(
          // Hack: Create empty credentials that have expired.
          AccessToken('Bearer', '', DateTime(0).toUtc()),
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
    final sourceClient = await _clientViaApplicationCredentials(source, [
      'https://www.googleapis.com/auth/iam',
    ], baseClient);

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
