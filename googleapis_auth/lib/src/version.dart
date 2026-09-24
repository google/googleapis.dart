// Copyright 2026 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

import 'version_fallback.dart' if (dart.library.io) 'version_io.dart';

/// Must be kept in sync with `pubspec.yaml` (verified by `test/version_test.dart`).
final _xGoogApiClientHeaderValue = 'gl-dart/$dartVersion auth/2.3.5-wip';

/// Adds the fallback `x-goog-api-client` header to [headers] if not already
/// present, and returns [headers].
Map<String, String> addXGoogApiClientHeader(Map<String, String> headers) {
  const header = 'x-goog-api-client';
  if (!headers.keys.any((k) => k.toLowerCase() == header)) {
    headers[header] = _xGoogApiClientHeaderValue;
  }
  return headers;
}
