// Copyright (c) 2015, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library discoveryapis_generator.client_schemas;

import '../dart_api_library.dart';
import '../dart_comments.dart';
import '../dart_schemas.dart';
import '../generated_googleapis/discovery/v1.dart';
import '../namer.dart';
import '../null_safety.dart';
import '../utils.dart';

/// Represents a named custom dart class with a number of properties.
class ClientObjectType extends ObjectType {
  ClientObjectType(DartApiImports imports, Identifier name,
      List<DartClassProperty> properties,
      {Comment comment})
      : super(imports, name, properties, comment: comment);

  @override
  String get classDefinition {
    var superClassString = '';
    if (superVariantType != null) {
      superClassString = ' extends ${superVariantType.declaration} ';
    }

    final fromJsonString = StringBuffer();
    fromJsonString.writeln(
      'static $className fromJson(${imports.core.ref()}Map _json) {',
    );
    fromJsonString.writeln('    final message = $className();');
    for (var property in properties) {
      // The super variant fromJson() will call this subclass constructor
      // and the variant discriminator is final.
      if (!isVariantDiscriminator(property)) {
        final decodeString = property.type
            .jsonDecode("_json['${escapeString(property.jsonName)}']");
        fromJsonString.writeln(
          "    if (_json.containsKey('${escapeString(property.jsonName)}')) {",
        );
        fromJsonString
            .writeln('      message.${property.name} = $decodeString;');
        fromJsonString.writeln('    }');
      }
    }
    fromJsonString.writeln('    return message;');
    fromJsonString.writeln('  }');

    final toJsonString = StringBuffer();
    toJsonString.writeln(
      'static $_coreMapJsonType toJson($className message) {',
    );
    toJsonString.writeln('    final _json = $_coreMapJsonTypeArguments{};');

    for (var property in properties) {
      toJsonString.writeln('    if (message.${property.name} != null) {');
      toJsonString.writeln(
        "      _json['${escapeString(property.jsonName)}'] = "
        '${property.type.jsonEncode('message.${property.name}$notNull')};',
      );
      toJsonString.writeln('    }');
    }
    toJsonString.writeln('    return _json;');
    toJsonString.write('  }');

    return '''
${comment.asDartDoc(0)}class ${className}Factory $superClassString{
$fromJsonString
$toJsonString
}
''';
  }

  @override
  String jsonEncode(String value) => '${className}Factory.toJson($value)';

  @override
  String jsonDecode(String json) =>
      '${className}Factory.fromJson($json as $_coreMapJsonType)';

  String get _coreMapJsonTypeArguments =>
      '<${imports.core.ref()}String, ${imports.core.ref()}dynamic>';

  String get _coreMapJsonType =>
      '${imports.core.ref()}Map$_coreMapJsonTypeArguments';
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
   */
  DartSchemaType parse(String className, Scope classScope, JsonSchema schema) {
    if (schema.repeated != null) {
      throw ArgumentError('Only path/query parameters can be repeated.');
    }

    if (schema.type == 'object') {
      final comment = Comment.header(schema.description, true);
      if (schema.additionalProperties != null) {
        final anonValueClassName = namer.schemaClassName('${className}Value');
        final anonClassScope = namer.newClassScope();
        final valueType = parse(
            anonValueClassName, anonClassScope, schema.additionalProperties);
        return db.register(UnnamedMapType(imports, db.stringType, valueType));
      } else if (schema.variant != null) {
        // This is a variant type, declaring the type discriminant field and all
        // subclasses.
        // This is currently unsupported for client stub generations.
        throw UnimplementedError(
            'The \'variant\' schema type is not supported for client stub '
            'generation.');
      } else {
        // This is a normal named schema class, we generate a normal
        // [ClientObjectType] for it with the defined properties.
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

            var comment = Comment(value.description);
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
            ClientObjectType(imports, classId, properties, comment: comment));
      }
    } else if (schema.type == 'array') {
      return db.register(UnnamedArrayType(
          imports, parse(className, namer.newClassScope(), schema.items)));
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
      db.registerTopLevel(name, parse(className, classScope, schema));
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
