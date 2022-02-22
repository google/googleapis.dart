#!/usr/bin/env dart
// Copyright (c) 2015, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:io';

import 'package:args/args.dart';
import 'package:googleapis_generator_dependency/googleapis_generator.dart';

ArgParser _downloadCommandArgParser() => ArgParser()
  ..addOption('output-dir',
      abbr: 'o',
      help: 'Output directory of discovery documents.',
      defaultsTo: 'googleapis-discovery-documents');

ArgParser _runConfigCommandArgParser() => ArgParser()
  ..addCommand('download')
  ..addCommand('generate')
  ..addOption(
    'config-file',
    help: 'Configuration file describing package generation.',
    defaultsTo: 'config.yaml',
  )
  ..addFlag('delete-existing', defaultsTo: true);

ArgParser _globalArgParser() => ArgParser()
  ..addCommand('download', _downloadCommandArgParser())
  ..addCommand('run_config', _runConfigCommandArgParser())
  ..addFlag('help', abbr: 'h', help: 'Displays usage information.');

ArgResults _parseArguments(ArgParser parser, List<String> arguments) {
  try {
    return parser.parse(arguments);
  } on FormatException catch (e) {
    _dieWithUsage('Error parsing arguments:\n${e.message}\n');
  }
}

Never _dieWithUsage([String? message]) {
  if (message != null) {
    print(message);
  }
  print('Usage:');
  print('The discovery generator has the following sub-commands:');
  print('');
  print('  download');
  print('  run_config');
  print('');
  print("The 'download' subcommand downloads all discovery documents. "
      'It takes the following options:');
  print('');
  print(_downloadCommandArgParser().usage);
  print('');
  print("The 'run_config' subcommand downloads discovery documents and "
      'generates one or more API packages based on a configuration file. '
      'It takes the following options:');
  print('');
  print(_runConfigCommandArgParser().usage);
  exit(1);
}

Future<void> main(List<String> arguments) async {
  final parser = _globalArgParser();
  final options = _parseArguments(parser, arguments);
  final commandOptions = options.command!;
  final subCommands = ['download', 'generate', 'run_config'];

  if (options['help'] as bool) {
    _dieWithUsage();
  } else if (!subCommands.contains(commandOptions.name)) {
    _dieWithUsage('Invalid command');
  }

  switch (commandOptions.name) {
    case 'download':
      await downloadDiscoveryDocuments(commandOptions['output-dir'] as String);
      break;
    case 'run_config':
      if (commandOptions.command == null ||
          !['download', 'generate'].contains(commandOptions.command!.name)) {
        _dieWithUsage('The `run_config` command has only the two subcommands: '
            '`download` and `generate`.');
      }

      final configFile = commandOptions['config-file'] as String;
      final deleteExisting = commandOptions['delete-existing'] as bool;
      switch (commandOptions.command!.name) {
        case 'download':
          await downloadFromConfiguration(configFile);
          await _applyDiffs(configFile);
          print('Done!');
          break;
        case 'generate':
          generateFromConfiguration(
            configFile,
            deleteExisting,
          );
          print('Done');
          break;
      }
      break;
  }
}

Future<void> _applyDiffs(String configFile) async {
  final configFileUri = Uri.file(configFile);
  final overridesPath = configFileUri.resolve('overrides').path;
  final overridesType = FileSystemEntity.typeSync(overridesPath);
  if (overridesType == FileSystemEntityType.notFound) {
    print('No overrides to apply!');
    return;
  }

  if (overridesType != FileSystemEntityType.directory) {
    throw StateError(
      '"$overridesPath" should be a directory! But it is a $overridesType',
    );
  }

  print('');
  print('Applying diffs!');

  final overridesDirectory = Directory(overridesPath);
  for (var entry in overridesDirectory.listSync(followLinks: false)) {
    if (entry is! File || !entry.path.endsWith('.diff')) {
      print('Ignoring "$entry');
      continue;
    }
    print('  Running `git apply -v ${entry.path}`');
    final result = await Process.start(
      'git',
      ['apply', '-v', entry.path],
      mode: ProcessStartMode.inheritStdio,
    );

    final exitCode = await result.exitCode;
    if (exitCode == 0) {
      print('    Success!');
    } else {
      print([
        'Failed!',
        'Exit code: $exitCode',
      ].map((e) => '      $e').join('\n'));
    }
    print('\n\n');
  }
}
