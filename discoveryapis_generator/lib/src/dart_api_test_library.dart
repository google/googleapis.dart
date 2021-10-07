// Copyright (c) 2015, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: missing_whitespace_between_adjacent_strings

library discoveryapis_generator.dart_api_test_library;

import 'dart_api_library.dart';
import 'dart_resources.dart';
import 'dart_schema_type.dart';
import 'dart_schema_types.dart';
import 'namer.dart';
import 'uri_template.dart';
import 'utils.dart';

/// Generates a API test library based on a [DartApiLibrary].
class DartApiTestLibrary extends TestHelper {
  final DartApiLibrary apiLibrary;
  final String apiImportPath;
  final String? packageName;

  final Map<DartSchemaType?, SchemaTest> schemaTests = {};
  final List<ResourceTest> resourceTests = [];
  final Map<ResourceTest, ResourceTest> parentResourceTests = {};

  /// Generates a API test library for [apiLibrary].
  DartApiTestLibrary.build(
      this.apiLibrary, this.apiImportPath, this.packageName) {
    void handleType(DartSchemaType? schema) {
      schemaTests.putIfAbsent(schema, () => testFromSchema(this, schema));
    }

    void traverseResource(
      DartResourceClass resource,
      ResourceTest? parent,
      Identifier? nameInParent,
    ) {
      // Method parameters might have more types we need to register
      // (e.g. List<String>):
      for (var method in resource.methods) {
        for (var p in method.parameters) {
          handleType(p.type);
        }
        for (var p in method.namedParameters) {
          handleType(p.type);
        }
      }

      // Register resource tests.
      final test = ResourceTest(this, resource, parent, nameInParent);
      if (resource.methods.isNotEmpty) {
        resourceTests.add(test);
      }
      for (var i = 0; i < resource.subResources.length; i++) {
        final subResource = resource.subResources[i];
        final subResourceName = resource.subResourceIdentifiers[i];
        traverseResource(subResource, test, subResourceName);
      }
    }

    // Build up [schemaTests] and [resourceTests].
    final db = apiLibrary.schemaDB;
    handleType(db.integerType);
    handleType(db.doubleType);
    handleType(db.booleanType);
    handleType(db.stringType);
    handleType(db.nullableStringType);
    handleType(db.dateType);
    handleType(db.dateTimeType);
    handleType(db.anyType);

    apiLibrary.schemaDB.dartTypes.forEach(handleType);

    traverseResource(apiLibrary.apiClass, null, null);

    UnnamedSchemaTest.resetCounter();
  }

  String get librarySource {
    final sink = StringBuffer();
    sink.writeln(libraryHeader);

    // Build functions for creating schema objects and for validating them.
    schemaTests.forEach((DartSchemaType? schema, SchemaTest test) {
      sink.write(test.buildSchemaFunction);
      sink.write(test.checkSchemaFunction);
    });

    sink.writeln();

    withFunc(0, sink, 'void main', '', () {
      schemaTests.forEach((DartSchemaType? schema, SchemaTest test) {
        sink.write(test.schemaTest);
      });
      for (var test in resourceTests) {
        sink.write(test.resourceTest);
      }
    });

    return '$sink';
  }

  String get libraryHeader {
    final pkgImports = [
      "import '$apiImportPath' as api;",
      "import 'package:http/http.dart' as http;",
      "import 'package:test/test.dart' as unittest;",
    ]..sort();

    return """
${ignoreForFileComments(_testIgnores)}

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

${pkgImports.join('\n')}

import '../$testSharedDartFileName';

""";
  }
}

const _testIgnores = {
  ...ignoreForFileSet,
  'cascade_invocations',
  'prefer_const_declarations',
  'prefer_final_locals',
  'unnecessary_cast',
  'unnecessary_parenthesis',
  'unused_local_variable',
};

const testSharedDartFileName = 'test_shared.dart';

