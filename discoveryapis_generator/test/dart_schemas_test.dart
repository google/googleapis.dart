// Copyright (c) 2015, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:discoveryapis_generator/src/dart_api_library.dart';
import 'package:discoveryapis_generator/src/dart_schema_type.dart';
import 'package:discoveryapis_generator/src/dart_schema_types.dart';
import 'package:discoveryapis_generator/src/dart_schemas.dart';
import 'package:discoveryapis_generator/src'
    '/generated_googleapis/discovery/v1.dart';
import 'package:discoveryapis_generator/src/namer.dart';
import 'package:test/test.dart';

void withImports(void Function(DartApiImports, ApiLibraryNamer) function) {
  final namer = ApiLibraryNamer();
  final imports = DartApiImports.fromNamer(namer);
  return function(imports, namer);
}

void withParsedDB(
  Map<String, dynamic> json,
  void Function(DartSchemaTypeDB) function,
) =>
    withImports((imports, namer) {
      final description = RestDescription.fromJson(json);
      final db = parseSchemas(imports, description);

      namer.nameAllIdentifiers();

      return function(db);
    });

void main() {
  group('dart-schemas', () {
    test('empty', () {
      withParsedDB({}, (DartSchemaTypeDB db) {
        expect(db.dartTypes, hasLength(0));
        expect(db.namedSchemaTypes, hasLength(0));
        expect(db.dartClassTypes, hasLength(0));
      });

      withParsedDB({'empty-schemas': {}}, (DartSchemaTypeDB db) {
        expect(db.dartTypes, hasLength(0));
        expect(db.namedSchemaTypes, hasLength(0));
        expect(db.dartClassTypes, hasLength(0));
      });
    });

    test('invalid', () {
      expect(
          () => withParsedDB({
                'schemas': {
                  'Task': {
                    'type': 'object',
                    'repeated': true,
                  },
                }
              }, (_) {}),
          throwsArgumentError);
    });

    test('object-schema', () {
      withParsedDB({
        'schemas': {
          'Task': {
            'type': 'object',
            'properties': {
              'age': {'type': 'integer'},
              'any': {'type': 'any'},
              'icon': {'type': 'string', 'format': 'byte'},
              'isMale': {'type': 'boolean'},
              'labels': {
                'type': 'array',
                'items': {
                  'type': 'integer',
                },
              },
              'name': {'type': 'string'},
              'properties': {
                'type': 'object',
                'additionalProperties': {
                  'type': 'string',
                },
              },
              'x1Date': {'type': 'string', 'format': 'date'},
              'x2DateTime': {'type': 'string', 'format': 'date-time'},
              'x3Int16': {'type': 'integer', 'format': 'int16'},
            },
          },
        }
      }, (DartSchemaTypeDB db) {
        expect(db.dartTypes, hasLength(3));
        expect(db.namedSchemaTypes, hasLength(1));
        expect(db.dartClassTypes, hasLength(1));

        expect(db.namedSchemaTypes, contains('Task'));
        expect(db.dartClassTypes, hasLength(1));
        final task = db.dartClassTypes.first as ObjectType;
        expect(db.dartTypes, contains(task));
        expect(db.namedSchemaTypes['Task'], equals(task));

        // Do tests on `task`.
        expect(task.className!.name, equals('Task'));
        expect(task.superVariantType, isNull);

        // Do tests on `task.properties`.

        final age = task.properties[0];
        expect(age, isNotNull);
        expect(age.name.name, equals('age'));
        expect(age.type, equals(db.integerType));

        final any = task.properties[1];
        expect(any, isNotNull);
        expect(any.name.name, equals('any'));
        expect(any.type, equals(db.anyType));

        final icon = task.properties[2];
        expect(icon, isNotNull);
        expect(icon.name.name, equals('icon'));
        expect(icon.type, equals(db.stringType));
        expect(icon.byteArrayAccessor!.name, equals('iconAsBytes'));

        final isMale = task.properties[3];
        expect(isMale, isNotNull);
        expect(isMale.name.name, equals('isMale'));
        expect(isMale.type, equals(db.booleanType));

        final labels = task.properties[4];
        expect(labels, isNotNull);
        expect(labels.name.name, equals('labels'));
        expect(labels.type is UnnamedArrayType, isTrue);
        final labelsTyped = labels.type as UnnamedArrayType;
        expect(labelsTyped.className, isNull);
        expect(labelsTyped.innerType, equals(db.integerType));

        final name = task.properties[5];
        expect(name, isNotNull);
        expect(name.name.name, equals('name'));
        expect(name.type, equals(db.stringType));

        final properties = task.properties[6];
        expect(properties, isNotNull);
        expect(properties.name.name, equals('properties'));
        expect(properties.type is UnnamedMapType, isTrue);
        final propertiesTyped = properties.type as UnnamedMapType;
        expect(propertiesTyped.className, isNull);
        expect(propertiesTyped.keyType, equals(db.stringType));
        expect(propertiesTyped.valueType, equals(db.stringType));

        final date = task.properties[7];
        expect(date, isNotNull);
        expect(date.name.name, equals('x1Date'));
        expect(date.type is DateType, isTrue);

        final dateTime = task.properties[8];
        expect(dateTime, isNotNull);
        expect(dateTime.name.name, equals('x2DateTime'));
        expect(dateTime.type is DateTimeType, isTrue);

        final int16 = task.properties[9];
        expect(int16, isNotNull);
        expect(int16.name.name, equals('x3Int16'));
        expect(int16.type is IntegerType, isTrue);
      });
    });

    test('variant-schema-with-forward-references', () {
      withParsedDB({
        'schemas': {
          'Geometry': {
            'type': 'object',
            'variant': {
              'discriminant': 'my_type',
              'map': [
                {
                  'type_value': 'my_line_type',
                  '\$ref': 'LineGeometry',
                },
                {
                  'type_value': 'my_polygon_type',
                  '\$ref': 'PolygonGeometry',
                },
              ],
            },
          },
          'LineGeometry': {
            'type': 'object',
            'properties': {
              'label': {'type': 'string'},
            },
          },
          'PolygonGeometry': {
            'type': 'object',
            'properties': {
              'points': {'type': 'integer'},
            },
          },
          'IndirectPolygonGeometry': {
            '\$ref': 'PolygonGeometry',
          }
        }
      }, (DartSchemaTypeDB db) {
        expect(db.dartTypes, hasLength(3));
        expect(db.namedSchemaTypes, hasLength(4));
        expect(db.dartClassTypes, hasLength(3));

        // 'Geometry' variant schema.
        expect(db.namedSchemaTypes, contains('Geometry'));
        final geo = db.dartClassTypes[0] as AbstractVariantType;
        expect(db.dartTypes, contains(geo));
        expect(db.namedSchemaTypes['Geometry'], equals(geo));

        // 'LineGeometry' schema
        expect(db.namedSchemaTypes, contains('LineGeometry'));
        final lineGeo = db.dartClassTypes[1] as ObjectType;
        expect(db.dartTypes, contains(lineGeo));
        expect(db.namedSchemaTypes['LineGeometry'], equals(lineGeo));

        // 'PolygonGeometry' schema
        expect(db.namedSchemaTypes, contains('PolygonGeometry'));
        final polyGeo = db.dartClassTypes[2] as ObjectType;
        expect(db.dartTypes, contains(polyGeo));
        expect(db.namedSchemaTypes['PolygonGeometry'], equals(polyGeo));

        // 'IndirectPolygonGeometry'
        expect(db.namedSchemaTypes, contains('IndirectPolygonGeometry'));
        final indirectPolyGeo = db.namedSchemaTypes['IndirectPolygonGeometry']
            as DartSchemaForwardRef;
        expect(indirectPolyGeo.forwardRefName, equals('PolygonGeometry'));

        // Check variant map
        expect(geo.className!.name, equals('Geometry'));
        expect(geo.discriminant, equals('my_type'));
        expect(geo.map, contains('my_line_type'));
        expect(geo.map['my_line_type'], equals(lineGeo));
        expect(geo.map, contains('my_polygon_type'));
        expect(geo.map['my_polygon_type'], equals(polyGeo));

        expect(lineGeo.className!.name, equals('LineGeometry'));
        expect(lineGeo.properties.first.name.name, equals('label'));
        expect(lineGeo.properties.first.type, equals(db.stringType));
        expect(polyGeo.className!.name, equals('PolygonGeometry'));
        expect(polyGeo.properties.first.name.name, equals('points'));
        expect(polyGeo.properties.first.type, equals(db.integerType));
      });
    });

    test('object-schema-name-overlap', () {
      withParsedDB({
        'schemas': {
          // Task, TaskName, TaskName_1
          'Overlap': {
            'type': 'object',
            'properties': {
              'array': {
                'type': 'array',
                'items': {
                  'type': 'integer',
                },
              },
              'object': {
                'type': 'object',
                'properties': {
                  'prop': {'type': 'integer'},
                },
              },
              'integer': {
                'type': 'integer',
              },
            },
          },
          'OverlapArray': {
            'type': 'object',
            'properties': {
              'oaprop': {'type': 'integer'},
            },
          },
          'OverlapObject': {
            'type': 'object',
            'properties': {
              'ooprop': {'type': 'integer'},
            },
          },
          // INFO: Should generate the following classes:
          // Overlap, OverlapArray, OverlapObject, OverlapObject_1
          //
          // NOTE: Since we don't generate a class for
          // - [Overlap.array]
          // - [Overlap.integer]
          // we can assert that
          // - the name 'OverlapArray' will not be allocated twice
          // - the name 'OverlapInteger' will not be allocated
        }
      }, (DartSchemaTypeDB db) {
        expect(db.dartClassTypes, hasLength(4));

        expect(db.namedSchemaTypes, hasLength(3));
        expect(db.namedSchemaTypes, contains('Overlap'));
        expect(db.namedSchemaTypes, contains('OverlapArray'));
        expect(db.namedSchemaTypes, contains('OverlapObject'));

        // The order in [db.dartClassTypes] is:
        // depth-first traversal with postorder node processing.
        //
        // Naming happens on the scope tree level-by-level, so it depends on
        // the order of insertion into the scope.
        expect(db.dartClassTypes, hasLength(4));
        expect(db.dartClassTypes[0].className!.name, equals('OverlapObject'));
        expect(db.dartClassTypes[1].className!.name, equals('Overlap'));
        expect(db.dartClassTypes[2].className!.name, equals('OverlapArray'));
        expect(db.dartClassTypes[3].className!.name, equals('OverlapObject_1'));

        expect(db.dartClassTypes[1], equals(db.namedSchemaTypes['Overlap']));
        expect(
            db.dartClassTypes[2], equals(db.namedSchemaTypes['OverlapArray']));
        expect(
            db.dartClassTypes[3], equals(db.namedSchemaTypes['OverlapObject']));
      });
    });

    test('named-map-schema', () {
      withParsedDB({
        'schemas': {
          'Properties': {
            'type': 'object',
            'additionalProperties': {
              'type': 'integer',
            },
          },
        }
      }, (DartSchemaTypeDB db) {
        expect(db.dartTypes, hasLength(1));
        expect(db.namedSchemaTypes, hasLength(1));
        expect(db.dartClassTypes, hasLength(1));

        expect(db.namedSchemaTypes, contains('Properties'));
        final properties = db.dartClassTypes.first as NamedMapType;
        expect(properties.className!.name, equals('Properties'));
        expect(properties.fromType, equals(db.stringType));
        expect(properties.toType, equals(db.integerType));
      });
    });

    test('named-array-schema', () {
      withParsedDB({
        'schemas': {
          'NamedArray': {
            'type': 'array',
            'items': {
              'type': 'string',
            },
          },
        }
      }, (DartSchemaTypeDB db) {
        expect(db.dartTypes, hasLength(1));
        expect(db.namedSchemaTypes, hasLength(1));
        expect(db.dartClassTypes, hasLength(1));

        expect(db.namedSchemaTypes, contains('NamedArray'));
        final properties = db.dartClassTypes.first as NamedArrayType;
        expect(properties.className!.name, equals('NamedArray'));
        expect(properties.innerType, equals(db.stringType));
      });
    });

    test('no-enum-comments', () {
      withParsedDB({
        'schemas': {
          'MyClass': {
            'type': 'string',
            'enum': ['foo', 'bar'],
          },
        }
      }, (DartSchemaTypeDB db) {
        expect(db.dartTypes, hasLength(1));
        expect(db.namedSchemaTypes, hasLength(1));
        expect(db.dartClassTypes, hasLength(0));

        expect(db.namedSchemaTypes, contains('MyClass'));
        final enumType = db.dartTypes.first as EnumType;
        expect(enumType.enumValues, equals(['foo', 'bar']));
        expect(enumType.enumDescriptions, equals(['A foo.', 'A bar.']));
      });
    });

    test('needs-json-encoding-decoding', () {
      withImports((imports, namer) {
        namer.nameAllIdentifiers();

        withParsedDB({
          'schemas': {
            'NamedArraySimple': {
              'type': 'array',
              'items': {
                'type': 'string',
              },
            },
            'NamedMapSimple': {
              'type': 'object',
              'additionalProperties': {
                'type': 'string',
              },
            },
            'NamedArrayComplex': {
              'type': 'array',
              'items': {
                'type': 'object',
              },
            },
            'NamedMapComplex': {
              'type': 'object',
              'additionalProperties': {
                'type': 'object',
              },
            },
            'NamedObject': {
              'type': 'object',
            },
            'C': {
              'type': 'object',
              'properties': {
                'pArraySimple': {
                  'type': 'array',
                  'items': {
                    'type': 'string',
                  },
                },
                'pMapSimple': {
                  'type': 'object',
                  'additionalProperties': {
                    'type': 'string',
                  },
                },
                'pArrayComplex': {
                  'type': 'array',
                  'items': {
                    'type': 'object',
                  },
                },
                'pMapComplex': {
                  'type': 'object',
                  'additionalProperties': {
                    'type': 'object',
                  },
                },
                'pObject': {
                  'type': 'object',
                },
              }
            }
          },
        }, (DartSchemaTypeDB db) {
          // Primitive Types
          expect(db.stringType.needsJsonEncoding, false);
          expect(db.stringType.needsJsonDecoding, true);
          expect(db.integerType.needsJsonEncoding, false);
          expect(db.integerType.needsJsonDecoding, true);
          expect(db.doubleType.needsJsonEncoding, false);
          expect(db.doubleType.needsJsonDecoding, true);
          expect(db.booleanType.needsJsonEncoding, false);
          expect(db.booleanType.needsJsonDecoding, true);
          expect(db.dateType.needsJsonEncoding, true);
          expect(db.dateType.needsJsonDecoding, true);
          expect(db.dateTimeType.needsJsonEncoding, true);
          expect(db.dateTimeType.needsJsonDecoding, true);
          expect(db.anyType.needsJsonEncoding, false);
          expect(db.anyType.needsJsonDecoding, false);

          // Named complex types
          final namedArraySimple = db.namedSchemaTypes['NamedArraySimple']!;
          final namedArrayComplex = db.namedSchemaTypes['NamedArrayComplex']!;
          final namedMapSimple = db.namedSchemaTypes['NamedMapSimple']!;
          final namedMapComplex = db.namedSchemaTypes['NamedMapComplex']!;
          final namedObject = db.namedSchemaTypes['NamedObject']!;

          // Array simple/complex
          expect(namedArraySimple.needsJsonEncoding, false);
          expect(namedArraySimple.needsJsonDecoding, true);
          expect(namedArrayComplex.needsJsonEncoding, true);
          expect(namedArrayComplex.needsJsonDecoding, true);

          // Map simple/complex
          expect(namedMapSimple.needsJsonEncoding, false);
          expect(namedMapSimple.needsJsonDecoding, true);
          expect(namedMapComplex.needsJsonEncoding, true);
          expect(namedMapComplex.needsJsonDecoding, true);

          // Objects
          expect(namedObject.needsJsonEncoding, true);
          expect(namedObject.needsJsonDecoding, true);

          // Unnamed complex types
          final C = db.namedSchemaTypes['C'] as ObjectType?;
          DartSchemaType? findPropertyType(String name) {
            for (var property in C!.properties) {
              if (property.name.preferredName == name) return property.type;
            }
            throw StateError('not found');
          }

          // Unnamed complex types
          final unNamedArraySimple = findPropertyType('pArraySimple')!;
          final unNamedArrayComplex = findPropertyType('pArrayComplex')!;
          final unNamedMapSimple = findPropertyType('pMapSimple')!;
          final unNamedMapComplex = findPropertyType('pMapComplex')!;
          final unNamedObject = findPropertyType('pObject')!;

          // Array simple/complex
          expect(unNamedArraySimple.needsJsonEncoding, false);
          expect(unNamedArraySimple.needsJsonDecoding, true);
          expect(unNamedArrayComplex.needsJsonEncoding, true);
          expect(unNamedArrayComplex.needsJsonDecoding, true);

          // Map simple/complex
          expect(unNamedMapSimple.needsJsonEncoding, false);
          expect(unNamedMapSimple.needsJsonDecoding, true);
          expect(unNamedMapComplex.needsJsonEncoding, true);
          expect(unNamedMapComplex.needsJsonDecoding, true);

          // Objects
          expect(unNamedObject.needsJsonEncoding, true);
          expect(unNamedObject.needsJsonDecoding, true);
        });
      });
    });
  });
}
