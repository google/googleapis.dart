// Copyright (c) 2015, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: missing_whitespace_between_adjacent_strings

library discoveryapis_generator.dart_schemas;

import 'dart_api_library.dart';
import 'dart_comments.dart';
import 'generated_googleapis/discovery/v1.dart';
import 'namer.dart';
import 'null_safety.dart';
import 'utils.dart';

/// Class for keeping all named schemas. This is used for
///  - resolving forward references
///  - querying types by name
///  - access to built-in types
class DartSchemaTypeDB {
  // Builtin types
  final StringType stringType;
  final IntegerType integerType;
  final StringIntegerType stringIntegerType;
  final DoubleType doubleType;
  final BooleanType booleanType;
  final DateType dateType;
  final DateTimeType dateTimeType;
  final AnyType anyType;

  DartSchemaTypeDB(DartApiImports imports)
      : stringType = StringType(imports),
        integerType = IntegerType(imports),
        stringIntegerType = StringIntegerType(imports),
        doubleType = DoubleType(imports),
        booleanType = BooleanType(imports),
        dateType = DateType(imports),
        dateTimeType = DateTimeType(imports),
        anyType = AnyType(imports);

  // List of all [DartSchemaType]s.
  // TODO: This has to be in depth-first sorted traversal, right?
  List<DartSchemaType> dartTypes = [];

  // Original schema names to [DartSchemaType].
  final Map<String, DartSchemaType> namedSchemaTypes = {};

  // Name of dart class to [DartSchemaType].
  final List<ComplexDartSchemaType> dartClassTypes = [];

  DartSchemaType register(DartSchemaType type) {
    if (type is! DartSchemaForwardRef) {
      // Add [type] to list of all types.
      dartTypes.add(type);
    }
    return type;
  }

  void registerTopLevel(String schemaName, DartSchemaType type) {
    namedSchemaTypes[schemaName] = type;
  }
}

/// Represents a property in a dart class.
class DartClassProperty {
  final Identifier name;
  final Comment comment;
  final DartSchemaType type;
  final String jsonName;

  // If this property is a base64 encoded bytes, this identifier will represent
  // the name used for a setter/getter.
  final Identifier byteArrayAccessor;

  DartClassProperty(this.name, this.comment, this.type, this.jsonName,
      {this.byteArrayAccessor});
}

/// Represents the type declarations we use for representing json data.
abstract class JsonType {
  final DartApiImports imports;

  JsonType(this.imports);

  String get declaration;

  String get baseDeclaration => declaration;
}

class SimpleJsonType extends JsonType {
  final String name;

  SimpleJsonType(DartApiImports imports, this.name) : super(imports);

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

  MapJsonType(DartApiImports imports, this.keyJsonType, this.valueJsonType)
      : super(imports);

  @override
  String get declaration => '${imports.core.ref()}Map'
      '<${keyJsonType.declaration}, ${valueJsonType.declaration}>';

  @override
  String get baseDeclaration => imports.coreJsonMap;
}

class ArrayJsonType extends JsonType {
  final JsonType valueJsonType;

  ArrayJsonType(DartApiImports imports, this.valueJsonType) : super(imports);

  @override
  String get declaration =>
      '${imports.core.ref()}List<${valueJsonType.declaration}>';

  @override
  String get baseDeclaration => '${imports.core.ref()}List';
}

class AnyJsonType extends JsonType {
  AnyJsonType(DartApiImports imports) : super(imports);

  @override
  String get declaration => '${imports.core.ref()}dynamic';
}

/// Represents an internal representation used for codegen.
///
/// [DartSchemaType] and it's subclasses are a representation for codegen of:
///   - dart class definitions
///   - dart type declarations
///   - dart expressions for encoding/decoding json
///
/// Before a [DartSchemaType] can be used, it's [resolve] method must be called
/// to resolve all forward references.
abstract class DartSchemaType {
  // [className] is the name of the dart class this [DartSchemaType] represents
  // or `null` if it does not represent a schema type represented by a custom
  // dart class.
  final Identifier className;
  final Comment comment;
  final DartApiImports imports;

  bool _resolved = false;

  DartSchemaType(this.imports, this.className, {Comment comment})
      : comment = comment ?? Comment.empty;

  DartSchemaType resolve(DartSchemaTypeDB db) {
    if (!_resolved) {
      _resolved = true;
      return _resolve(db);
    }
    return this;
  }