String get testHelperLibraryContent => '''
import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:http/http.dart' as http;

class HttpServerMock extends http.BaseClient {
  late core.Future<http.StreamedResponse> Function(
      http.BaseRequest, core.Object?) _callback;
  late core.bool _expectJson;

  void register(
    core.Future<http.StreamedResponse> Function(
      http.BaseRequest,
      core.Object?,
    )
        callback,
    core.bool expectJson,
  ) {
    _callback = callback;
    _expectJson = expectJson;
  }

  @core.override
  async.Future<http.StreamedResponse> send(http.BaseRequest request) async {
    if (_expectJson) {
      final jsonString =
          await request.finalize().transform(convert.utf8.decoder).join();
      if (jsonString.isEmpty) {
        return _callback(request, null);
      } else {
        return _callback(request, convert.json.decode(jsonString));
      }
    } else {
      final stream = request.finalize();
      final data = await stream.toBytes();
      return _callback(request, data);
    }
  }
}

http.StreamedResponse stringResponse(
  core.int status,
  core.Map<core.String, core.String> headers,
  core.String body,
) {
  final stream = async.Stream.fromIterable([convert.utf8.encode(body)]);
  return http.StreamedResponse(stream, status, headers: headers);
}
''';

/// Will generate tests for [resource] of [apiLibrary].
class ResourceTest extends TestHelper {
  final DartApiTestLibrary apiTestLibrary;
  final DartResourceClass resource;
  late DartApiLibrary apiLibrary;
  final ResourceTest? parent;
  final Identifier? nameInParent;

  ResourceTest(
      this.apiTestLibrary, this.resource, this.parent, this.nameInParent) {
    apiLibrary = apiTestLibrary.apiLibrary;
  }

  String apiConstruction(String clientName) {
    if (parent == null) {
      return 'api.${resource.className.name}($clientName)';
    } else {
      return '${parent!.apiConstruction(clientName)}.${nameInParent!.name}';
    }
  }

  String get resourceTest {
    final sb = StringBuffer();

    final rootPath = StringPart(
        apiLibrary.imports, Uri.parse(apiLibrary.apiClass.rootUrl!).path);

    final basePath =
        StringPart(apiLibrary.imports, apiLibrary.apiClass.servicePath);

    withTestGroup(2, sb, 'resource-${resource.className}', () {
      for (var method in resource.methods) {
        withTest(4, sb, 'method--${method.name.name}', () {
          void registerRequestHandlerMock(
              Map<MethodParameter, String> paramValues) {
            sb.writeln('      mock.register(unittest.expectAsync2('
                '(http.BaseRequest req, json) {');
            if (method.requestParameter != null) {
              final t =
                  apiTestLibrary.schemaTests[method.requestParameter!.type]!;
              sb.writeln(
                'final obj = '
                'api.${method.requestParameter!.type.jsonDecode('json')};',
              );
              sb.writeln('        ${t.checkSchemaStatement('obj')}');
              sb.writeln();
            }

            final test = MethodArgsTest(
                '(req.url)', rootPath, basePath, method, paramValues);
            sb.writeln(test.uriValidationStatements(8));
            sb.writeln(test.queryValidationStatements(8));
            sb.writeln();
            sb.writeln('        final h = {');
            sb.writeln('          '
                "'content-type' : 'application/json; charset=utf-8',");
            sb.writeln('        };');
            if (method.returnType == null) {
              sb.writeln("        final resp = '';");
            } else {
              final t = apiTestLibrary.schemaTests[method.returnType];
              if (method.enableDataWrapper) {
                sb.writeln('        final resp = '
                    'convert.json.encode({\'data\': ${t!.newSchemaExpr}});');
              } else {
                sb.writeln('        final resp = '
                    'convert.json.encode(${t!.newSchemaExpr});');
              }
            }
            sb.writeln('        return async.Future.value('
                'stringResponse(200, h, resp));');
            sb.writeln('      }), true);');
          }

          Map<MethodParameter, String> buildParameterValues() {
            final parameterValues = <MethodParameter, String>{};

            void newParameter(MethodParameter p) {
              final schemaTest = apiTestLibrary.schemaTests[p.type]!;
              final name = 'arg_${p.name}';
              sb.writeln('      final $name = ${schemaTest.newSchemaExpr};');
              parameterValues[p] = name;
            }

            if (method.requestParameter != null) {
              newParameter(method.requestParameter!);
            }
            method.parameters.forEach(newParameter);
            method.namedParameters.forEach(newParameter);

            return parameterValues;
          }

          if (method.mediaUpload || method.mediaDownload) {
            sb.writeln('      // TODO: Implement tests for media upload;');
            sb.writeln('      // TODO: Implement tests for media download;');
          }
          sb.writeln();

          // Construct http request handler mock.
          sb.writeln('final mock = HttpServerMock();');
          // Construct resource class
          sb.writeln('final res = ${apiConstruction('mock')};');
          // Build method arguments
          final paramValues = buildParameterValues();
          // Build the http request handler mock implementation
          registerRequestHandlerMock(paramValues);

          // Build the method call arguments.
          final args = [];
          void addArg(MethodParameter p, name) {
            if (p.required) {
              args.add(name);
            } else {
              args.add('${p.name}: $name');
            }
          }

          if (method.requestParameter != null) {
            addArg(method.requestParameter!,
                paramValues[method.requestParameter!]);
          }
          for (var p in method.parameters) {
            addArg(p, paramValues[p]);
          }
          for (var p in method.namedParameters) {
            addArg(p, paramValues[p]);
          }

          // Call the method & check the result
          if (method.returnType == null) {
            sb.write('await res.${method.name}(${args.join(', ')});');
          } else {
            sb.write(
              'final response = await res.${method.name}(${args.join(', ')});',
            );

            final t = apiTestLibrary.schemaTests[method.returnType]!;
            sb.writeln(
              t.checkSchemaStatement(
                'response  as api.${t.schema.className!.name}',
              ),
            );
          }
        });
        sb.writeln();
      }
    });
    return '$sb';
  }
}

