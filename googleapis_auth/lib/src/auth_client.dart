// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:http/http.dart';

import '../auth_io.dart';

/// A authenticated HTTP client.
abstract class AuthClient implements Client {
  /// The credentials currently used for making HTTP requests.
  AccessCredentials get credentials;

  /// The service account credentials used to create this client, if any.
  ///
  /// Returns `null` if this client was not created via
  /// [clientViaServiceAccount] or if the underlying credentials are not
  /// service account credentials.
  ServiceAccountCredentials? get serviceAccountCredentials;
}

/// A auto-refreshing, authenticated HTTP client.
abstract class AutoRefreshingAuthClient implements AuthClient {
  /// A broadcast stream of [AccessCredentials].
  ///
  /// A listener will get notified when new [AccessCredentials] were obtained.
  Stream<AccessCredentials> get credentialUpdates;
}
