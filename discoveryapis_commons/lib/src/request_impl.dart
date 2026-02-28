// Copyright 2021 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

import 'dart:async';

import 'package:http/http.dart' as http;

import 'utils.dart';

class RequestImpl extends http.BaseRequest {
  final Stream<List<int>> _stream;

  RequestImpl(
    super.method,
    super.url, {
    Stream<List<int>>? stream,
    Map<String, String>? headers,
  }) : _stream = stream ?? const Stream.empty() {
    if (headers != null) {
      for (var entry in headers.entries) {
        if (!_forbiddenHeaders.contains(entry.key)) {
          this.headers[entry.key] = entry.value;
        }
      }
    }
  }

  @override
  http.ByteStream finalize() {
    super.finalize();
    return http.ByteStream(_stream);
  }
}

/// List of headers that is forbidden in current execution context.
///
/// In a browser context we're not allowed to set `user-agent` and
/// `content-length` headers.
const _forbiddenHeaders = isWeb
    ? <String>{'user-agent', 'content-length'}
    : <String>{};
