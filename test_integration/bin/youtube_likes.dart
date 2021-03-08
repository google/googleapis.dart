// Copyright (c) 2021, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:async';

import 'package:googleapis/youtube/v3.dart';
import 'package:test_integration/test_integration.dart';

Future<void> main() async {
  await withClientFromUserCredentials(
    [YouTubeApi.youtubeReadonlyScope],
    (client) async {
      final api = YouTubeApi(client).videos;

      final result = await api.list(
        ['snippet'],
        myRating: 'like',
      );

      for (var item in result.items!) {
        print(
          '${item.snippet!.title!.padRight(40)} https://www.youtube.com/watch?v=${item.id}',
        );
      }
    },
  );
}
