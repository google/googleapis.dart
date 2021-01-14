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

core.int buildCounterAndroidAppAsset = 0;
api.AndroidAppAsset buildAndroidAppAsset() {
  var o = api.AndroidAppAsset();
  buildCounterAndroidAppAsset++;
  if (buildCounterAndroidAppAsset < 3) {
    o.certificate = buildCertificateInfo();
    o.packageName = "foo";
  }
  buildCounterAndroidAppAsset--;
  return o;
}

void checkAndroidAppAsset(api.AndroidAppAsset o) {
  buildCounterAndroidAppAsset++;
  if (buildCounterAndroidAppAsset < 3) {
    checkCertificateInfo(o.certificate);
    unittest.expect(o.packageName, unittest.equals('foo'));
  }
  buildCounterAndroidAppAsset--;
}

core.int buildCounterAsset = 0;
api.Asset buildAsset() {
  var o = api.Asset();
  buildCounterAsset++;
  if (buildCounterAsset < 3) {
    o.androidApp = buildAndroidAppAsset();
    o.web = buildWebAsset();
  }
  buildCounterAsset--;
  return o;
}

void checkAsset(api.Asset o) {
  buildCounterAsset++;
  if (buildCounterAsset < 3) {
    checkAndroidAppAsset(o.androidApp);
    checkWebAsset(o.web);
  }
  buildCounterAsset--;
}

core.int buildCounterCertificateInfo = 0;
api.CertificateInfo buildCertificateInfo() {
  var o = api.CertificateInfo();
  buildCounterCertificateInfo++;
  if (buildCounterCertificateInfo < 3) {
    o.sha256Fingerprint = "foo";
  }
  buildCounterCertificateInfo--;
  return o;
}

void checkCertificateInfo(api.CertificateInfo o) {
  buildCounterCertificateInfo++;
  if (buildCounterCertificateInfo < 3) {
    unittest.expect(o.sha256Fingerprint, unittest.equals('foo'));
  }
  buildCounterCertificateInfo--;
}

core.List<core.String> buildUnnamed2772() {
  var o = <core.String>[];
  o.add("foo");
  o.add("foo");
  return o;
}

