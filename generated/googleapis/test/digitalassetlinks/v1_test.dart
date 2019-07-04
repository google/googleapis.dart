library googleapis.digitalassetlinks.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/digitalassetlinks/v1.dart' as api;

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

core.int buildCounterAndroidAppAsset = 0;
buildAndroidAppAsset() {
  var o = new api.AndroidAppAsset();
  buildCounterAndroidAppAsset++;
  if (buildCounterAndroidAppAsset < 3) {
    o.certificate = buildCertificateInfo();
    o.packageName = "foo";
  }
  buildCounterAndroidAppAsset--;
  return o;
}

checkAndroidAppAsset(api.AndroidAppAsset o) {
  buildCounterAndroidAppAsset++;
  if (buildCounterAndroidAppAsset < 3) {
    checkCertificateInfo(o.certificate);
    unittest.expect(o.packageName, unittest.equals('foo'));
  }
  buildCounterAndroidAppAsset--;
}

core.int buildCounterAsset = 0;
buildAsset() {
  var o = new api.Asset();
  buildCounterAsset++;
  if (buildCounterAsset < 3) {
    o.androidApp = buildAndroidAppAsset();
    o.web = buildWebAsset();
  }
  buildCounterAsset--;
  return o;
}

checkAsset(api.Asset o) {
  buildCounterAsset++;
  if (buildCounterAsset < 3) {
    checkAndroidAppAsset(o.androidApp);
    checkWebAsset(o.web);
  }
  buildCounterAsset--;
}

core.int buildCounterCertificateInfo = 0;
buildCertificateInfo() {
  var o = new api.CertificateInfo();
  buildCounterCertificateInfo++;
  if (buildCounterCertificateInfo < 3) {
    o.sha256Fingerprint = "foo";
  }
  buildCounterCertificateInfo--;
  return o;
}

checkCertificateInfo(api.CertificateInfo o) {
  buildCounterCertificateInfo++;
  if (buildCounterCertificateInfo < 3) {
    unittest.expect(o.sha256Fingerprint, unittest.equals('foo'));
  }
  buildCounterCertificateInfo--;
}

