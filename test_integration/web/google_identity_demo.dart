// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:googleapis_auth/auth_browser.dart';
import 'package:web/web.dart'
    show ElementEventGetters, HTMLButtonElement, document;

import 'web_shared.dart';

String? _accessToken;

final _revokeButton = document.querySelector('#revoke') as HTMLButtonElement;

void main() {
  final loginButton = document.querySelector('#login') as HTMLButtonElement;
  loginButton.onClick.listen((event) => _login());

  final loginCodeButton =
      document.querySelector('#loginCode') as HTMLButtonElement;
  loginCodeButton.onClick.listen((event) => _loginCode());

  _revokeButton.onClick.listen((event) async {
    if (_accessToken == null) return;

    await revokeConsent(_accessToken!);

    _accessToken = null;
  });
}

Future<void> _login() async {
  final response = await requestAccessCredentials(
    clientId: clientId().identifier,
    scopes: ['openid', 'email'],
    prompt: 'consent',
    // ignore: deprecated_member_use
    logLevel: 'debug',
  );

  logToTextArea([response.accessToken.toJson(), response.scopes].join('\n'));

  _accessToken = response.accessToken.data;

  _revokeButton.disabled = false;
}

Future<void> _loginCode() async {
  final response = await requestAuthorizationCode(
    clientId: clientId().identifier,
    scopes: ['openid', 'email'],
    // ignore: deprecated_member_use
    logLevel: 'debug',
  );

  logToTextArea([response.code, response.scope].join('\n'));
}
