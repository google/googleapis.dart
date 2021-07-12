// ignore_for_file: camel_case_types
// ignore_for_file: cascade_invocations
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_const_declarations
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;
import 'package:test_package/toyapi/0_1.dart' as api;

import '../test_shared.dart';

core.List<core.String> buildUnnamed0() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed0(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

api.ListOfListOfString buildListOfListOfString() {
  final o = api.ListOfListOfString();
  o.add(buildUnnamed0());
  o.add(buildUnnamed0());
  return o;
}

void checkListOfListOfString(api.ListOfListOfString o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed0(o[0]);
  checkUnnamed0(o[1]);
}

core.List<api.ToyRequest> buildUnnamed1() {
  final o = <api.ToyRequest>[];
  o.add(buildToyRequest());
  o.add(buildToyRequest());
  return o;
}

void checkUnnamed1(core.List<api.ToyRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkToyRequest(o[0]);
  checkToyRequest(o[1]);
}

api.ListOfListOfToyRequest buildListOfListOfToyRequest() {
  final o = api.ListOfListOfToyRequest();
  o.add(buildUnnamed1());
  o.add(buildUnnamed1());
  return o;
}

void checkListOfListOfToyRequest(api.ListOfListOfToyRequest o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed1(o[0]);
  checkUnnamed1(o[1]);
}

core.List<core.int> buildUnnamed2() {
  final o = <core.int>[];
  o.add(42);
  o.add(42);
  return o;
}

void checkUnnamed2(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals(42),
  );
  unittest.expect(
    o[1],
    unittest.equals(42),
  );
}

api.ListOfListOfint buildListOfListOfint() {
  final o = api.ListOfListOfint();
  o.add(buildUnnamed2());
  o.add(buildUnnamed2());
  return o;
}

void checkListOfListOfint(api.ListOfListOfint o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed2(o[0]);
  checkUnnamed2(o[1]);
}

core.List<core.String> buildUnnamed3() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.Map<core.String, core.List<core.String>> buildUnnamed4() {
  final o = <core.String, core.List<core.String>>{};
  o['x'] = buildUnnamed3();
  o['y'] = buildUnnamed3();
  return o;
}

void checkUnnamed4(core.Map<core.String, core.List<core.String>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed3(o['x']!);
  checkUnnamed3(o['y']!);
}

api.ListOfMapOfListOfString buildListOfMapOfListOfString() {
  final o = api.ListOfMapOfListOfString();
  o.add(buildUnnamed4());
  o.add(buildUnnamed4());
  return o;
}

void checkListOfMapOfListOfString(api.ListOfMapOfListOfString o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed4(o[0]);
  checkUnnamed4(o[1]);
}

core.List<core.int> buildUnnamed5() {
  final o = <core.int>[];
  o.add(42);
  o.add(42);
  return o;
}

void checkUnnamed5(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals(42),
  );
  unittest.expect(
    o[1],
    unittest.equals(42),
  );
}

core.Map<core.String, core.List<core.int>> buildUnnamed6() {
  final o = <core.String, core.List<core.int>>{};
  o['x'] = buildUnnamed5();
  o['y'] = buildUnnamed5();
  return o;
}

void checkUnnamed6(core.Map<core.String, core.List<core.int>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed5(o['x']!);
  checkUnnamed5(o['y']!);
}

api.ListOfMapOfListOfint buildListOfMapOfListOfint() {
  final o = api.ListOfMapOfListOfint();
  o.add(buildUnnamed6());
  o.add(buildUnnamed6());
  return o;
}

void checkListOfMapOfListOfint(api.ListOfMapOfListOfint o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed6(o[0]);
  checkUnnamed6(o[1]);
}

api.ListOfString buildListOfString() {
  final o = api.ListOfString();
  o.add('foo');
  o.add('foo');
  return o;
}

