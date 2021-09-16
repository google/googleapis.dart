// Copyright (c) 2015, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

class ToyResponse {
  String? result;
  ToyResponse();
}

class ToyResourceResponse {
  String? result;
  ToyResourceResponse();
}

class NestedResponse {
  String? nestedResult;
  NestedResponse();
}

class ToyMapResponse {
  String? result;
  Map<String, NestedResponse>? mapResult;

  // Exists to validate fix for https://github.com/google/googleapis.dart/issues/211
  String? nullValue;

  // Exists to validate fix for https://github.com/google/googleapis.dart/issues/200
  Map<String, String?>? properties;

  ToyMapResponse();
}

class ToyRequest {
  String? name;
  int? age;
}

class ToyAgeRequest {
  int? age;
}

class Empty {}
