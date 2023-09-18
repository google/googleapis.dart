// Copyright (c) 2021, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: missing_whitespace_between_adjacent_strings

import 'dart_api_library.dart';
import 'dart_schema_type.dart';
import 'dart_schemas.dart';
import 'json_type.dart';
import 'namer.dart';
import 'type_deduplicate.dart';
import 'utils.dart';

/// Class representing non-primitive types.
///
/// Subclasses may be named dart classes or composed classes (e.g. List<X>).
abstract class ComplexDartSchemaType extends DartSchemaType {
  ComplexDartSchemaType(super.imports, super.name, {super.comment});

  String? classDefinition();

  @override
  String get declaration => throw UnsupportedError(
      'Complex schema types do not have a primitive string encoding for URI'
      'query parameters.');

  @override
  String primitiveEncoding(String? value) {
    throw UnsupportedError(
        'Complex schema types do not have a primitive string encoding for URI'
        'query parameters.');
  }
}

abstract class HasInnertype implements ComplexDartSchemaType {
  DartSchemaType? innerType;
}

/// Represents a named custom dart class with a number of properties.
class ObjectType extends ComplexDartSchemaType {
  final List<DartClassProperty> properties;
  @override
  final MapJsonType jsonType;

  // Will be set by the superVariantType when resolving forward references.
  AbstractVariantType? superVariantType;

  ObjectType(super.imports, Identifier super.name, this.properties,
      {super.comment})
      : jsonType =
            MapJsonType(imports, StringJsonType(imports), AnyJsonType(imports));

  @override
  DartSchemaType resolveCore(DartSchemaTypeDB db) {
    for (var i = 0; i < properties.length; i++) {
      final property = properties[i];
      final resolvedProperty = DartClassProperty(
        property.name,
        property.comment,
        property.type.resolve(db),
        property.jsonName,
        byteArrayAccessor: property.byteArrayAccessor,
        deprecated: property.deprecated,
      );
      properties[i] = resolvedProperty;
    }
    return this;
  }

  @override
  String classDefinition() {
    final typeDef = tryTypeDef();
    if (typeDef != null) {
      return typeDef;
    }

    return classDefinitionCore(className.toString(), includeDescription: true);
  }

  String classDefinitionCore(
    String className, {
    required bool includeDescription,
  }) {
    var superClassString = '';
    if (superVariantType != null) {
      superClassString = ' extends ${superVariantType!.declaration} ';
    }

    final propertyString = StringBuffer();
    for (var property in properties) {
      final comment = property.comment.asDartDoc(2);
      final deprecatedMsg = property.deprecated ? imports.deprecatedMsg : '';
      var prefix = '', postfix = '';
      if (isVariantDiscriminator(property)) {
        prefix = 'final ';
        postfix = ' = "${escapeString(discriminatorValue()!)}"';
      }
      propertyString.writeln(
        '$comment$deprecatedMsg  $prefix${property.type.nullableDeclaration} '
        '${property.name}$postfix;',
      );

      if (property.byteArrayAccessor != null) {
        propertyString.writeln(
            '  ${imports.core.ref()}List<${imports.core.ref()}int> get '
            '${property.byteArrayAccessor} =>');
        propertyString.writeln('${imports.convert.ref()}base64.decode'
            '(${property.name}!);');

        propertyString.writeln();

        propertyString.write('  set ${property.byteArrayAccessor}');
        propertyString.writeln(
            '(${imports.core.ref()}List<${imports.core.ref()}int> bytes_) {');
        propertyString.writeln('    ${property.name} = ${imports.convert.ref()}'
            "base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');");
        propertyString.writeln('  }');
      }
    }

    final fromJsonString = StringBuffer();

    final emptyPropertiesComment = properties.isEmpty
        ? '  // ignore: avoid_unused_constructor_parameters\n'
        : '';
    fromJsonString.writeln(
      '  $className.fromJson'
      '($emptyPropertiesComment ${imports.core.ref()}Map json_)',
    );
    if (properties.isEmpty) {
      fromJsonString.writeln(';');
    } else {
      fromJsonString.write(' : this(');
      for (var property in properties) {
        // The super variant fromJson() will call this subclass constructor
        // and the variant descriminator is final.
        if (!isVariantDiscriminator(property)) {
          fromJsonString.writeln(
            '${property.name}:'
            '${property.type.decodeFromMap(property.jsonName)},',
          );
        }
      }
      fromJsonString.writeln(');');
    }

    final toJsonString = StringBuffer();
    toJsonString.writeln('${jsonType.declaration} toJson() =>');
    toJsonString.writeln('{');
    for (var property in properties) {
      toJsonString.writeln('if (${property.name} != null)');
      toJsonString.writeln("'${escapeString(property.jsonName)}':"
          '${property.type.jsonEncode('${property.name}!')},');
    }
    toJsonString.write('};');

    var positionalConstructorParams =
        properties.map((e) => 'this.${e.name},').join(' ');

    if (positionalConstructorParams.isNotEmpty) {
      positionalConstructorParams = '{$positionalConstructorParams}';
    }

    final description = includeDescription ? comment.asDartDoc(0) : '';

    return '''
${description}class $className $superClassString{
$propertyString
  $className($positionalConstructorParams);

$fromJsonString
$toJsonString
}
''';
  }