  DartSchemaType _resolve(DartSchemaTypeDB db);

  String get declaration;

  JsonType get jsonType;

  /// [value] is the string expression of this [DartSchemaType] that needs to be
  /// encoded.
  ///
  /// This method is used for encoding parameter types for the URI query part.
  String primitiveEncoding(String value);

  /// Whether this value needs a primitive encoding.
  bool get needsPrimitiveEncoding => primitiveEncoding('foo') != 'foo';

  /// [value] is the string expression of this [DartSchemaType] that needs to be
  /// encoded.
  String jsonEncode(String value);

  /// [json] is the string expression of json data that needs to be decoded to
  /// a [DartSchemaType].
  String jsonDecode(String json);

  /// Whether this value needs a JSON encoding or not.
  bool get needsJsonEncoding => jsonEncode('foo') != 'foo';

  /// Whether this value needs a JSON decoding or not.
  bool get needsJsonDecoding => jsonDecode('foo') != 'foo';

  String get coreMapJsonTypeArguments =>
      '<${imports.core.ref()}String, ${imports.core.ref()}dynamic>';

  String get coreMapJsonType =>
      '${imports.core.ref()}Map$coreMapJsonTypeArguments';
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
      concreteType = db.namedSchemaTypes[
          (concreteType as DartSchemaForwardRef).forwardRefName];
    }
    if (concreteType == null) {
      throw StateError('Invalid forward reference: $forwardRefName');
    }
    return concreteType;
  }

  @override
  DartSchemaType _resolve(DartSchemaTypeDB db) => null;

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
  String primitiveEncoding(String value) {
    throw StateError('Encoding methods can only be called after '
        'resolving references.');
  }

  @override
  String jsonEncode(String value) {
    throw StateError('JSON methods can only be called after '
        'resolving references.');
  }

  @override
  String jsonDecode(String json) {
    throw StateError('JSON methods can only be called after '
        'resolving references.');
  }
}

/// Superclass for primitive types which will not be represented as custom dart
/// classes.
abstract class PrimitiveDartSchemaType extends DartSchemaType {
  PrimitiveDartSchemaType(DartApiImports imports) : super(imports, null);

  @override
  DartSchemaType _resolve(DartSchemaTypeDB db) => this;

  @override
  String primitiveEncoding(String value) => "'\${$value}'";

  @override
  String jsonEncode(String value) => value;

  @override
  String jsonDecode(String json) => '$json as $declaration';
}

class BooleanType extends PrimitiveDartSchemaType {
  @override
  final JsonType jsonType;

  BooleanType(DartApiImports imports)
      : jsonType = BoolJsonType(imports),
        super(imports);

  @override
  String get declaration => '${imports.core.ref()}bool';
}

class IntegerType extends PrimitiveDartSchemaType {
  @override
  final JsonType jsonType;

  IntegerType(DartApiImports imports)
      : jsonType = IntJsonType(imports),
        super(imports);

  @override
  String get declaration => '${imports.core.ref()}int';
}

class StringIntegerType extends PrimitiveDartSchemaType {
  @override
  final JsonType jsonType;

  StringIntegerType(DartApiImports imports)
      : jsonType = StringJsonType(imports),
        super(imports);

  @override
  String get declaration => '${imports.core.ref()}int';

  @override
  String jsonEncode(String value) => '"\${$value}"';

  @override
  String jsonDecode(String json) =>
      '${imports.core.ref()}int.parse("\${$json}")';
}

class DoubleType extends PrimitiveDartSchemaType {
  @override
  final JsonType jsonType;

  DoubleType(DartApiImports imports)
      : jsonType = DoubleJsonType(imports),
        super(imports);

  @override
  String get declaration => '${imports.core.ref()}double';

  @override
  String jsonDecode(String json) =>
      '($json as ${imports.core.ref()}num).toDouble()';
}

class StringType extends PrimitiveDartSchemaType {
  @override
  final JsonType jsonType;

  StringType(DartApiImports imports)
      : jsonType = StringJsonType(imports),
        super(imports);

  @override
  String primitiveEncoding(String value) => value;

  @override
  String get declaration => '${imports.core.ref()}String';
}

class EnumType extends StringType {
  final List<String> enumValues;
  final List<String> enumDescriptions;

