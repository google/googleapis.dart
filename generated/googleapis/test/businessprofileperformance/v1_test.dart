// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_const_declarations
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_library_directive
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unreachable_from_main
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:googleapis/businessprofileperformance/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterDailyMetricTimeSeries = 0;
api.DailyMetricTimeSeries buildDailyMetricTimeSeries() {
  final o = api.DailyMetricTimeSeries();
  buildCounterDailyMetricTimeSeries++;
  if (buildCounterDailyMetricTimeSeries < 3) {
    o.dailyMetric = 'foo';
    o.dailySubEntityType = buildDailySubEntityType();
    o.timeSeries = buildTimeSeries();
  }
  buildCounterDailyMetricTimeSeries--;
  return o;
}

void checkDailyMetricTimeSeries(api.DailyMetricTimeSeries o) {
  buildCounterDailyMetricTimeSeries++;
  if (buildCounterDailyMetricTimeSeries < 3) {
    unittest.expect(
      o.dailyMetric!,
      unittest.equals('foo'),
    );
    checkDailySubEntityType(o.dailySubEntityType!);
    checkTimeSeries(o.timeSeries!);
  }
  buildCounterDailyMetricTimeSeries--;
}

core.int buildCounterDailySubEntityType = 0;
api.DailySubEntityType buildDailySubEntityType() {
  final o = api.DailySubEntityType();
  buildCounterDailySubEntityType++;
  if (buildCounterDailySubEntityType < 3) {
    o.dayOfWeek = 'foo';
    o.timeOfDay = buildTimeOfDay();
  }
  buildCounterDailySubEntityType--;
  return o;
}

