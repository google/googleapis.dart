import 'dart:io';

import 'package:test_integration/test_integration.dart';

Future<void> main() async {
  final clientId = openClientId();

  final proc = await Process.start(
      'dart',
      [
        'run',
        'build_runner',
        'serve',
        'web',
        '--define=build_web_compilers:ddc=environment='
            '{"clientId":"${clientId.identifier}"}',
      ],
      mode: ProcessStartMode.inheritStdio);

  exitCode = await proc.exitCode;
}