buildUnnamed798() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed798(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCheckResponse = 0;
buildCheckResponse() {
  var o = new api.CheckResponse();
  buildCounterCheckResponse++;
  if (buildCounterCheckResponse < 3) {
    o.debugString = "foo";
    o.errorCode = buildUnnamed798();
    o.linked = true;
    o.maxAge = "foo";
  }
  buildCounterCheckResponse--;
  return o;
}

checkCheckResponse(api.CheckResponse o) {
  buildCounterCheckResponse++;
  if (buildCounterCheckResponse < 3) {
    unittest.expect(o.debugString, unittest.equals('foo'));
    checkUnnamed798(o.errorCode);
    unittest.expect(o.linked, unittest.isTrue);
    unittest.expect(o.maxAge, unittest.equals('foo'));
  }
  buildCounterCheckResponse--;
}

buildUnnamed799() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed799(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed800() {
  var o = new core.List<api.Statement>();
  o.add(buildStatement());
  o.add(buildStatement());
  return o;
}

checkUnnamed800(core.List<api.Statement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStatement(o[0]);
  checkStatement(o[1]);
}

core.int buildCounterListResponse = 0;
buildListResponse() {
  var o = new api.ListResponse();
  buildCounterListResponse++;
  if (buildCounterListResponse < 3) {
    o.debugString = "foo";
    o.errorCode = buildUnnamed799();
    o.maxAge = "foo";
    o.statements = buildUnnamed800();
  }
  buildCounterListResponse--;
  return o;
}

checkListResponse(api.ListResponse o) {
  buildCounterListResponse++;
  if (buildCounterListResponse < 3) {
    unittest.expect(o.debugString, unittest.equals('foo'));
    checkUnnamed799(o.errorCode);
    unittest.expect(o.maxAge, unittest.equals('foo'));
    checkUnnamed800(o.statements);
  }
  buildCounterListResponse--;
}

core.int buildCounterStatement = 0;
buildStatement() {
  var o = new api.Statement();
  buildCounterStatement++;
  if (buildCounterStatement < 3) {
    o.relation = "foo";
    o.source = buildAsset();
    o.target = buildAsset();
  }
  buildCounterStatement--;
  return o;
}

checkStatement(api.Statement o) {
  buildCounterStatement++;
  if (buildCounterStatement < 3) {
    unittest.expect(o.relation, unittest.equals('foo'));
    checkAsset(o.source);
    checkAsset(o.target);
  }
  buildCounterStatement--;
}

core.int buildCounterWebAsset = 0;
buildWebAsset() {
  var o = new api.WebAsset();
  buildCounterWebAsset++;
  if (buildCounterWebAsset < 3) {
    o.site = "foo";
  }
  buildCounterWebAsset--;
  return o;
}

checkWebAsset(api.WebAsset o) {
  buildCounterWebAsset++;
  if (buildCounterWebAsset < 3) {
    unittest.expect(o.site, unittest.equals('foo'));
  }
  buildCounterWebAsset--;
}

main() {
  unittest.group("obj-schema-AndroidAppAsset", () {
    unittest.test("to-json--from-json", () {
      var o = buildAndroidAppAsset();
      var od = new api.AndroidAppAsset.fromJson(o.toJson());
      checkAndroidAppAsset(od);
    });
  });

  unittest.group("obj-schema-Asset", () {
    unittest.test("to-json--from-json", () {
      var o = buildAsset();
      var od = new api.Asset.fromJson(o.toJson());
      checkAsset(od);
    });
  });

  unittest.group("obj-schema-CertificateInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildCertificateInfo();
      var od = new api.CertificateInfo.fromJson(o.toJson());
      checkCertificateInfo(od);
    });
  });

  unittest.group("obj-schema-CheckResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildCheckResponse();
      var od = new api.CheckResponse.fromJson(o.toJson());
      checkCheckResponse(od);
    });
  });

  unittest.group("obj-schema-ListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListResponse();
      var od = new api.ListResponse.fromJson(o.toJson());
      checkListResponse(od);
    });
  });

  unittest.group("obj-schema-Statement", () {
    unittest.test("to-json--from-json", () {
      var o = buildStatement();
      var od = new api.Statement.fromJson(o.toJson());
      checkStatement(od);
    });
  });

  unittest.group("obj-schema-WebAsset", () {
    unittest.test("to-json--from-json", () {
      var o = buildWebAsset();
      var od = new api.WebAsset.fromJson(o.toJson());
      checkWebAsset(od);
    });
  });

  unittest.group("resource-AssetlinksResourceApi", () {
    unittest.test("method--check", () {
      var mock = new HttpServerMock();
      api.AssetlinksResourceApi res =
          new api.DigitalassetlinksApi(mock).assetlinks;
      var arg_relation = "foo";
      var arg_target_web_site = "foo";
      var arg_target_androidApp_certificate_sha256Fingerprint = "foo";
      var arg_source_web_site = "foo";
      var arg_source_androidApp_packageName = "foo";
      var arg_target_androidApp_packageName = "foo";
      var arg_source_androidApp_certificate_sha256Fingerprint = "foo";
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
            unittest.equals("v1/assetlinks:check"));
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
            queryMap["relation"].first, unittest.equals(arg_relation));
        unittest.expect(queryMap["target.web.site"].first,
            unittest.equals(arg_target_web_site));
        unittest.expect(
            queryMap["target.androidApp.certificate.sha256Fingerprint"].first,
            unittest
                .equals(arg_target_androidApp_certificate_sha256Fingerprint));
        unittest.expect(queryMap["source.web.site"].first,
            unittest.equals(arg_source_web_site));
        unittest.expect(queryMap["source.androidApp.packageName"].first,
            unittest.equals(arg_source_androidApp_packageName));
        unittest.expect(queryMap["target.androidApp.packageName"].first,
            unittest.equals(arg_target_androidApp_packageName));
        unittest.expect(
            queryMap["source.androidApp.certificate.sha256Fingerprint"].first,
            unittest
                .equals(arg_source_androidApp_certificate_sha256Fingerprint));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildCheckResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .check(
              relation: arg_relation,
              target_web_site: arg_target_web_site,
              target_androidApp_certificate_sha256Fingerprint:
                  arg_target_androidApp_certificate_sha256Fingerprint,
              source_web_site: arg_source_web_site,
              source_androidApp_packageName: arg_source_androidApp_packageName,
              target_androidApp_packageName: arg_target_androidApp_packageName,
              source_androidApp_certificate_sha256Fingerprint:
                  arg_source_androidApp_certificate_sha256Fingerprint,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCheckResponse(response);
      })));
    });
  });

  unittest.group("resource-StatementsResourceApi", () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.StatementsResourceApi res =
          new api.DigitalassetlinksApi(mock).statements;
      var arg_source_androidApp_certificate_sha256Fingerprint = "foo";
      var arg_relation = "foo";
      var arg_source_web_site = "foo";
      var arg_source_androidApp_packageName = "foo";
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
            unittest.equals("v1/statements:list"));
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
        unittest.expect(
            queryMap["source.androidApp.certificate.sha256Fingerprint"].first,
            unittest
                .equals(arg_source_androidApp_certificate_sha256Fingerprint));
        unittest.expect(
            queryMap["relation"].first, unittest.equals(arg_relation));
        unittest.expect(queryMap["source.web.site"].first,
            unittest.equals(arg_source_web_site));
        unittest.expect(queryMap["source.androidApp.packageName"].first,
            unittest.equals(arg_source_androidApp_packageName));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              source_androidApp_certificate_sha256Fingerprint:
                  arg_source_androidApp_certificate_sha256Fingerprint,
              relation: arg_relation,
              source_web_site: arg_source_web_site,
              source_androidApp_packageName: arg_source_androidApp_packageName,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListResponse(response);
      })));
    });
  });
}
