// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:http/http.dart';

import '../auth_functions.dart';
import '../auth_http_utils.dart';
import '../http_client_base.dart';
import '../service_account_credentials.dart';

/// Base class for "Flows" that provide [AccessCredentials].
abstract class BaseFlow {
  Future<AccessCredentials> run();
}

/// If [quotaProject] is provided, it will be added to the `X-Goog-User-Project`
/// header for all requests.
Future<AutoRefreshingAuthClient> clientFromFlow(
  BaseFlow Function(Client client) flowFactory, {
  Client? baseClient,
  String? quotaProject,
}) async {
  if (baseClient == null) {
    baseClient = Client();
  } else {
    baseClient = nonClosingClient(baseClient);
  }

  final flow = flowFactory(baseClient);

  try {
    final credentials = await flow.run();
    return _FlowClient(baseClient, credentials, flow, quotaProject);
  } catch (e) {
    baseClient.close();
    rethrow;
  }
}

// Will close the underlying `http.Client`.
class _FlowClient extends AutoRefreshDelegatingClient {
  final BaseFlow _flow;
  final String? _quotaProject;

  @override
  AccessCredentials credentials;
  Client _authClient;

  _FlowClient(super.client, this.credentials, this._flow, this._quotaProject)
    : _authClient = authenticatedClient(
        client,
        credentials,
        quotaProject: _quotaProject,
      );

  @override
  Future<StreamedResponse> send(BaseRequest request) async {
    if (credentials.accessToken.hasExpired) {
      final newCredentials = await _flow.run();
      notifyAboutNewCredentials(newCredentials);
      credentials = newCredentials;
      _authClient = authenticatedClient(
        baseClient,
        credentials,
        quotaProject: _quotaProject,
      );
    }
    return _authClient.send(request);
  }
}
