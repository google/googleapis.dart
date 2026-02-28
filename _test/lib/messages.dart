// Copyright 2021 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

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

  Object? v;

  List<Map<String, dynamic>>? msgValue;

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