void checkDailySubEntityType(api.DailySubEntityType o) {
  buildCounterDailySubEntityType++;
  if (buildCounterDailySubEntityType < 3) {
    unittest.expect(
      o.dayOfWeek!,
      unittest.equals('foo'),
    );
    checkTimeOfDay(o.timeOfDay!);
  }
  buildCounterDailySubEntityType--;
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

core.int buildCounterDatedValue = 0;
api.DatedValue buildDatedValue() {
  final o = api.DatedValue();
  buildCounterDatedValue++;
  if (buildCounterDatedValue < 3) {
    o.date = buildDate();
    o.value = 'foo';
  }
  buildCounterDatedValue--;
  return o;
}

void checkDatedValue(api.DatedValue o) {
  buildCounterDatedValue++;
  if (buildCounterDatedValue < 3) {
    checkDate(o.date!);
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterDatedValue--;
}

core.List<api.MultiDailyMetricTimeSeries> buildUnnamed0() => [
      buildMultiDailyMetricTimeSeries(),
      buildMultiDailyMetricTimeSeries(),
    ];

void checkUnnamed0(core.List<api.MultiDailyMetricTimeSeries> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMultiDailyMetricTimeSeries(o[0]);
  checkMultiDailyMetricTimeSeries(o[1]);
}

core.int buildCounterFetchMultiDailyMetricsTimeSeriesResponse = 0;
api.FetchMultiDailyMetricsTimeSeriesResponse
    buildFetchMultiDailyMetricsTimeSeriesResponse() {
  final o = api.FetchMultiDailyMetricsTimeSeriesResponse();
  buildCounterFetchMultiDailyMetricsTimeSeriesResponse++;
  if (buildCounterFetchMultiDailyMetricsTimeSeriesResponse < 3) {
    o.multiDailyMetricTimeSeries = buildUnnamed0();
  }
  buildCounterFetchMultiDailyMetricsTimeSeriesResponse--;
  return o;
}

void checkFetchMultiDailyMetricsTimeSeriesResponse(
    api.FetchMultiDailyMetricsTimeSeriesResponse o) {
  buildCounterFetchMultiDailyMetricsTimeSeriesResponse++;
  if (buildCounterFetchMultiDailyMetricsTimeSeriesResponse < 3) {
    checkUnnamed0(o.multiDailyMetricTimeSeries!);
  }
  buildCounterFetchMultiDailyMetricsTimeSeriesResponse--;
}

core.int buildCounterGetDailyMetricsTimeSeriesResponse = 0;
api.GetDailyMetricsTimeSeriesResponse buildGetDailyMetricsTimeSeriesResponse() {
  final o = api.GetDailyMetricsTimeSeriesResponse();
  buildCounterGetDailyMetricsTimeSeriesResponse++;
  if (buildCounterGetDailyMetricsTimeSeriesResponse < 3) {
    o.timeSeries = buildTimeSeries();
  }
  buildCounterGetDailyMetricsTimeSeriesResponse--;
  return o;
}

void checkGetDailyMetricsTimeSeriesResponse(
    api.GetDailyMetricsTimeSeriesResponse o) {
  buildCounterGetDailyMetricsTimeSeriesResponse++;
  if (buildCounterGetDailyMetricsTimeSeriesResponse < 3) {
    checkTimeSeries(o.timeSeries!);
  }
  buildCounterGetDailyMetricsTimeSeriesResponse--;
}

core.int buildCounterInsightsValue = 0;
api.InsightsValue buildInsightsValue() {
  final o = api.InsightsValue();
  buildCounterInsightsValue++;
  if (buildCounterInsightsValue < 3) {
    o.threshold = 'foo';
    o.value = 'foo';
  }
  buildCounterInsightsValue--;
  return o;
}

void checkInsightsValue(api.InsightsValue o) {
  buildCounterInsightsValue++;
  if (buildCounterInsightsValue < 3) {
    unittest.expect(
      o.threshold!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterInsightsValue--;
}

core.List<api.SearchKeywordCount> buildUnnamed1() => [
      buildSearchKeywordCount(),
      buildSearchKeywordCount(),
    ];

void checkUnnamed1(core.List<api.SearchKeywordCount> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSearchKeywordCount(o[0]);
  checkSearchKeywordCount(o[1]);
}

core.int buildCounterListSearchKeywordImpressionsMonthlyResponse = 0;
api.ListSearchKeywordImpressionsMonthlyResponse
    buildListSearchKeywordImpressionsMonthlyResponse() {
  final o = api.ListSearchKeywordImpressionsMonthlyResponse();
  buildCounterListSearchKeywordImpressionsMonthlyResponse++;
  if (buildCounterListSearchKeywordImpressionsMonthlyResponse < 3) {
    o.nextPageToken = 'foo';
    o.searchKeywordsCounts = buildUnnamed1();
  }
  buildCounterListSearchKeywordImpressionsMonthlyResponse--;
  return o;
}

void checkListSearchKeywordImpressionsMonthlyResponse(
    api.ListSearchKeywordImpressionsMonthlyResponse o) {
  buildCounterListSearchKeywordImpressionsMonthlyResponse++;
  if (buildCounterListSearchKeywordImpressionsMonthlyResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed1(o.searchKeywordsCounts!);
  }
  buildCounterListSearchKeywordImpressionsMonthlyResponse--;
}

core.List<api.DailyMetricTimeSeries> buildUnnamed2() => [
      buildDailyMetricTimeSeries(),
      buildDailyMetricTimeSeries(),
    ];

void checkUnnamed2(core.List<api.DailyMetricTimeSeries> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDailyMetricTimeSeries(o[0]);
  checkDailyMetricTimeSeries(o[1]);
}

core.int buildCounterMultiDailyMetricTimeSeries = 0;
api.MultiDailyMetricTimeSeries buildMultiDailyMetricTimeSeries() {
  final o = api.MultiDailyMetricTimeSeries();
  buildCounterMultiDailyMetricTimeSeries++;
  if (buildCounterMultiDailyMetricTimeSeries < 3) {
    o.dailyMetricTimeSeries = buildUnnamed2();
  }
  buildCounterMultiDailyMetricTimeSeries--;
  return o;
}

void checkMultiDailyMetricTimeSeries(api.MultiDailyMetricTimeSeries o) {
  buildCounterMultiDailyMetricTimeSeries++;
  if (buildCounterMultiDailyMetricTimeSeries < 3) {
    checkUnnamed2(o.dailyMetricTimeSeries!);
  }
  buildCounterMultiDailyMetricTimeSeries--;
}

core.int buildCounterSearchKeywordCount = 0;
api.SearchKeywordCount buildSearchKeywordCount() {
  final o = api.SearchKeywordCount();
  buildCounterSearchKeywordCount++;
  if (buildCounterSearchKeywordCount < 3) {
    o.insightsValue = buildInsightsValue();
    o.searchKeyword = 'foo';
  }
  buildCounterSearchKeywordCount--;
  return o;
}

void checkSearchKeywordCount(api.SearchKeywordCount o) {
  buildCounterSearchKeywordCount++;
  if (buildCounterSearchKeywordCount < 3) {
    checkInsightsValue(o.insightsValue!);
    unittest.expect(
      o.searchKeyword!,
      unittest.equals('foo'),
    );
  }
  buildCounterSearchKeywordCount--;
}

core.int buildCounterTimeOfDay = 0;
api.TimeOfDay buildTimeOfDay() {
  final o = api.TimeOfDay();
  buildCounterTimeOfDay++;
  if (buildCounterTimeOfDay < 3) {
    o.hours = 42;
    o.minutes = 42;
    o.nanos = 42;
    o.seconds = 42;
  }
  buildCounterTimeOfDay--;
  return o;
}

void checkTimeOfDay(api.TimeOfDay o) {
  buildCounterTimeOfDay++;
  if (buildCounterTimeOfDay < 3) {
    unittest.expect(
      o.hours!,
      unittest.equals(42),
    );
    unittest.expect(
      o.minutes!,
      unittest.equals(42),
    );
    unittest.expect(
      o.nanos!,
      unittest.equals(42),
    );
    unittest.expect(
      o.seconds!,
      unittest.equals(42),
    );
  }
  buildCounterTimeOfDay--;
}

core.List<api.DatedValue> buildUnnamed3() => [
      buildDatedValue(),
      buildDatedValue(),
    ];

void checkUnnamed3(core.List<api.DatedValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatedValue(o[0]);
  checkDatedValue(o[1]);
}

core.int buildCounterTimeSeries = 0;
api.TimeSeries buildTimeSeries() {
  final o = api.TimeSeries();
  buildCounterTimeSeries++;
  if (buildCounterTimeSeries < 3) {
    o.datedValues = buildUnnamed3();
  }
  buildCounterTimeSeries--;
  return o;
}

void checkTimeSeries(api.TimeSeries o) {
  buildCounterTimeSeries++;
  if (buildCounterTimeSeries < 3) {
    checkUnnamed3(o.datedValues!);
  }
  buildCounterTimeSeries--;
}

core.List<core.String> buildUnnamed4() => [
      'foo',
      'foo',
    ];

void checkUnnamed4(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

void main() {
  unittest.group('obj-schema-DailyMetricTimeSeries', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDailyMetricTimeSeries();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DailyMetricTimeSeries.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDailyMetricTimeSeries(od);
    });
  });

  unittest.group('obj-schema-DailySubEntityType', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDailySubEntityType();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DailySubEntityType.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDailySubEntityType(od);
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

  unittest.group('obj-schema-DatedValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDatedValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.DatedValue.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDatedValue(od);
    });
  });

  unittest.group('obj-schema-FetchMultiDailyMetricsTimeSeriesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFetchMultiDailyMetricsTimeSeriesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FetchMultiDailyMetricsTimeSeriesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFetchMultiDailyMetricsTimeSeriesResponse(od);
    });
  });

  unittest.group('obj-schema-GetDailyMetricsTimeSeriesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGetDailyMetricsTimeSeriesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GetDailyMetricsTimeSeriesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGetDailyMetricsTimeSeriesResponse(od);
    });
  });

  unittest.group('obj-schema-InsightsValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInsightsValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InsightsValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInsightsValue(od);
    });
  });

  unittest.group('obj-schema-ListSearchKeywordImpressionsMonthlyResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListSearchKeywordImpressionsMonthlyResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListSearchKeywordImpressionsMonthlyResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListSearchKeywordImpressionsMonthlyResponse(od);
    });
  });

  unittest.group('obj-schema-MultiDailyMetricTimeSeries', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMultiDailyMetricTimeSeries();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MultiDailyMetricTimeSeries.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMultiDailyMetricTimeSeries(od);
    });
  });

  unittest.group('obj-schema-SearchKeywordCount', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchKeywordCount();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SearchKeywordCount.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSearchKeywordCount(od);
    });
  });

  unittest.group('obj-schema-TimeOfDay', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTimeOfDay();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.TimeOfDay.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTimeOfDay(od);
    });
  });

  unittest.group('obj-schema-TimeSeries', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTimeSeries();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.TimeSeries.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTimeSeries(od);
    });
  });

  unittest.group('resource-LocationsResource', () {
    unittest.test('method--fetchMultiDailyMetricsTimeSeries', () async {
      final mock = HttpServerMock();
      final res = api.BusinessProfilePerformanceApi(mock).locations;
      final arg_location = 'foo';
      final arg_dailyMetrics = buildUnnamed4();
      final arg_dailyRange_endDate_day = 42;
      final arg_dailyRange_endDate_month = 42;
      final arg_dailyRange_endDate_year = 42;
      final arg_dailyRange_startDate_day = 42;
      final arg_dailyRange_startDate_month = 42;
      final arg_dailyRange_startDate_year = 42;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
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

        final query = req.url.query;
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
          queryMap['dailyMetrics']!,
          unittest.equals(arg_dailyMetrics),
        );
        unittest.expect(
          core.int.parse(queryMap['dailyRange.endDate.day']!.first),
          unittest.equals(arg_dailyRange_endDate_day),
        );
        unittest.expect(
          core.int.parse(queryMap['dailyRange.endDate.month']!.first),
          unittest.equals(arg_dailyRange_endDate_month),
        );
        unittest.expect(
          core.int.parse(queryMap['dailyRange.endDate.year']!.first),
          unittest.equals(arg_dailyRange_endDate_year),
        );
        unittest.expect(
          core.int.parse(queryMap['dailyRange.startDate.day']!.first),
          unittest.equals(arg_dailyRange_startDate_day),
        );
        unittest.expect(
          core.int.parse(queryMap['dailyRange.startDate.month']!.first),
          unittest.equals(arg_dailyRange_startDate_month),
        );
        unittest.expect(
          core.int.parse(queryMap['dailyRange.startDate.year']!.first),
          unittest.equals(arg_dailyRange_startDate_year),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildFetchMultiDailyMetricsTimeSeriesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.fetchMultiDailyMetricsTimeSeries(arg_location,
          dailyMetrics: arg_dailyMetrics,
          dailyRange_endDate_day: arg_dailyRange_endDate_day,
          dailyRange_endDate_month: arg_dailyRange_endDate_month,
          dailyRange_endDate_year: arg_dailyRange_endDate_year,
          dailyRange_startDate_day: arg_dailyRange_startDate_day,
          dailyRange_startDate_month: arg_dailyRange_startDate_month,
          dailyRange_startDate_year: arg_dailyRange_startDate_year,
          $fields: arg_$fields);
      checkFetchMultiDailyMetricsTimeSeriesResponse(
          response as api.FetchMultiDailyMetricsTimeSeriesResponse);
    });

    unittest.test('method--getDailyMetricsTimeSeries', () async {
      final mock = HttpServerMock();
      final res = api.BusinessProfilePerformanceApi(mock).locations;
      final arg_name = 'foo';
      final arg_dailyMetric = 'foo';
      final arg_dailyRange_endDate_day = 42;
      final arg_dailyRange_endDate_month = 42;
      final arg_dailyRange_endDate_year = 42;
      final arg_dailyRange_startDate_day = 42;
      final arg_dailyRange_startDate_month = 42;
      final arg_dailyRange_startDate_year = 42;
      final arg_dailySubEntityType_dayOfWeek = 'foo';
      final arg_dailySubEntityType_timeOfDay_hours = 42;
      final arg_dailySubEntityType_timeOfDay_minutes = 42;
      final arg_dailySubEntityType_timeOfDay_nanos = 42;
      final arg_dailySubEntityType_timeOfDay_seconds = 42;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
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

        final query = req.url.query;
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
          queryMap['dailyMetric']!.first,
          unittest.equals(arg_dailyMetric),
        );
        unittest.expect(
          core.int.parse(queryMap['dailyRange.endDate.day']!.first),
          unittest.equals(arg_dailyRange_endDate_day),
        );
        unittest.expect(
          core.int.parse(queryMap['dailyRange.endDate.month']!.first),
          unittest.equals(arg_dailyRange_endDate_month),
        );
        unittest.expect(
          core.int.parse(queryMap['dailyRange.endDate.year']!.first),
          unittest.equals(arg_dailyRange_endDate_year),
        );
        unittest.expect(
          core.int.parse(queryMap['dailyRange.startDate.day']!.first),
          unittest.equals(arg_dailyRange_startDate_day),
        );
        unittest.expect(
          core.int.parse(queryMap['dailyRange.startDate.month']!.first),
          unittest.equals(arg_dailyRange_startDate_month),
        );
        unittest.expect(
          core.int.parse(queryMap['dailyRange.startDate.year']!.first),
          unittest.equals(arg_dailyRange_startDate_year),
        );
        unittest.expect(
          queryMap['dailySubEntityType.dayOfWeek']!.first,
          unittest.equals(arg_dailySubEntityType_dayOfWeek),
        );
        unittest.expect(
          core.int.parse(queryMap['dailySubEntityType.timeOfDay.hours']!.first),
          unittest.equals(arg_dailySubEntityType_timeOfDay_hours),
        );
        unittest.expect(
          core.int.parse(
              queryMap['dailySubEntityType.timeOfDay.minutes']!.first),
          unittest.equals(arg_dailySubEntityType_timeOfDay_minutes),
        );
        unittest.expect(
          core.int.parse(queryMap['dailySubEntityType.timeOfDay.nanos']!.first),
          unittest.equals(arg_dailySubEntityType_timeOfDay_nanos),
        );
        unittest.expect(
          core.int.parse(
              queryMap['dailySubEntityType.timeOfDay.seconds']!.first),
          unittest.equals(arg_dailySubEntityType_timeOfDay_seconds),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGetDailyMetricsTimeSeriesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getDailyMetricsTimeSeries(arg_name,
          dailyMetric: arg_dailyMetric,
          dailyRange_endDate_day: arg_dailyRange_endDate_day,
          dailyRange_endDate_month: arg_dailyRange_endDate_month,
          dailyRange_endDate_year: arg_dailyRange_endDate_year,
          dailyRange_startDate_day: arg_dailyRange_startDate_day,
          dailyRange_startDate_month: arg_dailyRange_startDate_month,
          dailyRange_startDate_year: arg_dailyRange_startDate_year,
          dailySubEntityType_dayOfWeek: arg_dailySubEntityType_dayOfWeek,
          dailySubEntityType_timeOfDay_hours:
              arg_dailySubEntityType_timeOfDay_hours,
          dailySubEntityType_timeOfDay_minutes:
              arg_dailySubEntityType_timeOfDay_minutes,
          dailySubEntityType_timeOfDay_nanos:
              arg_dailySubEntityType_timeOfDay_nanos,
          dailySubEntityType_timeOfDay_seconds:
              arg_dailySubEntityType_timeOfDay_seconds,
          $fields: arg_$fields);
      checkGetDailyMetricsTimeSeriesResponse(
          response as api.GetDailyMetricsTimeSeriesResponse);
    });
  });

  unittest.group('resource-LocationsSearchkeywordsImpressionsMonthlyResource',
      () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.BusinessProfilePerformanceApi(mock)
          .locations
          .searchkeywords
          .impressions
          .monthly;
      final arg_parent = 'foo';
      final arg_monthlyRange_endMonth_day = 42;
      final arg_monthlyRange_endMonth_month = 42;
      final arg_monthlyRange_endMonth_year = 42;
      final arg_monthlyRange_startMonth_day = 42;
      final arg_monthlyRange_startMonth_month = 42;
      final arg_monthlyRange_startMonth_year = 42;
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
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

        final query = req.url.query;
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
          core.int.parse(queryMap['monthlyRange.endMonth.day']!.first),
          unittest.equals(arg_monthlyRange_endMonth_day),
        );
        unittest.expect(
          core.int.parse(queryMap['monthlyRange.endMonth.month']!.first),
          unittest.equals(arg_monthlyRange_endMonth_month),
        );
        unittest.expect(
          core.int.parse(queryMap['monthlyRange.endMonth.year']!.first),
          unittest.equals(arg_monthlyRange_endMonth_year),
        );
        unittest.expect(
          core.int.parse(queryMap['monthlyRange.startMonth.day']!.first),
          unittest.equals(arg_monthlyRange_startMonth_day),
        );
        unittest.expect(
          core.int.parse(queryMap['monthlyRange.startMonth.month']!.first),
          unittest.equals(arg_monthlyRange_startMonth_month),
        );
        unittest.expect(
          core.int.parse(queryMap['monthlyRange.startMonth.year']!.first),
          unittest.equals(arg_monthlyRange_startMonth_year),
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
            .encode(buildListSearchKeywordImpressionsMonthlyResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          monthlyRange_endMonth_day: arg_monthlyRange_endMonth_day,
          monthlyRange_endMonth_month: arg_monthlyRange_endMonth_month,
          monthlyRange_endMonth_year: arg_monthlyRange_endMonth_year,
          monthlyRange_startMonth_day: arg_monthlyRange_startMonth_day,
          monthlyRange_startMonth_month: arg_monthlyRange_startMonth_month,
          monthlyRange_startMonth_year: arg_monthlyRange_startMonth_year,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListSearchKeywordImpressionsMonthlyResponse(
          response as api.ListSearchKeywordImpressionsMonthlyResponse);
    });
  });
}
