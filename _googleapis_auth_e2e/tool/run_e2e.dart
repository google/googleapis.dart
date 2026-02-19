import 'dart:convert';
import 'dart:io';

Future<void> main() async {
  // 1. Check for credentials
  // TODO: better check?
  final creds = Platform.environment['GOOGLE_APPLICATION_CREDENTIALS'];
  if (creds == null &&
      !File(
        '${Platform.environment['HOME']}/.config/gcloud/application_default_credentials.json',
      ).existsSync()) {
    print('WARNING: No Application Default Credentials found.');
    print('  Run: gcloud auth application-default login');
  }

  // 2. Start server
  print('Starting server...');
  final serverProcess = await Process.start(
    'dart',
    ['bin/server.dart'],
    mode: ProcessStartMode.detachedWithStdio,
    environment: {
      'PORT': '8080', // google_cloud uses this
    },
  );

  // Pipe server output to stdout/stderr
  serverProcess.stdout.transform(utf8.decoder).listen(stdout.write);
  serverProcess.stderr.transform(utf8.decoder).listen(stderr.write);

  // Wait for server to start (naive check)
  // In a real scenario, we might want to poll the health check
  await Future<void>.delayed(const Duration(seconds: 2));

  try {
    // 3. Run tests
    print('Running tests...');
    final testResult = await Process.start(
      'dart',
      ['test'],
      environment: {'E2E_URL': 'http://localhost:8080'},
      mode: ProcessStartMode.inheritStdio,
    );

    final exitCode = await testResult.exitCode;
    if (exitCode != 0) {
      print('Tests failed.');
      exit(exitCode);
    } else {
      print('Tests passed!');
    }
  } finally {
    // 4. Kill server
    print('Stopping server...');
    serverProcess.kill();
  }
}