  @override
  String get declaration => '$className';

  @override
  String jsonEncode(String value) => value;

  @override
  String jsonDecode(String json, {String? importName}) =>
      '$className.fromJson($json as $coreMapJsonType)';

  bool isVariantDiscriminator(DartClassProperty prop) =>
      superVariantType != null &&
      prop.jsonName == superVariantType!.discriminant;

  String? discriminatorValue() {
    for (var key in superVariantType!.map.keys) {
      final value = superVariantType!.map[key];
      if (value == this) return key;
    }
    throw StateError('Could not find my discriminator string.');
  }
}

/// Represents a schema variant type.
class AbstractVariantType extends ComplexDartSchemaType {
  final String? discriminant;
  final Map<String?, DartSchemaType> map;
  @override
  final JsonType jsonType;

  AbstractVariantType(
      super.imports, Identifier super.name, this.discriminant, this.map,
      {super.comment})
      : jsonType =
            MapJsonType(imports, StringJsonType(imports), AnyJsonType(imports));

  @override
  DartSchemaType resolveCore(DartSchemaTypeDB db) {
    map.forEach((String? name, DartSchemaType ref) {
      final resolvedType = ref.resolve(db);
      if (resolvedType is ObjectType) {
        map[name] = resolvedType;
        // Set superclass to ourselves.
        if (resolvedType.superVariantType == null) {
          if (resolvedType is AbstractVariantType) {
            throw StateError('Variant types cannot have subclasses which '
                'are variant types themselves.');
          }
          resolvedType.superVariantType = this;
        } else {
          throw StateError('Superclass already set. A object type should '
              'have only one superclass');
        }
      } else {
        throw StateError('A variant type can only have concrete object '
            'types as subclasses.');
      }
    });
    return this;
  }

  @override
  String classDefinition() {
    final fromJsonString = StringBuffer();
    fromJsonString.writeln(
        '  factory $className.fromJson(${imports.core.ref()}Map json) {');
    fromJsonString.writeln("    var discriminant = json['$discriminant'];");
    map.forEach((String? name, DartSchemaType type) {
      fromJsonString.writeln('    if (discriminant == "$name") {');
      fromJsonString.writeln('      return ${type.declaration}'
          '.fromJson(json);');
      fromJsonString.writeln('    }');
    });
    fromJsonString.writeln('    throw ${imports.core.ref()}ArgumentError'
        '("Invalid discriminant: \$discriminant!");');
    fromJsonString.writeln('  }');

    final toJsonString = StringBuffer();
    toJsonString.writeln('  ${jsonType.declaration} toJson();');

    return '''
${comment.asDartDoc(0)}abstract class $className {
  $className();
$fromJsonString
$toJsonString
}
''';
  }

  @override
  String get declaration => '$className';

  @override
  String jsonEncode(String value) => '$value.toJson()';

  @override
  String jsonDecode(String json, {String? importName}) =>
      '$className.fromJson($json)';
}

/// Placeholder type for forward references.
class DartSchemaForwardRef extends DartSchemaType {
  final String forwardRefName;

  DartSchemaForwardRef(DartApiImports imports, this.forwardRefName)
      : super(imports, null);

  @override
  DartSchemaType resolve(DartSchemaTypeDB db) {
    var concreteType = db.namedSchemaTypes[forwardRefName];
    while (concreteType is DartSchemaForwardRef) {
      concreteType = db.namedSchemaTypes[concreteType.forwardRefName];
    }
    if (concreteType == null) {
      throw StateError('Invalid forward reference: $forwardRefName');
    }
    return concreteType;
  }

  @override
  DartSchemaType resolveCore(DartSchemaTypeDB db) =>
      throw StateError('Type declarations can only be created after '
          'resolving references.');

