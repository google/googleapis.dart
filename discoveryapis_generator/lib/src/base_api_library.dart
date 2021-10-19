import 'dart_api_library.dart';
import 'dart_resources.dart';
import 'dart_schema_type.dart';
import 'dart_schema_types.dart';
import 'dart_schemas.dart';
import 'generated_googleapis/discovery/v1.dart';
import 'namer.dart';
import 'utils.dart';

abstract class BaseApiLibrary {
  DartSchemaTypeDB get schemaDB;
  DartApiClass get apiClass;

  final ApiLibraryNamer namer;
  final RestDescription description;

  late final DartApiImports imports;

  BaseApiLibrary(this.description, String apiClassSuffix,
      {bool useCorePrefixes = true})
      : namer = ApiLibraryNamer(apiClassSuffix: apiClassSuffix) {
    imports = DartApiImports.fromNamer(namer, useCorePrefixes: useCorePrefixes);
  }
  String libraryHeader();

  String get librarySource {
    final sink = StringBuffer();
    final schemas = generateSchemas(referencedTypes);
    final resources = generateResources(apiClass);
    sink.write(libraryHeader());
    if (resources.isNotEmpty) {
      sink.write('$resources\n$schemas');
    } else {
      sink.write(schemas);
    }
    return formatSource(sink.toString());
  }

  late final List<ComplexDartSchemaType> referencedTypes =
      apiClass.referencedSchemaTypes.toSet().toList(growable: false)
        ..sort((a, b) => schemaDB.dartClassTypes
            .indexOf(a)
            .compareTo(schemaDB.dartClassTypes.indexOf(b)));
}

extension on DartResourceClass {
  Iterable<ComplexDartSchemaType> get referencedSchemaTypes sync* {
    for (var method in methods) {
      yield* method.referencedSchemaTypes;
    }

    for (var resource in subResources) {
      yield* resource.referencedSchemaTypes;
    }
  }
}

extension on DartResourceMethod {
  Iterable<ComplexDartSchemaType> get referencedSchemaTypes sync* {
    if (returnType != null) yield* returnType!.referencedSchemaTypes;
    if (requestParameter != null) {
      yield* requestParameter!.type.referencedSchemaTypes;
    }
    for (var param in parameters) {
      yield* param.type.referencedSchemaTypes;
    }
    for (var param in namedParameters) {
      yield* param.type.referencedSchemaTypes;
    }
  }
}

extension on DartSchemaType? {
  static final _stack = <DartSchemaType>[];

  Iterable<ComplexDartSchemaType> get referencedSchemaTypes sync* {
    final me = this;
    if (me == null || _stack.contains(me)) {
      return;
    }
    _stack.add(me);
    try {
      if (me is ComplexDartSchemaType) {
        yield me;

        if (me is ObjectType) {
          for (var property in me.properties) {
            yield* property.type.referencedSchemaTypes;
          }
        } else if (me is NamedMapType) {
          yield* me.fromType.referencedSchemaTypes;
          yield* me.toType.referencedSchemaTypes;
        } else if (me is UnnamedMapType) {
          yield* me.valueType.referencedSchemaTypes;
          yield* me.keyType.referencedSchemaTypes;
        } else if (me is HasInnertype) {
          yield* me.innerType.referencedSchemaTypes;
        } else {
          print(['nope!', me, me.runtimeType, me.className?.name].join(' '));
        }
      }
    } finally {
      assert(_stack.last == this);
      _stack.removeLast();
    }
  }
}
