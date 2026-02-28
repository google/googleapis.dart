// Copyright 2021 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

import 'version_fallback.dart' if (dart.library.io) 'version_io.dart' as impl;

/// If `dart:io` is available, returns the current Dart SDK version.
///
/// Otherwise, returns 'unknown'.
String get dartVersion => impl.dartVersion;
