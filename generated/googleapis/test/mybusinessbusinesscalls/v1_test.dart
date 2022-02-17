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

import 'package:googleapis/mybusinessbusinesscalls/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<api.HourlyMetrics> buildUnnamed0() => [
      buildHourlyMetrics(),
      buildHourlyMetrics(),
    ];

void checkUnnamed0(core.List<api.HourlyMetrics> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHourlyMetrics(o[0]);
  checkHourlyMetrics(o[1]);
}

core.List<api.WeekDayMetrics> buildUnnamed1() => [
      buildWeekDayMetrics(),
      buildWeekDayMetrics(),
    ];

void checkUnnamed1(core.List<api.WeekDayMetrics> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWeekDayMetrics(o[0]);
  checkWeekDayMetrics(o[1]);
}

core.int buildCounterAggregateMetrics = 0;
api.AggregateMetrics buildAggregateMetrics() {
  final o = api.AggregateMetrics();
  buildCounterAggregateMetrics++;
  if (buildCounterAggregateMetrics < 3) {
    o.answeredCallsCount = 42;
    o.endDate = buildDate();
    o.hourlyMetrics = buildUnnamed0();
    o.missedCallsCount = 42;
    o.startDate = buildDate();
    o.weekdayMetrics = buildUnnamed1();
  }
  buildCounterAggregateMetrics--;
  return o;
}

void checkAggregateMetrics(api.AggregateMetrics o) {
  buildCounterAggregateMetrics++;
  if (buildCounterAggregateMetrics < 3) {
    unittest.expect(
      o.answeredCallsCount!,
      unittest.equals(42),
    );
    checkDate(o.endDate!);
    checkUnnamed0(o.hourlyMetrics!);
    unittest.expect(
      o.missedCallsCount!,
      unittest.equals(42),
    );
    checkDate(o.startDate!);
    checkUnnamed1(o.weekdayMetrics!);
  }
  buildCounterAggregateMetrics--;
}

core.int buildCounterBusinessCallsInsights = 0;
api.BusinessCallsInsights buildBusinessCallsInsights() {
  final o = api.BusinessCallsInsights();
  buildCounterBusinessCallsInsights++;
  if (buildCounterBusinessCallsInsights < 3) {
    o.aggregateMetrics = buildAggregateMetrics();
    o.metricType = 'foo';
    o.name = 'foo';
  }
  buildCounterBusinessCallsInsights--;
  return o;
}

