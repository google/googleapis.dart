// Copyright (c) 2021, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:io';

import 'package:http/http.dart';
import 'package:http/io_client.dart' as io_client;

class CustomHttpClient extends io_client.IOClient {
  /// Sends an HTTP request and asynchronously returns the response.
  @override
  Future<io_client.IOStreamedResponse> send(BaseRequest request) async {
    request.headers
        .putIfAbsent('x-goog-api-client', () => 'gl-dart/$_dartVersion');

    final response = await super.send(request);
    return response;
  }
}

/// Major.minor.patch version of current dart version.
final _dartVersion = Platform.version.split(RegExp('[^0-9]')).take(3).join('.');
