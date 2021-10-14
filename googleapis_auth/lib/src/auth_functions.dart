// Copyright (c) 2014, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart';

import 'access_credentials.dart';
import 'access_token.dart';
import 'auth_client.dart';
import 'auth_http_utils.dart';
import 'client_id.dart';
import 'exceptions.dart';
import 'http_client_base.dart';
import 'utils.dart';

/// Obtains a HTTP client which uses the given [apiKey] for making HTTP
/// requests.
///
/// Note that the returned client should *only* be used for making HTTP requests
/// to Google Services. The [apiKey] should not be disclosed to third parties.
///
/// The user is responsible for closing the returned HTTP [Client].
/// Closing the returned [Client] will not close [baseClient].
Client clientViaApiKey(String apiKey, {Client? baseClient}) {
  if (baseClient == null) {
    baseClient = Client();
  } else {
    baseClient = nonClosingClient(baseClient);
  }
  return ApiKeyClient(baseClient, apiKey);
}

/// Obtain an `http.Client` which automatically authenticates
/// requests using [credentials].
///
/// Note that the returned `RequestHandler` will not auto-refresh the given
/// [credentials].
///
/// The user is responsible for closing the returned HTTP [Client].
/// Closing the returned [Client] will not close [baseClient].
AuthClient authenticatedClient(
  Client baseClient,
  AccessCredentials credentials,
) {
  if (credentials.accessToken.type != 'Bearer') {
    throw ArgumentError('Only Bearer access tokens are accepted.');
  }
  return AuthenticatedClient(baseClient, credentials);
}

/// Obtain an `http.Client` which automatically refreshes [credentials]
/// before they expire. Uses [baseClient] as a base for making authenticated
/// http requests and for refreshing [credentials].
///
/// The user is responsible for closing the returned HTTP [Client].
/// Closing the returned [Client] will not close [baseClient].
AutoRefreshingAuthClient autoRefreshingClient(
  ClientId clientId,
  AccessCredentials credentials,
  Client baseClient,
) {
  if (credentials.accessToken.type != 'Bearer') {
    throw ArgumentError('Only Bearer access tokens are accepted.');
  }
  if (credentials.refreshToken == null) {
    throw ArgumentError('Refresh token in AccessCredentials was `null`.');
  }
  return AutoRefreshingClient(baseClient, clientId, credentials);
}

/// Tries to obtain refreshed [AccessCredentials] based on [credentials] using
/// [client].
Future<AccessCredentials> refreshCredentials(
  ClientId clientId,
  AccessCredentials credentials,
  Client client,
) async {
  final secret = clientId.secret;
  if (secret == null) {
    throw ArgumentError('clientId.secret cannot be null.');
  }

  final refreshToken = credentials.refreshToken;
  if (refreshToken == null) {
    throw ArgumentError('clientId.refreshToken cannot be null.');
  }

  final formValues = [
    'client_id=${Uri.encodeComponent(clientId.identifier)}',
    'client_secret=${Uri.encodeComponent(secret)}',
    'refresh_token=${Uri.encodeComponent(refreshToken)}',
    'grant_type=refresh_token',
  ];

  final body =
      Stream<List<int>>.fromIterable([(ascii.encode(formValues.join('&')))]);
  final request = RequestImpl('POST', googleOauthTokenUri, body);
  request.headers['content-type'] = 'application/x-www-form-urlencoded';

  final response = await client.send(request);
  var contentType = response.headers['content-type'];
  contentType = contentType?.toLowerCase();

  if (contentType == null ||
      (!contentType.contains('json') && !contentType.contains('javascript'))) {
    await response.stream.drain().catchError((_) {});
    throw ServerRequestFailedException(
      'Server responded with invalid content type: $contentType. '
      'Expected JSON response.',
    );
  }

  final jsonMap = await readJsonMap(response);

  final accessToken = parseAccessToken(response.statusCode, jsonMap);

  final idToken = jsonMap['id_token'] as String?;

  return AccessCredentials(
    accessToken,
    credentials.refreshToken,
    credentials.scopes,
    idToken: idToken,
  );
}
