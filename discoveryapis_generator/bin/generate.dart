#!/usr/bin/env dart
// Copyright (c) 2015, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:io';

import 'package:args/args.dart';
import 'package:discoveryapis_generator/discoveryapis_generator.dart';

ArgParser packageCommandArgParser() => ArgParser()
  ..addOption('input-dir',
      abbr: 'i',
      help: 'Input directory of discovery documents.',
      defaultsTo: 'googleapis-discovery-documents')
  ..addOption('output-dir',
      abbr: 'o',
      help: 'Output directory of the generated API package.',
      defaultsTo: 'googleapis')
  ..addOption('package-name',
      help: 'Name of the generated API package.', defaultsTo: 'googleapis')
  ..addOption('package-version',
      help: 'Version of the generated API package.', defaultsTo: '0.1.0-dev')
  ..addOption('package-description',
      help: 'Description of the generated API package.',
      defaultsTo: 'Auto-generated client libraries.')
  ..addOption('package-author', help: 'Author of the generated API package.')
  ..addOption('package-homepage',
      help: 'Homepage of the generated API package.');

ArgParser filesCommandArgParser() => ArgParser()
  ..addOption('input-dir',
      abbr: 'i', help: 'Input directory of discovery documents.')
  ..addOption('output-dir',
      abbr: 'o', help: 'Output directory of the generated API files.')
  ..addOption('update-pubspec',
      abbr: 'u',
      help: 'Update the pubspec.yaml file with required '
          'dependencies. This will remove comments and might '
          'change the layout of the pubspec.yaml file.',
      defaultsTo: 'false')
  ..addFlag('core-prefixes',
      defaultsTo: true, help: 'Use or remove an import prefix for dart:core');

ArgParser globalArgParser() => ArgParser()
  ..addCommand('package', packageCommandArgParser())
  ..addCommand('files', filesCommandArgParser())
  ..addFlag('help', abbr: 'h', help: 'Displays usage information.');

//ignore: missing_return
ArgResults parseArguments(ArgParser parser, List<String> arguments) {
  try {
    return parser.parse(arguments);
  } on FormatException catch (e) {
    dieWithUsage('Error parsing arguments:\n${e.message}\n');
  }
}

void dieWithUsage([String message]) {
  if (message != null) {
    print(message);
  }
  print('Usage:');
  print('The discovery generator has the following sub-commands:');
  print('');
  print('  package');
  print('  files');
  print('');
  print("The 'package' subcommand generates an API package from already "
      'downloaded discovery documents. It takes the following options:');
  print('');
  print(packageCommandArgParser().usage);
  print('');
  print("The 'files' subcommand generates API files into an existing package "
      'from already downloaded discovery documents. One file per API. It '
      'takes the following options:');
  print('');
  print(filesCommandArgParser().usage);
  print('');
  exit(1);
}

void main(List<String> arguments) {
  final parser = globalArgParser();
  final options = parseArguments(parser, arguments);
  final commandOptions = options.command;
  final subCommands = ['package', 'files'];

  if (options['help'] as bool) {
    dieWithUsage();
  } else if (commandOptions == null ||
      !subCommands.contains(commandOptions.name)) {
    dieWithUsage('Invalid command');
  }

  switch (commandOptions.name) {
    case 'package':
      final pubspec = Pubspec(
        commandOptions['package-name'] as String,
        commandOptions['package-version'] as String,
        commandOptions['package-description'] as String,
        author: commandOptions['package-author'] as String,
        homepage: commandOptions['package-homepage'] as String,
      );
      printResults(generateAllLibraries(
        commandOptions['input-dir'] as String,
        commandOptions['output-dir'] as String,
        pubspec,
      ));
      break;
    case 'files':
      final updatePubspec = (commandOptions['update-pubspec'] as String)
          .toLowerCase()
          .replaceAll('=', '')
          .trim();
      printResults(generateApiFiles(
        commandOptions['input-dir'] as String,
        commandOptions['output-dir'] as String,
        updatePubspec: updatePubspec == 'true',
        useCorePrefixes: commandOptions['core-prefixes'] as bool,
      ));
      break;
  }
}

void printResults(List<GenerateResult> results) {
  var successful = 0;
  var info = 0;
  for (var result in results) {
    print(result);
    if (result.success) successful++;
    if (result.info) info++;
  }
  print('$successful succeeded, ${results.length - successful - info} failed.');
}
