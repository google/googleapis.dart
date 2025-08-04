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
