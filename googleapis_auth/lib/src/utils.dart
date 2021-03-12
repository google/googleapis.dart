// Copyright (c) 2014, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:convert';

import 'package:http/http.dart' show StreamedResponse;

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

/// Returns an error string for [json] if it contains error data in keys
/// `error` and `error_description`.
///
/// Otherwise, returns `null`.
String? errorString(Map<String, dynamic> json) {
  final error = json['error'];
  if (error == null) {
    return null;
  }

  final description = json['error_description'];

  return [
    'Error: $error',
    if (description != null) '$description',
  ].join(' ');
}

Future<Map<String, dynamic>> readJsonMap(StreamedResponse response) async =>
    await response.stream.transform(utf8.decoder).transform(json.decoder).single
        as Map<String, dynamic>;