class MethodArgsTest extends TestHelper {
  final String uriExpr;

  // [rootUrl] ends with a '/'.
  final StringPart rootUrl;

  // [basePath] does not start with a '/' but ends with a '/'.
  final StringPart basePath;

  final DartResourceMethod method;
  final Map<MethodParameter, String> parameterValues;

  MethodArgsTest(this.uriExpr, this.rootUrl, this.basePath, this.method,
      this.parameterValues);

  String uriValidationStatements(int indentationLevel) {
    final sb = StringBuffer();
    final spaces = ' ' * indentationLevel;
    void ln(String x) => sb.writeln(spaces + x);

    ln('final path = $uriExpr.path;');
    ln('var pathOffset = 0;');
    ln('core.int index;');
    ln('core.String subPart;');

    // The path starts with the path of the rootUrl ending with a '/'.
    // The remaining path is either
    // a) an absolute URI pattern
    // b) the basePath plus a relative URI pattern
    final parts = <Part>[rootUrl];
    final firstPart = method.urlPattern.parts.first;
    // First part absolute/relative is handled specially.
    if (firstPart is StringPart && firstPart.staticString!.startsWith('/')) {
      parts.add(
          StringPart(firstPart.imports, firstPart.staticString!.substring(1)));
      parts.addAll(method.urlPattern.parts.skip(1));
    } else if (firstPart is StringPart) {
      parts.add(basePath);
      parts.addAll(method.urlPattern.parts);
    }

    for (var i = 0; i < parts.length; i++) {
      final part = parts[i];
      final isLast = i == (parts.length - 1);
      if (part is StringPart) {
        final str = part.staticString!;
        // NOTE: Sometimes there are empty strings, we do not assert for them.
        if (str.isNotEmpty) {
          ln(expectEqual(
              'path.substring(pathOffset, pathOffset + ${str.length})',
              "'${escapeString(str)}'"));
          ln('pathOffset += ${str.length};');
        }
      } else if (part is VariableExpression) {
        if (!isLast) {
          final nextPart = parts[i + 1];
          if (nextPart is! StringPart) {
            throw UnsupportedError(
              'two variable expansions in a row not supported',
            );
          }
          final stringPart = nextPart;
          ln('index = path.indexOf('
              "'${escapeString(stringPart.staticString!)}', pathOffset);");
          ln(expectIsTrue('index >= 0'));
          ln('subPart = core.Uri.decodeQueryComponent'
              '(path.substring(pathOffset, index));');
          ln('pathOffset = index;');
        } else {
          ln('subPart = core.Uri.decodeQueryComponent'
              '(path.substring(pathOffset));');
          ln('pathOffset = path.length;');
        }
        final name = parameterValues[_findMethodParameter(part.templateVar!)];
        ln(expectEqual('subPart', "'\$$name'"));
      } else if (part is PathVariableExpression) {
        if (!isLast) {
          throw StateError(
            'path variable expansions are only supported at the end',
          );
        }
        final name = parameterValues[_findMethodParameter(part.templateVar!)];
        ln("var parts = path.substring(pathOffset).split('/')"
            '.map(core.Uri.decodeQueryComponent).where((p) => p.length > 0)'
            '.toList();');
        ln(expectEqual('parts', name));
      } else {
        // This is probably pub sub with the broken usage of the reserved
        // variable expansions
        ln('// NOTE: We cannot test reserved expansions due to the inability to'
            ' reverse the operation;');
        break;
      }
    }
    return '$sb';
  }

