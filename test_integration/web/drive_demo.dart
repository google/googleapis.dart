// A solution for https://github.com/google/googleapis.dart/issues/366

import 'dart:async';
import 'dart:convert';
import 'dart:html';
import 'dart:typed_data';

import 'package:googleapis/drive/v3.dart' as drive;
import 'package:googleapis_auth/auth_browser.dart';

const _clientId = String.fromEnvironment('clientId');

late final BrowserOAuth2Flow _flow;

final _textArea = querySelector('textarea') as TextAreaElement;

final _loginButton = querySelector('#login') as ButtonElement;
final _uploadButton = querySelector('#upload') as FileUploadInputElement;

AutoRefreshingAuthClient? _client;

Future<void> main() async {
  _flow = await createImplicitBrowserFlow(
    ClientId(_clientId),
    [drive.DriveApi.driveFileScope],
  );

  _loginButton.onClick.listen((_) => _login());
  _uploadButton.onInput.listen((_) => _upload());
}

Future<void> _login() async {
  _client = await _flow.clientViaUserConsent();

  _loginButton.disabled = _client != null;
  _uploadButton.disabled = _client == null;

  _log([
    'logged in!',
    jsonEncode(_client!.credentials),
  ].join('\n'));
}

Future<void> _upload() async {
  final files = _uploadButton.files;

  if (files == null) {
    _log('no file!');
    return;
  }

  final api = drive.DriveApi(_client!).files;
  final options = drive.UploadOptions.resumable;
  final file = files.single;

  final newFile = await api.create(
    drive.File(name: 'Google APIs test file on ${DateTime.now()}'),
    uploadMedia: drive.Media(file.read(options.chunkSize), file.size),
    uploadOptions: options,
  );

  _log(jsonEncode(newFile));
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
      print('Finished $loaded of $size - ${loaded / size}');
    }
  }
}
