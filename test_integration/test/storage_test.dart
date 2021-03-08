// Copyright (c) 2021, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:async';
import 'dart:math';

import 'package:googleapis/storage/v1.dart';
import 'package:test/test.dart';
import 'package:test_integration/test_integration.dart';

final _bucketName = readConfig('storage_bucket') as String;
const _fileName = 'upload1.txt';

void main() {
  final random = Random();

  late List<int> sampleContent;

  setUp(() {
    sampleContent = List.generate(1024 * 1024, (i) => random.nextInt(256));
  });

  test(
    'upload, download',
    () async {
      await withClientFromDefaultCredentials(
          [StorageApi.devstorageReadOnlyScope], (client) async {
        final storageApi = StorageApi(client);
        await _upload(storageApi, sampleContent);
        await _verify(storageApi, sampleContent);
      });
    },
  );

  test('upload chunked, download', () async {
    await withClientFromDefaultCredentials([StorageApi.devstorageReadOnlyScope],
        (client) async {
      final storageApi = StorageApi(client);
      await _uploadChunked(storageApi, sampleContent);
      await _verify(storageApi, sampleContent);
    });
  });
}

Future<void> _upload(StorageApi storageApi, List<int> sampleContent) async {
  final bucket = await storageApi.buckets.get(_bucketName);

  expect(bucket.name, _bucketName);

  final uploadObject = Object()..name = _fileName;

  final result = await storageApi.objects.insert(
    uploadObject,
    _bucketName,
    uploadMedia: Media(
      Stream.fromIterable([sampleContent]),
      sampleContent.length,
    ),
  );

  expect(result.name, _fileName);
  expect(result.size, sampleContent.length.toString());
}

Future<void> _uploadChunked(
  StorageApi storageApi,
  List<int> sampleContent,
) async {
  final bucket = await storageApi.buckets.get(_bucketName);

  expect(bucket.name, _bucketName);

  final uploadObject = Object()..name = _fileName;

  final result = await storageApi.objects.insert(
    uploadObject,
    _bucketName,
    uploadMedia: Media(
      Stream.fromIterable([sampleContent]),
      sampleContent.length,
    ),
    uploadOptions: ResumableUploadOptions(chunkSize: 256 * 1024),
  );

  expect(result.name, _fileName);
  expect(result.size, sampleContent.length.toString());
}

Future<void> _verify(StorageApi storageApi, List<int> sampleContent) async {
  final metadata =
      await storageApi.objects.get(_bucketName, _fileName) as Object;

  expect(metadata.name, _fileName);
  expect(metadata.size, sampleContent.length.toString());

  final download = await storageApi.objects.get(
    _bucketName,
    _fileName,
    downloadOptions: DownloadOptions.fullMedia,
  ) as Media;

  expect(download.length, sampleContent.length);

  final text = await download.stream.fold<List<int>>(
    <int>[],
    (previous, element) => previous..addAll(element),
  );

  expect(text, sampleContent);
}
