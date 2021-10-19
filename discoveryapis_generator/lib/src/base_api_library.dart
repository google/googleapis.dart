import 'dart_api_library.dart';
import 'dart_resources.dart';
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
    final schemas = generateSchemas(schemaDB.dartClassTypes);
    final resources = generateResources(apiClass);
    sink.write(libraryHeader());
    if (resources.isNotEmpty) {
      sink.write('$resources\n$schemas');
    } else {
      sink.write(schemas);
    }
    return formatSource(sink.toString());
  }
}
