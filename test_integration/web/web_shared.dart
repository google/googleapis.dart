// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

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
