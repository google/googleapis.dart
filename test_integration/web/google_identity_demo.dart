import 'dart:html' show ButtonElement, querySelector;

import 'package:googleapis_auth/auth_browser.dart';

import 'web_shared.dart';

String? _accessToken;

final _revokeButton = querySelector('#revoke') as ButtonElement;

void main() {
  final loginButton = querySelector('#login') as ButtonElement;
  loginButton.onClick.listen((event) => _login());

  final loginCodeButton = querySelector('#loginCode') as ButtonElement;
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

  logToTextArea([
    response.accessToken.toJson(),
    response.scopes,
  ].join('\n'));

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

  logToTextArea([
    response.code,
    response.scopes,
  ].join('\n'));
}
