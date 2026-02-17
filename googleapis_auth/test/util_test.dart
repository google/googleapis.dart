// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

@Timeout(Duration(seconds: 2))
library;

import 'dart:convert';

import 'package:googleapis_auth/src/utils.dart';
import 'package:http/http.dart';
import 'package:test/test.dart';

import 'test_utils.dart';

void main() {
  test('requestJson throws for non-UTF-8 response', () async {
    const body = [
      // https://man7.org/linux/man-pages/man7/utf-8.7.html
      // 0xC0 is never used in UTF8-encoding!
      0xC0,
    ];
    final client = mockClient(
      (request) async => Response.bytes(body, 200, headers: jsonContentType),
      expectClose: false,
    );

    await expectLater(
      client.requestJson('GET', Uri.parse('localhost:8080'), 'bob'),
      throwsA(
        isServerRequestFailedException
            .having(
              (e) => e.message,
              'message',
              contains('The response was not valid UTF-8.'),
            )
            .having((e) => e.responseContent, 'responseContent', body),
      ),
    );
  });

  test('requestJson throws for non-JSON response', () async {
    const body = 'this is not good json!';
    final client = mockClient(
      (request) async => Response(body, 200, headers: jsonContentType),
      expectClose: false,
    );

    await expectLater(
      client.requestJson('GET', Uri.parse('localhost:8080'), 'bob'),
      throwsA(
        isServerRequestFailedException
            .having(
              (e) => e.message,
              'message',
              contains('Could not decode the response as JSON.'),
            )
            .having((e) => e.responseContent, 'responseContent', body),
      ),
    );
  });

  test('requestJson throws for JSON that is not a Map', () async {
    final body = <void>[];
    final client = mockClient(
      (request) async =>
          Response(jsonEncode(body), 200, headers: jsonContentType),
      expectClose: false,
    );

    await expectLater(
      client.requestJson('GET', Uri.parse('localhost:8080'), 'bob'),
      throwsA(
        isServerRequestFailedException
            .having(
              (e) => e.message,
              'message',
              'The returned JSON response was not a Map.',
            )
            .having((e) => e.responseContent, 'responseContent', body),
      ),
    );
  });

  test('requestJson throws for non-200 status code', () async {
    final client = mockClient(
      (request) async =>
          Response(jsonEncode({}), 500, headers: jsonContentType),
      expectClose: false,
    );

    await expectLater(
      client.requestJson('GET', Uri.parse('localhost:8080'), 'bob'),
      throwsA(
        isServerRequestFailedException.having(
          (e) => e.statusCode,
          'statusCode',
          500,
        ),
      ),
    );
  });
}
