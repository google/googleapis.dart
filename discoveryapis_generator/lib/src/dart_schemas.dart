// Copyright (c) 2015, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart_api_library.dart';
import 'dart_comments.dart';
import 'dart_schema_type.dart';
import 'dart_schema_types.dart';
import 'generated_googleapis/discovery/v1.dart';
import 'namer.dart';
import 'type_deduplicate.dart';
import 'utils.dart';

/// Class for keeping all named schemas. This is used for
///  - resolving forward references
///  - querying types by name
///  - access to built-in types
class DartSchemaTypeDB {
  // Builtin types
  final StringType stringType;
  final NullableStringType nullableStringType;
  final IntegerType integerType;
  final StringIntegerType stringIntegerType;
  final DoubleType doubleType;
  final BooleanType booleanType;
  final DateType dateType;
  final DateTimeType dateTimeType;
  final AnyType anyType;

  DartSchemaTypeDB(DartApiImports imports)
      : stringType = StringType(imports),
        nullableStringType = NullableStringType(imports),
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
  final Identifier? byteArrayAccessor;

  DartClassProperty(this.name, this.comment, this.type, this.jsonName,
      {this.byteArrayAccessor});
}

/// Parses all schemas in [description] and returns a [DartSchemaTypeDB].
DartSchemaTypeDB parseSchemas(
  DartApiImports imports,
  RestDescription description,
) {
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
        final nullableValue = _forceNullableValueComments
            .any((element) => comment.rawComment.contains(element));
        var valueType = parse(
          anonValueClassName,
          anonClassScope,
          schema.additionalProperties!,
        );
        if (valueType is StringType && nullableValue) {
          valueType = db.nullableStringType;
        }
        if (topLevel) {
          if (schema.additionalProperties!.description != null) {
            comment = Comment(
              '${comment.rawComment}\n\n'
              '${schema.additionalProperties!.description}',
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
          return db.register(UnnamedMapType(imports, valueType));
        }
      } else if (schema.variant != null) {
        // This is a variant type, declaring the type discriminant field and all
        // subclasses.
        final map = <String?, DartSchemaType>{};
        for (var mapItem in schema.variant!.map!) {
          map[mapItem.typeValue] = DartSchemaForwardRef(imports, mapItem.P_ref);
        }
        final classId = namer.schemaClass(className);
        return db.register(AbstractVariantType(
            imports, classId, schema.variant!.discriminant, map));
      } else {
        // This is a normal named schema class, we generate a normal
        // [ObjectType] for it with the defined properties.
        final classId = namer.schemaClass(className);
        final properties = <DartClassProperty>[];
        if (schema.properties != null) {
          orderedForEach(schema.properties!,
              (String jsonPName, JsonSchema? value) {
            final propertyName = classScope.newIdentifier(jsonPName);
            final propertyClass =
                namer.schemaClassName(jsonPName, parent: className);
            final propertyClassScope = namer.newClassScope();

            final propertyType =
                parse(propertyClass, propertyClassScope, value!);

            var comment = Comment.header(value.description, true);
            comment = extendEnumComment(comment, propertyType);
            comment = extendAnyTypeComment(comment, propertyType);
            Identifier? byteArrayAccessor;
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
          ObjectType(imports, classId, properties, comment: comment)
            ..tagForDeduplicating(schema),
        );
      }
    } else if (schema.type == 'array') {
      final comment = Comment.header(schema.description, true);
      if (topLevel) {
        final elementClassName = namer.schemaClassName('${className}Element');
        final classId = namer.schemaClass(className);
        return db.register(NamedArrayType(imports, classId,
            parse(elementClassName, namer.newClassScope(), schema.items!),
            comment: comment));
      } else {
        return db.register(UnnamedArrayType(
            imports, parse(className, namer.newClassScope(), schema.items!)));
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
    orderedForEach(description.schemas!, (String name, JsonSchema? schema) {
      final className = namer.schemaClassName(name);
      final classScope = namer.newClassScope();
      db.registerTopLevel(
          name, parse(className, classScope, schema!, topLevel: true));
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

DartSchemaType parsePrimitive(
  DartApiImports imports,
  DartSchemaTypeDB db,
  JsonSchema schema,
) {
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
              int.parse(schema.maximum!) <= 9007199254740991 &&
              schema.minimum != null &&
              int.parse(schema.minimum!) >= -9007199254740991) {
            return db.stringIntegerType;
          }
      }
      if (schema.enum_ != null) {
        return db.register(
          EnumType(imports, schema.enum_!, schema.enumDescriptions),
        );
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
String generateSchemas(Iterable<ComplexDartSchemaType> classTypes) {
  final sb = StringBuffer();

  for (var value in classTypes) {
    final classDefinition = value.classDefinition();
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
      if (description.trim().isNotEmpty) {
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
  bool traverseType(DartSchemaType? type) {
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
      return traverseType(type.valueType);
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

const _forceNullableValueComments = {
  // See https://github.com/google/googleapis.dart/issues/200
  'Entries with null values are cleared',
};
