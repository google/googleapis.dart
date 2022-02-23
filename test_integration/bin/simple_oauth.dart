// Copyright (c) 2021, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:async';

import 'package:googleapis/oauth2/v2.dart';
import 'package:test_integration/shared.dart';
import 'package:test_integration/test_integration.dart';

Future<void> main() async {
  await withClientFromUserCredentials(
    ['profile'],
    (client) async {
      if (!client.credentials.scopes.contains(Oauth2Api.userinfoProfileScope)) {
        print('credentials we ended up with: ${client.credentials.scopes}');
        throw StateError('"profile" should be "upgraded" to the oauth scope');
      }

      final api = Oauth2Api(client).userinfo;

      final result = await api.v2.me.get();

      print(prettyJsonEncode(result));
    },
  );
}
