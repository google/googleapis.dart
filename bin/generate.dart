#!/usr/bin/env dart
// Copyright (c) 2015, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import "dart:io";

import "package:args/args.dart";
import "package:googleapis_generator_dependency/googleapis_generator.dart";

ArgParser downloadCommandArgParser() {
  return new ArgParser()
    ..addOption('output-dir',
        abbr: 'o',
        help: 'Output directory of discovery documents.',
        defaultsTo: 'googleapis-discovery-documents');
}

ArgParser runConfigCommandArgParser() {
  return new ArgParser()
    ..addCommand('download')
    ..addCommand('generate')
    ..addOption('config-file',
        help: 'Configuration file describing package generation.',
        defaultsTo: 'config.yaml');
}

ArgParser globalArgParser() {
  return new ArgParser()
    ..addCommand('download', downloadCommandArgParser())
    ..addCommand('run_config', runConfigCommandArgParser())
    ..addFlag('help', abbr: 'h', help: 'Displays usage information.');
}

ArgResults parseArguments(ArgParser parser, List<String> arguments) {
  try {
    return parser.parse(arguments);
  } on FormatException catch (e) {
    dieWithUsage("Error parsing arguments:\n${e.message}\n");
    return null;
  }
}

void dieWithUsage([String message]) {
  if (message != null) {
    print(message);
  }
  print("Usage:");
  print("The discovery generator has the following sub-commands:");
  print("");
  print("  download");
  print("  run_config");
  print("");
  print("The 'download' subcommand downloads all discovery documents. "
      "It takes the following options:");
  print("");
  print(downloadCommandArgParser().usage);
  print("");
  print("The 'run_config' subcommand downloads discovery documents and "
      "generates one or more API packages based on a configuration file. "
      "It takes the following options:");
  print("");
  print(runConfigCommandArgParser().usage);
  exit(1);
}

void main(List<String> arguments) {
  var parser = globalArgParser();
  var options = parseArguments(parser, arguments);
  var commandOptions = options.command;
  var subCommands = ['download', 'generate', 'run_config'];

  if (options['help']) {
    dieWithUsage();
  } else if (commandOptions == null ||
      !subCommands.contains(commandOptions.name)) {
    dieWithUsage('Invalid command');
  }

  switch (commandOptions.name) {
    case 'download':
      downloadDiscoveryDocuments(commandOptions['output-dir']);
      break;
    case 'run_config':
      if (commandOptions.command == null ||
          !['download', 'generate'].contains(commandOptions.command.name)) {
        dieWithUsage('The `run_config` command has only the two subcommands: '
            '`download` and `generate`.');
      }

      var configFile = commandOptions['config-file'];
      switch (commandOptions.command.name) {
        case 'download':
          downloadFromConfiguration(configFile).then((_) => print('Done!'));
          break;
        case 'generate':
          generateFromConfiguration(configFile);
          print('Done');
          break;
      }
      break;
  }
}