  @override
  JsonType get jsonType {
    throw StateError('Type declarations can only be created after '
        'resolving references.');
  }

  @override
  String get declaration {
    throw StateError('Type declarations can only be created after '
        'resolving references.');
  }

  @override
  String primitiveEncoding(String? value) {
    throw StateError('Encoding methods can only be called after '
        'resolving references.');
  }

  @override
  String jsonEncode(String value) {
    throw StateError('JSON methods can only be called after '
        'resolving references.');
  }

  @override
  String jsonDecode(String json, {String? importName}) {
    throw StateError('JSON methods can only be called after '
        'resolving references.');
  }
}

/// Superclass for primitive types which will not be represented as custom dart
/// classes.
abstract class PrimitiveDartSchemaType extends DartSchemaType {
  PrimitiveDartSchemaType(DartApiImports imports) : super(imports, null);

  @override
  DartSchemaType resolveCore(DartSchemaTypeDB db) => this;

  @override
  String? primitiveEncoding(String? value) => "'\${$value}'";

  @override
  String jsonEncode(String value) => value;

  @override
  String jsonDecode(String json, {String? importName}) =>
      '$json as $declaration';
}

class BooleanType extends PrimitiveDartSchemaType {
  @override
  final JsonType jsonType;

  BooleanType(super.imports) : jsonType = BoolJsonType(imports);

  @override
  String get declaration => '${imports.core.ref()}bool';
}

class IntegerType extends PrimitiveDartSchemaType {
  @override
  final JsonType jsonType;

  IntegerType(super.imports) : jsonType = IntJsonType(imports);

  @override
  String get declaration => '${imports.core.ref()}int';
}

class StringIntegerType extends PrimitiveDartSchemaType {
  @override
  final JsonType jsonType;

  StringIntegerType(super.imports) : jsonType = StringJsonType(imports);

  @override
  String get declaration => '${imports.core.ref()}int';

  @override
  String jsonEncode(String value) => '"\${$value}"';

  @override
  String jsonDecode(String json, {String? importName}) =>
      '${imports.core.ref()}int.parse("\${$json}")';
}

class DoubleType extends PrimitiveDartSchemaType {
  @override
  final JsonType jsonType;

  DoubleType(super.imports) : jsonType = DoubleJsonType(imports);

  @override
  String get declaration => '${imports.core.ref()}double';

  @override
  String jsonDecode(String json, {String? importName}) =>
      '($json as ${imports.core.ref()}num).toDouble()';
}

class StringType extends PrimitiveDartSchemaType {
  @override
  final JsonType jsonType;

  StringType(super.imports) : jsonType = StringJsonType(imports);

  @override
  String? primitiveEncoding(String? value) => value;

  @override
  String get declaration => '${imports.core.ref()}String';
}

/// Here to support the fix for https://github.com/google/googleapis.dart/issues/211
class NullableStringType extends StringType {
  NullableStringType(super.imports);

  @override
  String get declaration => '${super.declaration}?';
}

class EnumType extends StringType {
  final List<String> enumValues;
  final List<String> enumDescriptions;

  factory EnumType(
    DartApiImports imports,
    List<String> enumValues,
    List<String>? enumDescriptions,
  ) {
    enumDescriptions ??= enumValues.map((value) => 'A $value.').toList();

    if (enumValues.length != enumDescriptions.length) {
      throw ArgumentError(
        'Number of enum values does not match number of '
        'enum descriptions.',
      );
    }
    return EnumType._(imports, enumValues, enumDescriptions);
  }

  EnumType._(super.imports, this.enumValues, this.enumDescriptions);

  /// Here to support https://github.com/google/googleapis.dart/issues/211
  bool get isNullValue =>
      enumValues.length == 1 &&
      enumValues.single == 'NULL_VALUE' &&
      enumDescriptions.single == 'Null value.';

  @override
  String decodeFromMap(String jsonName) {
    if (isNullValue) {
      return "json_.containsKey('${escapeString(jsonName)}') ? "
          "'NULL_VALUE' : null";
    }

    return super.decodeFromMap(jsonName);
  }
}

class DateType extends StringType {
  DateType(super.imports);

  @override
  String get declaration => '${imports.core.ref()}DateTime';

  @override
  String primitiveEncoding(String? value) =>
      '"\${$value.year.toString().padLeft(4, \'0\')}-'
      '\${$value.month.toString().padLeft(2, \'0\')}-'
      '\${$value.day.toString().padLeft(2, \'0\')}"';

