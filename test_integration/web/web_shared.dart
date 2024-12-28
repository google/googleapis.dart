import 'package:googleapis_auth/auth_browser.dart';
import 'package:web/web.dart';

const _clientId = String.fromEnvironment('clientId');

ClientId clientId() {
  if (_clientId.isEmpty) {
    throw StateError('Run the server using `tool/run_server.dart`!');
  }
  return ClientId(_clientId);
}

final _textArea = document.querySelector('textarea') as HTMLTextAreaElement;

void logToTextArea(Object value) {
  _textArea.text = '$value\n\n\n${_textArea.textContent!}';
}
