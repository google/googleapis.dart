// Copyright (c) 2014, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/// Due to differences of clock speed, network latency, etc. we
/// will shorten expiry dates by 20 seconds.
const maxExpectedTimeDiffInSeconds = 20;

/// Constructs a [DateTime] which is [seconds] seconds from now with
/// an offset of [maxExpectedTimeDiffInSeconds]. Result is UTC time.
DateTime expiryDate(int seconds) => DateTime.now()
    .toUtc()
    .add(Duration(seconds: seconds - maxExpectedTimeDiffInSeconds));

/// Constant for the 'application/x-www-form-urlencoded' content type
const contentTypeUrlEncoded =
    'application/x-www-form-urlencoded; charset=utf-8';
