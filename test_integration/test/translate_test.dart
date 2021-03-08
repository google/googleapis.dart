// Copyright (c) 2021, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:googleapis/translate/v3.dart';
import 'package:test/test.dart';
import 'package:test_integration/test_integration.dart';

void main() {
  test('translate test', () async {
    await withClientFromDefaultCredentials([TranslateApi.cloudTranslationScope],
        (client) async {
      final api = TranslateApi(client).projects;

      final input = [
        'Hello, world!',
        'Where is the bathroom?',
        'Nice to meet you.'
      ];

      final result = await api.translateText(
        TranslateTextRequest()
          ..contents = input
          ..targetLanguageCode = 'es',
        'projects/${readConfig('project_name')}',
      );

      print(prettyJsonEncode(result));

      expect(
        result.translations!.map((e) => e.detectedLanguageCode!),
        everyElement('en'),
      );

      expect(result.translations, hasLength(input.length));

      for (var i = 0; i < result.translations!.length; i++) {
        print(
          [input[i].padRight(25), result.translations![i].translatedText]
              .join(' '),
        );
      }
    });
  });
}
