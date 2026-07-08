// Copyright 2021 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

import 'dart:convert';
import 'dart:io';

import 'package:googleapis_auth/src/adc_utils.dart'
    show fromApplicationsCredentialsFile;
import 'package:googleapis_auth/src/known_uris.dart';
import 'package:http/http.dart';
import 'package:http/testing.dart';

Future<void> main(List<String> args) async {
  final client = await fromApplicationsCredentialsFile(
    File(args[0]),
    'test-credentials-file',
    [],
    MockClient((request) async {
      if (request.url == googleOauth2TokenEndpoint) {
        return Response(
          jsonEncode({
            'token_type': 'Bearer',
            'access_token': 'atoken',
            'expires_in': 3600,
          }),
          200,
          headers: {'content-type': 'application/json'},
        );
      }

      print(request.headers['X-Goog-User-Project'] ?? 'NONE');
      return Response('ok', 200);
    }),
  );

  await client.get(Uri.https('storage.googleapis.com', '/b/bucket/o/obj'));
  client.close();
}