  String queryValidationStatements(int indentationLevel) {
    final sb = StringBuffer();
    final spaces = ' ' * indentationLevel;
    void ln(String x) => sb.writeln(spaces + x);

    const parseBoolPlaceholder = '/// PARSE_BOOL';

    ln('final query = $uriExpr.query;');
    ln('var queryOffset = 0;');
    ln('final queryMap = <core.String, core.List<core.String>>{};');
    ln('void addQueryParam(core.String n, core.String v) => '
        'queryMap.putIfAbsent(n, () => []).add(v);');
    ln(parseBoolPlaceholder);
    ln('if (query.isNotEmpty) {');
    ln("  for (var part in query.split('&')) {");
    ln("    final keyValue = part.split('=');");
    ln('    addQueryParam(core.Uri.decodeQueryComponent(keyValue[0]), '
        'core.Uri.decodeQueryComponent(keyValue[1]),);');
    ln('  }');
    ln('}');

    const parseBoolFunc = '''
core.bool parseBool(n) {
  if (n == "true") return true;
  if (n == "false") return false;
  if (n == null) return null;
  throw core.ArgumentError("Invalid boolean: \$n");
}''';

    var parseBoolUsed = false;

    void checkParameter(MethodParameter p) {
      final name = parameterValues[p];
      final type = p.type;
      final queryMapValue = "queryMap['${escapeString(p.jsonName!)}']!";

      if (!p.encodedInPath!) {
        if (type is IntegerType || type is StringIntegerType) {
          ln(expectEqual(intParse('$queryMapValue.first'), name));
        } else if (p.type is UnnamedArrayType) {
          final innerType = (p.type as UnnamedArrayType).innerType;
          if (innerType is IntegerType || innerType is StringIntegerType) {
            ln(expectEqual(
                '$queryMapValue.map(core.int.parse).toList()', name));
          } else if (innerType is StringType) {
            ln(expectEqual(queryMapValue, name));
          } else if (innerType is BooleanType) {
            parseBoolUsed = true;
            ln(expectEqual('$queryMapValue.map(parseBool).toList()', name));
          } else {
            throw UnsupportedError('unsupported inner type $innerType');
          }
        } else if (type is DateType) {
          ln(expectEqual('core.DateTime.parse($queryMapValue.first)', name));
        } else if (type is DateTimeType) {
          ln(expectEqual('core.DateTime.parse($queryMapValue.first)', name));
        } else if (type is StringType) {
          ln(expectEqual('$queryMapValue.first', name));
        } else if (type is DoubleType) {
          ln(expectEqual(numParse('$queryMapValue.first'), name));
        } else if (type is BooleanType) {
          ln(expectEqual('$queryMapValue.first', "'\$$name'"));
        } else {
          throw UnsupportedError('unsupported parameter type ${p.type}');
        }
      }
    }

    method.parameters.forEach(checkParameter);
    method.namedParameters.forEach(checkParameter);

    return '$sb'.replaceAll(
      parseBoolPlaceholder,
      parseBoolUsed ? parseBoolFunc : '',
    );
  }

  MethodParameter _findMethodParameter(String varname) {
    final parameters = parameterValues.keys
        .where((parameter) => parameter.jsonName == varname)
        .toList();
    if (parameters.length != 1) {
      throw ArgumentError(
        'Invalid generator. Expected exactly one parameter of name $varname',
      );
    }
    return parameters[0];
  }
}

SchemaTest testFromSchema(
  DartApiTestLibrary apiTestLibrary,
  DartSchemaType? schema,
) {
  if (schema is ObjectType) {
    return ObjectSchemaTest(apiTestLibrary, schema);
  } else if (schema is NamedMapType) {
    return NamedMapSchemaTest(apiTestLibrary, schema);
  } else if (schema is IntegerType) {
    return IntSchemaTest(apiTestLibrary, schema);
  } else if (schema is StringIntegerType) {
    return StringIntSchemaTest(apiTestLibrary, schema);
  } else if (schema is DoubleType) {
    return DoubleSchemaTest(apiTestLibrary, schema);
  } else if (schema is BooleanType) {
    return BooleanSchemaTest(apiTestLibrary, schema);
  } else if (schema is EnumType) {
    return EnumSchemaTest(apiTestLibrary, schema);
  } else if (schema is DateType) {
    return DateSchemaTest(apiTestLibrary, schema);
  } else if (schema is DateTimeType) {
    return DateTimeSchemaTest(apiTestLibrary, schema);
  } else if (schema is StringType) {
    return StringSchemaTest(apiTestLibrary, schema);
  } else if (schema is UnnamedArrayType) {
    return UnnamedArrayTest(apiTestLibrary, schema);
  } else if (schema is UnnamedMapType) {
    return UnnamedMapTest(apiTestLibrary, schema);
  } else if (schema is AbstractVariantType) {
    return AbstractVariantSchemaTest(apiTestLibrary, schema);
  } else if (schema is NamedArrayType) {
    return NamedArraySchemaTest(apiTestLibrary, schema);
  } else if (schema is AnyType) {
    return AnySchemaTest(apiTestLibrary, schema);
  } else {
    throw UnimplementedError('${schema.runtimeType} -- no test implemented.');
  }
}

