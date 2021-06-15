// Copyright (c) 2015, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library clientstub_generator;

import 'discoveryapis_generator.dart';
import 'src/apis_files_generator.dart';
import 'src/utils.dart';

export 'src/apis_files_generator.dart' show DescriptionImportPair;
export 'src/utils.dart' show GenerateResult, findPackageRoot;

/// Generate client stubs for a set of API descriptions with a corresponding
/// import map.
/// This is used to generate client stubs inside the same package as the server
/// API and uses the same message classes as used on the server side.
List<GenerateResult> generateClientStubs(
  List<DescriptionImportPair> descriptions,
  String outputDirectory, {
  bool updatePubspec = false,
}) {
  final clientGenerator = ApisFilesGenerator(
    descriptions,
    outputDirectory,
    updatePubspec: updatePubspec,
  );
  return clientGenerator.generate();
}