  factory EnumType(DartApiImports imports, List<String> enumValues,
      List<String> enumDescriptions) {
    enumDescriptions ??= enumValues.map((value) => 'A $value.').toList();

    if (enumValues.length != enumDescriptions.length) {
      throw ArgumentError('Number of enum values does not match number of '
          'enum descriptions.');
    }
    return EnumType._(imports, enumValues, enumDescriptions);
  }

  EnumType._(DartApiImports imports, this.enumValues, this.enumDescriptions)
      : super(imports);
}

class DateType extends StringType {
  DateType(DartApiImports imports) : super(imports);

  @override
  String get declaration => '${imports.core.ref()}DateTime';

  @override
  String primitiveEncoding(String value) =>
      '"\${($value).year.toString().padLeft(4, \'0\')}-'
      '\${($value).month.toString().padLeft(2, \'0\')}-'
      '\${($value).day.toString().padLeft(2, \'0\')}"';

  @override
  String jsonEncode(String value) => primitiveEncoding(value);

  @override
  String jsonDecode(String json) => '${imports.core.ref()}DateTime'
      '.parse($json as ${imports.core.ref()}String)';
}

class DateTimeType extends StringType {
  DateTimeType(DartApiImports imports) : super(imports);

  @override
  String get declaration => '${imports.core.ref()}DateTime';

  @override
  String primitiveEncoding(String value) => '$value.toIso8601String()';

  @override
  String jsonEncode(String value) => '$value.toIso8601String()';

  @override
  String jsonDecode(String json) => '${imports.core.ref()}DateTime'
      '.parse($json as ${imports.core.ref()}String)';
}

/// Class representing "any" schema type.
///
/// A decoded any type object is the JSON the server sent. The any type object
/// a user supplies is expected to be JSON and transferred to the server "as is"
class AnyType extends PrimitiveDartSchemaType {
  @override
  final JsonType jsonType;

  AnyType(DartApiImports imports)
      : jsonType = AnyJsonType(imports),
        super(imports);

  @override
  String get declaration => '${imports.core.ref()}Object';
}

/// Class representing non-primitive types.
///
/// Subclasses may be named dart classes or composed classes (e.g. List<X>).
abstract class ComplexDartSchemaType extends DartSchemaType {
  ComplexDartSchemaType(DartApiImports imports, Identifier name,
      {Comment comment})
      : super(imports, name, comment: comment);

  String get classDefinition;

  @override
  String get declaration;

  @override
  String primitiveEncoding(String value) {
    throw UnsupportedError(
        'Complex schema types do not have a primitive string encoding for URI'
        'query parameters.');
  }
}

abstract class HasInnertype implements ComplexDartSchemaType {
  DartSchemaType innerType;
}

/// Represents an unnamed List<T> type with a given `T`.
class UnnamedArrayType extends ComplexDartSchemaType implements HasInnertype {
  @override
  DartSchemaType innerType;

  UnnamedArrayType(DartApiImports imports, this.innerType)
      : super(imports, null);

  @override
  DartSchemaType _resolve(DartSchemaTypeDB db) {
    innerType = innerType.resolve(db);
    return this;
  }

  @override
  JsonType get jsonType => ArrayJsonType(imports, innerType.jsonType);

  @override
  String get classDefinition => null;

  @override
  String get declaration =>
      '${imports.core.ref()}List<${innerType.declaration}>';

  @override
  String jsonEncode(String value) {
    if (innerType.needsJsonEncoding) {
      return '$value.map((value) => ${innerType.jsonEncode('value')})'
          '.toList()';
    } else {
      // NOTE: The List from the user is already JSON. We have a big
      // ASSUMPTION here: The user does not modify the list while we're
      // converting JSON -> String (-> Bytes).
      return value;
    }
  }

  @override
  String jsonDecode(String json) {
    if (innerType.needsJsonDecoding) {
      return '($json as ${imports.core.ref()}List)'
          '.map<${innerType.declaration}>'
          '((value) => ${innerType.jsonDecode('value')}).toList()';
    } else {
      // NOTE: The List returned from JSON.decode() transfers ownership to the
      // user (i.e. we don't need to make a copy of it).
      return '($json as ${imports.core.ref()}List)'
          '.cast<${innerType.declaration}>()';
    }
  }
}

