// Copyright 2021 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

import 'dart:convert';

import 'package:googleapis_auth/googleapis_auth.dart';
import 'package:test/test.dart';

AccessCredentials _makeCreds({
  String universeDomain = defaultUniverseDomain,
  String? refreshToken = 'refreshToken',
  String? idToken = 'idToken',
}) => AccessCredentials(
  AccessToken('type', 'data', DateTime.utc(2026)),
  refreshToken,
  ['scope1'],
  idToken: idToken,
  universeDomain: universeDomain,
);

void main() {
  test('AccessCredentials round-trip', () {
    final credentials = _makeCreds();
    final encoded = jsonEncode(credentials);
    final decodedMap = jsonDecode(encoded) as Map<String, dynamic>;
    final decoded = AccessCredentials.fromJson(decodedMap);

    expect(decoded.refreshToken, 'refreshToken');
    expect(decoded.idToken, 'idToken');
    expect(decoded.scopes, ['scope1']);
    expect(decoded.universeDomain, 'googleapis.com');
    expect(decoded.accessToken.expiry, credentials.accessToken.expiry);
    expect(decoded.accessToken.data, credentials.accessToken.data);
    expect(decoded.accessToken.type, credentials.accessToken.type);
    expect(decodedMap, isNot(contains('universeDomain')));
    expect(jsonEncode(decoded), encoded);
  });

  test('AccessCredentials round-trip with custom universeDomain', () {
    final credentials = _makeCreds(universeDomain: 's3nsapis.fr');
    final encoded = jsonEncode(credentials);
    final decodedMap = jsonDecode(encoded) as Map<String, dynamic>;
    expect(decodedMap['universeDomain'], 's3nsapis.fr');

    final decoded = AccessCredentials.fromJson(decodedMap);
    expect(decoded.universeDomain, 's3nsapis.fr');
    expect(jsonEncode(decoded), encoded);
  });

  test('AccessCredentials normalizes and validates universeDomain', () {
    final upperDefault = _makeCreds(
      universeDomain: 'GOOGLEAPIS.COM',
      refreshToken: null,
      idToken: null,
    );
    expect(upperDefault.universeDomain, 'googleapis.com');
    final decodedBase =
        jsonDecode(jsonEncode(upperDefault)) as Map<String, dynamic>;
    expect(decodedBase, isNot(contains('universeDomain')));

    expect(
      AccessCredentials.fromJson({
        ...decodedBase,
        'universeDomain': 'S3NSAPIS.FR',
      }).universeDomain,
      's3nsapis.fr',
    );

    for (final invalid in ['   ', 'googleapis.com@evil.com']) {
      expect(
        () => _makeCreds(universeDomain: invalid),
        throwsA(
          isArgumentError.having(
            (e) => e.message,
            'message',
            contains('Invalid universe domain'),
          ),
        ),
        reason: 'Should reject "$invalid"',
      );
    }

    expect(
      () => AccessCredentials.fromJson({...decodedBase, 'universeDomain': 123}),
      throwsA(
        isArgumentError.having((e) => e.message, 'message', contains('String')),
      ),
    );
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
