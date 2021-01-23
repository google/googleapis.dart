// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: directives_ordering
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: avoid_returning_null
// ignore_for_file: cascade_invocations
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unused_local_variable

library googleapis.toyApi.D0_1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/toyapi/0_1.dart' as api;

class HttpServerMock extends http.BaseClient {
  core.Function _callback;
  core.bool _expectJson;

  void register(core.Function callback, core.bool expectJson) {
    _callback = callback;
    _expectJson = expectJson;
  }

  @core.override
  async.Future<http.StreamedResponse> send(http.BaseRequest request) async {
    if (_expectJson) {
      final jsonString =
          await request.finalize().transform(convert.utf8.decoder).join('');
      if (jsonString.isEmpty) {
        return _callback(request, null);
      } else {
        return _callback(request, convert.json.decode(jsonString));
      }
    } else {
      var stream = request.finalize();
      if (stream == null) {
        return _callback(request, []);
      } else {
        final data = await stream.toBytes();
        return _callback(request, data);
      }
    }
  }
}

http.StreamedResponse stringResponse(core.int status,
    core.Map<core.String, core.String> headers, core.String body) {
  var stream = async.Stream.fromIterable([convert.utf8.encode(body)]);
  return http.StreamedResponse(stream, status, headers: headers);
}

core.List<core.String> buildUnnamed0() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed0(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

api.ListOfListOfString buildListOfListOfString() {
  var o = api.ListOfListOfString();
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
  var o = <api.ToyRequest>[];
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
  var o = api.ListOfListOfToyRequest();
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
  var o = <core.int>[];
  o.add(42);
  o.add(42);
  return o;
}

void checkUnnamed2(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

api.ListOfListOfint buildListOfListOfint() {
  var o = api.ListOfListOfint();
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
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, core.List<core.String>> buildUnnamed4() {
  var o = <core.String, core.List<core.String>>{};
  o['x'] = buildUnnamed3();
  o['y'] = buildUnnamed3();
  return o;
}

void checkUnnamed4(core.Map<core.String, core.List<core.String>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed3(o['x']);
  checkUnnamed3(o['y']);
}

api.ListOfMapOfListOfString buildListOfMapOfListOfString() {
  var o = api.ListOfMapOfListOfString();
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
  var o = <core.int>[];
  o.add(42);
  o.add(42);
  return o;
}

void checkUnnamed5(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.Map<core.String, core.List<core.int>> buildUnnamed6() {
  var o = <core.String, core.List<core.int>>{};
  o['x'] = buildUnnamed5();
  o['y'] = buildUnnamed5();
  return o;
}

void checkUnnamed6(core.Map<core.String, core.List<core.int>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed5(o['x']);
  checkUnnamed5(o['y']);
}

api.ListOfMapOfListOfint buildListOfMapOfListOfint() {
  var o = api.ListOfMapOfListOfint();
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
  var o = api.ListOfString();
  o.add('foo');
  o.add('foo');
  return o;
}

void checkListOfString(api.ListOfString o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

api.ListOfToyRequest buildListOfToyRequest() {
  var o = api.ListOfToyRequest();
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
  var o = <core.String, core.bool>{};
  o['x'] = true;
  o['y'] = true;
  return o;
}

void checkUnnamed7(core.Map<core.String, core.bool> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.isTrue);
  unittest.expect(o['y'], unittest.isTrue);
}

core.List<core.Map<core.String, core.bool>> buildUnnamed8() {
  var o = <core.Map<core.String, core.bool>>[];
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
  var o = api.MapOfListOfMapOfbool();
  o["a"] = buildUnnamed8();
  o["b"] = buildUnnamed8();
  return o;
}

void checkMapOfListOfMapOfbool(api.MapOfListOfMapOfbool o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed8(o["a"]);
  checkUnnamed8(o["b"]);
}

core.Map<core.String, core.int> buildUnnamed9() {
  var o = <core.String, core.int>{};
  o['x'] = 42;
  o['y'] = 42;
  return o;
}

void checkUnnamed9(core.Map<core.String, core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals(42));
  unittest.expect(o['y'], unittest.equals(42));
}

core.List<core.Map<core.String, core.int>> buildUnnamed10() {
  var o = <core.Map<core.String, core.int>>[];
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
  var o = api.MapOfListOfMapOfint();
  o["a"] = buildUnnamed10();
  o["b"] = buildUnnamed10();
  return o;
}

void checkMapOfListOfMapOfint(api.MapOfListOfMapOfint o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed10(o["a"]);
  checkUnnamed10(o["b"]);
}

core.Map<core.String, core.bool> buildUnnamed11() {
  var o = <core.String, core.bool>{};
  o['x'] = true;
  o['y'] = true;
  return o;
}

void checkUnnamed11(core.Map<core.String, core.bool> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.isTrue);
  unittest.expect(o['y'], unittest.isTrue);
}

api.MapOfMapOfbool buildMapOfMapOfbool() {
  var o = api.MapOfMapOfbool();
  o["a"] = buildUnnamed11();
  o["b"] = buildUnnamed11();
  return o;
}

void checkMapOfMapOfbool(api.MapOfMapOfbool o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed11(o["a"]);
  checkUnnamed11(o["b"]);
}

core.Map<core.String, core.int> buildUnnamed12() {
  var o = <core.String, core.int>{};
  o['x'] = 42;
  o['y'] = 42;
  return o;
}

void checkUnnamed12(core.Map<core.String, core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals(42));
  unittest.expect(o['y'], unittest.equals(42));
}

api.MapOfMapOfint buildMapOfMapOfint() {
  var o = api.MapOfMapOfint();
  o["a"] = buildUnnamed12();
  o["b"] = buildUnnamed12();
  return o;
}

void checkMapOfMapOfint(api.MapOfMapOfint o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed12(o["a"]);
  checkUnnamed12(o["b"]);
}

api.MapOfToyResponse buildMapOfToyResponse() {
  var o = api.MapOfToyResponse();
  o["a"] = buildToyResponse();
  o["b"] = buildToyResponse();
  return o;
}

void checkMapOfToyResponse(api.MapOfToyResponse o) {
  unittest.expect(o, unittest.hasLength(2));
  checkToyResponse(o["a"]);
  checkToyResponse(o["b"]);
}

api.MapOfint buildMapOfint() {
  var o = api.MapOfint();
  o["a"] = 42;
  o["b"] = 42;
  return o;
}

void checkMapOfint(api.MapOfint o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["a"], unittest.equals(42));
  unittest.expect(o["b"], unittest.equals(42));
}