/// Represents a named List<T> type with a given `T`.
class NamedArrayType extends ComplexDartSchemaType implements HasInnertype {
  @override
  DartSchemaType innerType;

  NamedArrayType(DartApiImports imports, Identifier name, this.innerType,
      {Comment comment})
      : super(imports, name, comment: comment);

  @override
  DartSchemaType _resolve(DartSchemaTypeDB db) {
    innerType = innerType.resolve(db);
    return this;
  }

  @override
  JsonType get jsonType => ArrayJsonType(imports, innerType.jsonType);

  @override
  String get classDefinition {
    final decode = StringBuffer();
    decode.writeln('  $className.fromJson(${imports.core.ref()}List json)');
    decode.writeln('      : _inner = json.map((value) => '
        '${innerType.jsonDecode('value')}).toList();');

    final encode = StringBuffer();
    encode.writeln('  ${jsonType.declaration} toJson() {');
    encode.writeln('    return _inner.map((value) => '
        '${innerType.jsonEncode('value')}).toList();');
    encode.write('  }');

    final core = imports.core.ref();

    final type = innerType.declaration;
    return '''
${comment.asDartDoc(0)}class $className
    extends ${imports.collection.ref()}ListBase<$type> {
  final ${imports.core.ref()}List<$type> _inner;

  $className() : _inner = [];

$decode
$encode

  @${core}override
  $type operator [](${imports.core.ref()}int key) => _inner[key];

  @${core}override
  void operator []=(${imports.core.ref()}int key, $type value) {
    _inner[key] = value;
  }

  @${core}override
  ${imports.core.ref()}int get length => _inner.length;

  @${core}override
  set length(${imports.core.ref()}int newLength) {
    _inner.length = newLength;
  }

  @${core}override
  void add($type element) {
    _inner.add(element);
  }
}
''';
  }

  @override
  String get declaration => className.name;

  @override
  String jsonEncode(String value) {
    if (innerType.needsJsonEncoding) {
      return '$value.toJson()';
    } else {
      // NOTE: The List from the user can be encoded directly. We have a big
      // ASSUMPTION here: The user does not modify the list while we're
      // converting JSON -> String (-> Bytes).
      return value;
    }
  }

  @override
  String jsonDecode(String json) =>
      '$className.fromJson($json as ${imports.core.ref()}List)';
}

/// Represents an unnamed Map<F, T> type with given types `F` and `T`.
class UnnamedMapType extends ComplexDartSchemaType {
  DartSchemaType fromType;
  DartSchemaType toType;

  UnnamedMapType(DartApiImports imports, this.fromType, this.toType)
      : super(imports, null) {
    if (fromType is! StringType) {
      throw StateError('Violation of assumption: Keys in map types must '
          'be Strings.');
    }
  }

  @override
  DartSchemaType _resolve(DartSchemaTypeDB db) {
    fromType = fromType.resolve(db);
    toType = toType.resolve(db);
    return this;
  }

  @override
  JsonType get jsonType =>
      MapJsonType(imports, fromType.jsonType, toType.jsonType);

  @override
  String get classDefinition => null;

  @override
  String get declaration {
    final from = fromType.declaration;
    final to = toType.declaration;
    return '${imports.core.ref()}Map<$from, $to>';
  }

  @override
  String jsonEncode(String value) {
    if (fromType.needsJsonEncoding || toType.needsJsonEncoding) {
      return '$value.map((key, item) => '
          '${imports.core.ref()}MapEntry(key, ${toType.jsonEncode('item')}))';
    } else {
      // NOTE: The Map from the user can be encoded directly. We have a big
      // ASSUMPTION here: The user does not modify the map while we're
      // converting JSON -> String (-> Bytes).
      return value;
    }
  }

  @override
  String jsonDecode(String json) {
    if (fromType.needsJsonDecoding || toType.needsJsonDecoding) {
      return '''
($json as $coreMapJsonType).map(
(key, item) => ${imports.core.ref()}MapEntry(
key,
${toType.jsonDecode('item')},
),
)''';
    } else {
      // NOTE: The Map returned from JSON.decode() transfers ownership to the
      // user (i.e. we don't need to make a copy of it).
      return '($json as $coreMapJsonType)'
          '.cast<${fromType.declaration}, ${toType.declaration}>()';
    }
  }
}

