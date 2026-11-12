// Copyright 2021 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

import 'package:source_helper/source_helper.dart';

String requestHeadersField(String? packageVersion) {
  if (packageVersion == null) {
    return '''
/// Request headers used by all libraries in this package
final requestHeaders = {
  'user-agent': 'google-api-dart-client/unknown',
  'x-goog-api-client': 'gl-dart/\${commons.dartVersion}',
};''';
  }
  final userAgent = escapeDartString('google-api-dart-client/$packageVersion');
  final escapedGdcl = escapeDartString('gdcl/$packageVersion');
  final xGoogApiClient = escapedGdcl.startsWith("'")
      ? "'gl-dart/\${commons.dartVersion} "
            "${escapedGdcl.substring(1, escapedGdcl.length - 1)}'"
      : "'gl-dart/\${commons.dartVersion} ' $escapedGdcl";
  return '''
/// Request headers used by all libraries in this package
final requestHeaders = {
  'user-agent': $userAgent,
  'x-goog-api-client': $xGoogApiClient,
};''';
}
