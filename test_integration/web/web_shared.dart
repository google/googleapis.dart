// Copyright 2022 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

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
  _textArea.textContent = '$value\n\n\n${_textArea.textContent!}';
}