/// Represents a named Map<F, T> type with given types `F` and `T`.
class NamedMapType extends ComplexDartSchemaType {
  DartSchemaType fromType;
  DartSchemaType toType;

  NamedMapType(
      DartApiImports imports, Identifier name, this.fromType, this.toType,
      {Comment comment})
      : super(imports, name, comment: comment) {
    if (fromType is! StringType) {
      throw StateError('Violation of assumption: Keys in map types must '
          'be Strings.');
    }
  }

  @override
  DartSchemaType _resolve(DartSchemaTypeDB db) {
    fromType = fromType.resolve(db);
    toType = toType.resolve(db);
    return this;
  }

  @override
  JsonType get jsonType =>
      MapJsonType(imports, fromType.jsonType, toType.jsonType);

  @override
  String get classDefinition {
    final core = imports.core.ref();
    final decode = StringBuffer();
    decode.writeln('  $className.fromJson(');
    decode.writeln('      ${imports.coreJsonMap} _json) {');
    decode.writeln('    _json.forEach((${core}String key, value) {');
    decode.writeln('      this[key] = ${toType.jsonDecode('value')};');
    decode.writeln('    });');
    decode.writeln('  }');

    final encode = StringBuffer();
    encode.writeln('  ${imports.coreJsonMap} toJson() =>');
    encode.writeln('    ${imports.coreJsonMap}.of(this);');

    final fromT = fromType.declaration;
    final toT = toType.declaration;

    return '''
${comment.asDartDoc(0)}class $className
    extends ${imports.collection.ref()}MapBase<$fromT, $toT> {
  final _innerMap = <$fromT, $toT>{};

  $className();

$decode
$encode

  @${core}override
  ${toType.declaration}$orNull operator [](${core}Object$orNull key)
      => _innerMap[key];

  @${core}override
  void operator []=($fromT key, $toT value) {
    _innerMap[key] = value;
  }

  @${core}override
  void clear() {
    _innerMap.clear();
  }

  @${core}override
  ${core}Iterable<$fromT> get keys => _innerMap.keys;

  @${core}override
  $toT$orNull remove(${core}Object$orNull key) => _innerMap.remove(key);
}
''';
  }

  @override
  String get declaration => '$className';

  @override
  String jsonEncode(String value) {
    if (fromType.needsJsonEncoding || toType.needsJsonEncoding) {
      return '$value.toJson()';
    } else {
      // NOTE: The Map from the user can be encoded directly. We have a big
      // ASSUMPTION here: The user does not modify the map while we're
      // converting JSON -> String (-> Bytes).
      return value;
    }
  }

  @override
  String jsonDecode(String json) =>
      '$className.fromJson($json as $coreMapJsonType)';
}

/// Represents a named custom dart class with a number of properties.
class ObjectType extends ComplexDartSchemaType {
  final List<DartClassProperty> properties;
  @override
  final MapJsonType jsonType;

  // Will be set by the superVariantType when resolving forward references.
  AbstractVariantType superVariantType;

  ObjectType(DartApiImports imports, Identifier name, this.properties,
      {Comment comment})
      : jsonType =
            MapJsonType(imports, StringJsonType(imports), AnyJsonType(imports)),
        super(imports, name, comment: comment);

  @override
  DartSchemaType _resolve(DartSchemaTypeDB db) {
    for (var i = 0; i < properties.length; i++) {
      final property = properties[i];
      final resolvedProperty = DartClassProperty(property.name,
          property.comment, property.type.resolve(db), property.jsonName,
          byteArrayAccessor: property.byteArrayAccessor);
      properties[i] = resolvedProperty;
    }
    return this;
  }

