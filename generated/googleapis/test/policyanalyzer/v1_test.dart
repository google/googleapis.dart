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

import 'package:googleapis/policyanalyzer/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.Map<core.String, core.Object> buildUnnamed0() => {
      'x': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      'y': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    };

void checkUnnamed0(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o['x']!) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(
    casted1['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted1['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted1['string'],
    unittest.equals('foo'),
  );
  var casted2 = (o['y']!) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(
    casted2['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted2['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted2['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterGoogleCloudPolicyanalyzerV1Activity = 0;
api.GoogleCloudPolicyanalyzerV1Activity
    buildGoogleCloudPolicyanalyzerV1Activity() {
  final o = api.GoogleCloudPolicyanalyzerV1Activity();
  buildCounterGoogleCloudPolicyanalyzerV1Activity++;
  if (buildCounterGoogleCloudPolicyanalyzerV1Activity < 3) {
    o.activity = buildUnnamed0();
    o.activityType = 'foo';
    o.fullResourceName = 'foo';
    o.observationPeriod = buildGoogleCloudPolicyanalyzerV1ObservationPeriod();
  }
  buildCounterGoogleCloudPolicyanalyzerV1Activity--;
  return o;
}

void checkGoogleCloudPolicyanalyzerV1Activity(
    api.GoogleCloudPolicyanalyzerV1Activity o) {
  buildCounterGoogleCloudPolicyanalyzerV1Activity++;
  if (buildCounterGoogleCloudPolicyanalyzerV1Activity < 3) {
    checkUnnamed0(o.activity!);
    unittest.expect(
      o.activityType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fullResourceName!,
      unittest.equals('foo'),
    );
    checkGoogleCloudPolicyanalyzerV1ObservationPeriod(o.observationPeriod!);
  }
  buildCounterGoogleCloudPolicyanalyzerV1Activity--;
}

core.int buildCounterGoogleCloudPolicyanalyzerV1ObservationPeriod = 0;
api.GoogleCloudPolicyanalyzerV1ObservationPeriod
    buildGoogleCloudPolicyanalyzerV1ObservationPeriod() {
  final o = api.GoogleCloudPolicyanalyzerV1ObservationPeriod();
  buildCounterGoogleCloudPolicyanalyzerV1ObservationPeriod++;
  if (buildCounterGoogleCloudPolicyanalyzerV1ObservationPeriod < 3) {
    o.endTime = 'foo';
    o.startTime = 'foo';
  }
  buildCounterGoogleCloudPolicyanalyzerV1ObservationPeriod--;
  return o;
}

void checkGoogleCloudPolicyanalyzerV1ObservationPeriod(
    api.GoogleCloudPolicyanalyzerV1ObservationPeriod o) {
  buildCounterGoogleCloudPolicyanalyzerV1ObservationPeriod++;
  if (buildCounterGoogleCloudPolicyanalyzerV1ObservationPeriod < 3) {
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudPolicyanalyzerV1ObservationPeriod--;
}

core.List<api.GoogleCloudPolicyanalyzerV1Activity> buildUnnamed1() => [
      buildGoogleCloudPolicyanalyzerV1Activity(),
      buildGoogleCloudPolicyanalyzerV1Activity(),
    ];

void checkUnnamed1(core.List<api.GoogleCloudPolicyanalyzerV1Activity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudPolicyanalyzerV1Activity(o[0]);
  checkGoogleCloudPolicyanalyzerV1Activity(o[1]);
}

core.int buildCounterGoogleCloudPolicyanalyzerV1QueryActivityResponse = 0;
api.GoogleCloudPolicyanalyzerV1QueryActivityResponse
    buildGoogleCloudPolicyanalyzerV1QueryActivityResponse() {
  final o = api.GoogleCloudPolicyanalyzerV1QueryActivityResponse();
  buildCounterGoogleCloudPolicyanalyzerV1QueryActivityResponse++;
  if (buildCounterGoogleCloudPolicyanalyzerV1QueryActivityResponse < 3) {
    o.activities = buildUnnamed1();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudPolicyanalyzerV1QueryActivityResponse--;
  return o;
}

void checkGoogleCloudPolicyanalyzerV1QueryActivityResponse(
    api.GoogleCloudPolicyanalyzerV1QueryActivityResponse o) {
  buildCounterGoogleCloudPolicyanalyzerV1QueryActivityResponse++;
  if (buildCounterGoogleCloudPolicyanalyzerV1QueryActivityResponse < 3) {
    checkUnnamed1(o.activities!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudPolicyanalyzerV1QueryActivityResponse--;
}

void main() {
  unittest.group('obj-schema-GoogleCloudPolicyanalyzerV1Activity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudPolicyanalyzerV1Activity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudPolicyanalyzerV1Activity.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudPolicyanalyzerV1Activity(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudPolicyanalyzerV1ObservationPeriod', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudPolicyanalyzerV1ObservationPeriod();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudPolicyanalyzerV1ObservationPeriod.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudPolicyanalyzerV1ObservationPeriod(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudPolicyanalyzerV1QueryActivityResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudPolicyanalyzerV1QueryActivityResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudPolicyanalyzerV1QueryActivityResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudPolicyanalyzerV1QueryActivityResponse(od);
    });
  });

  unittest.group('resource-ProjectsLocationsActivityTypesActivitiesResource',
      () {
    unittest.test('method--query', () async {
      final mock = HttpServerMock();
      final res = api.PolicyAnalyzerApi(mock)
          .projects
          .locations
          .activityTypes
          .activities;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
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
          queryMap['filter']!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudPolicyanalyzerV1QueryActivityResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.query(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudPolicyanalyzerV1QueryActivityResponse(
          response as api.GoogleCloudPolicyanalyzerV1QueryActivityResponse);
    });
  });
}
