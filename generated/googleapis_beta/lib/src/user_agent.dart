// Copyright 2021 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;

/// Request headers used by all libraries in this package
final requestHeaders = {
  'user-agent': 'google-api-dart-client/9.1.0',
  'x-goog-api-client': 'gl-dart/${commons.dartVersion} gdcl/9.1.0',
};
