// Copyright 2021 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

import 'dart:async';

import 'package:googleapis/oauth2/v2.dart';
import 'package:test_integration/shared.dart';
import 'package:test_integration/test_integration.dart';

Future<void> main() async {
  await withClientFromUserCredentials(['profile'], (client) async {
    if (!client.credentials.scopes.contains(Oauth2Api.userinfoProfileScope)) {
      print('credentials we ended up with: ${client.credentials.scopes}');
      throw StateError('"profile" should be "upgraded" to the oauth scope');
    }

    final api = Oauth2Api(client).userinfo;

    final result = await api.v2.me.get();

    print(prettyJsonEncode(result));
  });
}
