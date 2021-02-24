// Copyright (c) 2021, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore: implementation_imports
import 'package:_discoveryapis_commons/src/request_headers.dart';
import 'package:http/http.dart';
import 'package:http/io_client.dart' as io_client;

class CustomHttpClient extends io_client.IOClient {
  /// Sends an HTTP request and asynchronously returns the response.
  @override
  Future<io_client.IOStreamedResponse> send(BaseRequest request) async {
    for (var header in requestHeaders.entries) {
      if (!request.headers.containsKey(header.key)) {
        request.headers[header.key] = header.value;
      }
    }

    final response = await super.send(request);
    return response;
  }
}
