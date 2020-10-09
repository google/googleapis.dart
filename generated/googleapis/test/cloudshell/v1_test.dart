library googleapis.cloudshell.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/cloudshell/v1.dart' as api;

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

core.int buildCounterAddPublicKeyMetadata = 0;
buildAddPublicKeyMetadata() {
  var o = new api.AddPublicKeyMetadata();
  buildCounterAddPublicKeyMetadata++;
  if (buildCounterAddPublicKeyMetadata < 3) {}
  buildCounterAddPublicKeyMetadata--;
  return o;
}

checkAddPublicKeyMetadata(api.AddPublicKeyMetadata o) {
  buildCounterAddPublicKeyMetadata++;
  if (buildCounterAddPublicKeyMetadata < 3) {}
  buildCounterAddPublicKeyMetadata--;
}

core.int buildCounterAddPublicKeyRequest = 0;
buildAddPublicKeyRequest() {
  var o = new api.AddPublicKeyRequest();
  buildCounterAddPublicKeyRequest++;
  if (buildCounterAddPublicKeyRequest < 3) {
    o.key = "foo";
  }
  buildCounterAddPublicKeyRequest--;
  return o;
}

checkAddPublicKeyRequest(api.AddPublicKeyRequest o) {
  buildCounterAddPublicKeyRequest++;
  if (buildCounterAddPublicKeyRequest < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
  }
  buildCounterAddPublicKeyRequest--;
}

core.int buildCounterAddPublicKeyResponse = 0;
buildAddPublicKeyResponse() {
  var o = new api.AddPublicKeyResponse();
  buildCounterAddPublicKeyResponse++;
  if (buildCounterAddPublicKeyResponse < 3) {
    o.key = "foo";
  }
  buildCounterAddPublicKeyResponse--;
  return o;
}

checkAddPublicKeyResponse(api.AddPublicKeyResponse o) {
  buildCounterAddPublicKeyResponse++;
  if (buildCounterAddPublicKeyResponse < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
  }
  buildCounterAddPublicKeyResponse--;
}

core.int buildCounterAuthorizeEnvironmentMetadata = 0;
buildAuthorizeEnvironmentMetadata() {
  var o = new api.AuthorizeEnvironmentMetadata();
  buildCounterAuthorizeEnvironmentMetadata++;
  if (buildCounterAuthorizeEnvironmentMetadata < 3) {}
  buildCounterAuthorizeEnvironmentMetadata--;
  return o;
}

checkAuthorizeEnvironmentMetadata(api.AuthorizeEnvironmentMetadata o) {
  buildCounterAuthorizeEnvironmentMetadata++;
  if (buildCounterAuthorizeEnvironmentMetadata < 3) {}
  buildCounterAuthorizeEnvironmentMetadata--;
}

core.int buildCounterAuthorizeEnvironmentRequest = 0;
buildAuthorizeEnvironmentRequest() {
  var o = new api.AuthorizeEnvironmentRequest();
  buildCounterAuthorizeEnvironmentRequest++;
  if (buildCounterAuthorizeEnvironmentRequest < 3) {
    o.accessToken = "foo";
    o.expireTime = "foo";
    o.idToken = "foo";
  }
  buildCounterAuthorizeEnvironmentRequest--;
  return o;
}

checkAuthorizeEnvironmentRequest(api.AuthorizeEnvironmentRequest o) {
  buildCounterAuthorizeEnvironmentRequest++;
  if (buildCounterAuthorizeEnvironmentRequest < 3) {
    unittest.expect(o.accessToken, unittest.equals('foo'));
    unittest.expect(o.expireTime, unittest.equals('foo'));
    unittest.expect(o.idToken, unittest.equals('foo'));
  }
  buildCounterAuthorizeEnvironmentRequest--;
}

core.int buildCounterAuthorizeEnvironmentResponse = 0;
buildAuthorizeEnvironmentResponse() {
  var o = new api.AuthorizeEnvironmentResponse();
  buildCounterAuthorizeEnvironmentResponse++;
  if (buildCounterAuthorizeEnvironmentResponse < 3) {}
  buildCounterAuthorizeEnvironmentResponse--;
  return o;
}