  @override
  String get classDefinition {
    var superClassString = '';
    if (superVariantType != null) {
      superClassString = ' extends ${superVariantType.declaration} ';
    }

    final propertyString = StringBuffer();
    for (var property in properties) {
      final comment = property.comment.asDartDoc(2);
      var prefix = '', postfix = '';
      if (isVariantDiscriminator(property)) {
        prefix = 'final ';
        postfix = ' = "${escapeString(discriminatorValue())}"';
      }
      propertyString.writeln(
        '$comment  $prefix${property.type.declaration}$orNull ${property.name}'
        '$postfix;',
      );

      if (property.byteArrayAccessor != null) {
        propertyString.writeln(
            '  ${imports.core.ref()}List<${imports.core.ref()}int> get '
            '${property.byteArrayAccessor} =>');
        propertyString.writeln('${imports.convert.ref()}base64.decode'
            '(${property.name}$notNull);');

        propertyString.writeln();

        propertyString.write('  set ${property.byteArrayAccessor}');
        propertyString.writeln(
            '(${imports.core.ref()}List<${imports.core.ref()}int> _bytes) {');
        propertyString.writeln('    ${property.name} = ${imports.convert.ref()}'
            "base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');");
        propertyString.writeln('  }');
      }
    }

    final fromJsonString = StringBuffer();

    final emptyPropertiesComment = properties.isEmpty
        ? '  // ignore: avoid_unused_constructor_parameters\n'
        : '';
    fromJsonString.writeln(
      '  $className.fromJson'
      '($emptyPropertiesComment ${imports.core.ref()}Map _json)',
    );
    if (properties.isEmpty) {
      fromJsonString.writeln(';');
    } else {
      fromJsonString.write('{');
      for (var property in properties) {
        // The super variant fromJson() will call this subclass constructor
        // and the variant descriminator is final.
        if (!isVariantDiscriminator(property)) {
          final decodeString = property.type
              .jsonDecode("_json['${escapeString(property.jsonName)}']");
          fromJsonString.writeln('    if (_json.containsKey'
              "('${escapeString(property.jsonName)}')) {");
          fromJsonString.writeln('      ${property.name} = $decodeString;');
          fromJsonString.writeln('    }');
        }
      }
      fromJsonString.writeln('  }');
    }

    final toJsonString = StringBuffer();
    toJsonString.writeln('${jsonType.declaration} toJson() =>');
    toJsonString.writeln('{');
    for (var property in properties) {
      toJsonString.writeln('if (${property.name} != null)');
      toJsonString.writeln("'${escapeString(property.jsonName)}':"
          '${property.type.jsonEncode('${property.name}$notNull')},');
    }
    toJsonString.write('};');

    return '''
${comment.asDartDoc(0)}class $className $superClassString{
$propertyString
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
  String jsonDecode(String json) =>
      '$className.fromJson($json as $coreMapJsonType)';

  bool isVariantDiscriminator(DartClassProperty prop) =>
      superVariantType != null &&
      prop.jsonName == superVariantType.discriminant;

  String discriminatorValue() {
    for (var key in superVariantType.map.keys) {
      final value = superVariantType.map[key];
      if (value == this) return key;
    }
    throw StateError('Could not find my discriminator string.');
  }
}

/// Represents a schema variant type.
class AbstractVariantType extends ComplexDartSchemaType {
  final String discriminant;
  final Map<String, DartSchemaType> map;
  @override
  final JsonType jsonType;

  AbstractVariantType(
      DartApiImports imports, Identifier name, this.discriminant, this.map,
      {Comment comment})
      : jsonType =
            MapJsonType(imports, StringJsonType(imports), AnyJsonType(imports)),
        super(imports, name, comment: comment);

  @override
  DartSchemaType _resolve(DartSchemaTypeDB db) {
    map.forEach((String name, DartSchemaType ref) {
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
  String get classDefinition {
    final fromJsonString = StringBuffer();
    fromJsonString.writeln(
        '  factory $className.fromJson(${imports.core.ref()}Map json) {');
    fromJsonString.writeln("    var discriminant = json['$discriminant'];");
    map.forEach((String name, DartSchemaType type) {
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
  String jsonDecode(String json) => '$className.fromJson($json)';
}

/// Parses all schemas in [description] and returns a [DartSchemaTypeDB].
DartSchemaTypeDB parseSchemas(
    DartApiImports imports, RestDescription description) {
  final namer = imports.namer;
  final db = DartSchemaTypeDB(imports);

  /*
   * Primitive types "integer"/"boolean"/"double"/"number"/"string":
   *   { "type": "boolean" ... }
   *
   * Any type:
   *   { "type" : "any" ... }
   *
   * Array types:
   *   { "type": "array", "items" : {"type": ...}, ... }
   *
   * Map types:
   *   {
   *     "type": "object",
   *     "additionalProperties" : {"type": ...},
   *     ...
   *   }
   *   => key is always String
   *
   * Forward references:
   *   { "$ref" : "NamedSchemaType" }
   *
   * Normal objects:
   *   {
   *     "type" : "object",
   *     "properties": {"prop1" : {"type" : ...}, ... },
   *     ...
   *   }
   *
   * Variant objects:
   *   {
   *     "type" : 'object",
   *     "variant": {
   *       "discriminant" : "type",
   *       "map": [
   *           { "type_value" : "type_a", "$ref" : "NamedSchemaType" },
   *           { "type_value" : "type_b", "$ref" : "NamedSchemaType" }
   *       ]
   *     }
   *   }
   *
   * If these types appear on the top level, i.e. in the {"schemas" { XXX }},
   * they are named, otherwise they are unnamed.
   */
  DartSchemaType parse(String className, Scope classScope, JsonSchema schema,
      {bool topLevel = false}) {
    if (schema.repeated != null) {
      throw ArgumentError('Only path/query parameters can be repeated.');
    }

    if (schema.type == 'object') {
      var comment = Comment.header(schema.description, true);
      if (schema.additionalProperties != null) {
        final anonValueClassName = namer.schemaClassName('${className}Value');
        final anonClassScope = namer.newClassScope();
        final valueType = parse(
          anonValueClassName,
          anonClassScope,
          schema.additionalProperties,
        );
        if (topLevel) {
          if (schema.additionalProperties.description != null) {
            comment = Comment(
              '${comment.rawComment}\n\n'
              '${schema.additionalProperties.description}',
            );
          }
          // This is a named map type.
          final classId = namer.schemaClass(className);
          return db.register(
            NamedMapType(
              imports,
              classId,
              db.stringType,
              valueType,
              comment: comment,
            ),
          );
        } else {
          // This is an unnamed map type.
          return db.register(UnnamedMapType(imports, db.stringType, valueType));
        }
      } else if (schema.variant != null) {
        // This is a variant type, declaring the type discriminant field and all
        // subclasses.
        final map = <String, DartSchemaType>{};
        for (var mapItem in schema.variant.map) {
          map[mapItem.typeValue] = DartSchemaForwardRef(imports, mapItem.P_ref);
        }
        final classId = namer.schemaClass(className);
        return db.register(AbstractVariantType(
            imports, classId, schema.variant.discriminant, map));
      } else {
        // This is a normal named schema class, we generate a normal
        // [ObjectType] for it with the defined properties.
        final classId = namer.schemaClass(className);
        final properties = <DartClassProperty>[];
        if (schema.properties != null) {
          orderedForEach(schema.properties,
              (String jsonPName, JsonSchema value) {
            final propertyName = classScope.newIdentifier(jsonPName);
            final propertyClass =
                namer.schemaClassName(jsonPName, parent: className);
            final propertyClassScope = namer.newClassScope();

            final propertyType =
                parse(propertyClass, propertyClassScope, value);

            var comment = Comment.header(value.description, true);
            comment = extendEnumComment(comment, propertyType);
            comment = extendAnyTypeComment(comment, propertyType);
            Identifier byteArrayAccessor;
            if (value.format == 'byte' && value.type == 'string') {
              byteArrayAccessor =
                  classScope.newIdentifier('${jsonPName}AsBytes');
            }
            final property = DartClassProperty(
                propertyName, comment, propertyType, jsonPName,
                byteArrayAccessor: byteArrayAccessor);
            properties.add(property);
          });
        }
        return db.register(
            ObjectType(imports, classId, properties, comment: comment));
      }
    } else if (schema.type == 'array') {
      final comment = Comment.header(schema.description, true);
      if (topLevel) {
        final elementClassName = namer.schemaClassName('${className}Element');
        final classId = namer.schemaClass(className);
        return db.register(NamedArrayType(imports, classId,
            parse(elementClassName, namer.newClassScope(), schema.items),
            comment: comment));
      } else {
        return db.register(UnnamedArrayType(
            imports, parse(className, namer.newClassScope(), schema.items)));
      }
    } else if (schema.type == 'any') {
      return db.anyType;
    } else if (schema.P_ref != null) {
      // This is a forward or backward reference, it will be resolved in
      // another pass following the parsing.
      return db.register(DartSchemaForwardRef(imports, schema.P_ref));
    } else {
      return parsePrimitive(imports, db, schema);
    }
  }

  if (description.schemas != null) {
    orderedForEach(description.schemas, (String name, JsonSchema schema) {
      final className = namer.schemaClassName(name);
      final classScope = namer.newClassScope();
      db.registerTopLevel(
          name, parse(className, classScope, schema, topLevel: true));
    });

    // Resolve all forward references and save list in [db.dartTypes].
    db.dartTypes = db.dartTypes.map((type) => type.resolve(db)).toList();

    // Build map of all top level dart schema classes which will be represented
    // as named dart classes.
    db.dartClassTypes.addAll(db.dartTypes
        .where((type) => type.className != null)
        .cast<ComplexDartSchemaType>());
  }

  return db;
}

// NOTE: This will be called for resolving parameter types in methods.
DartSchemaType parseResolved(
    DartApiImports imports, DartSchemaTypeDB db, JsonSchema schema) {
  if (schema.repeated != null && schema.repeated) {
    final innerType = parsePrimitive(imports, db, schema);
    return UnnamedArrayType(imports, innerType);
  }
  return parsePrimitive(imports, db, schema);
}

DartSchemaType parsePrimitive(
    DartApiImports imports, DartSchemaTypeDB db, JsonSchema schema) {
  switch (schema.type) {
    case 'boolean':
      return db.booleanType;
    case 'string':
      switch (schema.format) {
        case 'date-time':
          return db.dateTimeType;
        case 'date':
          return db.dateType;
        case 'int64':
          // 9007199254740991 == pow(2, 53) - 1; the maximum range for integers
          // in javascript (which uses doubles to store integers)
          if (schema.maximum != null &&
              int.parse(schema.maximum) <= 9007199254740991 &&
              schema.minimum != null &&
              int.parse(schema.minimum) >= -9007199254740991) {
            return db.stringIntegerType;
          }
      }
      if (schema.enum_ != null) {
        return db
            .register(EnumType(imports, schema.enum_, schema.enumDescriptions));
      }
      return db.stringType;
    case 'number':
      if (!['float', 'double', null].contains(schema.format)) {
        throw ArgumentError(
            'Only number types with float/double format are supported.');
      }
      return db.doubleType;
    case 'integer':
      final format = schema.format;
      if (format != null && !['int16', 'int32', 'uint32'].contains(format)) {
        throw Exception('Integer format $format is not not supported.');
      }
      return db.integerType;
  }
  throw ArgumentError('Invalid JsonSchema.type (was: ${schema.type}).');
}

/// Generates the codegen'ed dart string for all schema classes.
String generateSchemas(DartSchemaTypeDB db) {
  final sb = StringBuffer();
  for (var value in db.dartClassTypes) {
    final classDefinition = value.classDefinition;
    if (classDefinition != null) {
      sb.writeln(classDefinition);
    }
  }

  return '$sb';
}

Comment extendEnumComment(Comment baseComment, DartSchemaType type) {
  if (type is EnumType) {
    final s = StringBuffer()
      ..writeln(baseComment.rawComment)
      ..writeln('Possible string values are:');
    for (var i = 0; i < type.enumValues.length; i++) {
      final description = type.enumDescriptions[i];
      if (description != null && description.trim().isNotEmpty) {
        s.writeln('- "${type.enumValues[i]}" : $description');
      } else {
        s.writeln('- "${type.enumValues[i]}"');
      }
    }
    return Comment(bracketClean(s.toString()));
  }
  return baseComment;
}

Comment extendAnyTypeComment(Comment baseComment, DartSchemaType type,
    {bool includeNamedTypes = false}) {
  const _anyTypeComment =
      'The values for Object must be JSON objects. It can consist of `num`, '
      '`String`, `bool` and `null` as well as `Map` and `List` values.';

  // This will detect if [type] contains usages of the general AnyType, e.g.
  //   - Object
  //   - List<List<Object>>
  //   - Map<String,List<Object>>
  //   - ...
  bool traverseType(DartSchemaType type) {
    if (includeNamedTypes) {
      if (type is NamedArrayType) {
        return traverseType(type.innerType);
      } else if (type is NamedMapType) {
        return traverseType(type.toType);
      }
    }
    if (type is UnnamedArrayType) {
      return traverseType(type.innerType);
    } else if (type is UnnamedMapType) {
      return traverseType(type.toType);
    } else if (type is AnyType) {
      return true;
    }
    return false;
  }

  if (traverseType(type)) {
    return Comment('${baseComment.rawComment}\n\n$_anyTypeComment');
  }
  return baseComment;
}