/// Will generate tests for [schema] of [apiLibrary].
abstract class SchemaTest<T extends DartSchemaType> extends TestHelper {
  final DartApiTestLibrary apiTestLibrary;
  final T schema;
  DartApiLibrary? apiLibrary;

  SchemaTest(this.apiTestLibrary, this.schema) {
    apiLibrary = apiTestLibrary.apiLibrary;
  }

  String get declaration;

  String get buildSchemaFunction;

  String get newSchemaExpr;

  String get checkSchemaFunction;

  String checkSchemaStatement(String o);

  String get schemaTest;
}

abstract class PrimitiveSchemaTest<T extends DartSchemaType>
    extends SchemaTest<T> {
  PrimitiveSchemaTest(DartApiTestLibrary apiTestLibrary, T schema)
      : super(apiTestLibrary, schema);

  @override
  String get buildSchemaFunction => '';

  @override
  String get checkSchemaFunction => '';

  @override
  String get schemaTest => '';
}

class IntSchemaTest extends PrimitiveSchemaTest<IntegerType> {
  IntSchemaTest(DartApiTestLibrary apiTestLibrary, IntegerType schema)
      : super(apiTestLibrary, schema);

  @override
  String get declaration => 'core.int';

  @override
  String get newSchemaExpr => '42';

  @override
  String checkSchemaStatement(String o) => expectEqual(o, '42');
}

class StringIntSchemaTest extends PrimitiveSchemaTest<StringIntegerType> {
  StringIntSchemaTest(
    DartApiTestLibrary apiTestLibrary,
    StringIntegerType schema,
  ) : super(apiTestLibrary, schema);

  @override
  String get declaration => 'core.int';

  @override
  String get newSchemaExpr => '42';

  @override
  String checkSchemaStatement(String o) => expectEqual(o, '42');
}

class DoubleSchemaTest extends PrimitiveSchemaTest<DoubleType> {
  DoubleSchemaTest(DartApiTestLibrary apiTestLibrary, DoubleType schema)
      : super(apiTestLibrary, schema);

  @override
  String get declaration => 'core.double';

  @override
  String get newSchemaExpr => '42.0';

  @override
  String checkSchemaStatement(String o) => expectEqual(o, '42.0');
}

class BooleanSchemaTest extends PrimitiveSchemaTest<BooleanType> {
  BooleanSchemaTest(DartApiTestLibrary apiTestLibrary, BooleanType schema)
      : super(apiTestLibrary, schema);

  @override
  String get declaration => 'core.bool';

  @override
  String get newSchemaExpr => 'true';

  @override
  String checkSchemaStatement(String o) => expectIsTrue(o);
}

class StringSchemaTest extends PrimitiveSchemaTest<StringType> {
  StringSchemaTest(DartApiTestLibrary apiTestLibrary, StringType schema)
      : super(apiTestLibrary, schema);

  @override
  String get declaration =>
      'core.String${schema is NullableStringType ? '?' : ''}';

  @override
  String get newSchemaExpr => "'foo'";

  @override
  String checkSchemaStatement(String o) => expectEqual(o, "'foo'");
}

class DateSchemaTest extends PrimitiveSchemaTest<DateType> {
  DateSchemaTest(DartApiTestLibrary apiTestLibrary, DateType schema)
      : super(apiTestLibrary, schema);

  @override
  String get declaration => 'core.DateTime';

  @override
  String get newSchemaExpr => "core.DateTime.parse('2002-02-27T14:01:02Z')";

  @override
  String checkSchemaStatement(String o) =>
      expectEqual(o, "core.DateTime.parse('2002-02-27T00:00:00')");
}

