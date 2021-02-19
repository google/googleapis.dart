// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: avoid_returning_null
// ignore_for_file: cascade_invocations
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;
import 'package:googleapis/digitalassetlinks/v1.dart' as api;

import '../test_shared.dart';

core.int buildCounterAndroidAppAsset = 0;
api.AndroidAppAsset buildAndroidAppAsset() {
  var o = api.AndroidAppAsset();
  buildCounterAndroidAppAsset++;
  if (buildCounterAndroidAppAsset < 3) {
    o.certificate = buildCertificateInfo();
    o.packageName = 'foo';
  }
  buildCounterAndroidAppAsset--;
  return o;
}

void checkAndroidAppAsset(api.AndroidAppAsset o) {
  buildCounterAndroidAppAsset++;
  if (buildCounterAndroidAppAsset < 3) {
    checkCertificateInfo(o.certificate as api.CertificateInfo);
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
    checkAndroidAppAsset(o.androidApp as api.AndroidAppAsset);
    checkWebAsset(o.web as api.WebAsset);
  }
  buildCounterAsset--;
}

core.int buildCounterCertificateInfo = 0;
api.CertificateInfo buildCertificateInfo() {
  var o = api.CertificateInfo();
  buildCounterCertificateInfo++;
  if (buildCounterCertificateInfo < 3) {
    o.sha256Fingerprint = 'foo';
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

core.List<core.String> buildUnnamed3188() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3188(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCheckResponse = 0;
api.CheckResponse buildCheckResponse() {
  var o = api.CheckResponse();
  buildCounterCheckResponse++;
  if (buildCounterCheckResponse < 3) {
    o.debugString = 'foo';
    o.errorCode = buildUnnamed3188();
    o.linked = true;
    o.maxAge = 'foo';
  }
  buildCounterCheckResponse--;
  return o;
}

void checkCheckResponse(api.CheckResponse o) {
  buildCounterCheckResponse++;
  if (buildCounterCheckResponse < 3) {
    unittest.expect(o.debugString, unittest.equals('foo'));
    checkUnnamed3188(o.errorCode);
    unittest.expect(o.linked, unittest.isTrue);
    unittest.expect(o.maxAge, unittest.equals('foo'));
  }
  buildCounterCheckResponse--;
}

core.List<core.String> buildUnnamed3189() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3189(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.Statement> buildUnnamed3190() {
  var o = <api.Statement>[];
  o.add(buildStatement());
  o.add(buildStatement());
  return o;
}

void checkUnnamed3190(core.List<api.Statement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStatement(o[0] as api.Statement);
  checkStatement(o[1] as api.Statement);
}

core.int buildCounterListResponse = 0;
api.ListResponse buildListResponse() {
  var o = api.ListResponse();
  buildCounterListResponse++;
  if (buildCounterListResponse < 3) {
    o.debugString = 'foo';
    o.errorCode = buildUnnamed3189();
    o.maxAge = 'foo';
    o.statements = buildUnnamed3190();
  }
  buildCounterListResponse--;
  return o;
}

void checkListResponse(api.ListResponse o) {
  buildCounterListResponse++;
  if (buildCounterListResponse < 3) {
    unittest.expect(o.debugString, unittest.equals('foo'));
    checkUnnamed3189(o.errorCode);
    unittest.expect(o.maxAge, unittest.equals('foo'));
    checkUnnamed3190(o.statements);
  }
  buildCounterListResponse--;
}

core.int buildCounterStatement = 0;
api.Statement buildStatement() {
  var o = api.Statement();
  buildCounterStatement++;
  if (buildCounterStatement < 3) {
    o.relation = 'foo';
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
    checkAsset(o.source as api.Asset);
    checkAsset(o.target as api.Asset);
  }
  buildCounterStatement--;
}

core.int buildCounterWebAsset = 0;
api.WebAsset buildWebAsset() {
  var o = api.WebAsset();
  buildCounterWebAsset++;
  if (buildCounterWebAsset < 3) {
    o.site = 'foo';
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
  unittest.group('obj-schema-AndroidAppAsset', () {
    unittest.test('to-json--from-json', () {
      var o = buildAndroidAppAsset();
      var od = api.AndroidAppAsset.fromJson(o.toJson());
      checkAndroidAppAsset(od as api.AndroidAppAsset);
    });
  });

  unittest.group('obj-schema-Asset', () {
    unittest.test('to-json--from-json', () {
      var o = buildAsset();
      var od = api.Asset.fromJson(o.toJson());
      checkAsset(od as api.Asset);
    });
  });

  unittest.group('obj-schema-CertificateInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildCertificateInfo();
      var od = api.CertificateInfo.fromJson(o.toJson());
      checkCertificateInfo(od as api.CertificateInfo);
    });
  });

  unittest.group('obj-schema-CheckResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildCheckResponse();
      var od = api.CheckResponse.fromJson(o.toJson());
      checkCheckResponse(od as api.CheckResponse);
    });
  });

  unittest.group('obj-schema-ListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListResponse();
      var od = api.ListResponse.fromJson(o.toJson());
      checkListResponse(od as api.ListResponse);
    });
  });

  unittest.group('obj-schema-Statement', () {
    unittest.test('to-json--from-json', () {
      var o = buildStatement();
      var od = api.Statement.fromJson(o.toJson());
      checkStatement(od as api.Statement);
    });
  });

  unittest.group('obj-schema-WebAsset', () {
    unittest.test('to-json--from-json', () {
      var o = buildWebAsset();
      var od = api.WebAsset.fromJson(o.toJson());
      checkWebAsset(od as api.WebAsset);
    });
  });

  unittest.group('resource-AssetlinksResource', () {
    unittest.test('method--check', () {
      var mock = HttpServerMock();
      var res = api.DigitalassetlinksApi(mock).assetlinks;
      var arg_relation = 'foo';
      var arg_source_androidApp_certificate_sha256Fingerprint = 'foo';
      var arg_source_androidApp_packageName = 'foo';
      var arg_source_web_site = 'foo';
      var arg_target_androidApp_certificate_sha256Fingerprint = 'foo';
      var arg_target_androidApp_packageName = 'foo';
      var arg_target_web_site = 'foo';
      var arg_$fields = 'foo';
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
            queryMap["relation"].first, unittest.equals(arg_relation));
        unittest.expect(
            queryMap["source.androidApp.certificate.sha256Fingerprint"].first,
            unittest
                .equals(arg_source_androidApp_certificate_sha256Fingerprint));
        unittest.expect(queryMap["source.androidApp.packageName"].first,
            unittest.equals(arg_source_androidApp_packageName));
        unittest.expect(queryMap["source.web.site"].first,
            unittest.equals(arg_source_web_site));
        unittest.expect(
            queryMap["target.androidApp.certificate.sha256Fingerprint"].first,
            unittest
                .equals(arg_target_androidApp_certificate_sha256Fingerprint));
        unittest.expect(queryMap["target.androidApp.packageName"].first,
            unittest.equals(arg_target_androidApp_packageName));
        unittest.expect(queryMap["target.web.site"].first,
            unittest.equals(arg_target_web_site));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildCheckResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .check(
              relation: arg_relation,
              source_androidApp_certificate_sha256Fingerprint:
                  arg_source_androidApp_certificate_sha256Fingerprint,
              source_androidApp_packageName: arg_source_androidApp_packageName,
              source_web_site: arg_source_web_site,
              target_androidApp_certificate_sha256Fingerprint:
                  arg_target_androidApp_certificate_sha256Fingerprint,
              target_androidApp_packageName: arg_target_androidApp_packageName,
              target_web_site: arg_target_web_site,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCheckResponse(response as api.CheckResponse);
      })));
    });
  });

  unittest.group('resource-StatementsResource', () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DigitalassetlinksApi(mock).statements;
      var arg_relation = 'foo';
      var arg_source_androidApp_certificate_sha256Fingerprint = 'foo';
      var arg_source_androidApp_packageName = 'foo';
      var arg_source_web_site = 'foo';
      var arg_$fields = 'foo';
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
            queryMap["relation"].first, unittest.equals(arg_relation));
        unittest.expect(
            queryMap["source.androidApp.certificate.sha256Fingerprint"].first,
            unittest
                .equals(arg_source_androidApp_certificate_sha256Fingerprint));
        unittest.expect(queryMap["source.androidApp.packageName"].first,
            unittest.equals(arg_source_androidApp_packageName));
        unittest.expect(queryMap["source.web.site"].first,
            unittest.equals(arg_source_web_site));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              relation: arg_relation,
              source_androidApp_certificate_sha256Fingerprint:
                  arg_source_androidApp_certificate_sha256Fingerprint,
              source_androidApp_packageName: arg_source_androidApp_packageName,
              source_web_site: arg_source_web_site,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListResponse(response as api.ListResponse);
      })));
    });
  });
}
