// ignore_for_file: avoid_unused_constructor_parameters
// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: directives_ordering
// ignore_for_file: empty_constructor_bodies
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unused_field
// ignore_for_file: unused_import
// ignore_for_file: avoid_returning_null
// ignore_for_file: cascade_invocations
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unused_local_variable

library googleapis.iamcredentials.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/iamcredentials/v1.dart' as api;

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

core.List<core.String> buildUnnamed5191() {
  var o = <core.String>[];
  o.add("foo");
  o.add("foo");
  return o;
}

void checkUnnamed5191(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed5192() {
  var o = <core.String>[];
  o.add("foo");
  o.add("foo");
  return o;
}

void checkUnnamed5192(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGenerateAccessTokenRequest = 0;
api.GenerateAccessTokenRequest buildGenerateAccessTokenRequest() {
  var o = api.GenerateAccessTokenRequest();
  buildCounterGenerateAccessTokenRequest++;
  if (buildCounterGenerateAccessTokenRequest < 3) {
    o.delegates = buildUnnamed5191();
    o.lifetime = "foo";
    o.scope = buildUnnamed5192();
  }
  buildCounterGenerateAccessTokenRequest--;
  return o;
}

void checkGenerateAccessTokenRequest(api.GenerateAccessTokenRequest o) {
  buildCounterGenerateAccessTokenRequest++;
  if (buildCounterGenerateAccessTokenRequest < 3) {
    checkUnnamed5191(o.delegates);
    unittest.expect(o.lifetime, unittest.equals('foo'));
    checkUnnamed5192(o.scope);
  }
  buildCounterGenerateAccessTokenRequest--;
}

core.int buildCounterGenerateAccessTokenResponse = 0;
api.GenerateAccessTokenResponse buildGenerateAccessTokenResponse() {
  var o = api.GenerateAccessTokenResponse();
  buildCounterGenerateAccessTokenResponse++;
  if (buildCounterGenerateAccessTokenResponse < 3) {
    o.accessToken = "foo";
    o.expireTime = "foo";
  }
  buildCounterGenerateAccessTokenResponse--;
  return o;
}

void checkGenerateAccessTokenResponse(api.GenerateAccessTokenResponse o) {
  buildCounterGenerateAccessTokenResponse++;
  if (buildCounterGenerateAccessTokenResponse < 3) {
    unittest.expect(o.accessToken, unittest.equals('foo'));
    unittest.expect(o.expireTime, unittest.equals('foo'));
  }
  buildCounterGenerateAccessTokenResponse--;
}

core.List<core.String> buildUnnamed5193() {
  var o = <core.String>[];
  o.add("foo");
  o.add("foo");
  return o;
}

void checkUnnamed5193(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGenerateIdTokenRequest = 0;
api.GenerateIdTokenRequest buildGenerateIdTokenRequest() {
  var o = api.GenerateIdTokenRequest();
  buildCounterGenerateIdTokenRequest++;
  if (buildCounterGenerateIdTokenRequest < 3) {
    o.audience = "foo";
    o.delegates = buildUnnamed5193();
    o.includeEmail = true;
  }
  buildCounterGenerateIdTokenRequest--;
  return o;
}

void checkGenerateIdTokenRequest(api.GenerateIdTokenRequest o) {
  buildCounterGenerateIdTokenRequest++;
  if (buildCounterGenerateIdTokenRequest < 3) {
    unittest.expect(o.audience, unittest.equals('foo'));
    checkUnnamed5193(o.delegates);
    unittest.expect(o.includeEmail, unittest.isTrue);
  }
  buildCounterGenerateIdTokenRequest--;
}

core.int buildCounterGenerateIdTokenResponse = 0;
api.GenerateIdTokenResponse buildGenerateIdTokenResponse() {
  var o = api.GenerateIdTokenResponse();
  buildCounterGenerateIdTokenResponse++;
  if (buildCounterGenerateIdTokenResponse < 3) {
    o.token = "foo";
  }
  buildCounterGenerateIdTokenResponse--;
  return o;
}

void checkGenerateIdTokenResponse(api.GenerateIdTokenResponse o) {
  buildCounterGenerateIdTokenResponse++;
  if (buildCounterGenerateIdTokenResponse < 3) {
    unittest.expect(o.token, unittest.equals('foo'));
  }
  buildCounterGenerateIdTokenResponse--;
}

core.List<core.String> buildUnnamed5194() {
  var o = <core.String>[];
  o.add("foo");
  o.add("foo");
  return o;
}

void checkUnnamed5194(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSignBlobRequest = 0;
api.SignBlobRequest buildSignBlobRequest() {
  var o = api.SignBlobRequest();
  buildCounterSignBlobRequest++;
  if (buildCounterSignBlobRequest < 3) {
    o.delegates = buildUnnamed5194();
    o.payload = "foo";
  }
  buildCounterSignBlobRequest--;
  return o;
}

void checkSignBlobRequest(api.SignBlobRequest o) {
  buildCounterSignBlobRequest++;
  if (buildCounterSignBlobRequest < 3) {
    checkUnnamed5194(o.delegates);
    unittest.expect(o.payload, unittest.equals('foo'));
  }
  buildCounterSignBlobRequest--;
}

core.int buildCounterSignBlobResponse = 0;
api.SignBlobResponse buildSignBlobResponse() {
  var o = api.SignBlobResponse();
  buildCounterSignBlobResponse++;
  if (buildCounterSignBlobResponse < 3) {
    o.keyId = "foo";
    o.signedBlob = "foo";
  }
  buildCounterSignBlobResponse--;
  return o;
}

void checkSignBlobResponse(api.SignBlobResponse o) {
  buildCounterSignBlobResponse++;
  if (buildCounterSignBlobResponse < 3) {
    unittest.expect(o.keyId, unittest.equals('foo'));
    unittest.expect(o.signedBlob, unittest.equals('foo'));
  }
  buildCounterSignBlobResponse--;
}

core.List<core.String> buildUnnamed5195() {
  var o = <core.String>[];
  o.add("foo");
  o.add("foo");
  return o;
}

void checkUnnamed5195(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSignJwtRequest = 0;
api.SignJwtRequest buildSignJwtRequest() {
  var o = api.SignJwtRequest();
  buildCounterSignJwtRequest++;
  if (buildCounterSignJwtRequest < 3) {
    o.delegates = buildUnnamed5195();
    o.payload = "foo";
  }
  buildCounterSignJwtRequest--;
  return o;
}

void checkSignJwtRequest(api.SignJwtRequest o) {
  buildCounterSignJwtRequest++;
  if (buildCounterSignJwtRequest < 3) {
    checkUnnamed5195(o.delegates);
    unittest.expect(o.payload, unittest.equals('foo'));
  }
  buildCounterSignJwtRequest--;
}

core.int buildCounterSignJwtResponse = 0;
api.SignJwtResponse buildSignJwtResponse() {
  var o = api.SignJwtResponse();
  buildCounterSignJwtResponse++;
  if (buildCounterSignJwtResponse < 3) {
    o.keyId = "foo";
    o.signedJwt = "foo";
  }
  buildCounterSignJwtResponse--;
  return o;
}

void checkSignJwtResponse(api.SignJwtResponse o) {
  buildCounterSignJwtResponse++;
  if (buildCounterSignJwtResponse < 3) {
    unittest.expect(o.keyId, unittest.equals('foo'));
    unittest.expect(o.signedJwt, unittest.equals('foo'));
  }
  buildCounterSignJwtResponse--;
}

void main() {
  unittest.group("obj-schema-GenerateAccessTokenRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGenerateAccessTokenRequest();
      var od = api.GenerateAccessTokenRequest.fromJson(o.toJson());
      checkGenerateAccessTokenRequest(od);
    });
  });

  unittest.group("obj-schema-GenerateAccessTokenResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGenerateAccessTokenResponse();
      var od = api.GenerateAccessTokenResponse.fromJson(o.toJson());
      checkGenerateAccessTokenResponse(od);
    });
  });

  unittest.group("obj-schema-GenerateIdTokenRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGenerateIdTokenRequest();
      var od = api.GenerateIdTokenRequest.fromJson(o.toJson());
      checkGenerateIdTokenRequest(od);
    });
  });

  unittest.group("obj-schema-GenerateIdTokenResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGenerateIdTokenResponse();
      var od = api.GenerateIdTokenResponse.fromJson(o.toJson());
      checkGenerateIdTokenResponse(od);
    });
  });

  unittest.group("obj-schema-SignBlobRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSignBlobRequest();
      var od = api.SignBlobRequest.fromJson(o.toJson());
      checkSignBlobRequest(od);
    });
  });

  unittest.group("obj-schema-SignBlobResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildSignBlobResponse();
      var od = api.SignBlobResponse.fromJson(o.toJson());
      checkSignBlobResponse(od);
    });
  });

  unittest.group("obj-schema-SignJwtRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSignJwtRequest();
      var od = api.SignJwtRequest.fromJson(o.toJson());
      checkSignJwtRequest(od);
    });
  });

  unittest.group("obj-schema-SignJwtResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildSignJwtResponse();
      var od = api.SignJwtResponse.fromJson(o.toJson());
      checkSignJwtResponse(od);
    });
  });

  unittest.group("resource-ProjectsServiceAccountsResourceApi", () {
    unittest.test("method--generateAccessToken", () {
      var mock = HttpServerMock();
      api.ProjectsServiceAccountsResourceApi res =
          api.IamcredentialsApi(mock).projects.serviceAccounts;
      var arg_request = buildGenerateAccessTokenRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GenerateAccessTokenRequest.fromJson(json);
        checkGenerateAccessTokenRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGenerateAccessTokenResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .generateAccessToken(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGenerateAccessTokenResponse(response);
      })));
    });

    unittest.test("method--generateIdToken", () {
      var mock = HttpServerMock();
      api.ProjectsServiceAccountsResourceApi res =
          api.IamcredentialsApi(mock).projects.serviceAccounts;
      var arg_request = buildGenerateIdTokenRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GenerateIdTokenRequest.fromJson(json);
        checkGenerateIdTokenRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGenerateIdTokenResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .generateIdToken(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGenerateIdTokenResponse(response);
      })));
    });

    unittest.test("method--signBlob", () {
      var mock = HttpServerMock();
      api.ProjectsServiceAccountsResourceApi res =
          api.IamcredentialsApi(mock).projects.serviceAccounts;
      var arg_request = buildSignBlobRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SignBlobRequest.fromJson(json);
        checkSignBlobRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSignBlobResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .signBlob(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSignBlobResponse(response);
      })));
    });

    unittest.test("method--signJwt", () {
      var mock = HttpServerMock();
      api.ProjectsServiceAccountsResourceApi res =
          api.IamcredentialsApi(mock).projects.serviceAccounts;
      var arg_request = buildSignJwtRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SignJwtRequest.fromJson(json);
        checkSignJwtRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSignJwtResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .signJwt(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSignJwtResponse(response);
      })));
    });
  });
}