checkAuthorizeEnvironmentResponse(api.AuthorizeEnvironmentResponse o) {
  buildCounterAuthorizeEnvironmentResponse++;
  if (buildCounterAuthorizeEnvironmentResponse < 3) {}
  buildCounterAuthorizeEnvironmentResponse--;
}

core.int buildCounterCancelOperationRequest = 0;
buildCancelOperationRequest() {
  var o = new api.CancelOperationRequest();
  buildCounterCancelOperationRequest++;
  if (buildCounterCancelOperationRequest < 3) {}
  buildCounterCancelOperationRequest--;
  return o;
}

checkCancelOperationRequest(api.CancelOperationRequest o) {
  buildCounterCancelOperationRequest++;
  if (buildCounterCancelOperationRequest < 3) {}
  buildCounterCancelOperationRequest--;
}

core.int buildCounterCreateEnvironmentMetadata = 0;
buildCreateEnvironmentMetadata() {
  var o = new api.CreateEnvironmentMetadata();
  buildCounterCreateEnvironmentMetadata++;
  if (buildCounterCreateEnvironmentMetadata < 3) {}
  buildCounterCreateEnvironmentMetadata--;
  return o;
}

checkCreateEnvironmentMetadata(api.CreateEnvironmentMetadata o) {
  buildCounterCreateEnvironmentMetadata++;
  if (buildCounterCreateEnvironmentMetadata < 3) {}
  buildCounterCreateEnvironmentMetadata--;
}

core.int buildCounterDeleteEnvironmentMetadata = 0;
buildDeleteEnvironmentMetadata() {
  var o = new api.DeleteEnvironmentMetadata();
  buildCounterDeleteEnvironmentMetadata++;
  if (buildCounterDeleteEnvironmentMetadata < 3) {}
  buildCounterDeleteEnvironmentMetadata--;
  return o;
}

checkDeleteEnvironmentMetadata(api.DeleteEnvironmentMetadata o) {
  buildCounterDeleteEnvironmentMetadata++;
  if (buildCounterDeleteEnvironmentMetadata < 3) {}
  buildCounterDeleteEnvironmentMetadata--;
}

core.int buildCounterEmpty = 0;
buildEmpty() {
  var o = new api.Empty();
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
  return o;
}

checkEmpty(api.Empty o) {
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
}

buildUnnamed5018() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5018(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterEnvironment = 0;
buildEnvironment() {
  var o = new api.Environment();
  buildCounterEnvironment++;
  if (buildCounterEnvironment < 3) {
    o.dockerImage = "foo";
    o.id = "foo";
    o.name = "foo";
    o.publicKeys = buildUnnamed5018();
    o.sshHost = "foo";
    o.sshPort = 42;
    o.sshUsername = "foo";
    o.state = "foo";
    o.webHost = "foo";
  }
  buildCounterEnvironment--;
  return o;
}

checkEnvironment(api.Environment o) {
  buildCounterEnvironment++;
  if (buildCounterEnvironment < 3) {
    unittest.expect(o.dockerImage, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed5018(o.publicKeys);
    unittest.expect(o.sshHost, unittest.equals('foo'));
    unittest.expect(o.sshPort, unittest.equals(42));
    unittest.expect(o.sshUsername, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.webHost, unittest.equals('foo'));
  }
  buildCounterEnvironment--;
}

buildUnnamed5019() {
  var o = new core.List<api.Operation>();
  o.add(buildOperation());
  o.add(buildOperation());
  return o;
}

checkUnnamed5019(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0]);
  checkOperation(o[1]);
}

core.int buildCounterListOperationsResponse = 0;
buildListOperationsResponse() {
  var o = new api.ListOperationsResponse();
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    o.nextPageToken = "foo";
    o.operations = buildUnnamed5019();
  }
  buildCounterListOperationsResponse--;
  return o;
}

checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed5019(o.operations);
  }
  buildCounterListOperationsResponse--;
}

buildUnnamed5020() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed5020(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o["x"]) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(casted1["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted1["bool"], unittest.equals(true));
  unittest.expect(casted1["string"], unittest.equals('foo'));
  var casted2 = (o["y"]) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted2["bool"], unittest.equals(true));
  unittest.expect(casted2["string"], unittest.equals('foo'));
}