class DateTimeSchemaTest extends PrimitiveSchemaTest<DateTimeType> {
  DateTimeSchemaTest(DartApiTestLibrary apiTestLibrary, DateTimeType schema)
      : super(apiTestLibrary, schema);

  @override
  String get declaration => 'core.DateTime';

  @override
  String get newSchemaExpr => "core.DateTime.parse('2002-02-27T14:01:02')";

  @override
  String checkSchemaStatement(String o) =>
      expectEqual(o, "core.DateTime.parse('2002-02-27T14:01:02')");
}

class EnumSchemaTest extends StringSchemaTest {
  EnumSchemaTest(DartApiTestLibrary apiTestLibrary, EnumType schema)
      : super(apiTestLibrary, schema);

  @override
  String get newSchemaExpr {
    if ((schema as EnumType).isNullValue) {
      return "'NULL_VALUE'";
    }
    return super.newSchemaExpr;
  }

  @override
  String checkSchemaStatement(String o) {
    if ((schema as EnumType).isNullValue) {
      return super.expectEqual(o, "'NULL_VALUE'");
    }
    return super.expectEqual(o, "'foo'");
  }
}

abstract class UnnamedSchemaTest<T extends DartSchemaType>
    extends SchemaTest<T> {
  static int _unnamedCounter = 0;
  final int _id = _unnamedCounter++;

  UnnamedSchemaTest(DartApiTestLibrary apiTestLibrary, T schema)
      : super(apiTestLibrary, schema);

  static void resetCounter() {
    _unnamedCounter = 0;
  }

  @override
  String get schemaTest => '';

  @override
  String get newSchemaExpr => 'buildUnnamed$_id()';

  @override
  String checkSchemaStatement(String o) => 'checkUnnamed$_id($o);';
}

class UnnamedMapTest extends UnnamedSchemaTest<UnnamedMapType> {
  UnnamedMapTest(DartApiTestLibrary apiTestLibrary, UnnamedMapType schema)
      : super(apiTestLibrary, schema);

  @override
  String get declaration {
    final toType = apiTestLibrary.schemaTests[schema.valueType]!.declaration;
    return 'core.Map<core.String, $toType>';
  }

  @override
  String get buildSchemaFunction {
    final innerTest = apiTestLibrary.schemaTests[schema.valueType]!;

    return '''
$declaration buildUnnamed$_id() => 
  {
    'x': ${innerTest.newSchemaExpr},
    'y': ${innerTest.newSchemaExpr},
  };

''';
  }

  @override
  String get checkSchemaFunction {
    final innerTest = apiTestLibrary.schemaTests[schema.valueType];

    final sb = StringBuffer();
    withFunc(0, sb, 'void checkUnnamed$_id', '$declaration o', () {
      sb.writeln('  ${expectHasLength('o', '2')}');
      sb.writeln('  ${innerTest!.checkSchemaStatement("o['x']!")}');
      sb.writeln('  ${innerTest.checkSchemaStatement("o['y']!")}');
    });
    return '$sb';
  }
}

class UnnamedArrayTest<T> extends UnnamedSchemaTest<UnnamedArrayType> {
  UnnamedArrayTest(DartApiTestLibrary apiTestLibrary, UnnamedArrayType schema)
      : super(apiTestLibrary, schema);

  @override
  String get declaration {
    final innerType = apiTestLibrary.schemaTests[schema.innerType]!.declaration;
    return 'core.List<$innerType>';
  }

  @override
  String get buildSchemaFunction {
    final innerTest = apiTestLibrary.schemaTests[schema.innerType]!;

    return '''
core.List<${innerTest.declaration}> buildUnnamed$_id() => 
  [
    ${innerTest.newSchemaExpr},
    ${innerTest.newSchemaExpr},
  ];

''';
  }

  @override
  String get checkSchemaFunction {
    final innerTest = apiTestLibrary.schemaTests[schema.innerType];

    final sb = StringBuffer();
    withFunc(0, sb, 'void checkUnnamed$_id', '$declaration o', () {
      sb.writeln('  ${expectHasLength('o', '2')}');
      sb.writeln('  ${innerTest!.checkSchemaStatement('o[0]')}');
      sb.writeln('  ${innerTest.checkSchemaStatement('o[1]')}');
    });
    return '$sb';
  }
}

