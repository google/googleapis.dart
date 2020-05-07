library googleapis.oauth2.v2.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/oauth2/v2.dart' as api;

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

core.int buildCounterTokeninfo = 0;
buildTokeninfo() {
  var o = new api.Tokeninfo();
  buildCounterTokeninfo++;
  if (buildCounterTokeninfo < 3) {
    o.audience = "foo";
    o.email = "foo";
    o.expiresIn = 42;
    o.issuedTo = "foo";
    o.scope = "foo";
    o.userId = "foo";
    o.verifiedEmail = true;
  }
  buildCounterTokeninfo--;
  return o;
}

checkTokeninfo(api.Tokeninfo o) {
  buildCounterTokeninfo++;
  if (buildCounterTokeninfo < 3) {
    unittest.expect(o.audience, unittest.equals('foo'));
    unittest.expect(o.email, unittest.equals('foo'));
    unittest.expect(o.expiresIn, unittest.equals(42));
    unittest.expect(o.issuedTo, unittest.equals('foo'));
    unittest.expect(o.scope, unittest.equals('foo'));
    unittest.expect(o.userId, unittest.equals('foo'));
    unittest.expect(o.verifiedEmail, unittest.isTrue);
  }
  buildCounterTokeninfo--;
}

core.int buildCounterUserinfo = 0;
buildUserinfo() {
  var o = new api.Userinfo();
  buildCounterUserinfo++;
  if (buildCounterUserinfo < 3) {
    o.email = "foo";
    o.familyName = "foo";
    o.gender = "foo";
    o.givenName = "foo";
    o.hd = "foo";
    o.id = "foo";
    o.link = "foo";
    o.locale = "foo";
    o.name = "foo";
    o.picture = "foo";
    o.verifiedEmail = true;
  }
  buildCounterUserinfo--;
  return o;
}

checkUserinfo(api.Userinfo o) {
  buildCounterUserinfo++;
  if (buildCounterUserinfo < 3) {
    unittest.expect(o.email, unittest.equals('foo'));
    unittest.expect(o.familyName, unittest.equals('foo'));
    unittest.expect(o.gender, unittest.equals('foo'));
    unittest.expect(o.givenName, unittest.equals('foo'));
    unittest.expect(o.hd, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.link, unittest.equals('foo'));
    unittest.expect(o.locale, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.picture, unittest.equals('foo'));
    unittest.expect(o.verifiedEmail, unittest.isTrue);
  }
  buildCounterUserinfo--;
}

main() {
  unittest.group("obj-schema-Tokeninfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildTokeninfo();
      var od = new api.Tokeninfo.fromJson(o.toJson());
      checkTokeninfo(od);
    });
  });

  unittest.group("obj-schema-Userinfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildUserinfo();
      var od = new api.Userinfo.fromJson(o.toJson());
      checkUserinfo(od);
    });
  });

  unittest.group("resource-Oauth2Api", () {
    unittest.test("method--tokeninfo", () {
      var mock = new HttpServerMock();
      api.Oauth2Api res = new api.Oauth2Api(mock);
      var arg_accessToken = "foo";
      var arg_idToken = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("oauth2/v2/tokeninfo"));
        pathOffset += 19;

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
            queryMap["access_token"].first, unittest.equals(arg_accessToken));
        unittest.expect(
            queryMap["id_token"].first, unittest.equals(arg_idToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildTokeninfo());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .tokeninfo(
              accessToken: arg_accessToken,
              idToken: arg_idToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTokeninfo(response);
      })));
    });
  });

  unittest.group("resource-UserinfoResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.UserinfoResourceApi res = new api.Oauth2Api(mock).userinfo;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("oauth2/v2/userinfo"));
        pathOffset += 18;

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
        var resp = convert.json.encode(buildUserinfo());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get($fields: arg_$fields).then(unittest.expectAsync1(((response) {
        checkUserinfo(response);
      })));
    });
  });

  unittest.group("resource-UserinfoV2MeResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.UserinfoV2MeResourceApi res = new api.Oauth2Api(mock).userinfo.v2.me;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("userinfo/v2/me"));
        pathOffset += 14;

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
        var resp = convert.json.encode(buildUserinfo());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get($fields: arg_$fields).then(unittest.expectAsync1(((response) {
        checkUserinfo(response);
      })));
    });
  });
}
