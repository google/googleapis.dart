// Copyright 2026 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

import 'auth_client.dart';
import 'auth_http_utils.dart';

/// Extension exposing the headers an [AuthClient] adds to its requests.
///
/// Use it to authenticate transports that do not go through
/// `package:http`, such as gRPC metadata, WebSockets or raw HTTP/2.
///
/// Example:
/// ```dart
/// final client = await clientViaApplicationDefaultCredentials(
///   scopes: ['https://www.googleapis.com/auth/cloud-platform'],
/// );
/// final headers = await client.requestHeaders();
/// // {authorization: Bearer ..., x-goog-user-project: my-project}
/// ```
extension AuthClientRequestHeaders on AuthClient {
  /// Returns the headers that authenticate a request made with this client.
  ///
  /// The map is unmodifiable and its keys are lowercase:
  /// - `authorization`: `Bearer <access token>`.
  /// - `x-goog-user-project`: the quota project, only when one is set.
  ///
  /// For an [AutoRefreshingAuthClient] created by this package, the
  /// credentials are refreshed first if they have expired. Call this method
  /// for each request (or reconnect) rather than caching the result.
  ///
  /// The `x-goog-api-client` telemetry header that `send()` adds is not
  /// included: callers should set their own.
  ///
  /// For an [AuthClient] implemented outside this package, including one
  /// that wraps a client of this package, the result is built from
  /// [AuthClient.credentials] and contains only `authorization`. It cannot
  /// refresh expired credentials.
  Future<Map<String, String>> requestHeaders() async {
    if (this case final RequestHeadersSource source) {
      return source.requestHeaders();
    }
    return requestHeadersFor(credentials, null);
  }
}