void checkListOfString(api.ListOfString o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

api.ListOfToyRequest buildListOfToyRequest() {
  final o = api.ListOfToyRequest();
  o.add(buildToyRequest());
  o.add(buildToyRequest());
  return o;
}

void checkListOfToyRequest(api.ListOfToyRequest o) {
  unittest.expect(o, unittest.hasLength(2));
  checkToyRequest(o[0]);
  checkToyRequest(o[1]);
}

core.Map<core.String, core.bool> buildUnnamed7() {
  final o = <core.String, core.bool>{};
  o['x'] = true;
  o['y'] = true;
  return o;
}

void checkUnnamed7(core.Map<core.String, core.bool> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.isTrue);
  unittest.expect(o['y']!, unittest.isTrue);
}

core.List<core.Map<core.String, core.bool>> buildUnnamed8() {
  final o = <core.Map<core.String, core.bool>>[];
  o.add(buildUnnamed7());
  o.add(buildUnnamed7());
  return o;
}

void checkUnnamed8(core.List<core.Map<core.String, core.bool>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed7(o[0]);
  checkUnnamed7(o[1]);
}

api.MapOfListOfMapOfbool buildMapOfListOfMapOfbool() {
  final o = api.MapOfListOfMapOfbool();
  o['a'] = buildUnnamed8();
  o['b'] = buildUnnamed8();
  return o;
}

void checkMapOfListOfMapOfbool(api.MapOfListOfMapOfbool o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed8(o['a']!);
  checkUnnamed8(o['b']!);
}

core.Map<core.String, core.int> buildUnnamed9() {
  final o = <core.String, core.int>{};
  o['x'] = 42;
  o['y'] = 42;
  return o;
}

void checkUnnamed9(core.Map<core.String, core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals(42),
  );
  unittest.expect(
    o['y']!,
    unittest.equals(42),
  );
}

core.List<core.Map<core.String, core.int>> buildUnnamed10() {
  final o = <core.Map<core.String, core.int>>[];
  o.add(buildUnnamed9());
  o.add(buildUnnamed9());
  return o;
}

void checkUnnamed10(core.List<core.Map<core.String, core.int>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed9(o[0]);
  checkUnnamed9(o[1]);
}

api.MapOfListOfMapOfint buildMapOfListOfMapOfint() {
  final o = api.MapOfListOfMapOfint();
  o['a'] = buildUnnamed10();
  o['b'] = buildUnnamed10();
  return o;
}

void checkMapOfListOfMapOfint(api.MapOfListOfMapOfint o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed10(o['a']!);
  checkUnnamed10(o['b']!);
}

core.Map<core.String, core.bool> buildUnnamed11() {
  final o = <core.String, core.bool>{};
  o['x'] = true;
  o['y'] = true;
  return o;
}

void checkUnnamed11(core.Map<core.String, core.bool> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.isTrue);
  unittest.expect(o['y']!, unittest.isTrue);
}

api.MapOfMapOfbool buildMapOfMapOfbool() {
  final o = api.MapOfMapOfbool();
  o['a'] = buildUnnamed11();
  o['b'] = buildUnnamed11();
  return o;
}

void checkMapOfMapOfbool(api.MapOfMapOfbool o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed11(o['a']!);
  checkUnnamed11(o['b']!);
}

core.Map<core.String, core.int> buildUnnamed12() {
  final o = <core.String, core.int>{};
  o['x'] = 42;
  o['y'] = 42;
  return o;
}

void checkUnnamed12(core.Map<core.String, core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals(42),
  );
  unittest.expect(
    o['y']!,
    unittest.equals(42),
  );
}

api.MapOfMapOfint buildMapOfMapOfint() {
  final o = api.MapOfMapOfint();
  o['a'] = buildUnnamed12();
  o['b'] = buildUnnamed12();
  return o;
}

void checkMapOfMapOfint(api.MapOfMapOfint o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed12(o['a']!);
  checkUnnamed12(o['b']!);
}

