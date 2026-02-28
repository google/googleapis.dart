// Copyright 2021 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

/// Represents the client application's credentials.
class ClientId {
  /// The client ID that you obtain from the API Console
  /// [Credentials page](https://console.developers.google.com/apis/credentials),
  /// as described in
  /// [Obtain OAuth 2.0 credentials](https://developers.google.com/identity/protocols/oauth2/openid-connect#getcredentials).
  final String identifier;

  /// The client secret used to identify this application to the server.
  final String? secret;

  ClientId(this.identifier, [this.secret]);

  ClientId.serviceAccount(this.identifier) : secret = null;

  factory ClientId.fromJson(Map<String, dynamic> json) =>
      ClientId(json['identifier'] as String, json['secret'] as String?);

  Map<String, dynamic> toJson() => {
    'identifier': identifier,
    if (secret != null) 'secret': secret,
  };
}
