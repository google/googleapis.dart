// Copyright 2026 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

import 'version_fallback.dart' if (dart.library.io) 'version_io.dart' as impl;

/// Must be kept in sync with `pubspec.yaml` (verified by `test/version_test.dart`).
const _packageVersion = '2.3.4';

const _xGoogApiClientHeader = 'x-goog-api-client';

final _xGoogApiClientHeaderValue =
    'gl-dart/${impl.dartVersion} auth/$_packageVersion';

/// Adds the fallback `x-goog-api-client` header to [headers] if not already
/// present, and returns [headers].
Map<String, String> addXGoogApiClientHeader(Map<String, String> headers) {
  if (!headers.keys.any((k) => k.toLowerCase() == _xGoogApiClientHeader)) {
    headers[_xGoogApiClientHeader] = _xGoogApiClientHeaderValue;
  }
  return headers;
}
