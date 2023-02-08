// Copyright (c) 2021, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Validating the fix related to
// https://github.com/google/googleapis.dart/issues/211

import 'package:googleapis/firestore/v1.dart';
import 'package:test/test.dart';
import 'package:test_integration/shared.dart';
import 'package:test_integration/test_integration.dart';

void main() {
  test('firestore NULL_VALUE', () async {
    await withClientFromDefaultCredentials([FirestoreApi.datastoreScope],
        (client) async {
      final firestore = FirestoreApi(client);
      final documents = firestore.projects.databases.documents;

      final input = Document(
        fields: {
          'places': Value(nullValue: 'NULL_VALUE'),
        },
      );

      print(prettyJsonEncode(input));
      final document = await documents.patch(
        input,
        '$_documentsPath/googleapis_integration_test/test_document_id',
      );

      print(prettyJsonEncode(document));
    });
  });

  // google/googleapis.dart#504
  test('firestore documents.batchGet', () async {
    await withClientFromDefaultCredentials([FirestoreApi.datastoreScope],
        (client) async {
      final firestore = FirestoreApi(client);
      final documents = firestore.projects.databases.documents;

      final input = Document(
        fields: {
          'places': Value(nullValue: 'NULL_VALUE'),
        },
      );

      print(prettyJsonEncode(input));
      final document = await documents.createDocument(
        input,
        _documentsPath,
        'googleapis_integration_test',
      );

      print(prettyJsonEncode(document));

      final result = await documents.batchGet(
        BatchGetDocumentsRequest(documents: [document.name!]),
        _databaseId,
      );

      print(prettyJsonEncode(result));
    });
  });
}

String get _databaseId =>
    'projects/${readConfig('project_name')}/databases/(default)';

String get _documentsPath => '$_databaseId/documents';
