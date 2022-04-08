// Copyright (c) 2022, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:async';

import 'package:googleapis/slides/v1.dart' hide List;
import 'package:test_integration/test_integration.dart';

Future<void> main(List<String> args) async {
  final _presentationId = args.first;

  await withClientFromUserCredentials(
    [SlidesApi.presentationsReadonlyScope],
    (client) async {
      final api = SlidesApi(client).presentations;

      final result = await api.get(_presentationId);

      var count = 0;
      for (var slide in result.slides!) {
        print('*** SLIDE ${++count} ***\n');

        final elements = slide.slideProperties?.notesPage?.pageElements;
        if (elements != null) {
          for (var element in elements) {
            final text = element.shape?.text;
            if (text != null) {
              print(text.textElements!
                  .map((e) => e.textRun?.content)
                  .whereType<String>()
                  .join()
                  .trim());
            }
          }
        }
        print('');
      }
    },
  );
}
