// Copyright (c) 2021, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'version_fallback.dart' if (dart.library.io) 'version_io.dart';

final requestHeaders = {
  // gccl/unknown is needed to ensure proper internal tracking
  'x-goog-api-client': 'gl-dart/$dartVersion gccl/unknown',
};