abstract class NamedSchemaTest<T extends ComplexDartSchemaType>
    extends SchemaTest<T> {
  NamedSchemaTest(DartApiTestLibrary apiTestLibrary, T schema)
      : super(apiTestLibrary, schema);

  @override
  String get declaration => 'api.${schema.className}';

  @override
  String get schemaTest {
    final sb = StringBuffer();
    withTestGroup(2, sb, 'obj-schema-${schema.className}', () {
      withTest(4, sb, 'to-json--from-json', () {
        sb.writeln('final o = $newSchemaExpr;');
        sb.writeln('final oJson = convert.jsonDecode(convert.jsonEncode(o));');
        sb.writeln(
          'final od = api.${schema.className!.name}'
          '.fromJson(oJson as ${schema.jsonType.baseDeclaration});',
        );
        sb.writeln(checkSchemaStatement('od'));
      });
    });
    return '$sb';
  }

  @override
  String get newSchemaExpr => 'build${schema.className!.name}()';

  @override
  String checkSchemaStatement(String o) =>
      'check${schema.className!.name}($o);';
}

class ObjectSchemaTest extends NamedSchemaTest<ObjectType> {
  ObjectSchemaTest(DartApiTestLibrary apiTestLibrary, ObjectType schema)
      : super(apiTestLibrary, schema);

  String get counterName => 'buildCounter${schema.className!.name}';

  @override
  String get buildSchemaFunction {
    final sb = StringBuffer();

    // Having cycles in schema definitions will result in stack overflows while
    // generatinge example schema data.
    // We break these cycles at object schemas, by using an increasing counter.
    // Assumption: Every cycle will contain normal object schemas.
    sb.writeln('core.int $counterName = 0;');

    withFunc(0, sb, '$declaration build${schema.className!.name}', '', () {
      sb.writeln('  final o = $declaration();');
      sb.writeln('  $counterName++;');
      sb.writeln('  if ($counterName < 3) {');
      for (var prop in schema.properties) {
        if (!schema.isVariantDiscriminator(prop)) {
          final propertyTest = apiTestLibrary.schemaTests[prop.type]!;
          sb.writeln('    o.${prop.name.name} = '
              '${propertyTest.newSchemaExpr};');
        }
      }
      sb.writeln('  }');
      sb.writeln('  $counterName--;');
      sb.writeln('  return o;');
    });
    return '$sb';
  }

  @override
  String get checkSchemaFunction {
    final sb = StringBuffer();
    withFunc(0, sb, 'void check${schema.className!.name}', '$declaration o',
        () {
      sb.writeln('  $counterName++;');
      sb.writeln('  if ($counterName < 3) {');
      for (var prop in schema.properties) {
        if (!schema.isVariantDiscriminator(prop)) {
          final propertyTest = apiTestLibrary.schemaTests[prop.type]!;
          final name = prop.name.name;
          sb.writeln('    ${propertyTest.checkSchemaStatement('o.$name!')}');
        }
      }
      sb.writeln('  }');
      sb.writeln('  $counterName--;');
    });
    return '$sb';
  }
}

class NamedArraySchemaTest extends NamedSchemaTest<NamedArrayType> {
  NamedArraySchemaTest(DartApiTestLibrary apiTestLibrary, NamedArrayType schema)
      : super(apiTestLibrary, schema);

  @override
  String get buildSchemaFunction {
    final innerTest = apiTestLibrary.schemaTests[schema.innerType];

    final sb = StringBuffer();
    withFunc(0, sb, '$declaration build${schema.className!.name}', '', () {
      sb.writeln('  final o = $declaration();');
      sb.writeln('  o.add(${innerTest!.newSchemaExpr});');
      sb.writeln('  o.add(${innerTest.newSchemaExpr});');
      sb.writeln('  return o;');
    });
    return '$sb';
  }

  @override
  String get checkSchemaFunction {
    final innerTest = apiTestLibrary.schemaTests[schema.innerType];

    final sb = StringBuffer();
    withFunc(0, sb, 'void check${schema.className!.name}', '$declaration o',
        () {
      sb.writeln('  ${expectHasLength('o', '2')}');
      sb.writeln('  ${innerTest!.checkSchemaStatement('o[0]')}');
      sb.writeln('  ${innerTest.checkSchemaStatement('o[1]')}');
    });
    return '$sb';
  }
}

class NamedMapSchemaTest extends NamedSchemaTest<NamedMapType> {
  NamedMapSchemaTest(DartApiTestLibrary apiTestLibrary, NamedMapType schema)
      : super(apiTestLibrary, schema);

