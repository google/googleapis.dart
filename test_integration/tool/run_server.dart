// Copyright 2021 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

import 'dart:io';

import 'package:test_integration/test_integration.dart';

Future<void> main() async {
  final clientId = openClientId();

  final proc = await Process.start(Platform.resolvedExecutable, [
    'run',
    'build_runner',
    'serve',
    'web',
    '--define=build_web_compilers:ddc=environment='
        '{"clientId":"${clientId.identifier}"}',
    // TODO: file a bug on build_web_compilers. not sure why this doesn't
    // work!!
    //'--define=build_web_compilers:dart2wasm=environment='
    //    '{"clientId":"${clientId.identifier}"}',
    '--verbose',
  ], mode: ProcessStartMode.inheritStdio);

  exitCode = await proc.exitCode;
}
