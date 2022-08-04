// Copyright (c) 2021, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart_api_library.dart';

/// Represents the type declarations we use for representing json data.
abstract class JsonType {
  final DartApiImports imports;

  JsonType(this.imports);

  String get declaration;

  String get baseDeclaration => declaration;
}

class SimpleJsonType extends JsonType {
  final String name;

  SimpleJsonType(super.imports, this.name);

  @override
  String get declaration => '${imports.core.ref()}$name';
}

class StringJsonType extends SimpleJsonType {
  StringJsonType(DartApiImports imports) : super(imports, 'String');
}

class IntJsonType extends SimpleJsonType {
  IntJsonType(DartApiImports imports) : super(imports, 'int');
}

class BoolJsonType extends SimpleJsonType {
  BoolJsonType(DartApiImports imports) : super(imports, 'bool');
}

class DoubleJsonType extends SimpleJsonType {
  DoubleJsonType(DartApiImports imports) : super(imports, 'double');

  @override
  String get baseDeclaration => '${imports.core.ref()}num';
}

class MapJsonType extends JsonType {
  final JsonType keyJsonType;
  final JsonType valueJsonType;

  MapJsonType(super.imports, this.keyJsonType, this.valueJsonType);

  @override
  String get declaration => '${imports.core.ref()}Map'
      '<${keyJsonType.declaration}, ${valueJsonType.declaration}>';

  @override
  String get baseDeclaration => imports.coreJsonMap;
}

class ArrayJsonType extends JsonType {
  final JsonType valueJsonType;

  ArrayJsonType(super.imports, this.valueJsonType);

  @override
  String get declaration =>
      '${imports.core.ref()}List<${valueJsonType.declaration}>';

  @override
  String get baseDeclaration => '${imports.core.ref()}List';
}

class AnyJsonType extends JsonType {
  AnyJsonType(super.imports);

  @override
  String get declaration => '${imports.core.ref()}dynamic';
}
