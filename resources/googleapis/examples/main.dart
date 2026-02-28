// Copyright 2019 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

// This example demonstrates usage for a Dart command line application.
//
// For details of how to use this package in Flutter, see
// https://flutter.dev/docs/development/data-and-backend/google-apis

import 'package:googleapis/storage/v1.dart';
import 'package:googleapis_auth/auth_io.dart';

Future<void> main() async {
  final httpClient = await clientViaApplicationDefaultCredentials(
    scopes: [StorageApi.devstorageReadOnlyScope],
  );
  try {
    final storage = StorageApi(httpClient);

    final buckets = await storage.buckets.list('dart-on-cloud');
    final items = buckets.items!;
    print('Received ${items.length} bucket names:');
    for (var file in items) {
      print(file.name);
    }
  } finally {
    httpClient.close();
  }
}
