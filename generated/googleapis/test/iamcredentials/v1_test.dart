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

  async.Future<http.StreamedResponse> send(http.BaseRequest request) {
    if (_expectJson) {
      return request
          .finalize()
          .transform(convert.utf8.decoder)
          .join('')
          .then((core.String jsonString) {
        if (jsonString.isEmpty) {
          return _callback(request, null);
        } else {
          return _callback(request, convert.json.decode(jsonString));
        }
      });
    } else {
      var stream = request.finalize();
      if (stream == null) {
        return _callback(request, []);
      } else {
        return stream.toBytes().then((data) {
          return _callback(request, data);
        });
      }
    }
  }
}

http.StreamedResponse stringResponse(core.int status,
    core.Map<core.String, core.String> headers, core.String body) {
  var stream = new async.Stream.fromIterable([convert.utf8.encode(body)]);
  return new http.StreamedResponse(stream, status, headers: headers);
}

buildUnnamed4644() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4644(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4645() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4645(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGenerateAccessTokenRequest = 0;
buildGenerateAccessTokenRequest() {
  var o = new api.GenerateAccessTokenRequest();
  buildCounterGenerateAccessTokenRequest++;
  if (buildCounterGenerateAccessTokenRequest < 3) {
    o.delegates = buildUnnamed4644();
    o.lifetime = "foo";
    o.scope = buildUnnamed4645();
  }
  buildCounterGenerateAccessTokenRequest--;
  return o;
}

checkGenerateAccessTokenRequest(api.GenerateAccessTokenRequest o) {
  buildCounterGenerateAccessTokenRequest++;
  if (buildCounterGenerateAccessTokenRequest < 3) {
    checkUnnamed4644(o.delegates);
    unittest.expect(o.lifetime, unittest.equals('foo'));
    checkUnnamed4645(o.scope);
  }
  buildCounterGenerateAccessTokenRequest--;
}

core.int buildCounterGenerateAccessTokenResponse = 0;
buildGenerateAccessTokenResponse() {
  var o = new api.GenerateAccessTokenResponse();
  buildCounterGenerateAccessTokenResponse++;
  if (buildCounterGenerateAccessTokenResponse < 3) {
    o.accessToken = "foo";
    o.expireTime = "foo";
  }
  buildCounterGenerateAccessTokenResponse--;
  return o;
}

checkGenerateAccessTokenResponse(api.GenerateAccessTokenResponse o) {
  buildCounterGenerateAccessTokenResponse++;
  if (buildCounterGenerateAccessTokenResponse < 3) {
    unittest.expect(o.accessToken, unittest.equals('foo'));
    unittest.expect(o.expireTime, unittest.equals('foo'));
  }
  buildCounterGenerateAccessTokenResponse--;
}

buildUnnamed4646() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4646(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGenerateIdTokenRequest = 0;
buildGenerateIdTokenRequest() {
  var o = new api.GenerateIdTokenRequest();
  buildCounterGenerateIdTokenRequest++;
  if (buildCounterGenerateIdTokenRequest < 3) {
    o.audience = "foo";
    o.delegates = buildUnnamed4646();
    o.includeEmail = true;
  }
  buildCounterGenerateIdTokenRequest--;
  return o;
}

checkGenerateIdTokenRequest(api.GenerateIdTokenRequest o) {
  buildCounterGenerateIdTokenRequest++;
  if (buildCounterGenerateIdTokenRequest < 3) {
    unittest.expect(o.audience, unittest.equals('foo'));
    checkUnnamed4646(o.delegates);
    unittest.expect(o.includeEmail, unittest.isTrue);
  }
  buildCounterGenerateIdTokenRequest--;
}

core.int buildCounterGenerateIdTokenResponse = 0;
buildGenerateIdTokenResponse() {
  var o = new api.GenerateIdTokenResponse();
  buildCounterGenerateIdTokenResponse++;
  if (buildCounterGenerateIdTokenResponse < 3) {
    o.token = "foo";
  }
  buildCounterGenerateIdTokenResponse--;
  return o;
}

checkGenerateIdTokenResponse(api.GenerateIdTokenResponse o) {
  buildCounterGenerateIdTokenResponse++;
  if (buildCounterGenerateIdTokenResponse < 3) {
    unittest.expect(o.token, unittest.equals('foo'));
  }
  buildCounterGenerateIdTokenResponse--;
}

buildUnnamed4647() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4647(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGenerateIdentityBindingAccessTokenRequest = 0;
buildGenerateIdentityBindingAccessTokenRequest() {
  var o = new api.GenerateIdentityBindingAccessTokenRequest();
  buildCounterGenerateIdentityBindingAccessTokenRequest++;
  if (buildCounterGenerateIdentityBindingAccessTokenRequest < 3) {
    o.jwt = "foo";
    o.scope = buildUnnamed4647();
  }
  buildCounterGenerateIdentityBindingAccessTokenRequest--;
  return o;
}

checkGenerateIdentityBindingAccessTokenRequest(
    api.GenerateIdentityBindingAccessTokenRequest o) {
  buildCounterGenerateIdentityBindingAccessTokenRequest++;
  if (buildCounterGenerateIdentityBindingAccessTokenRequest < 3) {
    unittest.expect(o.jwt, unittest.equals('foo'));
    checkUnnamed4647(o.scope);
  }
  buildCounterGenerateIdentityBindingAccessTokenRequest--;
}

core.int buildCounterGenerateIdentityBindingAccessTokenResponse = 0;
buildGenerateIdentityBindingAccessTokenResponse() {
  var o = new api.GenerateIdentityBindingAccessTokenResponse();
  buildCounterGenerateIdentityBindingAccessTokenResponse++;
  if (buildCounterGenerateIdentityBindingAccessTokenResponse < 3) {
    o.accessToken = "foo";
    o.expireTime = "foo";
  }
  buildCounterGenerateIdentityBindingAccessTokenResponse--;
  return o;
}

checkGenerateIdentityBindingAccessTokenResponse(
    api.GenerateIdentityBindingAccessTokenResponse o) {
  buildCounterGenerateIdentityBindingAccessTokenResponse++;
  if (buildCounterGenerateIdentityBindingAccessTokenResponse < 3) {
    unittest.expect(o.accessToken, unittest.equals('foo'));
    unittest.expect(o.expireTime, unittest.equals('foo'));
  }
  buildCounterGenerateIdentityBindingAccessTokenResponse--;
}

buildUnnamed4648() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4648(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSignBlobRequest = 0;
buildSignBlobRequest() {
  var o = new api.SignBlobRequest();
  buildCounterSignBlobRequest++;
  if (buildCounterSignBlobRequest < 3) {
    o.delegates = buildUnnamed4648();
    o.payload = "foo";
  }
  buildCounterSignBlobRequest--;
  return o;
}

checkSignBlobRequest(api.SignBlobRequest o) {
  buildCounterSignBlobRequest++;
  if (buildCounterSignBlobRequest < 3) {
    checkUnnamed4648(o.delegates);
    unittest.expect(o.payload, unittest.equals('foo'));
  }
  buildCounterSignBlobRequest--;
}

core.int buildCounterSignBlobResponse = 0;
buildSignBlobResponse() {
  var o = new api.SignBlobResponse();
  buildCounterSignBlobResponse++;
  if (buildCounterSignBlobResponse < 3) {
    o.keyId = "foo";
    o.signedBlob = "foo";
  }
  buildCounterSignBlobResponse--;
  return o;
}

checkSignBlobResponse(api.SignBlobResponse o) {
  buildCounterSignBlobResponse++;
  if (buildCounterSignBlobResponse < 3) {
    unittest.expect(o.keyId, unittest.equals('foo'));
    unittest.expect(o.signedBlob, unittest.equals('foo'));
  }
  buildCounterSignBlobResponse--;
}

buildUnnamed4649() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4649(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSignJwtRequest = 0;
buildSignJwtRequest() {
  var o = new api.SignJwtRequest();
  buildCounterSignJwtRequest++;
  if (buildCounterSignJwtRequest < 3) {
    o.delegates = buildUnnamed4649();
    o.payload = "foo";
  }
  buildCounterSignJwtRequest--;
  return o;
}

checkSignJwtRequest(api.SignJwtRequest o) {
  buildCounterSignJwtRequest++;
  if (buildCounterSignJwtRequest < 3) {
    checkUnnamed4649(o.delegates);
    unittest.expect(o.payload, unittest.equals('foo'));
  }
  buildCounterSignJwtRequest--;
}

core.int buildCounterSignJwtResponse = 0;
buildSignJwtResponse() {
  var o = new api.SignJwtResponse();
  buildCounterSignJwtResponse++;
  if (buildCounterSignJwtResponse < 3) {
    o.keyId = "foo";
    o.signedJwt = "foo";
  }
  buildCounterSignJwtResponse--;
  return o;
}

checkSignJwtResponse(api.SignJwtResponse o) {
  buildCounterSignJwtResponse++;
  if (buildCounterSignJwtResponse < 3) {
    unittest.expect(o.keyId, unittest.equals('foo'));
    unittest.expect(o.signedJwt, unittest.equals('foo'));
  }
  buildCounterSignJwtResponse--;
}

main() {
  unittest.group("obj-schema-GenerateAccessTokenRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGenerateAccessTokenRequest();
      var od = new api.GenerateAccessTokenRequest.fromJson(o.toJson());
      checkGenerateAccessTokenRequest(od);
    });
  });

  unittest.group("obj-schema-GenerateAccessTokenResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGenerateAccessTokenResponse();
      var od = new api.GenerateAccessTokenResponse.fromJson(o.toJson());
      checkGenerateAccessTokenResponse(od);
    });
  });

  unittest.group("obj-schema-GenerateIdTokenRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGenerateIdTokenRequest();
      var od = new api.GenerateIdTokenRequest.fromJson(o.toJson());
      checkGenerateIdTokenRequest(od);
    });
  });

  unittest.group("obj-schema-GenerateIdTokenResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGenerateIdTokenResponse();
      var od = new api.GenerateIdTokenResponse.fromJson(o.toJson());
      checkGenerateIdTokenResponse(od);
    });
  });

  unittest.group("obj-schema-GenerateIdentityBindingAccessTokenRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGenerateIdentityBindingAccessTokenRequest();
      var od = new api.GenerateIdentityBindingAccessTokenRequest.fromJson(
          o.toJson());
      checkGenerateIdentityBindingAccessTokenRequest(od);
    });
  });

  unittest.group("obj-schema-GenerateIdentityBindingAccessTokenResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGenerateIdentityBindingAccessTokenResponse();
      var od = new api.GenerateIdentityBindingAccessTokenResponse.fromJson(
          o.toJson());
      checkGenerateIdentityBindingAccessTokenResponse(od);
    });
  });

  unittest.group("obj-schema-SignBlobRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSignBlobRequest();
      var od = new api.SignBlobRequest.fromJson(o.toJson());
      checkSignBlobRequest(od);
    });
  });

  unittest.group("obj-schema-SignBlobResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildSignBlobResponse();
      var od = new api.SignBlobResponse.fromJson(o.toJson());
      checkSignBlobResponse(od);
    });
  });

  unittest.group("obj-schema-SignJwtRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSignJwtRequest();
      var od = new api.SignJwtRequest.fromJson(o.toJson());
      checkSignJwtRequest(od);
    });
  });

  unittest.group("obj-schema-SignJwtResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildSignJwtResponse();
      var od = new api.SignJwtResponse.fromJson(o.toJson());
      checkSignJwtResponse(od);
    });
  });

  unittest.group("resource-ProjectsServiceAccountsResourceApi", () {
    unittest.test("method--generateAccessToken", () {
      var mock = new HttpServerMock();
      api.ProjectsServiceAccountsResourceApi res =
          new api.IamcredentialsApi(mock).projects.serviceAccounts;
      var arg_request = buildGenerateAccessTokenRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GenerateAccessTokenRequest.fromJson(json);
        checkGenerateAccessTokenRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGenerateAccessTokenResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .generateAccessToken(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGenerateAccessTokenResponse(response);
      })));
    });

    unittest.test("method--generateIdToken", () {
      var mock = new HttpServerMock();
      api.ProjectsServiceAccountsResourceApi res =
          new api.IamcredentialsApi(mock).projects.serviceAccounts;
      var arg_request = buildGenerateIdTokenRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GenerateIdTokenRequest.fromJson(json);
        checkGenerateIdTokenRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGenerateIdTokenResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .generateIdToken(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGenerateIdTokenResponse(response);
      })));
    });

    unittest.test("method--generateIdentityBindingAccessToken", () {
      var mock = new HttpServerMock();
      api.ProjectsServiceAccountsResourceApi res =
          new api.IamcredentialsApi(mock).projects.serviceAccounts;
      var arg_request = buildGenerateIdentityBindingAccessTokenRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GenerateIdentityBindingAccessTokenRequest.fromJson(json);
        checkGenerateIdentityBindingAccessTokenRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json
            .encode(buildGenerateIdentityBindingAccessTokenResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .generateIdentityBindingAccessToken(arg_request, arg_name,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGenerateIdentityBindingAccessTokenResponse(response);
      })));
    });

    unittest.test("method--signBlob", () {
      var mock = new HttpServerMock();
      api.ProjectsServiceAccountsResourceApi res =
          new api.IamcredentialsApi(mock).projects.serviceAccounts;
      var arg_request = buildSignBlobRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SignBlobRequest.fromJson(json);
        checkSignBlobRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSignBlobResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .signBlob(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSignBlobResponse(response);
      })));
    });

    unittest.test("method--signJwt", () {
      var mock = new HttpServerMock();
      api.ProjectsServiceAccountsResourceApi res =
          new api.IamcredentialsApi(mock).projects.serviceAccounts;
      var arg_request = buildSignJwtRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SignJwtRequest.fromJson(json);
        checkSignJwtRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSignJwtResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .signJwt(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSignJwtResponse(response);
      })));
    });
  });
}
