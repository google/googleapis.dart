// Copyright (c) 2021, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/// Specification of the pubspec.yaml for a generated package.
class Pubspec {
  final String name;
  final String version;
  final String description;
  final String author;
  final String homepage;

  final Map<String, String> devDependencies;

  Pubspec(
    this.name,
    this.version,
    this.description, {
    this.author,
    this.homepage,
    Map<String, String> extraDevDependencies,
  }) : devDependencies = {
          ..._defaultDevDependencies,
          if (extraDevDependencies != null) ...extraDevDependencies,
        };

  String get sdkConstraint => '>=2.10.0 <3.0.0';

  static const dependencies = {
    'http': '\'>=0.11.1 <0.13.0\'',
    '_discoveryapis_commons': '\'>=0.1.0 <0.3.0\'',
  };

  static const _defaultDevDependencies = {
    'test': '^1.0.0',
  };
}
