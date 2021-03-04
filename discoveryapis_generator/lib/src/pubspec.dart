// Copyright (c) 2021, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/// Specification of the pubspec.yaml for a generated package.
class Pubspec {
  final String name;
  final String version;
  final String description;
  final String author;
  final String repository;

  final Map<String, String> devDependencies;

  Pubspec(
    this.name,
    this.version,
    this.description, {
    this.author,
    this.repository,
    Map<String, String> extraDevDependencies,
  }) : devDependencies = {
          ..._defaultDevDependencies,
          if (extraDevDependencies != null) ...extraDevDependencies,
        };

  String get sdkConstraint => '>=2.12.0 <3.0.0';

  static const dependencies = {
    'http': '">=0.12.2 <0.14.0"',
    '_discoveryapis_commons': '^1.0.0',
  };

  static const _defaultDevDependencies = {
    'test': '^1.15.7',
  };
}
