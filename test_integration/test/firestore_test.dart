// Copyright (c) 2021, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Validating the fix related to
// https://github.com/google/googleapis.dart/issues/211

import 'package:googleapis/firestore/v1.dart';
import 'package:test/test.dart';
import 'package:test_integration/test_integration.dart';

void main() {
  test('firestore', () async {
    await withClientFromDefaultCredentials([FirestoreApi.datastoreScope],
        (client) async {
      final firestore = FirestoreApi(client);
      final _documents = firestore.projects.databases.documents;

      final input = Document(
        fields: {
          'places': Value(nullValue: 'NULL_VALUE'),
        },
      );

      print(prettyJsonEncode(input));
      final document = await _documents.patch(
        input,
        '$_documentsPath/googleapis_integration_test/test_document_id',
      );

      print(prettyJsonEncode(document));
    });
  });
}

String get _databaseId =>
    'projects/${readConfig('project_name')}/databases/(default)';

String get _documentsPath => '$_databaseId/documents';
