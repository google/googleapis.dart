// Copyright (c) 2021, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'utils.dart';

/// Specification of the pubspec.yaml for a generated package.
class Pubspec {
  final String name;
  final String? version;
  final String description;
  final String? author;
  final String? repository;
  final String? resolution;

  final Map<String, String> devDependencies;

  Pubspec(
    this.name,
    this.version,
    this.description, {
    this.author,
    this.repository,
    Map<String, String>? extraDevDependencies,
    this.resolution,
  }) : devDependencies = {
         ..._defaultDevDependencies,
         if (extraDevDependencies != null) ...extraDevDependencies,
       };

  String get sdkConstraint => targetDartVersionConstraint;

  static const dependencies = {
    'http': '^1.0.0',
    '_discoveryapis_commons': '^1.0.0',
  };

  static const _defaultDevDependencies = {'test': '^1.16.0'};
}
