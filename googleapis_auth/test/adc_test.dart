// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

@TestOn('vm')
library;

import 'dart:convert';
import 'dart:io';

import 'package:googleapis_auth/src/adc_utils.dart'
    show fromApplicationsCredentialsFile;
import 'package:googleapis_auth/src/known_uris.dart';
import 'package:http/http.dart';
import 'package:test/test.dart';
import 'package:test_descriptor/test_descriptor.dart' as d;

import 'test_utils.dart';

void main() {
  test('authorized_user credentials', () async {
    await d
        .file(
          'creds.json',
          json.encode({
            'client_id': 'id',
            'client_secret': 'secret',
            'refresh_token': 'refresh',
            'type': 'authorized_user',
          }),
        )
        .create();

    final c = await fromApplicationsCredentialsFile(
      File(d.path('creds.json')),
      'test-credentials-file',
      [],
      mockClient((Request request) async {
        final url = request.url;
        if (url == googleOauth2TokenEndpoint) {
          expect(request.method, 'POST');
          expect(
            request.body,
            'client_id=id&'
            'client_secret=secret&'
            'refresh_token=refresh&'
            'grant_type=refresh_token',
          );
          final body = jsonEncode({
            'token_type': 'Bearer',
            'access_token': 'atoken',
            'expires_in': 3600,
          });
          return Response(body, 200, headers: jsonContentType);
        }
        if (url.toString() == 'https://storage.googleapis.com/b/bucket/o/obj') {
          expect(request.method, 'GET');
          expect(
            request.headers,
            containsPair('Authorization', 'Bearer atoken'),
          );
          expect(request.headers, isNot(contains('X-Goog-User-Project')));
          return Response('hello world', 200);
        }
        return Response('bad', 404);
      }),
    );
    expect(c.credentials.accessToken.data, 'atoken');

    final r = await c.get(
      Uri.https('storage.googleapis.com', '/b/bucket/o/obj'),
    );
    expect(r.statusCode, 200);
    expect(r.body, 'hello world');

    c.close();
  });

  test('authorized_user credentials with quota_project_id', () async {
    await d
        .file(
          'creds.json',
          json.encode({
            'client_id': 'id',
            'client_secret': 'secret',
            'refresh_token': 'refresh',
            'type': 'authorized_user',
            'quota_project_id': 'project',
          }),
        )
        .create();

    final c = await fromApplicationsCredentialsFile(
      File(d.path('creds.json')),
      'test-credentials-file',
      [],
      mockClient((Request request) async {
        final url = request.url;
        if (url == googleOauth2TokenEndpoint) {
          expect(request.method, 'POST');
          expect(
            request.body,
            'client_id=id&'
            'client_secret=secret&'
            'refresh_token=refresh&'
            'grant_type=refresh_token',
          );
          final body = jsonEncode({
            'token_type': 'Bearer',
            'access_token': 'atoken',
            'expires_in': 3600,
          });
          return Response(body, 200, headers: jsonContentType);
        }
        if (url.toString() == 'https://storage.googleapis.com/b/bucket/o/obj') {
          expect(request.method, 'GET');
          expect(
            request.headers,
            containsPair('Authorization', 'Bearer atoken'),
          );
          expect(
            request.headers,
            containsPair('X-Goog-User-Project', 'project'),
          );
          return Response('hello world', 200);
        }
        return Response('bad', 404);
      }),
    );
    expect(c.credentials.accessToken.data, 'atoken');

    final r = await c.get(
      Uri.https('storage.googleapis.com', '/b/bucket/o/obj'),
    );
    expect(r.statusCode, 200);
    expect(r.body, 'hello world');

    c.close();
  });
}
