// Copyright (c) 2021, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:collection';

import 'package:discoveryapis_generator/discoveryapis_generator.dart';

extension RestDescriptionExtension on RestDescription {
  void sort() {
    if (auth != null) {
      if (auth!.oauth2 != null) {
        auth!.oauth2!.scopes = _sortMap(auth!.oauth2!.scopes);
      }
    }

    for (var schema in schemas!.values) {
      schema.properties = _sortProperties(schema.properties);
    }

    schemas = SplayTreeMap.of(schemas!);

    resources = _sortResources(resources);
    methods = _sortMethods(methods);
    parameters = _sortMap(parameters);
  }

  static Map<String, T>? _sortMap<T>(Map<String, T>? map) {
    if (map == null) return null;
    return SplayTreeMap.of(map);
  }

  static Map<String, RestMethod>? _sortMethods(
    Map<String, RestMethod>? theMethods,
  ) {
    if (theMethods == null) return null;

    for (var value in theMethods.values) {
      value.parameters = _sortMap(value.parameters);
    }

    return SplayTreeMap.of(theMethods);
  }

  static Map<String, RestResource>? _sortResources(
    Map<String, RestResource>? theResources,
  ) {
    if (theResources == null) return null;

    for (var value in theResources.values) {
      value.resources = _sortResources(value.resources);
      value.methods = _sortMethods(value.methods);
    }

    return SplayTreeMap.of(theResources);
  }

  static Map<String, JsonSchema>? _sortProperties(
    Map<String, JsonSchema>? theMethods,
  ) {
    if (theMethods == null) return null;

    for (var value in theMethods.values) {
      _sortSchema(value);
    }

    return SplayTreeMap.of(theMethods);
  }

  static void _sortSchema(JsonSchema schema) {
    if (schema.items != null) {
      _sortSchema(schema.items!);
    }

    schema.properties = _sortProperties(schema.properties);
  }
}