api.MapOfToyResponse buildMapOfToyResponse() {
  final o = api.MapOfToyResponse();
  o['a'] = buildToyResponse();
  o['b'] = buildToyResponse();
  return o;
}

void checkMapOfToyResponse(api.MapOfToyResponse o) {
  unittest.expect(o, unittest.hasLength(2));
  checkToyResponse(o['a']!);
  checkToyResponse(o['b']!);
}

api.MapOfint buildMapOfint() {
  final o = api.MapOfint();
  o['a'] = 42;
  o['b'] = 42;
  return o;
}

void checkMapOfint(api.MapOfint o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['a']!,
    unittest.equals(42),
  );
  unittest.expect(
    o['b']!,
    unittest.equals(42),
  );
}

core.int buildCounterNestedResponse = 0;
api.NestedResponse buildNestedResponse() {
  final o = api.NestedResponse();
  buildCounterNestedResponse++;
  if (buildCounterNestedResponse < 3) {
    o.nestedResult = 'foo';
  }
  buildCounterNestedResponse--;
  return o;
}

void checkNestedResponse(api.NestedResponse o) {
  buildCounterNestedResponse++;
  if (buildCounterNestedResponse < 3) {
    unittest.expect(
      o.nestedResult!,
      unittest.equals('foo'),
    );
  }
  buildCounterNestedResponse--;
}

core.int buildCounterToyAgeRequest = 0;
api.ToyAgeRequest buildToyAgeRequest() {
  final o = api.ToyAgeRequest();
  buildCounterToyAgeRequest++;
  if (buildCounterToyAgeRequest < 3) {
    o.age = 42;
  }
  buildCounterToyAgeRequest--;
  return o;
}

void checkToyAgeRequest(api.ToyAgeRequest o) {
  buildCounterToyAgeRequest++;
  if (buildCounterToyAgeRequest < 3) {
    unittest.expect(
      o.age!,
      unittest.equals(42),
    );
  }
  buildCounterToyAgeRequest--;
}

core.Map<core.String, api.NestedResponse> buildUnnamed13() {
  final o = <core.String, api.NestedResponse>{};
  o['x'] = buildNestedResponse();
  o['y'] = buildNestedResponse();
  return o;
}

void checkUnnamed13(core.Map<core.String, api.NestedResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNestedResponse(o['x']!);
  checkNestedResponse(o['y']!);
}

