import 'dart:html';

import 'package:googleapis_auth/auth_browser.dart';

const _clientId = String.fromEnvironment('clientId');

ClientId clientId() {
  if (_clientId.isEmpty) {
    throw StateError('Run the server using `tool/run_server.dart`!');
  }
  return ClientId(_clientId);
}

final _textArea = querySelector('textarea') as TextAreaElement;

void logToTextArea(Object value) {
  _textArea.text = '$value\n\n\n${_textArea.text!}';
}
