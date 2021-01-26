// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: directives_ordering
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
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

library googleapis.abusiveexperiencereport.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/abusiveexperiencereport/v1.dart' as api;

class HttpServerMock extends http.BaseClient {
  core.Future<http.StreamedResponse> Function(http.BaseRequest, core.Object)
      _callback;
  core.bool _expectJson;

  void register(
    core.Future<http.StreamedResponse> Function(
      http.BaseRequest bob,
      core.Object foo,
    )
        callback,
    core.bool expectJson,
  ) {
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

core.int buildCounterSiteSummaryResponse = 0;
api.SiteSummaryResponse buildSiteSummaryResponse() {
  var o = api.SiteSummaryResponse();
  buildCounterSiteSummaryResponse++;
  if (buildCounterSiteSummaryResponse < 3) {
    o.abusiveStatus = 'foo';
    o.enforcementTime = 'foo';
    o.filterStatus = 'foo';
    o.lastChangeTime = 'foo';
    o.reportUrl = 'foo';
    o.reviewedSite = 'foo';
    o.underReview = true;
  }
  buildCounterSiteSummaryResponse--;
  return o;
}

void checkSiteSummaryResponse(api.SiteSummaryResponse o) {
  buildCounterSiteSummaryResponse++;
  if (buildCounterSiteSummaryResponse < 3) {
    unittest.expect(o.abusiveStatus, unittest.equals('foo'));
    unittest.expect(o.enforcementTime, unittest.equals('foo'));
    unittest.expect(o.filterStatus, unittest.equals('foo'));
    unittest.expect(o.lastChangeTime, unittest.equals('foo'));
    unittest.expect(o.reportUrl, unittest.equals('foo'));
    unittest.expect(o.reviewedSite, unittest.equals('foo'));
    unittest.expect(o.underReview, unittest.isTrue);
  }
  buildCounterSiteSummaryResponse--;
}

core.List<api.SiteSummaryResponse> buildUnnamed4861() {
  var o = <api.SiteSummaryResponse>[];
  o.add(buildSiteSummaryResponse());
  o.add(buildSiteSummaryResponse());
  return o;
}

void checkUnnamed4861(core.List<api.SiteSummaryResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSiteSummaryResponse(o[0] as api.SiteSummaryResponse);
  checkSiteSummaryResponse(o[1] as api.SiteSummaryResponse);
}

core.int buildCounterViolatingSitesResponse = 0;
api.ViolatingSitesResponse buildViolatingSitesResponse() {
  var o = api.ViolatingSitesResponse();
  buildCounterViolatingSitesResponse++;
  if (buildCounterViolatingSitesResponse < 3) {
    o.violatingSites = buildUnnamed4861();
  }
  buildCounterViolatingSitesResponse--;
  return o;
}

void checkViolatingSitesResponse(api.ViolatingSitesResponse o) {
  buildCounterViolatingSitesResponse++;
  if (buildCounterViolatingSitesResponse < 3) {
    checkUnnamed4861(o.violatingSites);
  }
  buildCounterViolatingSitesResponse--;
}

void main() {
  unittest.group('obj-schema-SiteSummaryResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildSiteSummaryResponse();
      var od = api.SiteSummaryResponse.fromJson(o.toJson());
      checkSiteSummaryResponse(od as api.SiteSummaryResponse);
    });
  });

  unittest.group('obj-schema-ViolatingSitesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildViolatingSitesResponse();
      var od = api.ViolatingSitesResponse.fromJson(o.toJson());
      checkViolatingSitesResponse(od as api.ViolatingSitesResponse);
    });
  });

  unittest.group('resource-SitesResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.AbusiveexperiencereportApi(mock).sites;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSiteSummaryResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSiteSummaryResponse(response as api.SiteSummaryResponse);
      })));
    });
  });

  unittest.group('resource-ViolatingSitesResourceApi', () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.AbusiveexperiencereportApi(mock).violatingSites;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("v1/violatingSites"));
        pathOffset += 17;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildViolatingSitesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list($fields: arg_$fields).then(unittest.expectAsync1(((response) {
        checkViolatingSitesResponse(response as api.ViolatingSitesResponse);
      })));
    });
  });
}
