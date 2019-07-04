library googleapis_beta.oslogin.v1beta.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis_beta/oslogin/v1beta.dart' as api;

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

core.int buildCounterImportSshPublicKeyResponse = 0;
buildImportSshPublicKeyResponse() {
  var o = new api.ImportSshPublicKeyResponse();
  buildCounterImportSshPublicKeyResponse++;
  if (buildCounterImportSshPublicKeyResponse < 3) {
    o.loginProfile = buildLoginProfile();
  }
  buildCounterImportSshPublicKeyResponse--;
  return o;
}

checkImportSshPublicKeyResponse(api.ImportSshPublicKeyResponse o) {
  buildCounterImportSshPublicKeyResponse++;
  if (buildCounterImportSshPublicKeyResponse < 3) {
    checkLoginProfile(o.loginProfile);
  }
  buildCounterImportSshPublicKeyResponse--;
}

buildUnnamed5270() {
  var o = new core.List<api.PosixAccount>();
  o.add(buildPosixAccount());
  o.add(buildPosixAccount());
  return o;
}

checkUnnamed5270(core.List<api.PosixAccount> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPosixAccount(o[0]);
  checkPosixAccount(o[1]);
}

buildUnnamed5271() {
  var o = new core.Map<core.String, api.SshPublicKey>();
  o["x"] = buildSshPublicKey();
  o["y"] = buildSshPublicKey();
  return o;
}

checkUnnamed5271(core.Map<core.String, api.SshPublicKey> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSshPublicKey(o["x"]);
  checkSshPublicKey(o["y"]);
}

core.int buildCounterLoginProfile = 0;
buildLoginProfile() {
  var o = new api.LoginProfile();
  buildCounterLoginProfile++;
  if (buildCounterLoginProfile < 3) {
    o.name = "foo";
    o.posixAccounts = buildUnnamed5270();
    o.sshPublicKeys = buildUnnamed5271();
  }
  buildCounterLoginProfile--;
  return o;
}

checkLoginProfile(api.LoginProfile o) {
  buildCounterLoginProfile++;
  if (buildCounterLoginProfile < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed5270(o.posixAccounts);
    checkUnnamed5271(o.sshPublicKeys);
  }
  buildCounterLoginProfile--;
}

core.int buildCounterPosixAccount = 0;
buildPosixAccount() {
  var o = new api.PosixAccount();
  buildCounterPosixAccount++;
  if (buildCounterPosixAccount < 3) {
    o.accountId = "foo";
    o.gecos = "foo";
    o.gid = "foo";
    o.homeDirectory = "foo";
    o.operatingSystemType = "foo";
    o.primary = true;
    o.shell = "foo";
    o.systemId = "foo";
    o.uid = "foo";
    o.username = "foo";
  }
  buildCounterPosixAccount--;
  return o;
}

checkPosixAccount(api.PosixAccount o) {
  buildCounterPosixAccount++;
  if (buildCounterPosixAccount < 3) {
    unittest.expect(o.accountId, unittest.equals('foo'));
    unittest.expect(o.gecos, unittest.equals('foo'));
    unittest.expect(o.gid, unittest.equals('foo'));
    unittest.expect(o.homeDirectory, unittest.equals('foo'));
    unittest.expect(o.operatingSystemType, unittest.equals('foo'));
    unittest.expect(o.primary, unittest.isTrue);
    unittest.expect(o.shell, unittest.equals('foo'));
    unittest.expect(o.systemId, unittest.equals('foo'));
    unittest.expect(o.uid, unittest.equals('foo'));
    unittest.expect(o.username, unittest.equals('foo'));
  }
  buildCounterPosixAccount--;
}

core.int buildCounterSshPublicKey = 0;
buildSshPublicKey() {
  var o = new api.SshPublicKey();
  buildCounterSshPublicKey++;
  if (buildCounterSshPublicKey < 3) {
    o.expirationTimeUsec = "foo";
    o.fingerprint = "foo";
    o.key = "foo";
  }
  buildCounterSshPublicKey--;
  return o;
}

