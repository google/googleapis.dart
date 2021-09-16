import 'package:meta/meta.dart';

import 'dart_api_library.dart';
import 'dart_comments.dart';
import 'dart_schemas.dart';
import 'json_type.dart';
import 'namer.dart';
import 'utils.dart';

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
  final Identifier? className;
  final Comment comment;
  final DartApiImports imports;

  bool _resolved = false;

  DartSchemaType(this.imports, this.className, {Comment? comment})
      : comment = comment ?? Comment.empty;

  DartSchemaType? resolve(DartSchemaTypeDB db) {
    if (!_resolved) {
      _resolved = true;
      return resolveCore(db);
    }
    return this;
  }

  @visibleForOverriding
  DartSchemaType? resolveCore(DartSchemaTypeDB db);

  String? get declaration;

  JsonType get jsonType;

  /// [value] is the string expression of this [DartSchemaType] that needs to be
  /// encoded.
  ///
  /// This method is used for encoding parameter types for the URI query part.
  String? primitiveEncoding(String? value);

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

  String decodeFromMap(String jsonName) {
    final decodeString = jsonDecode("_json['${escapeString(jsonName)}']");

    return '_json.containsKey'
        "('${escapeString(jsonName)}') ? $decodeString : null";
  }
}