  @override
  String jsonEncode(String value) => primitiveEncoding(value);

  @override
  String jsonDecode(String json, {String? importName}) =>
      '${imports.core.ref()}DateTime'
      '.parse($json as ${imports.core.ref()}String)';
}

class DateTimeType extends StringType {
  DateTimeType(super.imports);

  @override
  String get declaration => '${imports.core.ref()}DateTime';

  @override
  String primitiveEncoding(String? value) => '$value.toUtc().toIso8601String()';

  @override
  String jsonEncode(String value) => '$value.toUtc().toIso8601String()';

  @override
  String jsonDecode(String json, {String? importName}) =>
      '${imports.core.ref()}DateTime'
      '.parse($json as ${imports.core.ref()}String)';
}

/// Class representing "any" schema type.
///
/// A decoded any type object is the JSON the server sent. The any type object
/// a user supplies is expected to be JSON and transferred to the server "as is"
class AnyType extends PrimitiveDartSchemaType {
  @override
  final JsonType jsonType;

  AnyType(super.imports) : jsonType = AnyJsonType(imports);

  @override
  String get declaration => '${imports.core.ref()}Object?';

  @override
  String jsonDecode(String json, {String? importName}) => json;
}

/// Represents an unnamed List<T> type with a given `T`.
class UnnamedArrayType extends ComplexDartSchemaType implements HasInnertype {
  @override
  DartSchemaType? innerType;

  UnnamedArrayType(DartApiImports imports, this.innerType)
      : super(imports, null);

  @override
  DartSchemaType resolveCore(DartSchemaTypeDB db) {
    innerType = innerType!.resolve(db);
    return this;
  }

  @override
  JsonType get jsonType => ArrayJsonType(imports, innerType!.jsonType);

  @override
  String? classDefinition() => null;

  @override
  String get declaration =>
      '${imports.core.ref()}List<${innerType!.declaration}>';

  @override
  String jsonEncode(String value) {
    if (innerType!.needsJsonEncoding) {
      return '$value.map((value) => ${innerType!.jsonEncode('value')})'
          '.toList()';
    }
    // NOTE: The List from the user is already JSON. We have a big
    // ASSUMPTION here: The user does not modify the list while we're
    // converting JSON -> String (-> Bytes).
    return value;
  }

  @override
  String jsonDecode(String json, {String? importName}) {
    final innerType = this.innerType!;
    if (innerType is AnyType) {
      return '$json as ${imports.core.ref()}List';
    }

    if (innerType.needsJsonDecoding) {
      return '''
($json as ${imports.core.ref()}List)
  .map((value) => ${_importPrefixedDecode(innerType, importName)}).toList()
''';
    }

    // NOTE: The List returned from JSON.decode() transfers ownership to the
    // user (i.e. we don't need to make a copy of it).
    return '($json as ${imports.core.ref()}List)'
        '.cast<${innerType.declaration}>()';
  }
}

/// Represents a named List<T> type with a given `T`.
class NamedArrayType extends ComplexDartSchemaType implements HasInnertype {
  @override
  DartSchemaType? innerType;

  NamedArrayType(super.imports, Identifier super.name, this.innerType,
      {super.comment});

  @override
  DartSchemaType resolveCore(DartSchemaTypeDB db) {
    innerType = innerType!.resolve(db);
    return this;
  }

  @override
  JsonType get jsonType => ArrayJsonType(imports, innerType!.jsonType);

  @override
  String classDefinition() {
    final type = innerType!.declaration;
    return '''
${comment.asDartDoc(0)}typedef $className = ${imports.core.ref()}List<$type>;
''';
  }

  @override
  String get declaration => className!.name!;

  @override
  String jsonEncode(String value) {
    if (innerType!.needsJsonEncoding) {
      return '$value.toJson()';
    } else {
      // NOTE: The List from the user can be encoded directly. We have a big
      // ASSUMPTION here: The user does not modify the list while we're
      // converting JSON -> String (-> Bytes).
      return value;
    }
  }

  @override
  String jsonDecode(String json, {String? importName}) {
    final valueType = innerType!;
    final castValue = '$json as ${imports.core.ref()}List';

    if (valueType is AnyType) {
      return castValue;
    }

    return '''
    ($castValue).map((value) => ${_importPrefixedDecode(valueType, importName)}).toList()
    ''';
  }
}

String _importPrefixedDecode(DartSchemaType valueType, String? importName) =>
    '${valueType.importPrefix(importName)}'
    '${valueType.jsonDecode('value', importName: importName)}';

