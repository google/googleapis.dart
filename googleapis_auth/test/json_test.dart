// Copyright 2021 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

import 'dart:convert';

import 'package:googleapis_auth/googleapis_auth.dart';
import 'package:test/test.dart';

void main() {
  test('AccessCredentials round-trip', () {
    final credentials = AccessCredentials(
      AccessToken('type', 'data', DateTime.now().toUtc()),
      'refreshToken',
      ['scope1'],
      idToken: 'idToken',
    );

    final encoded = jsonEncode(credentials);

    final decoded = AccessCredentials.fromJson(
      jsonDecode(encoded) as Map<String, dynamic>,
    );

    expect(decoded.refreshToken, 'refreshToken');
    expect(decoded.idToken, 'idToken');
    expect(decoded.scopes, ['scope1']);
    expect(decoded.universeDomain, 'googleapis.com');
    expect(decoded.accessToken.expiry, credentials.accessToken.expiry);
    expect(decoded.accessToken.data, credentials.accessToken.data);
    expect(decoded.accessToken.type, credentials.accessToken.type);

    final decodedMap = jsonDecode(encoded) as Map<String, dynamic>;
    expect(decodedMap, isNot(contains('universeDomain')));
    expect(jsonEncode(decoded), encoded);
  });

  test('AccessCredentials round-trip with custom universeDomain', () {
    final credentials = AccessCredentials(
      AccessToken('type', 'data', DateTime.now().toUtc()),
      'refreshToken',
      ['scope1'],
      idToken: 'idToken',
      universeDomain: 's3nsapis.fr',
    );

    final encoded = jsonEncode(credentials);
    final decodedMap = jsonDecode(encoded) as Map<String, dynamic>;
    expect(decodedMap['universeDomain'], 's3nsapis.fr');

    final decoded = AccessCredentials.fromJson(decodedMap);
    expect(decoded.universeDomain, 's3nsapis.fr');
    expect(jsonEncode(decoded), encoded);
  });

  test('ClientId round-trip', () {
    final clientId = ClientId('identifier', 'secret');

    final encoded = jsonEncode(clientId);

    final decoded = ClientId.fromJson(
      jsonDecode(encoded) as Map<String, dynamic>,
    );

    expect(decoded.identifier, clientId.identifier);
    expect(decoded.secret, clientId.secret);

    expect(jsonEncode(decoded), encoded);
  });
}
