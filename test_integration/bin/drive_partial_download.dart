// Copyright (c) 2021, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// A very simple demo excising the code paths related to
// https://github.com/google/googleapis.dart/issues/462

import 'dart:async';
import 'dart:math';

import 'package:googleapis/drive/v3.dart';
import 'package:test_integration/shared.dart';
import 'package:test_integration/test_integration.dart';

const _blockSize = 64;
final _rnd = Random();

Stream<List<int>> _createBytes(int count) async* {
  var bytes = <int>[];

  while (count > 0) {
    bytes.add(_rnd.nextInt(256));
    count--;

    if (bytes.length == _blockSize) {
      yield bytes;
      bytes = <int>[];
    }
  }

  if (bytes.isNotEmpty) {
    yield bytes;
  }
}

Future<void> main() async {
  await withClientFromUserCredentials(
    [
      DriveApi.driveScope,
    ],
    (client) async {
      final api = DriveApi(client).files;

      final newFile = await api.create(
        File(name: 'Google APIs test file on ${DateTime.now()}'),
        uploadMedia: Media(_createBytes(1024), 1024),
      );

      print(prettyJsonEncode(newFile));

      final fileId = newFile.id!;

      Future<void> printProperties() async {
        final newFileResponse = await api.get(fileId, $fields: '*') as File;

        print('properties: ${newFileResponse.properties}');
        print('      size: ${newFileResponse.size}');
      }

      await printProperties();

      final things = await api.get(
        fileId,
        downloadOptions: PartialDownloadOptions(ByteRange(0, 10)),
      ) as Media;

      print(things.length);

      await api.delete(fileId);
      print('all deleted');
    },
  );
}
