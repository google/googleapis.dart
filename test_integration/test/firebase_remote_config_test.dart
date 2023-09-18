// Copyright (c) 2021, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Validating the fix related to
// https://github.com/google/googleapis.dart/issues/211

import 'package:googleapis/firebaseremoteconfig/v1.dart';
import 'package:test/test.dart';
import 'package:test_integration/test_integration.dart';

void main() {
  test('firestore', () async {
    await withClientFromDefaultCredentials(
        [FirebaseRemoteConfigApi.cloudPlatformScope], (client) async {
      final firestore = FirebaseRemoteConfigApi(client);
      final documents = await firestore.projects.remoteConfig.downloadDefaults(
        'projects/${readConfig('project_name')}',
        format: 'json',
      );

      expect(documents, isNotEmpty);
    });
  });
}
