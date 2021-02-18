[![Build Status](https://travis-ci.org/dart-lang/discoveryapis_generator.svg?branch=master)](https://travis-ci.org/dart-lang/discoveryapis_generator)

### Description

Dart application to generate Dart API Client Libraries based on discovery 
documents.

### Usage

```
$ dart bin/generate.dart -h
Usage:
The discovery generator supports the following subcommands:

  package
  files

The 'package' subcommand generates an API package from already downloaded
discovery documents. It takes the following options:

-i, --input-dir              Input directory of discovery documents.
                             (defaults to "googleapis-discovery-documents")

-o, --output-dir             Output directory of the generated API package.
                             (defaults to "googleapis")

    --package-name           Name of the generated API package.
                             (defaults to "googleapis")

    --package-version        Version of the generated API package.
                             (defaults to "0.1.0-dev")

    --package-description    Description of the generated API package.
                             (defaults to "Auto-generated client libraries.")

    --package-author         Author of the generated API package.
    --package-repository     Homepage of the generated API package.

The 'files' subcommand generates API files into an existing package from already
downloaded discovery documents. One file per API. It takes the following
options:

-i, --input-dir             Input directory of discovery documents.
-o, --output-dir            Output directory of the generated API files.
-u, --update-pubspec        Update the pubspec.yaml file with required dependencies. This will remove comments and might change the layout of the pubspec.yaml file.
                            (defaults to "false")

    --[no-]core-prefixes    Use or remove an import prefix for dart:core
                            (defaults to on)
```