/// Represents an unnamed Map<F, T> type with given types `F` and `T`.
class UnnamedMapType extends ComplexDartSchemaType {
  late final DartSchemaType keyType;
  DartSchemaType? valueType;

  UnnamedMapType(DartApiImports imports, this.valueType) : super(imports, null);

  @override
  DartSchemaType resolveCore(DartSchemaTypeDB db) {
    keyType = db.stringType;
    valueType = valueType!.resolve(db);
    return this;
  }

  @override
  JsonType get jsonType =>
      MapJsonType(imports, keyType.jsonType, valueType!.jsonType);

  @override
  String? classDefinition() => null;

  @override
  String get declaration {
    final from = keyType.declaration;
    final to = valueType!.declaration;
    return '${imports.core.ref()}Map<$from, $to>';
  }

  @override
  String jsonEncode(String value) {
    final valueType = this.valueType!;

    if (valueType.needsJsonEncoding) {
      return '$value.map((key, item) => ${imports.core.ref()}MapEntry'
          '(key, ${valueType.jsonEncode('item')}))';
    } else {
      // NOTE: The Map from the user can be encoded directly. We have a big
      // ASSUMPTION here: The user does not modify the map while we're
      // converting JSON -> String (-> Bytes).
      return value;
    }
  }

  @override
  String jsonDecode(String json, {String? importName}) {
    final valueType = this.valueType!;
    final castValue = '$json as $coreMapJsonType';

    if (valueType is AnyType) {
      return castValue;
    }

    if (valueType.needsJsonDecoding) {
      return '''
($castValue).map(
(key, value) => ${imports.core.ref()}MapEntry(
key,
${_importPrefixedDecode(valueType, importName)},
),
)''';
    }

    // NOTE: The Map returned from JSON.decode() transfers ownership to the
    // user (i.e. we don't need to make a copy of it).
    return '($castValue)'
        '.cast<${keyType.declaration}, ${valueType.declaration}>()';
  }
}

/// Represents a named Map<F, T> type with given types `F` and `T`.
class NamedMapType extends ComplexDartSchemaType {
  DartSchemaType? fromType;
  DartSchemaType? toType;

  NamedMapType(super.imports, Identifier super.name, this.fromType, this.toType,
      {super.comment}) {
    if (fromType is! StringType) {
      throw StateError('Violation of assumption: Keys in map types must '
          'be Strings.');
    }
  }

  @override
  DartSchemaType resolveCore(DartSchemaTypeDB db) {
    fromType = fromType!.resolve(db);
    toType = toType!.resolve(db);
    return this;
  }

  @override
  JsonType get jsonType =>
      MapJsonType(imports, fromType!.jsonType, toType!.jsonType);

  @override
  String classDefinition() {
    final core = imports.core.ref();

    final fromT = fromType!.declaration;
    final toT = toType!.declaration;

    return '''
${comment.asDartDoc(0)}typedef $className = ${core}Map<$fromT, $toT>;
''';
  }

  @override
  String get declaration => '$className';

  @override
  String jsonEncode(String value) {
    if (fromType!.needsJsonEncoding || toType!.needsJsonEncoding) {
      return '$value.toJson()';
    } else {
      // NOTE: The Map from the user can be encoded directly. We have a big
      // ASSUMPTION here: The user does not modify the map while we're
      // converting JSON -> String (-> Bytes).
      return value;
    }
  }

  @override
  String jsonDecode(String json, {String? importName}) {
    final valueType = toType!;
    final castValue = '$json as $coreMapJsonType';

    if (valueType is AnyType) {
      return castValue;
    }

    if (valueType.needsJsonDecoding) {
      return '''
($castValue).map(
(key, value) => ${imports.core.ref()}MapEntry(
key,
${_importPrefixedDecode(valueType, importName)},
),
)''';
    }

    // NOTE: The Map returned from JSON.decode() transfers ownership to the
    // user (i.e. we don't need to make a copy of it).
    return '($castValue)'
        '.cast<${fromType!.declaration}, ${valueType.declaration}>()';
  }
}

extension DartSchemaTypeExtension on DartSchemaType {
  //TODO: should likely be put in each class as an override?
  String importPrefix(String? importName) {
    if (importName == null) return '';
    if (this is NamedMapType ||
        this is NamedArrayType ||
        this is UnnamedArrayType ||
        this is PrimitiveDartSchemaType ||
        this is UnnamedMapType) return '';
    return '$importName.';
  }
}