  @override
  String get buildSchemaFunction {
    final innerTest = apiTestLibrary.schemaTests[schema.toType];

    final sb = StringBuffer();
    withFunc(0, sb, '$declaration build${schema.className!.name}', '', () {
      sb.writeln('  final o = $declaration();');
      sb.writeln("  o['a'] = ${innerTest!.newSchemaExpr};");
      sb.writeln("  o['b'] = ${innerTest.newSchemaExpr};");
      sb.writeln('  return o;');
    });
    return '$sb';
  }

  @override
  String get checkSchemaFunction {
    final innerTest = apiTestLibrary.schemaTests[schema.toType];

    final sb = StringBuffer();
    withFunc(0, sb, 'void check${schema.className!.name}', '$declaration o',
        () {
      sb.writeln('  ${expectHasLength('o', '2')}');
      sb.writeln('  ${innerTest!.checkSchemaStatement("o['a']!")}');
      sb.writeln('  ${innerTest.checkSchemaStatement("o['b']!")}');
    });
    return '$sb';
  }
}

class AbstractVariantSchemaTest extends NamedSchemaTest<AbstractVariantType> {
  DartSchemaType? subSchema;
  SchemaTest? subSchemaTest;

  AbstractVariantSchemaTest(
    DartApiTestLibrary apiTestLibrary,
    AbstractVariantType schema,
  ) : super(apiTestLibrary, schema);

  void _init() {
    if (subSchema == null) {
      // Randomly sample one of the subtypes!?
      subSchema = schema.map.values.first;
      subSchemaTest = apiTestLibrary.schemaTests[subSchema];
    }
  }

  @override
  String get buildSchemaFunction {
    _init();

    final sb = StringBuffer();
    withFunc(0, sb, 'build${schema.className!.name}', '', () {
      sb.writeln('  return ${subSchemaTest!.newSchemaExpr};');
    });
    return '$sb';
  }

  @override
  String get checkSchemaFunction {
    _init();

    final sb = StringBuffer();
    withFunc(0, sb, 'void check${schema.className!.name}', '$declaration o',
        () {
      sb.writeln('  ${subSchemaTest!.checkSchemaFunction}(o);');
    });
    return '$sb';
  }
}

class AnySchemaTest extends SchemaTest<AnyType> {
  int _counter = 0;

  AnySchemaTest(DartApiTestLibrary apiTestLibrary, AnyType schema)
      : super(apiTestLibrary, schema);

  @override
  String get buildSchemaFunction => '';

  @override
  String get checkSchemaFunction => '';

  @override
  String get schemaTest => '';

  @override
  String get declaration => 'core.Object?';

  @override
  String get newSchemaExpr =>
      "{'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'}";

  @override
  String checkSchemaStatement(String o) {
    _counter++;
    final name = 'casted$_counter';
    return 'var $name = ($o) as core.Map; '
        "${expectHasLength(name, '3')} "
        "${expectEqual("$name['list']", [1, 2, 3])} "
        "${expectEqual("$name['bool']", true)} "
        "${expectEqual("$name['string']", "'foo'")} ";
  }
}

/// Helps generating unittests.
class TestHelper {
  void withFunc(
    int indentation,
    StringBuffer buffer,
    String name,
    String args,
    void Function() f,
  ) {
    final spaces = ' ' * indentation;
    buffer.write(spaces);
    buffer.writeln('$name($args) {');
    f();
    buffer.write(spaces);
    buffer.writeln('}\n');
  }

  void withTestGroup(
    int indentation,
    StringBuffer buffer,
    String name,
    void Function() f,
  ) {
    final spaces = ' ' * indentation;
    buffer.write(spaces);
    buffer.writeln("unittest.group('$name', () {");
    f();
    buffer.write(spaces);
    buffer.writeln('});\n\n');
  }

  void withTest(
    int indentation,
    StringBuffer buffer,
    String name,
    void Function() f,
  ) {
    final spaces = ' ' * indentation;
    buffer.write(spaces);
    buffer.writeln("unittest.test('$name', () async {");
    f();
    buffer.write(spaces);
    buffer.writeln('});');
  }

  String expectEqual(String a, Object? b) =>
      'unittest.expect($a, unittest.equals($b),);';

  String expectIsTrue(String a) => 'unittest.expect($a, unittest.isTrue);';

  String expectHasLength(String a, String b) =>
      'unittest.expect($a, unittest.hasLength($b));';

  String intParse(String arg) => 'core.int.parse($arg)';

  String numParse(String arg) => 'core.num.parse($arg)';
}
