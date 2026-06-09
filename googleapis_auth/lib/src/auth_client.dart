// Copyright 2021 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

import 'package:http/http.dart';

import 'access_credentials.dart';

/// A authenticated HTTP client.
abstract class AuthClient implements Client {
  /// The credentials currently used for making HTTP requests.
  AccessCredentials get credentials;
}

/// A auto-refreshing, authenticated HTTP client.
abstract class AutoRefreshingAuthClient implements AuthClient {
  /// A broadcast stream of [AccessCredentials].
  ///
  /// A listener will get notified when new [AccessCredentials] were obtained.
  Stream<AccessCredentials> get credentialUpdates;
}
