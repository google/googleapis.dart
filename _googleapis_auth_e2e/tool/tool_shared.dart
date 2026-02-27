import 'dart:io';

/// Runs a process and throws a [ProcessException] if the exit code is non-zero.
Future<ProcessResult> runProcess(
  String executable,
  List<String> arguments, {
  String? failureMessage,
}) async {
  final result = await Process.run(executable, arguments);
  if (result.exitCode != 0) {
    if (failureMessage != null) {
      stderr.writeln(failureMessage);
    }
    stderr
      ..write(result.stderr)
      ..write(result.stdout);
    throw ProcessException(
      executable,
      arguments,
      failureMessage ?? 'Process failed with exit code ${result.exitCode}.',
      result.exitCode,
    );
  }
  return result;
}

/// Starts a process with [ProcessStartMode.inheritStdio] and throws a
/// [ProcessException] if the exit code is non-zero.
Future<void> runProcessInheritStdio(
  String executable,
  List<String> arguments, {
  Map<String, String>? environment,
  String? failureMessage,
}) async {
  final process = await Process.start(
    executable,
    arguments,
    mode: ProcessStartMode.inheritStdio,
    environment: environment,
  );
  final exitCode = await process.exitCode;
  if (exitCode != 0) {
    throw ProcessException(
      executable,
      arguments,
      failureMessage ?? 'Process failed with exit code $exitCode.',
      exitCode,
    );
  }
}