buildUnnamed5021() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed5021(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o["x"]) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(casted3["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted3["bool"], unittest.equals(true));
  unittest.expect(casted3["string"], unittest.equals('foo'));
  var casted4 = (o["y"]) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(casted4["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted4["bool"], unittest.equals(true));
  unittest.expect(casted4["string"], unittest.equals('foo'));
}

core.int buildCounterOperation = 0;
buildOperation() {
  var o = new api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed5020();
    o.name = "foo";
    o.response = buildUnnamed5021();
  }
  buildCounterOperation--;
  return o;
}

checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkStatus(o.error);
    checkUnnamed5020(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed5021(o.response);
  }
  buildCounterOperation--;
}

core.int buildCounterRemovePublicKeyMetadata = 0;
buildRemovePublicKeyMetadata() {
  var o = new api.RemovePublicKeyMetadata();
  buildCounterRemovePublicKeyMetadata++;
  if (buildCounterRemovePublicKeyMetadata < 3) {}
  buildCounterRemovePublicKeyMetadata--;
  return o;
}

checkRemovePublicKeyMetadata(api.RemovePublicKeyMetadata o) {
  buildCounterRemovePublicKeyMetadata++;
  if (buildCounterRemovePublicKeyMetadata < 3) {}
  buildCounterRemovePublicKeyMetadata--;
}

core.int buildCounterRemovePublicKeyRequest = 0;
buildRemovePublicKeyRequest() {
  var o = new api.RemovePublicKeyRequest();
  buildCounterRemovePublicKeyRequest++;
  if (buildCounterRemovePublicKeyRequest < 3) {
    o.key = "foo";
  }
  buildCounterRemovePublicKeyRequest--;
  return o;
}

checkRemovePublicKeyRequest(api.RemovePublicKeyRequest o) {
  buildCounterRemovePublicKeyRequest++;
  if (buildCounterRemovePublicKeyRequest < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
  }
  buildCounterRemovePublicKeyRequest--;
}

core.int buildCounterRemovePublicKeyResponse = 0;
buildRemovePublicKeyResponse() {
  var o = new api.RemovePublicKeyResponse();
  buildCounterRemovePublicKeyResponse++;
  if (buildCounterRemovePublicKeyResponse < 3) {}
  buildCounterRemovePublicKeyResponse--;
  return o;
}

checkRemovePublicKeyResponse(api.RemovePublicKeyResponse o) {
  buildCounterRemovePublicKeyResponse++;
  if (buildCounterRemovePublicKeyResponse < 3) {}
  buildCounterRemovePublicKeyResponse--;
}

core.int buildCounterStartEnvironmentMetadata = 0;
buildStartEnvironmentMetadata() {
  var o = new api.StartEnvironmentMetadata();
  buildCounterStartEnvironmentMetadata++;
  if (buildCounterStartEnvironmentMetadata < 3) {
    o.state = "foo";
  }
  buildCounterStartEnvironmentMetadata--;
  return o;
}

checkStartEnvironmentMetadata(api.StartEnvironmentMetadata o) {
  buildCounterStartEnvironmentMetadata++;
  if (buildCounterStartEnvironmentMetadata < 3) {
    unittest.expect(o.state, unittest.equals('foo'));
  }
  buildCounterStartEnvironmentMetadata--;
}

buildUnnamed5022() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5022(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterStartEnvironmentRequest = 0;
buildStartEnvironmentRequest() {
  var o = new api.StartEnvironmentRequest();
  buildCounterStartEnvironmentRequest++;
  if (buildCounterStartEnvironmentRequest < 3) {
    o.accessToken = "foo";
    o.publicKeys = buildUnnamed5022();
  }
  buildCounterStartEnvironmentRequest--;
  return o;
}

checkStartEnvironmentRequest(api.StartEnvironmentRequest o) {
  buildCounterStartEnvironmentRequest++;
  if (buildCounterStartEnvironmentRequest < 3) {
    unittest.expect(o.accessToken, unittest.equals('foo'));
    checkUnnamed5022(o.publicKeys);
  }
  buildCounterStartEnvironmentRequest--;
}

core.int buildCounterStartEnvironmentResponse = 0;
buildStartEnvironmentResponse() {
  var o = new api.StartEnvironmentResponse();
  buildCounterStartEnvironmentResponse++;
  if (buildCounterStartEnvironmentResponse < 3) {
    o.environment = buildEnvironment();
  }
  buildCounterStartEnvironmentResponse--;
  return o;
}

checkStartEnvironmentResponse(api.StartEnvironmentResponse o) {
  buildCounterStartEnvironmentResponse++;
  if (buildCounterStartEnvironmentResponse < 3) {
    checkEnvironment(o.environment);
  }
  buildCounterStartEnvironmentResponse--;
}

buildUnnamed5023() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed5023(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o["x"]) as core.Map;
  unittest.expect(casted5, unittest.hasLength(3));
  unittest.expect(casted5["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted5["bool"], unittest.equals(true));
  unittest.expect(casted5["string"], unittest.equals('foo'));
  var casted6 = (o["y"]) as core.Map;
  unittest.expect(casted6, unittest.hasLength(3));
  unittest.expect(casted6["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted6["bool"], unittest.equals(true));
  unittest.expect(casted6["string"], unittest.equals('foo'));
}

buildUnnamed5024() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed5023());
  o.add(buildUnnamed5023());
  return o;
}

checkUnnamed5024(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed5023(o[0]);
  checkUnnamed5023(o[1]);
}

core.int buildCounterStatus = 0;
buildStatus() {
  var o = new api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed5024();
    o.message = "foo";
  }
  buildCounterStatus--;
  return o;
}

checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed5024(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

main() {
  unittest.group("obj-schema-AddPublicKeyMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildAddPublicKeyMetadata();
      var od = new api.AddPublicKeyMetadata.fromJson(o.toJson());
      checkAddPublicKeyMetadata(od);
    });
  });

  unittest.group("obj-schema-AddPublicKeyRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildAddPublicKeyRequest();
      var od = new api.AddPublicKeyRequest.fromJson(o.toJson());
      checkAddPublicKeyRequest(od);
    });
  });

  unittest.group("obj-schema-AddPublicKeyResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildAddPublicKeyResponse();
      var od = new api.AddPublicKeyResponse.fromJson(o.toJson());
      checkAddPublicKeyResponse(od);
    });
  });

  unittest.group("obj-schema-AuthorizeEnvironmentMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildAuthorizeEnvironmentMetadata();
      var od = new api.AuthorizeEnvironmentMetadata.fromJson(o.toJson());
      checkAuthorizeEnvironmentMetadata(od);
    });
  });

  unittest.group("obj-schema-AuthorizeEnvironmentRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildAuthorizeEnvironmentRequest();
      var od = new api.AuthorizeEnvironmentRequest.fromJson(o.toJson());
      checkAuthorizeEnvironmentRequest(od);
    });
  });

  unittest.group("obj-schema-AuthorizeEnvironmentResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildAuthorizeEnvironmentResponse();
      var od = new api.AuthorizeEnvironmentResponse.fromJson(o.toJson());
      checkAuthorizeEnvironmentResponse(od);
    });
  });

  unittest.group("obj-schema-CancelOperationRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildCancelOperationRequest();
      var od = new api.CancelOperationRequest.fromJson(o.toJson());
      checkCancelOperationRequest(od);
    });
  });

  unittest.group("obj-schema-CreateEnvironmentMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreateEnvironmentMetadata();
      var od = new api.CreateEnvironmentMetadata.fromJson(o.toJson());
      checkCreateEnvironmentMetadata(od);
    });
  });

  unittest.group("obj-schema-DeleteEnvironmentMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeleteEnvironmentMetadata();
      var od = new api.DeleteEnvironmentMetadata.fromJson(o.toJson());
      checkDeleteEnvironmentMetadata(od);
    });
  });

  unittest.group("obj-schema-Empty", () {
    unittest.test("to-json--from-json", () {
      var o = buildEmpty();
      var od = new api.Empty.fromJson(o.toJson());
      checkEmpty(od);
    });
  });

  unittest.group("obj-schema-Environment", () {
    unittest.test("to-json--from-json", () {
      var o = buildEnvironment();
      var od = new api.Environment.fromJson(o.toJson());
      checkEnvironment(od);
    });
  });

  unittest.group("obj-schema-ListOperationsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListOperationsResponse();
      var od = new api.ListOperationsResponse.fromJson(o.toJson());
      checkListOperationsResponse(od);
    });
  });

  unittest.group("obj-schema-Operation", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperation();
      var od = new api.Operation.fromJson(o.toJson());
      checkOperation(od);
    });
  });

  unittest.group("obj-schema-RemovePublicKeyMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildRemovePublicKeyMetadata();
      var od = new api.RemovePublicKeyMetadata.fromJson(o.toJson());
      checkRemovePublicKeyMetadata(od);
    });
  });

  unittest.group("obj-schema-RemovePublicKeyRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildRemovePublicKeyRequest();
      var od = new api.RemovePublicKeyRequest.fromJson(o.toJson());
      checkRemovePublicKeyRequest(od);
    });
  });

  unittest.group("obj-schema-RemovePublicKeyResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildRemovePublicKeyResponse();
      var od = new api.RemovePublicKeyResponse.fromJson(o.toJson());
      checkRemovePublicKeyResponse(od);
    });
  });

  unittest.group("obj-schema-StartEnvironmentMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildStartEnvironmentMetadata();
      var od = new api.StartEnvironmentMetadata.fromJson(o.toJson());
      checkStartEnvironmentMetadata(od);
    });
  });

  unittest.group("obj-schema-StartEnvironmentRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildStartEnvironmentRequest();
      var od = new api.StartEnvironmentRequest.fromJson(o.toJson());
      checkStartEnvironmentRequest(od);
    });
  });

  unittest.group("obj-schema-StartEnvironmentResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildStartEnvironmentResponse();
      var od = new api.StartEnvironmentResponse.fromJson(o.toJson());
      checkStartEnvironmentResponse(od);
    });
  });

  unittest.group("obj-schema-Status", () {
    unittest.test("to-json--from-json", () {
      var o = buildStatus();
      var od = new api.Status.fromJson(o.toJson());
      checkStatus(od);
    });
  });

  unittest.group("resource-OperationsResourceApi", () {
    unittest.test("method--cancel", () {
      var mock = new HttpServerMock();
      api.OperationsResourceApi res = new api.CloudshellApi(mock).operations;
      var arg_request = buildCancelOperationRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.CancelOperationRequest.fromJson(json);
        checkCancelOperationRequest(obj);

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
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .cancel(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.OperationsResourceApi res = new api.CloudshellApi(mock).operations;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.OperationsResourceApi res = new api.CloudshellApi(mock).operations;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.OperationsResourceApi res = new api.CloudshellApi(mock).operations;
      var arg_name = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_filter = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListOperationsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              filter: arg_filter,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListOperationsResponse(response);
      })));
    });
  });

  unittest.group("resource-UsersEnvironmentsResourceApi", () {
    unittest.test("method--addPublicKey", () {
      var mock = new HttpServerMock();
      api.UsersEnvironmentsResourceApi res =
          new api.CloudshellApi(mock).users.environments;
      var arg_request = buildAddPublicKeyRequest();
      var arg_environment = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.AddPublicKeyRequest.fromJson(json);
        checkAddPublicKeyRequest(obj);

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
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .addPublicKey(arg_request, arg_environment, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--authorize", () {
      var mock = new HttpServerMock();
      api.UsersEnvironmentsResourceApi res =
          new api.CloudshellApi(mock).users.environments;
      var arg_request = buildAuthorizeEnvironmentRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.AuthorizeEnvironmentRequest.fromJson(json);
        checkAuthorizeEnvironmentRequest(obj);

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
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .authorize(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.UsersEnvironmentsResourceApi res =
          new api.CloudshellApi(mock).users.environments;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
        var resp = convert.json.encode(buildEnvironment());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEnvironment(response);
      })));
    });

    unittest.test("method--removePublicKey", () {
      var mock = new HttpServerMock();
      api.UsersEnvironmentsResourceApi res =
          new api.CloudshellApi(mock).users.environments;
      var arg_request = buildRemovePublicKeyRequest();
      var arg_environment = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.RemovePublicKeyRequest.fromJson(json);
        checkRemovePublicKeyRequest(obj);

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
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .removePublicKey(arg_request, arg_environment, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--start", () {
      var mock = new HttpServerMock();
      api.UsersEnvironmentsResourceApi res =
          new api.CloudshellApi(mock).users.environments;
      var arg_request = buildStartEnvironmentRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.StartEnvironmentRequest.fromJson(json);
        checkStartEnvironmentRequest(obj);

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
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .start(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });
  });
}