core.int buildCounterNestedResponse = 0;
api.NestedResponse buildNestedResponse() {
  var o = api.NestedResponse();
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
    unittest.expect(o.nestedResult, unittest.equals('foo'));
  }
  buildCounterNestedResponse--;
}

core.int buildCounterToyAgeRequest = 0;
api.ToyAgeRequest buildToyAgeRequest() {
  var o = api.ToyAgeRequest();
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
    unittest.expect(o.age, unittest.equals(42));
  }
  buildCounterToyAgeRequest--;
}

core.Map<core.String, api.NestedResponse> buildUnnamed13() {
  var o = <core.String, api.NestedResponse>{};
  o['x'] = buildNestedResponse();
  o['y'] = buildNestedResponse();
  return o;
}

void checkUnnamed13(core.Map<core.String, api.NestedResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNestedResponse(o['x']);
  checkNestedResponse(o['y']);
}

core.int buildCounterToyMapResponse = 0;
api.ToyMapResponse buildToyMapResponse() {
  var o = api.ToyMapResponse();
  buildCounterToyMapResponse++;
  if (buildCounterToyMapResponse < 3) {
    o.mapResult = buildUnnamed13();
    o.result = 'foo';
  }
  buildCounterToyMapResponse--;
  return o;
}

void checkToyMapResponse(api.ToyMapResponse o) {
  buildCounterToyMapResponse++;
  if (buildCounterToyMapResponse < 3) {
    checkUnnamed13(o.mapResult);
    unittest.expect(o.result, unittest.equals('foo'));
  }
  buildCounterToyMapResponse--;
}

core.int buildCounterToyRequest = 0;
api.ToyRequest buildToyRequest() {
  var o = api.ToyRequest();
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
    unittest.expect(o.age, unittest.equals(42));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterToyRequest--;
}

core.int buildCounterToyResourceResponse = 0;
api.ToyResourceResponse buildToyResourceResponse() {
  var o = api.ToyResourceResponse();
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
    unittest.expect(o.result, unittest.equals('foo'));
  }
  buildCounterToyResourceResponse--;
}

core.int buildCounterToyResponse = 0;
api.ToyResponse buildToyResponse() {
  var o = api.ToyResponse();
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
    unittest.expect(o.result, unittest.equals('foo'));
  }
  buildCounterToyResponse--;
}

