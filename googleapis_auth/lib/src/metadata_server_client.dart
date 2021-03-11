// Copyright (c) 2021, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:http/http.dart';

import 'access_credentials.dart';
import 'auth_client.dart';
import 'oauth2_flows/base_flow.dart';
import 'oauth2_flows/metadata_server.dart';

/// Obtain oauth2 [AccessCredentials] using the metadata API on ComputeEngine.
///
/// In case the VM was not configured with access to the requested scopes or an
/// error occurs the returned future will complete with an `Exception`.
///
/// [baseClient] will be used for obtaining `AccessCredentials`.
///
/// No credentials are needed. But this function is only intended to work on a
/// Google Compute Engine VM with configured access to Google APIs.
Future<AccessCredentials> obtainAccessCredentialsViaMetadataServer(
  Client baseClient,
) =>
    MetadataServerAuthorizationFlow(baseClient).run();

/// Obtains oauth2 credentials and returns an authenticated HTTP client.
///
/// See [obtainAccessCredentialsViaMetadataServer] for specifics about the
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
Future<AutoRefreshingAuthClient> clientViaMetadataServer({
  Client? baseClient,
}) async =>
    await clientFromFlow(
      (c) => MetadataServerAuthorizationFlow(c),
      baseClient: baseClient,
    );