void checkBusinessCallsInsights(api.BusinessCallsInsights o) {
  buildCounterBusinessCallsInsights++;
  if (buildCounterBusinessCallsInsights < 3) {
    checkAggregateMetrics(o.aggregateMetrics!);
    unittest.expect(
      o.metricType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterBusinessCallsInsights--;
}

core.int buildCounterBusinessCallsSettings = 0;
api.BusinessCallsSettings buildBusinessCallsSettings() {
  final o = api.BusinessCallsSettings();
  buildCounterBusinessCallsSettings++;
  if (buildCounterBusinessCallsSettings < 3) {
    o.callsState = 'foo';
    o.consentTime = 'foo';
    o.name = 'foo';
  }
  buildCounterBusinessCallsSettings--;
  return o;
}

void checkBusinessCallsSettings(api.BusinessCallsSettings o) {
  buildCounterBusinessCallsSettings++;
  if (buildCounterBusinessCallsSettings < 3) {
    unittest.expect(
      o.callsState!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.consentTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterBusinessCallsSettings--;
}

core.int buildCounterDate = 0;
api.Date buildDate() {
  final o = api.Date();
  buildCounterDate++;
  if (buildCounterDate < 3) {
    o.day = 42;
    o.month = 42;
    o.year = 42;
  }
  buildCounterDate--;
  return o;
}

void checkDate(api.Date o) {
  buildCounterDate++;
  if (buildCounterDate < 3) {
    unittest.expect(
      o.day!,
      unittest.equals(42),
    );
    unittest.expect(
      o.month!,
      unittest.equals(42),
    );
    unittest.expect(
      o.year!,
      unittest.equals(42),
    );
  }
  buildCounterDate--;
}

core.int buildCounterHourlyMetrics = 0;
api.HourlyMetrics buildHourlyMetrics() {
  final o = api.HourlyMetrics();
  buildCounterHourlyMetrics++;
  if (buildCounterHourlyMetrics < 3) {
    o.hour = 42;
    o.missedCallsCount = 42;
  }
  buildCounterHourlyMetrics--;
  return o;
}

void checkHourlyMetrics(api.HourlyMetrics o) {
  buildCounterHourlyMetrics++;
  if (buildCounterHourlyMetrics < 3) {
    unittest.expect(
      o.hour!,
      unittest.equals(42),
    );
    unittest.expect(
      o.missedCallsCount!,
      unittest.equals(42),
    );
  }
  buildCounterHourlyMetrics--;
}

core.List<api.BusinessCallsInsights> buildUnnamed2() => [
      buildBusinessCallsInsights(),
      buildBusinessCallsInsights(),
    ];

void checkUnnamed2(core.List<api.BusinessCallsInsights> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBusinessCallsInsights(o[0]);
  checkBusinessCallsInsights(o[1]);
}

core.int buildCounterListBusinessCallsInsightsResponse = 0;
api.ListBusinessCallsInsightsResponse buildListBusinessCallsInsightsResponse() {
  final o = api.ListBusinessCallsInsightsResponse();
  buildCounterListBusinessCallsInsightsResponse++;
  if (buildCounterListBusinessCallsInsightsResponse < 3) {
    o.businessCallsInsights = buildUnnamed2();
    o.nextPageToken = 'foo';
  }
  buildCounterListBusinessCallsInsightsResponse--;
  return o;
}

void checkListBusinessCallsInsightsResponse(
    api.ListBusinessCallsInsightsResponse o) {
  buildCounterListBusinessCallsInsightsResponse++;
  if (buildCounterListBusinessCallsInsightsResponse < 3) {
    checkUnnamed2(o.businessCallsInsights!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListBusinessCallsInsightsResponse--;
}

core.int buildCounterWeekDayMetrics = 0;
api.WeekDayMetrics buildWeekDayMetrics() {
  final o = api.WeekDayMetrics();
  buildCounterWeekDayMetrics++;
  if (buildCounterWeekDayMetrics < 3) {
    o.day = 'foo';
    o.missedCallsCount = 42;
  }
  buildCounterWeekDayMetrics--;
  return o;
}

void checkWeekDayMetrics(api.WeekDayMetrics o) {
  buildCounterWeekDayMetrics++;
  if (buildCounterWeekDayMetrics < 3) {
    unittest.expect(
      o.day!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.missedCallsCount!,
      unittest.equals(42),
    );
  }
  buildCounterWeekDayMetrics--;
}

void main() {
  unittest.group('obj-schema-AggregateMetrics', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAggregateMetrics();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AggregateMetrics.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAggregateMetrics(od);
    });
  });

  unittest.group('obj-schema-BusinessCallsInsights', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBusinessCallsInsights();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BusinessCallsInsights.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBusinessCallsInsights(od);
    });
  });

  unittest.group('obj-schema-BusinessCallsSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBusinessCallsSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BusinessCallsSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBusinessCallsSettings(od);
    });
  });

  unittest.group('obj-schema-Date', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Date.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDate(od);
    });
  });

  unittest.group('obj-schema-HourlyMetrics', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHourlyMetrics();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HourlyMetrics.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkHourlyMetrics(od);
    });
  });

  unittest.group('obj-schema-ListBusinessCallsInsightsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListBusinessCallsInsightsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListBusinessCallsInsightsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListBusinessCallsInsightsResponse(od);
    });
  });

  unittest.group('obj-schema-WeekDayMetrics', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWeekDayMetrics();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WeekDayMetrics.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWeekDayMetrics(od);
    });
  });

  unittest.group('resource-LocationsResource', () {
    unittest.test('method--getBusinesscallssettings', () async {
      final mock = HttpServerMock();
      final res = api.MyBusinessBusinessCallsApi(mock).locations;
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
        final resp = convert.json.encode(buildBusinessCallsSettings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.getBusinesscallssettings(arg_name, $fields: arg_$fields);
      checkBusinessCallsSettings(response as api.BusinessCallsSettings);
    });

    unittest.test('method--updateBusinesscallssettings', () async {
      final mock = HttpServerMock();
      final res = api.MyBusinessBusinessCallsApi(mock).locations;
      final arg_request = buildBusinessCallsSettings();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BusinessCallsSettings.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBusinessCallsSettings(obj);

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
          queryMap['updateMask']!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildBusinessCallsSettings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.updateBusinesscallssettings(
          arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkBusinessCallsSettings(response as api.BusinessCallsSettings);
    });
  });

  unittest.group('resource-LocationsBusinesscallsinsightsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.MyBusinessBusinessCallsApi(mock).locations.businesscallsinsights;
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
        final resp =
            convert.json.encode(buildListBusinessCallsInsightsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListBusinessCallsInsightsResponse(
          response as api.ListBusinessCallsInsightsResponse);
    });
  });
}