void main() {
  unittest.group('obj-schema-ListOfListOfString', () {
    unittest.test('to-json--from-json', () {
      var o = buildListOfListOfString();
      var od = api.ListOfListOfString.fromJson(o.toJson());
      checkListOfListOfString(od);
    });
  });

  unittest.group('obj-schema-ListOfListOfToyRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildListOfListOfToyRequest();
      var od = api.ListOfListOfToyRequest.fromJson(o.toJson());
      checkListOfListOfToyRequest(od);
    });
  });

  unittest.group('obj-schema-ListOfListOfint', () {
    unittest.test('to-json--from-json', () {
      var o = buildListOfListOfint();
      var od = api.ListOfListOfint.fromJson(o.toJson());
      checkListOfListOfint(od);
    });
  });

  unittest.group('obj-schema-ListOfMapOfListOfString', () {
    unittest.test('to-json--from-json', () {
      var o = buildListOfMapOfListOfString();
      var od = api.ListOfMapOfListOfString.fromJson(o.toJson());
      checkListOfMapOfListOfString(od);
    });
  });

  unittest.group('obj-schema-ListOfMapOfListOfint', () {
    unittest.test('to-json--from-json', () {
      var o = buildListOfMapOfListOfint();
      var od = api.ListOfMapOfListOfint.fromJson(o.toJson());
      checkListOfMapOfListOfint(od);
    });
  });

  unittest.group('obj-schema-ListOfString', () {
    unittest.test('to-json--from-json', () {
      var o = buildListOfString();
      var od = api.ListOfString.fromJson(o.toJson());
      checkListOfString(od);
    });
  });

  unittest.group('obj-schema-ListOfToyRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildListOfToyRequest();
      var od = api.ListOfToyRequest.fromJson(o.toJson());
      checkListOfToyRequest(od);
    });
  });

  unittest.group('obj-schema-MapOfListOfMapOfbool', () {
    unittest.test('to-json--from-json', () {
      var o = buildMapOfListOfMapOfbool();
      var od = api.MapOfListOfMapOfbool.fromJson(o.toJson());
      checkMapOfListOfMapOfbool(od);
    });
  });

  unittest.group('obj-schema-MapOfListOfMapOfint', () {
    unittest.test('to-json--from-json', () {
      var o = buildMapOfListOfMapOfint();
      var od = api.MapOfListOfMapOfint.fromJson(o.toJson());
      checkMapOfListOfMapOfint(od);
    });
  });

  unittest.group('obj-schema-MapOfMapOfbool', () {
    unittest.test('to-json--from-json', () {
      var o = buildMapOfMapOfbool();
      var od = api.MapOfMapOfbool.fromJson(o.toJson());
      checkMapOfMapOfbool(od);
    });
  });

  unittest.group('obj-schema-MapOfMapOfint', () {
    unittest.test('to-json--from-json', () {
      var o = buildMapOfMapOfint();
      var od = api.MapOfMapOfint.fromJson(o.toJson());
      checkMapOfMapOfint(od);
    });
  });

  unittest.group('obj-schema-MapOfToyResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildMapOfToyResponse();
      var od = api.MapOfToyResponse.fromJson(o.toJson());
      checkMapOfToyResponse(od);
    });
  });

  unittest.group('obj-schema-MapOfint', () {
    unittest.test('to-json--from-json', () {
      var o = buildMapOfint();
      var od = api.MapOfint.fromJson(o.toJson());
      checkMapOfint(od);
    });
  });

  unittest.group('obj-schema-NestedResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildNestedResponse();
      var od = api.NestedResponse.fromJson(o.toJson());
      checkNestedResponse(od);
    });
  });

  unittest.group('obj-schema-ToyAgeRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildToyAgeRequest();
      var od = api.ToyAgeRequest.fromJson(o.toJson());
      checkToyAgeRequest(od);
    });
  });

  unittest.group('obj-schema-ToyMapResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildToyMapResponse();
      var od = api.ToyMapResponse.fromJson(o.toJson());
      checkToyMapResponse(od);
    });
  });

  unittest.group('obj-schema-ToyRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildToyRequest();
      var od = api.ToyRequest.fromJson(o.toJson());
      checkToyRequest(od);
    });
  });

  unittest.group('obj-schema-ToyResourceResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildToyResourceResponse();
      var od = api.ToyResourceResponse.fromJson(o.toJson());
      checkToyResourceResponse(od);
    });
  });

  unittest.group('obj-schema-ToyResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildToyResponse();
      var od = api.ToyResponse.fromJson(o.toJson());
      checkToyResponse(od);
    });
  });

  unittest.group('resource-ToyApiApi', () {
    unittest.test('method--failing', () {
      var mock = HttpServerMock();
      api.ToyApiApi res = api.ToyApiApi(mock);
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("api/toyApi/0.1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("failing"));
        pathOffset += 7;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.failing($fields: arg_$fields).then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--hello', () {
      var mock = HttpServerMock();
      api.ToyApiApi res = api.ToyApiApi(mock);
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("api/toyApi/0.1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 5),
            unittest.equals("hello"));
        pathOffset += 5;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildToyResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.hello($fields: arg_$fields).then(unittest.expectAsync1(((response) {
        checkToyResponse(response);
      })));
    });

    unittest.test('method--helloListOfClass', () {
      var mock = HttpServerMock();
      api.ToyApiApi res = api.ToyApiApi(mock);
      var arg_request = buildListOfToyRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ListOfToyRequest.fromJson(json);
        checkListOfToyRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("api/toyApi/0.1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("helloListOfClass"));
        pathOffset += 16;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildMapOfToyResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .helloListOfClass(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkMapOfToyResponse(response);
      })));
    });

    unittest.test('method--helloListOfListOfClass', () {
      var mock = HttpServerMock();
      api.ToyApiApi res = api.ToyApiApi(mock);
      var arg_request = buildListOfListOfToyRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ListOfListOfToyRequest.fromJson(json);
        checkListOfListOfToyRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("api/toyApi/0.1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 22),
            unittest.equals("helloListOfListOfClass"));
        pathOffset += 22;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildMapOfToyResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .helloListOfListOfClass(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkMapOfToyResponse(response);
      })));
    });

    unittest.test('method--helloMap', () {
      var mock = HttpServerMock();
      api.ToyApiApi res = api.ToyApiApi(mock);
      var arg_request = buildMapOfint();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.MapOfint.fromJson(json);
        checkMapOfint(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("api/toyApi/0.1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("helloMap"));
        pathOffset += 8;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildMapOfint());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .helloMap(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkMapOfint(response);
      })));
    });

    unittest.test('method--helloNameAge', () {
      var mock = HttpServerMock();
      api.ToyApiApi res = api.ToyApiApi(mock);
      var arg_name = 'foo';
      var arg_age = 42;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("api/toyApi/0.1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("hello/"));
        pathOffset += 6;
        index = path.indexOf('/age/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_name'));
        unittest.expect(path.substring(pathOffset, pathOffset + 5),
            unittest.equals("/age/"));
        pathOffset += 5;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_age'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildToyResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .helloNameAge(arg_name, arg_age, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkToyResponse(response);
      })));
    });

    unittest.test('method--helloNamePostAge', () {
      var mock = HttpServerMock();
      api.ToyApiApi res = api.ToyApiApi(mock);
      var arg_request = buildToyAgeRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ToyAgeRequest.fromJson(json);
        checkToyAgeRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("api/toyApi/0.1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("helloPost/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_name'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildToyResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .helloNamePostAge(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkToyResponse(response);
      })));
    });

    unittest.test('method--helloNameQueryAgeFoo', () {
      var mock = HttpServerMock();
      api.ToyApiApi res = api.ToyApiApi(mock);
      var arg_name = 'foo';
      var arg_age = 42;
      var arg_foo = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("api/toyApi/0.1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("helloQuery/"));
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_name'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            core.int.parse(queryMap["age"].first), unittest.equals(arg_age));
        unittest.expect(queryMap["foo"].first, unittest.equals(arg_foo));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildToyResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .helloNameQueryAgeFoo(arg_name,
              age: arg_age, foo: arg_foo, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkToyResponse(response);
      })));
    });

    unittest.test('method--helloNestedListList', () {
      var mock = HttpServerMock();
      api.ToyApiApi res = api.ToyApiApi(mock);
      var arg_request = buildListOfListOfint();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ListOfListOfint.fromJson(json);
        checkListOfListOfint(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("api/toyApi/0.1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("helloNestedListList"));
        pathOffset += 19;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListOfListOfString());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .helloNestedListList(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListOfListOfString(response);
      })));
    });

    unittest.test('method--helloNestedListMapList', () {
      var mock = HttpServerMock();
      api.ToyApiApi res = api.ToyApiApi(mock);
      var arg_request = buildListOfMapOfListOfint();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ListOfMapOfListOfint.fromJson(json);
        checkListOfMapOfListOfint(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("api/toyApi/0.1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 22),
            unittest.equals("helloNestedListMapList"));
        pathOffset += 22;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListOfMapOfListOfString());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .helloNestedListMapList(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListOfMapOfListOfString(response);
      })));
    });

    unittest.test('method--helloNestedMap', () {
      var mock = HttpServerMock();
      api.ToyApiApi res = api.ToyApiApi(mock);
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("api/toyApi/0.1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("helloNestedMap"));
        pathOffset += 14;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildToyMapResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .helloNestedMap($fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkToyMapResponse(response);
      })));
    });

    unittest.test('method--helloNestedMapListMap', () {
      var mock = HttpServerMock();
      api.ToyApiApi res = api.ToyApiApi(mock);
      var arg_request = buildMapOfListOfMapOfint();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.MapOfListOfMapOfint.fromJson(json);
        checkMapOfListOfMapOfint(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("api/toyApi/0.1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("helloNestedMapListMap"));
        pathOffset += 21;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildMapOfListOfMapOfbool());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .helloNestedMapListMap(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkMapOfListOfMapOfbool(response);
      })));
    });

    unittest.test('method--helloNestedMapMap', () {
      var mock = HttpServerMock();
      api.ToyApiApi res = api.ToyApiApi(mock);
      var arg_request = buildMapOfMapOfint();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.MapOfMapOfint.fromJson(json);
        checkMapOfMapOfint(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("api/toyApi/0.1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("helloNestedMapMap"));
        pathOffset += 17;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildMapOfMapOfbool());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .helloNestedMapMap(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkMapOfMapOfbool(response);
      })));
    });

    unittest.test('method--helloPost', () {
      var mock = HttpServerMock();
      api.ToyApiApi res = api.ToyApiApi(mock);
      var arg_request = buildToyRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ToyRequest.fromJson(json);
        checkToyRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("api/toyApi/0.1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("helloPost"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildToyResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .helloPost(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkToyResponse(response);
      })));
    });

    unittest.test('method--helloReturnNull', () {
      var mock = HttpServerMock();
      api.ToyApiApi res = api.ToyApiApi(mock);
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("api/toyApi/0.1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("helloReturnNull"));
        pathOffset += 15;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildToyResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .helloReturnNull($fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkToyResponse(response);
      })));
    });

    unittest.test('method--helloVoid', () {
      var mock = HttpServerMock();
      api.ToyApiApi res = api.ToyApiApi(mock);
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("api/toyApi/0.1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("helloVoid"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildToyResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .helloVoid($fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkToyResponse(response);
      })));
    });

    unittest.test('method--noop', () {
      var mock = HttpServerMock();
      api.ToyApiApi res = api.ToyApiApi(mock);
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("api/toyApi/0.1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 4),
            unittest.equals("noop"));
        pathOffset += 4;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.noop($fields: arg_$fields).then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--reverseList', () {
      var mock = HttpServerMock();
      api.ToyApiApi res = api.ToyApiApi(mock);
      var arg_request = buildListOfString();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ListOfString.fromJson(json);
        checkListOfString(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("api/toyApi/0.1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("reverseList"));
        pathOffset += 11;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListOfString());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .reverseList(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListOfString(response);
      })));
    });
  });

  unittest.group('resource-ComputeResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.ComputeResourceApi res = api.ToyApiApi(mock).compute;
      var arg_resource = 'foo';
      var arg_compute = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("api/toyApi/0.1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("toyresource/"));
        pathOffset += 12;
        index = path.indexOf('/compute/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_resource'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/compute/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_compute'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildToyResourceResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_resource, arg_compute, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkToyResourceResponse(response);
      })));
    });
  });

  unittest.group('resource-StorageResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.StorageResourceApi res = api.ToyApiApi(mock).storage;
      var arg_resource = 'foo';
      var arg_storage = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("api/toyApi/0.1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("toyresource/"));
        pathOffset += 12;
        index = path.indexOf('/storage/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_resource'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/storage/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_storage'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildToyResourceResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_resource, arg_storage, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkToyResourceResponse(response);
      })));
    });
  });
}