checkSshPublicKey(api.SshPublicKey o) {
  buildCounterSshPublicKey++;
  if (buildCounterSshPublicKey < 3) {
    unittest.expect(o.expirationTimeUsec, unittest.equals('foo'));
    unittest.expect(o.fingerprint, unittest.equals('foo'));
    unittest.expect(o.key, unittest.equals('foo'));
  }
  buildCounterSshPublicKey--;
}

main() {
  unittest.group("obj-schema-Empty", () {
    unittest.test("to-json--from-json", () {
      var o = buildEmpty();
      var od = new api.Empty.fromJson(o.toJson());
      checkEmpty(od);
    });
  });

  unittest.group("obj-schema-ImportSshPublicKeyResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildImportSshPublicKeyResponse();
      var od = new api.ImportSshPublicKeyResponse.fromJson(o.toJson());
      checkImportSshPublicKeyResponse(od);
    });
  });

  unittest.group("obj-schema-LoginProfile", () {
    unittest.test("to-json--from-json", () {
      var o = buildLoginProfile();
      var od = new api.LoginProfile.fromJson(o.toJson());
      checkLoginProfile(od);
    });
  });

  unittest.group("obj-schema-PosixAccount", () {
    unittest.test("to-json--from-json", () {
      var o = buildPosixAccount();
      var od = new api.PosixAccount.fromJson(o.toJson());
      checkPosixAccount(od);
    });
  });

  unittest.group("obj-schema-SshPublicKey", () {
    unittest.test("to-json--from-json", () {
      var o = buildSshPublicKey();
      var od = new api.SshPublicKey.fromJson(o.toJson());
      checkSshPublicKey(od);
    });
  });

  unittest.group("resource-UsersResourceApi", () {
    unittest.test("method--getLoginProfile", () {
      var mock = new HttpServerMock();
      api.UsersResourceApi res = new api.OsloginApi(mock).users;
      var arg_name = "foo";
      var arg_projectId = "foo";
      var arg_systemId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("v1beta/"));
        pathOffset += 7;
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
            queryMap["projectId"].first, unittest.equals(arg_projectId));
        unittest.expect(
            queryMap["systemId"].first, unittest.equals(arg_systemId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildLoginProfile());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getLoginProfile(arg_name,
              projectId: arg_projectId,
              systemId: arg_systemId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLoginProfile(response);
      })));
    });

    unittest.test("method--importSshPublicKey", () {
      var mock = new HttpServerMock();
      api.UsersResourceApi res = new api.OsloginApi(mock).users;
      var arg_request = buildSshPublicKey();
      var arg_parent = "foo";
      var arg_projectId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SshPublicKey.fromJson(json);
        checkSshPublicKey(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("v1beta/"));
        pathOffset += 7;
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
            queryMap["projectId"].first, unittest.equals(arg_projectId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildImportSshPublicKeyResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .importSshPublicKey(arg_request, arg_parent,
              projectId: arg_projectId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkImportSshPublicKeyResponse(response);
      })));
    });
  });

  unittest.group("resource-UsersProjectsResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.UsersProjectsResourceApi res =
          new api.OsloginApi(mock).users.projects;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("v1beta/"));
        pathOffset += 7;
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
  });

  unittest.group("resource-UsersSshPublicKeysResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.UsersSshPublicKeysResourceApi res =
          new api.OsloginApi(mock).users.sshPublicKeys;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("v1beta/"));
        pathOffset += 7;
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
      api.UsersSshPublicKeysResourceApi res =
          new api.OsloginApi(mock).users.sshPublicKeys;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("v1beta/"));
        pathOffset += 7;
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
        var resp = convert.json.encode(buildSshPublicKey());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSshPublicKey(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.UsersSshPublicKeysResourceApi res =
          new api.OsloginApi(mock).users.sshPublicKeys;
      var arg_request = buildSshPublicKey();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SshPublicKey.fromJson(json);
        checkSshPublicKey(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("v1beta/"));
        pathOffset += 7;
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
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSshPublicKey());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSshPublicKey(response);
      })));
    });
  });
}
