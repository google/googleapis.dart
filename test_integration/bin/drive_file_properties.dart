// Copyright 2021 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

// A very simple demo excising the code paths related to
// https://github.com/google/googleapis.dart/issues/200

import 'dart:async';

import 'package:googleapis/drive/v3.dart';
import 'package:test_integration/shared.dart';
import 'package:test_integration/test_integration.dart';

Future<void> main() async {
  await withClientFromUserCredentials([DriveApi.driveScope], (client) async {
    final api = DriveApi(client).files;

    final newFile = await api.create(
      File(name: 'Google APIs test file on ${DateTime.now()}'),
    );

    print(prettyJsonEncode(newFile));

    final fileId = newFile.id!;

    Future<void> printProperties() async {
      final newFileResponse = await api.get(fileId, $fields: '*') as File;

      print('properties: ${newFileResponse.properties}');
    }

    await printProperties();

    print(
      prettyJsonEncode(
        await api.update(File(properties: {'bob': 'nice'}), fileId),
      ),
    );

    await printProperties();

    print(
      prettyJsonEncode(
        await api.update(
          File(
            // Verifies fix to https://github.com/google/googleapis.dart/issues/79
            viewedByMeTime: DateTime.now(),
            properties: {'bob': null, 'wynette': 'nice'},
          ),
          fileId,
        ),
      ),
    );

    await printProperties();

    await api.delete(fileId);
    print('all deleted');
  });
}
