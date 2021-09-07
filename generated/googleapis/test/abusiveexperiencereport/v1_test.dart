// ignore_for_file: camel_case_types
// ignore_for_file: cascade_invocations
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_const_declarations
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:googleapis/abusiveexperiencereport/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterSiteSummaryResponse = 0;
api.SiteSummaryResponse buildSiteSummaryResponse() {
  final o = api.SiteSummaryResponse();
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
    unittest.expect(
      o.abusiveStatus!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.enforcementTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.filterStatus!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastChangeTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reportUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reviewedSite!,
      unittest.equals('foo'),
    );
    unittest.expect(o.underReview!, unittest.isTrue);
  }
  buildCounterSiteSummaryResponse--;
}

core.List<api.SiteSummaryResponse> buildUnnamed6368() => [
      buildSiteSummaryResponse(),
      buildSiteSummaryResponse(),
    ];

void checkUnnamed6368(core.List<api.SiteSummaryResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSiteSummaryResponse(o[0]);
  checkSiteSummaryResponse(o[1]);
}

core.int buildCounterViolatingSitesResponse = 0;
api.ViolatingSitesResponse buildViolatingSitesResponse() {
  final o = api.ViolatingSitesResponse();
  buildCounterViolatingSitesResponse++;
  if (buildCounterViolatingSitesResponse < 3) {
    o.violatingSites = buildUnnamed6368();
  }
  buildCounterViolatingSitesResponse--;
  return o;
}

void checkViolatingSitesResponse(api.ViolatingSitesResponse o) {
  buildCounterViolatingSitesResponse++;
  if (buildCounterViolatingSitesResponse < 3) {
    checkUnnamed6368(o.violatingSites!);
  }
  buildCounterViolatingSitesResponse--;
}

void main() {
  unittest.group('obj-schema-SiteSummaryResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSiteSummaryResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SiteSummaryResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSiteSummaryResponse(od);
    });
  });

  unittest.group('obj-schema-ViolatingSitesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildViolatingSitesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ViolatingSitesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkViolatingSitesResponse(od);
    });
  });

  unittest.group('resource-SitesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AbusiveExperienceReportApi(mock).sites;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildSiteSummaryResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkSiteSummaryResponse(response as api.SiteSummaryResponse);
    });
  });

  unittest.group('resource-ViolatingSitesResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AbusiveExperienceReportApi(mock).violatingSites;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('v1/violatingSites'),
        );
        pathOffset += 17;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildViolatingSitesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list($fields: arg_$fields);
      checkViolatingSitesResponse(response as api.ViolatingSitesResponse);
    });
  });
}
