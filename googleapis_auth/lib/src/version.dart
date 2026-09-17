// Copyright 2026 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

import 'version_fallback.dart' if (dart.library.io) 'version_io.dart' as impl;

/// Must be kept in sync with `pubspec.yaml` (verified by `test/version_test.dart`).
const packageVersion = '2.3.4-wip';

/// Header name for Google API client telemetry.
const xGoogApiClientHeader = 'x-goog-api-client';

/// If `dart:io` is available, returns the current Dart SDK version.
///
/// Otherwise, returns `'unknown'`.
String get dartVersion => impl.dartVersion;

/// Fallback `x-goog-api-client` value for `package:googleapis_auth`.
final xGoogApiClientHeaderValue = 'gl-dart/$dartVersion auth/$packageVersion';
