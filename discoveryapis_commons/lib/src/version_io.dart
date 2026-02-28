// Copyright 2021 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

import 'dart:io' show Platform;

/// Major.minor.patch version of current dart version.
final dartVersion = Platform.version.split(RegExp('[^0-9]')).take(3).join('.');
