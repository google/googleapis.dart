// Copyright (c) 2021, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:async';
import 'dart:convert';

import 'package:googleapis/oauth2/v2.dart';
import 'package:test_integration/test_integration.dart';

Future<void> main() async {
  await withClientFromUserCredentials(
    [Oauth2Api.userinfoProfileScope],
    (client) async {
      final api = Oauth2Api(client).userinfo;

      final result = await api.v2.me.get();

      print(const JsonEncoder.withIndent(' ').convert(result));
    },
  );
}
