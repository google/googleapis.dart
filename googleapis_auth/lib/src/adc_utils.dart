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
  return await clientViaServiceAccount(
    ServiceAccountCredentials.fromJson(credentials),
    scopes,
    baseClient: baseClient,
    quotaProject: quotaProject,
  );
}