void checkUnnamed2772(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCheckResponse = 0;
api.CheckResponse buildCheckResponse() {
  var o = api.CheckResponse();
  buildCounterCheckResponse++;
  if (buildCounterCheckResponse < 3) {
    o.debugString = "foo";
    o.errorCode = buildUnnamed2772();
    o.linked = true;
    o.maxAge = "foo";
  }
  buildCounterCheckResponse--;
  return o;
}

void checkCheckResponse(api.CheckResponse o) {
  buildCounterCheckResponse++;
  if (buildCounterCheckResponse < 3) {
    unittest.expect(o.debugString, unittest.equals('foo'));
    checkUnnamed2772(o.errorCode);
    unittest.expect(o.linked, unittest.isTrue);
    unittest.expect(o.maxAge, unittest.equals('foo'));
  }
  buildCounterCheckResponse--;
}

core.List<core.String> buildUnnamed2773() {
  var o = <core.String>[];
  o.add("foo");
  o.add("foo");
  return o;
}

void checkUnnamed2773(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.Statement> buildUnnamed2774() {
  var o = <api.Statement>[];
  o.add(buildStatement());
  o.add(buildStatement());
  return o;
}

void checkUnnamed2774(core.List<api.Statement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStatement(o[0]);
  checkStatement(o[1]);
}

core.int buildCounterListResponse = 0;
api.ListResponse buildListResponse() {
  var o = api.ListResponse();
  buildCounterListResponse++;
  if (buildCounterListResponse < 3) {
    o.debugString = "foo";
    o.errorCode = buildUnnamed2773();
    o.maxAge = "foo";
    o.statements = buildUnnamed2774();
  }
  buildCounterListResponse--;
  return o;
}

void checkListResponse(api.ListResponse o) {
  buildCounterListResponse++;
  if (buildCounterListResponse < 3) {
    unittest.expect(o.debugString, unittest.equals('foo'));
    checkUnnamed2773(o.errorCode);
    unittest.expect(o.maxAge, unittest.equals('foo'));
    checkUnnamed2774(o.statements);
  }
  buildCounterListResponse--;
}

core.int buildCounterStatement = 0;
api.Statement buildStatement() {
  var o = api.Statement();
  buildCounterStatement++;
  if (buildCounterStatement < 3) {
    o.relation = "foo";
    o.source = buildAsset();
    o.target = buildAsset();
  }
  buildCounterStatement--;
  return o;
}

void checkStatement(api.Statement o) {
  buildCounterStatement++;
  if (buildCounterStatement < 3) {
    unittest.expect(o.relation, unittest.equals('foo'));
    checkAsset(o.source);
    checkAsset(o.target);
  }
  buildCounterStatement--;
}

core.int buildCounterWebAsset = 0;
api.WebAsset buildWebAsset() {
  var o = api.WebAsset();
  buildCounterWebAsset++;
  if (buildCounterWebAsset < 3) {
    o.site = "foo";
  }
  buildCounterWebAsset--;
  return o;
}

void checkWebAsset(api.WebAsset o) {
  buildCounterWebAsset++;
  if (buildCounterWebAsset < 3) {
    unittest.expect(o.site, unittest.equals('foo'));
  }
  buildCounterWebAsset--;
}

void main() {
  unittest.group("obj-schema-AndroidAppAsset", () {
    unittest.test("to-json--from-json", () {
      var o = buildAndroidAppAsset();
      var od = api.AndroidAppAsset.fromJson(o.toJson());
      checkAndroidAppAsset(od);
    });
  });

  unittest.group("obj-schema-Asset", () {
    unittest.test("to-json--from-json", () {
      var o = buildAsset();
      var od = api.Asset.fromJson(o.toJson());
      checkAsset(od);
    });
  });

  unittest.group("obj-schema-CertificateInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildCertificateInfo();
      var od = api.CertificateInfo.fromJson(o.toJson());
      checkCertificateInfo(od);
    });
  });

  unittest.group("obj-schema-CheckResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildCheckResponse();
      var od = api.CheckResponse.fromJson(o.toJson());
      checkCheckResponse(od);
    });
  });

  unittest.group("obj-schema-ListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListResponse();
      var od = api.ListResponse.fromJson(o.toJson());
      checkListResponse(od);
    });
  });

  unittest.group("obj-schema-Statement", () {
    unittest.test("to-json--from-json", () {
      var o = buildStatement();
      var od = api.Statement.fromJson(o.toJson());
      checkStatement(od);
    });
  });

  unittest.group("obj-schema-WebAsset", () {
    unittest.test("to-json--from-json", () {
      var o = buildWebAsset();
      var od = api.WebAsset.fromJson(o.toJson());
      checkWebAsset(od);
    });
  });

  unittest.group("resource-AssetlinksResourceApi", () {
    unittest.test("method--check", () {
      var mock = HttpServerMock();
      api.AssetlinksResourceApi res = api.DigitalassetlinksApi(mock).assetlinks;
      var arg_source_web_site = "foo";
      var arg_target_androidApp_packageName = "foo";
      var arg_source_androidApp_certificate_sha256Fingerprint = "foo";
      var arg_relation = "foo";
      var arg_target_androidApp_certificate_sha256Fingerprint = "foo";
      var arg_target_web_site = "foo";
      var arg_source_androidApp_packageName = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("v1/assetlinks:check"));
        pathOffset += 19;

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
        unittest.expect(queryMap["source.web.site"].first,
            unittest.equals(arg_source_web_site));
        unittest.expect(queryMap["target.androidApp.packageName"].first,
            unittest.equals(arg_target_androidApp_packageName));
        unittest.expect(
            queryMap["source.androidApp.certificate.sha256Fingerprint"].first,
            unittest
                .equals(arg_source_androidApp_certificate_sha256Fingerprint));
        unittest.expect(
            queryMap["relation"].first, unittest.equals(arg_relation));
        unittest.expect(
            queryMap["target.androidApp.certificate.sha256Fingerprint"].first,
            unittest
                .equals(arg_target_androidApp_certificate_sha256Fingerprint));
        unittest.expect(queryMap["target.web.site"].first,
            unittest.equals(arg_target_web_site));
        unittest.expect(queryMap["source.androidApp.packageName"].first,
            unittest.equals(arg_source_androidApp_packageName));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildCheckResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .check(
              source_web_site: arg_source_web_site,
              target_androidApp_packageName: arg_target_androidApp_packageName,
              source_androidApp_certificate_sha256Fingerprint:
                  arg_source_androidApp_certificate_sha256Fingerprint,
              relation: arg_relation,
              target_androidApp_certificate_sha256Fingerprint:
                  arg_target_androidApp_certificate_sha256Fingerprint,
              target_web_site: arg_target_web_site,
              source_androidApp_packageName: arg_source_androidApp_packageName,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCheckResponse(response);
      })));
    });
  });

  unittest.group("resource-StatementsResourceApi", () {
    unittest.test("method--list", () {
      var mock = HttpServerMock();
      api.StatementsResourceApi res = api.DigitalassetlinksApi(mock).statements;
      var arg_source_web_site = "foo";
      var arg_source_androidApp_packageName = "foo";
      var arg_relation = "foo";
      var arg_source_androidApp_certificate_sha256Fingerprint = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("v1/statements:list"));
        pathOffset += 18;

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
        unittest.expect(queryMap["source.web.site"].first,
            unittest.equals(arg_source_web_site));
        unittest.expect(queryMap["source.androidApp.packageName"].first,
            unittest.equals(arg_source_androidApp_packageName));
        unittest.expect(
            queryMap["relation"].first, unittest.equals(arg_relation));
        unittest.expect(
            queryMap["source.androidApp.certificate.sha256Fingerprint"].first,
            unittest
                .equals(arg_source_androidApp_certificate_sha256Fingerprint));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              source_web_site: arg_source_web_site,
              source_androidApp_packageName: arg_source_androidApp_packageName,
              relation: arg_relation,
              source_androidApp_certificate_sha256Fingerprint:
                  arg_source_androidApp_certificate_sha256Fingerprint,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListResponse(response);
      })));
    });
  });
}
