// Copyright (c) 2015, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

class ToyResponse {
  String result;
  ToyResponse();
}

class ToyResourceResponse {
  String result;
  ToyResourceResponse();
}

class NestedResponse {
  String nestedResult;
  NestedResponse();
}

class ToyMapResponse {
  String result;
  Map<String, NestedResponse> mapResult;

  ToyMapResponse();
}

class ToyRequest {
  String name;
  int age;
}

class ToyAgeRequest {
  int age;
}
