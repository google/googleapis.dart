import 'dart:convert';
import 'dart:html';

import 'package:googleapis/oauth2/v2.dart';
import 'package:googleapis_auth/auth_browser.dart';

const _clientId = String.fromEnvironment('clientId');

late final BrowserOAuth2Flow _flow;

final _textArea = querySelector('textarea') as TextAreaElement;

Future<void> main() async {
  _flow = await createImplicitBrowserFlow(
    ClientId(_clientId),
    [Oauth2Api.userinfoProfileScope],
  );

  (querySelector('#hybrid_flow') as ButtonElement)
      .onClick
      .listen((_) => _hybridFlow());

  (querySelector('#login') as ButtonElement).onClick.listen((_) => _login());
}

Future<void> _hybridFlow() async {
  final creds = await _flow.runHybridFlow();

  _log([
    'cred json',
    const JsonEncoder.withIndent(' ').convert(creds.credentials),
    '',
    'auth code',
    creds.authorizationCode,
  ].join('\n'));
}

Future<void> _login() async {
  final creds = await _flow.obtainAccessCredentialsViaUserConsent(
    responseTypes: [
      ResponseType.code,
      ResponseType.idToken,
      ResponseType.permission
    ],
  );

  _log([
    'cred json',
    const JsonEncoder.withIndent(' ').convert(creds),
  ].join('\n'));
}

void _log(String value) {
  _textArea.text = value;
}
