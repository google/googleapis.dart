// Copyright 2021 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

import 'dart:async';

import 'package:http/http.dart';

import 'auth_endpoints.dart';
import 'auth_functions.dart';
import 'http_client_base.dart';
import 'service_account_credentials.dart';
import 'version.dart';

/// Returns the headers that authenticate a request with [credentials] and,
/// when [quotaProject] is set, bill it to that project. Keys are lowercase.
Map<String, String> requestHeadersFor(
  AccessCredentials credentials,
  String? quotaProject,
) => Map.unmodifiable({
  'authorization': 'Bearer ${credentials.accessToken.data}',
  'x-goog-user-project': ?quotaProject,
});

/// A client of this package that can return the headers it adds to requests.
///
/// Not exported: the public entry point is the `requestHeaders()` extension
/// method on [AuthClient].
abstract interface class RequestHeadersSource {
  /// The headers that authenticate a request, refreshing the credentials
  /// first if they have expired.
  Future<Map<String, String>> requestHeaders();
}

/// Will close the underlying `http.Client` depending on a constructor argument.
class AuthenticatedClient extends DelegatingClient
    implements AuthClient, RequestHeadersSource {
  @override
  final AccessCredentials credentials;
  final String? quotaProject;

  AuthenticatedClient(
    super.client,
    this.credentials, {
    this.quotaProject,
    super.closeUnderlyingClient = false,
  });

  @override
  Future<StreamedResponse> send(BaseRequest request) async {
    // Make new request object and perform the authenticated request.
    final modifiedRequest = RequestImpl.copyOf(request);
    modifiedRequest.headers['Authorization'] =
        'Bearer ${credentials.accessToken.data}';
    if (quotaProject != null) {
      modifiedRequest.headers['X-Goog-User-Project'] = quotaProject!;
    }

    addXGoogApiClientHeader(modifiedRequest.headers);

    final response = await baseClient.send(modifiedRequest);
    final wwwAuthenticate = response.headers['www-authenticate'];
    if (wwwAuthenticate != null) {
      await response.stream.drain<void>();
      throw AccessDeniedException(
        'Access was denied '
        '(www-authenticate header was: $wwwAuthenticate).',
      );
    }
    return response;
  }

  @override
  Future<Map<String, String>> requestHeaders() async =>
      requestHeadersFor(credentials, quotaProject);
}

/// Adds 'key' query parameter when making HTTP requests.
///
/// If 'key' is already present on the URI, it will complete with an exception.
/// This will prevent accidental overrides of a query parameter with the API
/// key.
class ApiKeyClient extends DelegatingClient {
  final String _encodedApiKey;

  ApiKeyClient(super.client, String apiKey)
    : _encodedApiKey = Uri.encodeQueryComponent(apiKey),
      super(closeUnderlyingClient: true);

  @override
  Future<StreamedResponse> send(BaseRequest request) async {
    var url = request.url;
    if (url.queryParameters.containsKey('key')) {
      throw ArgumentError(
        'Tried to make a HTTP request which has already a "key" query '
        'parameter. Adding the API key would override that existing value.',
      );
    }

    if (url.query == '') {
      url = url.replace(query: 'key=$_encodedApiKey');
    } else {
      url = url.replace(query: '${url.query}&key=$_encodedApiKey');
    }

    final modifiedRequest = RequestImpl.copyOf(request, url: url);
    addXGoogApiClientHeader(modifiedRequest.headers);
    return baseClient.send(modifiedRequest);
  }
}

/// Will close the underlying `http.Client` depending on a constructor argument.
class AutoRefreshingClient extends AutoRefreshDelegatingClient {
  final ClientId clientId;
  final String? quotaProject;
  @override
  AccessCredentials credentials;
  late Client authClient;
  final AuthEndpoints authEndpoints;

  AutoRefreshingClient(
    super.client,
    this.authEndpoints,
    this.clientId,
    this.credentials, {
    super.closeUnderlyingClient,
    this.quotaProject,
  }) : assert(credentials.accessToken.type == 'Bearer'),
       assert(credentials.refreshToken != null) {
    authClient = AuthenticatedClient(
      baseClient,
      credentials,
      quotaProject: quotaProject,
    );
  }

  @override
  Future<StreamedResponse> send(BaseRequest request) async {
    // TODO: Can this return a "access token expired" message?
    // If so, we should handle it.
    await _refreshIfExpired();
    return authClient.send(request);
  }

  @override
  Future<Map<String, String>> requestHeaders() async {
    await _refreshIfExpired();
    return requestHeadersFor(credentials, quotaProject);
  }

  Future<void> _refreshIfExpired() async {
    if (!credentials.accessToken.hasExpired) return;
    final cred = await refreshCredentials(
      clientId,
      credentials,
      baseClient,
      authEndpoints: authEndpoints,
    );
    notifyAboutNewCredentials(cred);
    credentials = cred;
    authClient = AuthenticatedClient(
      baseClient,
      cred,
      quotaProject: quotaProject,
    );
  }
}

abstract class AutoRefreshDelegatingClient extends DelegatingClient
    implements AutoRefreshingAuthClient, RequestHeadersSource {
  final StreamController<AccessCredentials> _credentialStreamController =
      StreamController.broadcast(sync: true);

  AutoRefreshDelegatingClient(super.client, {super.closeUnderlyingClient});

  @override
  Stream<AccessCredentials> get credentialUpdates =>
      _credentialStreamController.stream;

  void notifyAboutNewCredentials(AccessCredentials credentials) {
    _credentialStreamController.add(credentials);
  }

  @override
  void close() {
    _credentialStreamController.close();
    super.close();
  }
}