core.Map<core.String, core.String?> buildUnnamed14() {
  final o = <core.String, core.String?>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed14(core.Map<core.String, core.String?> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.int buildCounterToyMapResponse = 0;
api.ToyMapResponse buildToyMapResponse() {
  final o = api.ToyMapResponse();
  buildCounterToyMapResponse++;
  if (buildCounterToyMapResponse < 3) {
    o.mapResult = buildUnnamed13();
    o.nullValue = 'foo';
    o.properties = buildUnnamed14();
    o.result = 'foo';
  }
  buildCounterToyMapResponse--;
  return o;
}

void checkToyMapResponse(api.ToyMapResponse o) {
  buildCounterToyMapResponse++;
  if (buildCounterToyMapResponse < 3) {
    checkUnnamed13(o.mapResult!);
    unittest.expect(
      o.nullValue!,
      unittest.equals('foo'),
    );
    checkUnnamed14(o.properties!);
    unittest.expect(
      o.result!,
      unittest.equals('foo'),
    );
  }
  buildCounterToyMapResponse--;
}

core.int buildCounterToyRequest = 0;
api.ToyRequest buildToyRequest() {
  final o = api.ToyRequest();
  buildCounterToyRequest++;
  if (buildCounterToyRequest < 3) {
    o.age = 42;
    o.name = 'foo';
  }
  buildCounterToyRequest--;
  return o;
}

void checkToyRequest(api.ToyRequest o) {
  buildCounterToyRequest++;
  if (buildCounterToyRequest < 3) {
    unittest.expect(
      o.age!,
      unittest.equals(42),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterToyRequest--;
}

core.int buildCounterToyResourceResponse = 0;
api.ToyResourceResponse buildToyResourceResponse() {
  final o = api.ToyResourceResponse();
  buildCounterToyResourceResponse++;
  if (buildCounterToyResourceResponse < 3) {
    o.result = 'foo';
  }
  buildCounterToyResourceResponse--;
  return o;
}

void checkToyResourceResponse(api.ToyResourceResponse o) {
  buildCounterToyResourceResponse++;
  if (buildCounterToyResourceResponse < 3) {
    unittest.expect(
      o.result!,
      unittest.equals('foo'),
    );
  }
  buildCounterToyResourceResponse--;
}

core.int buildCounterToyResponse = 0;
api.ToyResponse buildToyResponse() {
  final o = api.ToyResponse();
  buildCounterToyResponse++;
  if (buildCounterToyResponse < 3) {
    o.result = 'foo';
  }
  buildCounterToyResponse--;
  return o;
}

void checkToyResponse(api.ToyResponse o) {
  buildCounterToyResponse++;
  if (buildCounterToyResponse < 3) {
    unittest.expect(
      o.result!,
      unittest.equals('foo'),
    );
  }
  buildCounterToyResponse--;
}

void main() {
  unittest.group('obj-schema-ListOfListOfString', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListOfListOfString();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListOfListOfString.fromJson(oJson as core.List);
      checkListOfListOfString(od);
    });
  });

  unittest.group('obj-schema-ListOfListOfToyRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListOfListOfToyRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListOfListOfToyRequest.fromJson(oJson as core.List);
      checkListOfListOfToyRequest(od);
    });
  });

  unittest.group('obj-schema-ListOfListOfint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListOfListOfint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListOfListOfint.fromJson(oJson as core.List);
      checkListOfListOfint(od);
    });
  });

  unittest.group('obj-schema-ListOfMapOfListOfString', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListOfMapOfListOfString();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListOfMapOfListOfString.fromJson(oJson as core.List);
      checkListOfMapOfListOfString(od);
    });
  });

  unittest.group('obj-schema-ListOfMapOfListOfint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListOfMapOfListOfint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListOfMapOfListOfint.fromJson(oJson as core.List);
      checkListOfMapOfListOfint(od);
    });
  });

  unittest.group('obj-schema-ListOfString', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListOfString();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListOfString.fromJson(oJson as core.List);
      checkListOfString(od);
    });
  });

  unittest.group('obj-schema-ListOfToyRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListOfToyRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListOfToyRequest.fromJson(oJson as core.List);
      checkListOfToyRequest(od);
    });
  });

  unittest.group('obj-schema-MapOfListOfMapOfbool', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMapOfListOfMapOfbool();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MapOfListOfMapOfbool.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMapOfListOfMapOfbool(od);
    });
  });

  unittest.group('obj-schema-MapOfListOfMapOfint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMapOfListOfMapOfint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MapOfListOfMapOfint.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMapOfListOfMapOfint(od);
    });
  });

  unittest.group('obj-schema-MapOfMapOfbool', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMapOfMapOfbool();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MapOfMapOfbool.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMapOfMapOfbool(od);
    });
  });

  unittest.group('obj-schema-MapOfMapOfint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMapOfMapOfint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MapOfMapOfint.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMapOfMapOfint(od);
    });
  });

  unittest.group('obj-schema-MapOfToyResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMapOfToyResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MapOfToyResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMapOfToyResponse(od);
    });
  });

  unittest.group('obj-schema-MapOfint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMapOfint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.MapOfint.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMapOfint(od);
    });
  });

  unittest.group('obj-schema-NestedResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNestedResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NestedResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNestedResponse(od);
    });
  });

  unittest.group('obj-schema-ToyAgeRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildToyAgeRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ToyAgeRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkToyAgeRequest(od);
    });
  });

  unittest.group('obj-schema-ToyMapResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildToyMapResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ToyMapResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkToyMapResponse(od);
    });
  });

  unittest.group('obj-schema-ToyRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildToyRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ToyRequest.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkToyRequest(od);
    });
  });

  unittest.group('obj-schema-ToyResourceResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildToyResourceResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ToyResourceResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkToyResourceResponse(od);
    });
  });

  unittest.group('obj-schema-ToyResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildToyResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ToyResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkToyResponse(od);
    });
  });

  unittest.group('resource-ToyApi', () {
    unittest.test('method--failing', () async {
      final mock = HttpServerMock();
      final res = api.ToyApi(mock);
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('api/toyApi/0.1/'),
        );
        pathOffset += 15;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('failing'),
        );
        pathOffset += 7;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.failing($fields: arg_$fields);
    });

    unittest.test('method--hello', () async {
      final mock = HttpServerMock();
      final res = api.ToyApi(mock);
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('api/toyApi/0.1/'),
        );
        pathOffset += 15;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 5),
          unittest.equals('hello'),
        );
        pathOffset += 5;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildToyResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.hello($fields: arg_$fields);
      checkToyResponse(response as api.ToyResponse);
    });

    unittest.test('method--helloListOfClass', () async {
      final mock = HttpServerMock();
      final res = api.ToyApi(mock);
      final arg_request = buildListOfToyRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ListOfToyRequest.fromJson(json as core.List);
        checkListOfToyRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('api/toyApi/0.1/'),
        );
        pathOffset += 15;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('helloListOfClass'),
        );
        pathOffset += 16;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildMapOfToyResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.helloListOfClass(arg_request, $fields: arg_$fields);
      checkMapOfToyResponse(response as api.MapOfToyResponse);
    });

    unittest.test('method--helloListOfListOfClass', () async {
      final mock = HttpServerMock();
      final res = api.ToyApi(mock);
      final arg_request = buildListOfListOfToyRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ListOfListOfToyRequest.fromJson(json as core.List);
        checkListOfListOfToyRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('api/toyApi/0.1/'),
        );
        pathOffset += 15;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 22),
          unittest.equals('helloListOfListOfClass'),
        );
        pathOffset += 22;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildMapOfToyResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.helloListOfListOfClass(arg_request, $fields: arg_$fields);
      checkMapOfToyResponse(response as api.MapOfToyResponse);
    });

    unittest.test('method--helloMap', () async {
      final mock = HttpServerMock();
      final res = api.ToyApi(mock);
      final arg_request = buildMapOfint();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.MapOfint.fromJson(json as core.Map<core.String, core.dynamic>);
        checkMapOfint(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('api/toyApi/0.1/'),
        );
        pathOffset += 15;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('helloMap'),
        );
        pathOffset += 8;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildMapOfint());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.helloMap(arg_request, $fields: arg_$fields);
      checkMapOfint(response as api.MapOfint);
    });

    unittest.test('method--helloNameAge', () async {
      final mock = HttpServerMock();
      final res = api.ToyApi(mock);
      final arg_name = 'foo';
      final arg_age = 42;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('api/toyApi/0.1/'),
        );
        pathOffset += 15;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('hello/'),
        );
        pathOffset += 6;
        index = path.indexOf('/age/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_name'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 5),
          unittest.equals('/age/'),
        );
        pathOffset += 5;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_age'),
        );

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildToyResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.helloNameAge(arg_name, arg_age, $fields: arg_$fields);
      checkToyResponse(response as api.ToyResponse);
    });

    unittest.test('method--helloNamePostAge', () async {
      final mock = HttpServerMock();
      final res = api.ToyApi(mock);
      final arg_request = buildToyAgeRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ToyAgeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkToyAgeRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('api/toyApi/0.1/'),
        );
        pathOffset += 15;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('helloPost/'),
        );
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_name'),
        );

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildToyResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.helloNamePostAge(arg_request, arg_name,
          $fields: arg_$fields);
      checkToyResponse(response as api.ToyResponse);
    });

    unittest.test('method--helloNameQueryAgeFoo', () async {
      final mock = HttpServerMock();
      final res = api.ToyApi(mock);
      final arg_foo = 'foo';
      final arg_name = 'foo';
      final arg_age = 42;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('api/toyApi/0.1/'),
        );
        pathOffset += 15;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('helloQuery/'),
        );
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_name'),
        );

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['foo']!.first,
          unittest.equals(arg_foo),
        );
        unittest.expect(
          core.int.parse(queryMap['age']!.first),
          unittest.equals(arg_age),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildToyResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.helloNameQueryAgeFoo(arg_foo, arg_name,
          age: arg_age, $fields: arg_$fields);
      checkToyResponse(response as api.ToyResponse);
    });

    unittest.test('method--helloNestedListList', () async {
      final mock = HttpServerMock();
      final res = api.ToyApi(mock);
      final arg_request = buildListOfListOfint();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ListOfListOfint.fromJson(json as core.List);
        checkListOfListOfint(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('api/toyApi/0.1/'),
        );
        pathOffset += 15;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 19),
          unittest.equals('helloNestedListList'),
        );
        pathOffset += 19;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListOfListOfString());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.helloNestedListList(arg_request, $fields: arg_$fields);
      checkListOfListOfString(response as api.ListOfListOfString);
    });

    unittest.test('method--helloNestedListMapList', () async {
      final mock = HttpServerMock();
      final res = api.ToyApi(mock);
      final arg_request = buildListOfMapOfListOfint();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ListOfMapOfListOfint.fromJson(json as core.List);
        checkListOfMapOfListOfint(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('api/toyApi/0.1/'),
        );
        pathOffset += 15;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 22),
          unittest.equals('helloNestedListMapList'),
        );
        pathOffset += 22;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListOfMapOfListOfString());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.helloNestedListMapList(arg_request, $fields: arg_$fields);
      checkListOfMapOfListOfString(response as api.ListOfMapOfListOfString);
    });

    unittest.test('method--helloNestedMap', () async {
      final mock = HttpServerMock();
      final res = api.ToyApi(mock);
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('api/toyApi/0.1/'),
        );
        pathOffset += 15;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('helloNestedMap'),
        );
        pathOffset += 14;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildToyMapResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.helloNestedMap($fields: arg_$fields);
      checkToyMapResponse(response as api.ToyMapResponse);
    });

    unittest.test('method--helloNestedMapListMap', () async {
      final mock = HttpServerMock();
      final res = api.ToyApi(mock);
      final arg_request = buildMapOfListOfMapOfint();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.MapOfListOfMapOfint.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkMapOfListOfMapOfint(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('api/toyApi/0.1/'),
        );
        pathOffset += 15;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('helloNestedMapListMap'),
        );
        pathOffset += 21;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildMapOfListOfMapOfbool());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.helloNestedMapListMap(arg_request, $fields: arg_$fields);
      checkMapOfListOfMapOfbool(response as api.MapOfListOfMapOfbool);
    });

    unittest.test('method--helloNestedMapMap', () async {
      final mock = HttpServerMock();
      final res = api.ToyApi(mock);
      final arg_request = buildMapOfMapOfint();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.MapOfMapOfint.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkMapOfMapOfint(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('api/toyApi/0.1/'),
        );
        pathOffset += 15;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('helloNestedMapMap'),
        );
        pathOffset += 17;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildMapOfMapOfbool());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.helloNestedMapMap(arg_request, $fields: arg_$fields);
      checkMapOfMapOfbool(response as api.MapOfMapOfbool);
    });

    unittest.test('method--helloPost', () async {
      final mock = HttpServerMock();
      final res = api.ToyApi(mock);
      final arg_request = buildToyRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ToyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkToyRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('api/toyApi/0.1/'),
        );
        pathOffset += 15;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('helloPost'),
        );
        pathOffset += 9;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildToyResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.helloPost(arg_request, $fields: arg_$fields);
      checkToyResponse(response as api.ToyResponse);
    });

    unittest.test('method--helloReturnNull', () async {
      final mock = HttpServerMock();
      final res = api.ToyApi(mock);
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('api/toyApi/0.1/'),
        );
        pathOffset += 15;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('helloReturnNull'),
        );
        pathOffset += 15;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildToyResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.helloReturnNull($fields: arg_$fields);
      checkToyResponse(response as api.ToyResponse);
    });

    unittest.test('method--helloVoid', () async {
      final mock = HttpServerMock();
      final res = api.ToyApi(mock);
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('api/toyApi/0.1/'),
        );
        pathOffset += 15;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('helloVoid'),
        );
        pathOffset += 9;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildToyResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.helloVoid($fields: arg_$fields);
      checkToyResponse(response as api.ToyResponse);
    });

    unittest.test('method--noop', () async {
      final mock = HttpServerMock();
      final res = api.ToyApi(mock);
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('api/toyApi/0.1/'),
        );
        pathOffset += 15;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 4),
          unittest.equals('noop'),
        );
        pathOffset += 4;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.noop($fields: arg_$fields);
    });

    unittest.test('method--reverseList', () async {
      final mock = HttpServerMock();
      final res = api.ToyApi(mock);
      final arg_request = buildListOfString();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ListOfString.fromJson(json as core.List);
        checkListOfString(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('api/toyApi/0.1/'),
        );
        pathOffset += 15;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('reverseList'),
        );
        pathOffset += 11;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListOfString());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.reverseList(arg_request, $fields: arg_$fields);
      checkListOfString(response as api.ListOfString);
    });
  });

  unittest.group('resource-ComputeResource', () {
    unittest.test('method--download', () async {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      final mock = HttpServerMock();
      final res = api.ToyApi(mock).compute;
      final arg_resourceName = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('api/toyApi/0.1/'),
        );
        pathOffset += 15;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1/media/'),
        );
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildToyResourceResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.download(arg_resourceName, $fields: arg_$fields);
      checkToyResourceResponse(response as api.ToyResourceResponse);
    });

    unittest.test('method--export', () async {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      final mock = HttpServerMock();
      final res = api.ToyApi(mock).compute;
      final arg_fileId = 'foo';
      final arg_mimeType = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('api/toyApi/0.1/'),
        );
        pathOffset += 15;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('files/'),
        );
        pathOffset += 6;
        index = path.indexOf('/export', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_fileId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/export'),
        );
        pathOffset += 7;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['mimeType']!.first,
          unittest.equals(arg_mimeType),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.export(arg_fileId, arg_mimeType, $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ToyApi(mock).compute;
      final arg_resource = 'foo';
      final arg_compute = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('api/toyApi/0.1/'),
        );
        pathOffset += 15;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('toyresource/'),
        );
        pathOffset += 12;
        index = path.indexOf('/compute/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_resource'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/compute/'),
        );
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_compute'),
        );

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildToyResourceResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_resource, arg_compute, $fields: arg_$fields);
      checkToyResourceResponse(response as api.ToyResourceResponse);
    });
  });

  unittest.group('resource-StorageResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ToyApi(mock).storage;
      final arg_resource = 'foo';
      final arg_storage = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('api/toyApi/0.1/'),
        );
        pathOffset += 15;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('toyresource/'),
        );
        pathOffset += 12;
        index = path.indexOf('/storage/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_resource'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/storage/'),
        );
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_storage'),
        );

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildToyResourceResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_resource, arg_storage, $fields: arg_$fields);
      checkToyResourceResponse(response as api.ToyResourceResponse);
    });
  });
}
