// Copyright (c) 2021, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:http/http.dart';

import 'oauth2_flows/base_flow.dart';
import 'oauth2_flows/jwt.dart';
import 'service_account_credentials.dart';

/// Obtain oauth2 [AccessCredentials] using service account credentials.
///
/// In case the service account has no access to the requested scopes or another
/// error occurs the returned future will complete with an `Exception`.
///
/// [baseClient] will be used for obtaining `AccessCredentials`.
///
/// The [ServiceAccountCredentials] can be obtained in the Google Cloud Console.
Future<AccessCredentials> obtainAccessCredentialsViaServiceAccount(
  ServiceAccountCredentials clientCredentials,
  List<String> scopes,
  Client baseClient,
) =>
    JwtFlow(
      clientCredentials.email,
      clientCredentials.privateRSAKey,
      clientCredentials.impersonatedUser,
      scopes,
      baseClient,
    ).run();

/// Obtains oauth2 credentials and returns an authenticated HTTP client.
///
/// See [obtainAccessCredentialsViaServiceAccount] for specifics about the
/// arguments used for obtaining access credentials.
///
/// Once access credentials have been obtained, this function will complete
/// with an auto-refreshing HTTP client. Once the `AccessCredentials` expire
/// it will obtain new access credentials.
///
/// If [baseClient] is not given, one will be automatically created. It will be
/// used for making authenticated HTTP requests and for obtaining access
/// credentials.
///
/// The user is responsible for closing the returned HTTP [Client].
/// Closing the returned [Client] will not close [baseClient].
Future<AutoRefreshingAuthClient> clientViaServiceAccount(
  ServiceAccountCredentials clientCredentials,
  List<String> scopes, {
  Client? baseClient,
}) async =>
    await clientFromFlow(
      (c) => JwtFlow(
        clientCredentials.email,
        clientCredentials.privateRSAKey,
        clientCredentials.impersonatedUser,
        scopes,
        c,
      ),
      baseClient: baseClient,
    );
