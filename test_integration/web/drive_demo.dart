// A solution for https://github.com/google/googleapis.dart/issues/366

import 'dart:async';
import 'dart:convert';
import 'dart:html';
import 'dart:typed_data';

import 'package:googleapis/drive/v3.dart' as drive;
import 'package:googleapis_auth/auth_browser.dart';
import 'package:http/browser_client.dart';

import 'web_shared.dart';

final _textArea = querySelector('textarea') as TextAreaElement;

final _loginButton = querySelector('#login') as ButtonElement;
final _uploadInput = querySelector('#upload') as FileUploadInputElement;

AccessCredentials? _credentials;

Future<void> main() async {
  _loginButton.onClick.listen((_) => _login());
  _uploadInput.onInput.listen((_) => _upload());
}

Future<void> _login() async {
  try {
    _credentials = await requestAccessCredentials(
      clientId: clientId().identifier,
      prompt: 'consent',
      scopes: [drive.DriveApi.driveFileScope],
      // ignore: deprecated_member_use
      logLevel: 'debug',
    );
  } on AuthenticationException catch (e) {
    _log(e.error);
    return;
  }

  _loginButton.disabled = _credentials != null;
  _uploadInput.disabled = _credentials == null;

  _log([
    'logged in!',
    jsonEncode(_credentials),
  ].join('\n'));
}

Future<void> _upload() async {
  final files = _uploadInput.files;

  if (files == null) {
    _log('no file!');
    return;
  }

  final client = authenticatedClient(
    BrowserClient(),
    _credentials!,
    closeUnderlyingClient: true,
  );

  try {
    final api = drive.DriveApi(client).files;
    final options = drive.UploadOptions.resumable;
    final file = files.single;

    _log('starting upload');

    final newFile = await api.create(
      drive.File(name: 'Google APIs test file on ${DateTime.now()}'),
      uploadMedia: drive.Media(file.read(options.chunkSize), file.size),
      uploadOptions: options,
    );

    _log(jsonEncode(newFile));
  } finally {
    client.close();
  }
}

void _log(Object value) {
  _textArea.text = '$value\n\n\n${_textArea.text!}';
}

extension on File {
  Stream<Uint8List> read(int chunkSize) async* {
    if (chunkSize <= 0) {
      throw ArgumentError();
    }
    final reader = FileReader();
    // TODO: should have some error handling on reader!!
    var loaded = 0;
    while (loaded < size) {
      final blob = slice(loaded, loaded + chunkSize);
      assert(blob.size > 0);
      reader.readAsArrayBuffer(blob);
      await reader.onLoadEnd.first;
      final bytes = reader.result as Uint8List;
      loaded += bytes.length;
      yield bytes;
      _log(
        'Finished $loaded of $size - '
        '${(100 * loaded / size).toStringAsFixed(2)}%',
      );
    }
  }
}
