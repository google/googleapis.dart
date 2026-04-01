// Copyright 2021 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

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
  baseClient = setupBaseClient(baseClient);

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

  AccessCredentials _credentials;
  late Client _authClient;

  _FlowClient(super.client, this._credentials, this._flow, this._quotaProject) {
    _authClient = _recreateClient(_credentials);
  }

  @override
  AccessCredentials get credentials => _credentials;

  @override
  Future<StreamedResponse> send(BaseRequest request) async {
    if (_credentials.accessToken.hasExpired) {
      final newCredentials = await _flow.run();
      notifyAboutNewCredentials(newCredentials);
      _credentials = newCredentials;
      _authClient = _recreateClient(newCredentials);
    }
    return _authClient.send(request);
  }

  Client _recreateClient(AccessCredentials credentials) =>
      authenticatedClient(baseClient, credentials, quotaProject: _quotaProject);
}
