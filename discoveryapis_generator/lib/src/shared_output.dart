// Copyright (c) 2021, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

String requestHeadersField(String? packageVersion) => '''
/// Request headers used by all libraries in this package
final requestHeaders = {
  'user-agent': 'google-api-dart-client/$packageVersion',
  'x-goog-api-client': 'gl-dart/\${commons.dartVersion} gdcl/$packageVersion',
};''';

const sharedEmptyClassName = r'$Empty';

const emptyClass = '''
/// A reusable empty messages.
class $sharedEmptyClassName {
  $sharedEmptyClassName();

  $sharedEmptyClassName.fromJson(
      // ignore: avoid_unused_constructor_parameters
      Map json);

  Map<String, dynamic> toJson() => {};
}''';
