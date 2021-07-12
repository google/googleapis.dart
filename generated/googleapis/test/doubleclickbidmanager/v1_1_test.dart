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

import 'package:googleapis/doubleclickbidmanager/v1_1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<api.Rule> buildUnnamed6377() => [
      buildRule(),
      buildRule(),
    ];

void checkUnnamed6377(core.List<api.Rule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRule(o[0]);
  checkRule(o[1]);
}

core.int buildCounterChannelGrouping = 0;
api.ChannelGrouping buildChannelGrouping() {
  final o = api.ChannelGrouping();
  buildCounterChannelGrouping++;
  if (buildCounterChannelGrouping < 3) {
    o.fallbackName = 'foo';
    o.name = 'foo';
    o.rules = buildUnnamed6377();
  }
  buildCounterChannelGrouping--;
  return o;
}

void checkChannelGrouping(api.ChannelGrouping o) {
  buildCounterChannelGrouping++;
  if (buildCounterChannelGrouping < 3) {
    unittest.expect(
      o.fallbackName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed6377(o.rules!);
  }
  buildCounterChannelGrouping--;
}

core.List<api.EventFilter> buildUnnamed6378() => [
      buildEventFilter(),
      buildEventFilter(),
    ];

void checkUnnamed6378(core.List<api.EventFilter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEventFilter(o[0]);
  checkEventFilter(o[1]);
}

core.int buildCounterDisjunctiveMatchStatement = 0;
api.DisjunctiveMatchStatement buildDisjunctiveMatchStatement() {
  final o = api.DisjunctiveMatchStatement();
  buildCounterDisjunctiveMatchStatement++;
  if (buildCounterDisjunctiveMatchStatement < 3) {
    o.eventFilters = buildUnnamed6378();
  }
  buildCounterDisjunctiveMatchStatement--;
  return o;
}

void checkDisjunctiveMatchStatement(api.DisjunctiveMatchStatement o) {
  buildCounterDisjunctiveMatchStatement++;
  if (buildCounterDisjunctiveMatchStatement < 3) {
    checkUnnamed6378(o.eventFilters!);
  }
  buildCounterDisjunctiveMatchStatement--;
}

core.int buildCounterEventFilter = 0;
api.EventFilter buildEventFilter() {
  final o = api.EventFilter();
  buildCounterEventFilter++;
  if (buildCounterEventFilter < 3) {
    o.dimensionFilter = buildPathQueryOptionsFilter();
  }
  buildCounterEventFilter--;
  return o;
}

void checkEventFilter(api.EventFilter o) {
  buildCounterEventFilter++;
  if (buildCounterEventFilter < 3) {
    checkPathQueryOptionsFilter(o.dimensionFilter!);
  }
  buildCounterEventFilter--;
}

core.int buildCounterFilterPair = 0;
api.FilterPair buildFilterPair() {
  final o = api.FilterPair();
  buildCounterFilterPair++;
  if (buildCounterFilterPair < 3) {
    o.type = 'foo';
    o.value = 'foo';
  }
  buildCounterFilterPair--;
  return o;
}

void checkFilterPair(api.FilterPair o) {
  buildCounterFilterPair++;
  if (buildCounterFilterPair < 3) {
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterFilterPair--;
}

core.List<api.Query> buildUnnamed6379() => [
      buildQuery(),
      buildQuery(),
    ];

void checkUnnamed6379(core.List<api.Query> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkQuery(o[0]);
  checkQuery(o[1]);
}

core.int buildCounterListQueriesResponse = 0;
api.ListQueriesResponse buildListQueriesResponse() {
  final o = api.ListQueriesResponse();
  buildCounterListQueriesResponse++;
  if (buildCounterListQueriesResponse < 3) {
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.queries = buildUnnamed6379();
  }
  buildCounterListQueriesResponse--;
  return o;
}

void checkListQueriesResponse(api.ListQueriesResponse o) {
  buildCounterListQueriesResponse++;
  if (buildCounterListQueriesResponse < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed6379(o.queries!);
  }
  buildCounterListQueriesResponse--;
}

core.List<api.Report> buildUnnamed6380() => [
      buildReport(),
      buildReport(),
    ];

void checkUnnamed6380(core.List<api.Report> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReport(o[0]);
  checkReport(o[1]);
}

core.int buildCounterListReportsResponse = 0;
api.ListReportsResponse buildListReportsResponse() {
  final o = api.ListReportsResponse();
  buildCounterListReportsResponse++;
  if (buildCounterListReportsResponse < 3) {
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.reports = buildUnnamed6380();
  }
  buildCounterListReportsResponse--;
  return o;
}

void checkListReportsResponse(api.ListReportsResponse o) {
  buildCounterListReportsResponse++;
  if (buildCounterListReportsResponse < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed6380(o.reports!);
  }
  buildCounterListReportsResponse--;
}

core.int buildCounterOptions = 0;
api.Options buildOptions() {
  final o = api.Options();
  buildCounterOptions++;
  if (buildCounterOptions < 3) {
    o.includeOnlyTargetedUserLists = true;
    o.pathQueryOptions = buildPathQueryOptions();
  }
  buildCounterOptions--;
  return o;
}

void checkOptions(api.Options o) {
  buildCounterOptions++;
  if (buildCounterOptions < 3) {
    unittest.expect(o.includeOnlyTargetedUserLists!, unittest.isTrue);
    checkPathQueryOptions(o.pathQueryOptions!);
  }
  buildCounterOptions--;
}

core.List<api.FilterPair> buildUnnamed6381() => [
      buildFilterPair(),
      buildFilterPair(),
    ];

void checkUnnamed6381(core.List<api.FilterPair> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFilterPair(o[0]);
  checkFilterPair(o[1]);
}

core.List<core.String> buildUnnamed6382() => [
      'foo',
      'foo',
    ];

void checkUnnamed6382(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed6383() => [
      'foo',
      'foo',
    ];

void checkUnnamed6383(core.List<core.String> o) {
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

core.int buildCounterParameters = 0;
api.Parameters buildParameters() {
  final o = api.Parameters();
  buildCounterParameters++;
  if (buildCounterParameters < 3) {
    o.filters = buildUnnamed6381();
    o.groupBys = buildUnnamed6382();
    o.includeInviteData = true;
    o.metrics = buildUnnamed6383();
    o.options = buildOptions();
    o.type = 'foo';
  }
  buildCounterParameters--;
  return o;
}

void checkParameters(api.Parameters o) {
  buildCounterParameters++;
  if (buildCounterParameters < 3) {
    checkUnnamed6381(o.filters!);
    checkUnnamed6382(o.groupBys!);
    unittest.expect(o.includeInviteData!, unittest.isTrue);
    checkUnnamed6383(o.metrics!);
    checkOptions(o.options!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterParameters--;
}

core.List<api.EventFilter> buildUnnamed6384() => [
      buildEventFilter(),
      buildEventFilter(),
    ];

void checkUnnamed6384(core.List<api.EventFilter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEventFilter(o[0]);
  checkEventFilter(o[1]);
}

core.int buildCounterPathFilter = 0;
api.PathFilter buildPathFilter() {
  final o = api.PathFilter();
  buildCounterPathFilter++;
  if (buildCounterPathFilter < 3) {
    o.eventFilters = buildUnnamed6384();
    o.pathMatchPosition = 'foo';
  }
  buildCounterPathFilter--;
  return o;
}

void checkPathFilter(api.PathFilter o) {
  buildCounterPathFilter++;
  if (buildCounterPathFilter < 3) {
    checkUnnamed6384(o.eventFilters!);
    unittest.expect(
      o.pathMatchPosition!,
      unittest.equals('foo'),
    );
  }
  buildCounterPathFilter--;
}

core.List<api.PathFilter> buildUnnamed6385() => [
      buildPathFilter(),
      buildPathFilter(),
    ];

void checkUnnamed6385(core.List<api.PathFilter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPathFilter(o[0]);
  checkPathFilter(o[1]);
}

core.int buildCounterPathQueryOptions = 0;
api.PathQueryOptions buildPathQueryOptions() {
  final o = api.PathQueryOptions();
  buildCounterPathQueryOptions++;
  if (buildCounterPathQueryOptions < 3) {
    o.channelGrouping = buildChannelGrouping();
    o.pathFilters = buildUnnamed6385();
  }
  buildCounterPathQueryOptions--;
  return o;
}

void checkPathQueryOptions(api.PathQueryOptions o) {
  buildCounterPathQueryOptions++;
  if (buildCounterPathQueryOptions < 3) {
    checkChannelGrouping(o.channelGrouping!);
    checkUnnamed6385(o.pathFilters!);
  }
  buildCounterPathQueryOptions--;
}

core.List<core.String> buildUnnamed6386() => [
      'foo',
      'foo',
    ];

void checkUnnamed6386(core.List<core.String> o) {
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

core.int buildCounterPathQueryOptionsFilter = 0;
api.PathQueryOptionsFilter buildPathQueryOptionsFilter() {
  final o = api.PathQueryOptionsFilter();
  buildCounterPathQueryOptionsFilter++;
  if (buildCounterPathQueryOptionsFilter < 3) {
    o.filter = 'foo';
    o.match = 'foo';
    o.values = buildUnnamed6386();
  }
  buildCounterPathQueryOptionsFilter--;
  return o;
}

void checkPathQueryOptionsFilter(api.PathQueryOptionsFilter o) {
  buildCounterPathQueryOptionsFilter++;
  if (buildCounterPathQueryOptionsFilter < 3) {
    unittest.expect(
      o.filter!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.match!,
      unittest.equals('foo'),
    );
    checkUnnamed6386(o.values!);
  }
  buildCounterPathQueryOptionsFilter--;
}

core.int buildCounterQuery = 0;
api.Query buildQuery() {
  final o = api.Query();
  buildCounterQuery++;
  if (buildCounterQuery < 3) {
    o.kind = 'foo';
    o.metadata = buildQueryMetadata();
    o.params = buildParameters();
    o.queryId = 'foo';
    o.reportDataEndTimeMs = 'foo';
    o.reportDataStartTimeMs = 'foo';
    o.schedule = buildQuerySchedule();
    o.timezoneCode = 'foo';
  }
  buildCounterQuery--;
  return o;
}

void checkQuery(api.Query o) {
  buildCounterQuery++;
  if (buildCounterQuery < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkQueryMetadata(o.metadata!);
    checkParameters(o.params!);
    unittest.expect(
      o.queryId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reportDataEndTimeMs!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reportDataStartTimeMs!,
      unittest.equals('foo'),
    );
    checkQuerySchedule(o.schedule!);
    unittest.expect(
      o.timezoneCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterQuery--;
}

core.List<core.String> buildUnnamed6387() => [
      'foo',
      'foo',
    ];

void checkUnnamed6387(core.List<core.String> o) {
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

core.int buildCounterQueryMetadata = 0;
api.QueryMetadata buildQueryMetadata() {
  final o = api.QueryMetadata();
  buildCounterQueryMetadata++;
  if (buildCounterQueryMetadata < 3) {
    o.dataRange = 'foo';
    o.format = 'foo';
    o.googleCloudStoragePathForLatestReport = 'foo';
    o.googleDrivePathForLatestReport = 'foo';
    o.latestReportRunTimeMs = 'foo';
    o.locale = 'foo';
    o.reportCount = 42;
    o.running = true;
    o.sendNotification = true;
    o.shareEmailAddress = buildUnnamed6387();
    o.title = 'foo';
  }
  buildCounterQueryMetadata--;
  return o;
}

void checkQueryMetadata(api.QueryMetadata o) {
  buildCounterQueryMetadata++;
  if (buildCounterQueryMetadata < 3) {
    unittest.expect(
      o.dataRange!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.format!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.googleCloudStoragePathForLatestReport!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.googleDrivePathForLatestReport!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.latestReportRunTimeMs!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.locale!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reportCount!,
      unittest.equals(42),
    );
    unittest.expect(o.running!, unittest.isTrue);
    unittest.expect(o.sendNotification!, unittest.isTrue);
    checkUnnamed6387(o.shareEmailAddress!);
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterQueryMetadata--;
}

core.int buildCounterQuerySchedule = 0;
api.QuerySchedule buildQuerySchedule() {
  final o = api.QuerySchedule();
  buildCounterQuerySchedule++;
  if (buildCounterQuerySchedule < 3) {
    o.endTimeMs = 'foo';
    o.frequency = 'foo';
    o.nextRunMinuteOfDay = 42;
    o.nextRunTimezoneCode = 'foo';
    o.startTimeMs = 'foo';
  }
  buildCounterQuerySchedule--;
  return o;
}

void checkQuerySchedule(api.QuerySchedule o) {
  buildCounterQuerySchedule++;
  if (buildCounterQuerySchedule < 3) {
    unittest.expect(
      o.endTimeMs!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.frequency!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextRunMinuteOfDay!,
      unittest.equals(42),
    );
    unittest.expect(
      o.nextRunTimezoneCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startTimeMs!,
      unittest.equals('foo'),
    );
  }
  buildCounterQuerySchedule--;
}

core.int buildCounterReport = 0;
api.Report buildReport() {
  final o = api.Report();
  buildCounterReport++;
  if (buildCounterReport < 3) {
    o.key = buildReportKey();
    o.metadata = buildReportMetadata();
    o.params = buildParameters();
  }
  buildCounterReport--;
  return o;
}

void checkReport(api.Report o) {
  buildCounterReport++;
  if (buildCounterReport < 3) {
    checkReportKey(o.key!);
    checkReportMetadata(o.metadata!);
    checkParameters(o.params!);
  }
  buildCounterReport--;
}

core.int buildCounterReportFailure = 0;
api.ReportFailure buildReportFailure() {
  final o = api.ReportFailure();
  buildCounterReportFailure++;
  if (buildCounterReportFailure < 3) {
    o.errorCode = 'foo';
  }
  buildCounterReportFailure--;
  return o;
}

void checkReportFailure(api.ReportFailure o) {
  buildCounterReportFailure++;
  if (buildCounterReportFailure < 3) {
    unittest.expect(
      o.errorCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterReportFailure--;
}

core.int buildCounterReportKey = 0;
api.ReportKey buildReportKey() {
  final o = api.ReportKey();
  buildCounterReportKey++;
  if (buildCounterReportKey < 3) {
    o.queryId = 'foo';
    o.reportId = 'foo';
  }
  buildCounterReportKey--;
  return o;
}

void checkReportKey(api.ReportKey o) {
  buildCounterReportKey++;
  if (buildCounterReportKey < 3) {
    unittest.expect(
      o.queryId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reportId!,
      unittest.equals('foo'),
    );
  }
  buildCounterReportKey--;
}

core.int buildCounterReportMetadata = 0;
api.ReportMetadata buildReportMetadata() {
  final o = api.ReportMetadata();
  buildCounterReportMetadata++;
  if (buildCounterReportMetadata < 3) {
    o.googleCloudStoragePath = 'foo';
    o.reportDataEndTimeMs = 'foo';
    o.reportDataStartTimeMs = 'foo';
    o.status = buildReportStatus();
  }
  buildCounterReportMetadata--;
  return o;
}

void checkReportMetadata(api.ReportMetadata o) {
  buildCounterReportMetadata++;
  if (buildCounterReportMetadata < 3) {
    unittest.expect(
      o.googleCloudStoragePath!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reportDataEndTimeMs!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reportDataStartTimeMs!,
      unittest.equals('foo'),
    );
    checkReportStatus(o.status!);
  }
  buildCounterReportMetadata--;
}

core.int buildCounterReportStatus = 0;
api.ReportStatus buildReportStatus() {
  final o = api.ReportStatus();
  buildCounterReportStatus++;
  if (buildCounterReportStatus < 3) {
    o.failure = buildReportFailure();
    o.finishTimeMs = 'foo';
    o.format = 'foo';
    o.state = 'foo';
  }
  buildCounterReportStatus--;
  return o;
}

void checkReportStatus(api.ReportStatus o) {
  buildCounterReportStatus++;
  if (buildCounterReportStatus < 3) {
    checkReportFailure(o.failure!);
    unittest.expect(
      o.finishTimeMs!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.format!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterReportStatus--;
}

core.List<api.DisjunctiveMatchStatement> buildUnnamed6388() => [
      buildDisjunctiveMatchStatement(),
      buildDisjunctiveMatchStatement(),
    ];

void checkUnnamed6388(core.List<api.DisjunctiveMatchStatement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDisjunctiveMatchStatement(o[0]);
  checkDisjunctiveMatchStatement(o[1]);
}

core.int buildCounterRule = 0;
api.Rule buildRule() {
  final o = api.Rule();
  buildCounterRule++;
  if (buildCounterRule < 3) {
    o.disjunctiveMatchStatements = buildUnnamed6388();
    o.name = 'foo';
  }
  buildCounterRule--;
  return o;
}

void checkRule(api.Rule o) {
  buildCounterRule++;
  if (buildCounterRule < 3) {
    checkUnnamed6388(o.disjunctiveMatchStatements!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterRule--;
}

core.int buildCounterRunQueryRequest = 0;
api.RunQueryRequest buildRunQueryRequest() {
  final o = api.RunQueryRequest();
  buildCounterRunQueryRequest++;
  if (buildCounterRunQueryRequest < 3) {
    o.dataRange = 'foo';
    o.reportDataEndTimeMs = 'foo';
    o.reportDataStartTimeMs = 'foo';
    o.timezoneCode = 'foo';
  }
  buildCounterRunQueryRequest--;
  return o;
}

void checkRunQueryRequest(api.RunQueryRequest o) {
  buildCounterRunQueryRequest++;
  if (buildCounterRunQueryRequest < 3) {
    unittest.expect(
      o.dataRange!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reportDataEndTimeMs!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reportDataStartTimeMs!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.timezoneCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterRunQueryRequest--;
}

void main() {
  unittest.group('obj-schema-ChannelGrouping', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChannelGrouping();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ChannelGrouping.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkChannelGrouping(od);
    });
  });

  unittest.group('obj-schema-DisjunctiveMatchStatement', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDisjunctiveMatchStatement();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DisjunctiveMatchStatement.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDisjunctiveMatchStatement(od);
    });
  });

  unittest.group('obj-schema-EventFilter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEventFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EventFilter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEventFilter(od);
    });
  });

  unittest.group('obj-schema-FilterPair', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFilterPair();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.FilterPair.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkFilterPair(od);
    });
  });

  unittest.group('obj-schema-ListQueriesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListQueriesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListQueriesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListQueriesResponse(od);
    });
  });

  unittest.group('obj-schema-ListReportsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListReportsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListReportsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListReportsResponse(od);
    });
  });

  unittest.group('obj-schema-Options', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Options.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOptions(od);
    });
  });

  unittest.group('obj-schema-Parameters', () {
    unittest.test('to-json--from-json', () async {
      final o = buildParameters();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Parameters.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkParameters(od);
    });
  });

  unittest.group('obj-schema-PathFilter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPathFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.PathFilter.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPathFilter(od);
    });
  });

  unittest.group('obj-schema-PathQueryOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPathQueryOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PathQueryOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPathQueryOptions(od);
    });
  });

  unittest.group('obj-schema-PathQueryOptionsFilter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPathQueryOptionsFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PathQueryOptionsFilter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPathQueryOptionsFilter(od);
    });
  });

  unittest.group('obj-schema-Query', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQuery();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Query.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkQuery(od);
    });
  });

  unittest.group('obj-schema-QueryMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQueryMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.QueryMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkQueryMetadata(od);
    });
  });

  unittest.group('obj-schema-QuerySchedule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQuerySchedule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.QuerySchedule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkQuerySchedule(od);
    });
  });

  unittest.group('obj-schema-Report', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Report.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkReport(od);
    });
  });

  unittest.group('obj-schema-ReportFailure', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportFailure();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportFailure.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReportFailure(od);
    });
  });

  unittest.group('obj-schema-ReportKey', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportKey();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ReportKey.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkReportKey(od);
    });
  });

  unittest.group('obj-schema-ReportMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReportMetadata(od);
    });
  });

  unittest.group('obj-schema-ReportStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReportStatus(od);
    });
  });

  unittest.group('obj-schema-Rule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Rule.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkRule(od);
    });
  });

  unittest.group('obj-schema-RunQueryRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRunQueryRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RunQueryRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRunQueryRequest(od);
    });
  });

  unittest.group('resource-QueriesResource', () {
    unittest.test('method--createquery', () async {
      final mock = HttpServerMock();
      final res = api.DoubleClickBidManagerApi(mock).queries;
      final arg_request = buildQuery();
      final arg_asynchronous = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Query.fromJson(json as core.Map<core.String, core.dynamic>);
        checkQuery(obj);

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
          path.substring(pathOffset, pathOffset + 27),
          unittest.equals('doubleclickbidmanager/v1.1/'),
        );
        pathOffset += 27;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 5),
          unittest.equals('query'),
        );
        pathOffset += 5;

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
          queryMap['asynchronous']!.first,
          unittest.equals('$arg_asynchronous'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildQuery());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.createquery(arg_request,
          asynchronous: arg_asynchronous, $fields: arg_$fields);
      checkQuery(response as api.Query);
    });

    unittest.test('method--deletequery', () async {
      final mock = HttpServerMock();
      final res = api.DoubleClickBidManagerApi(mock).queries;
      final arg_queryId = 'foo';
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
          path.substring(pathOffset, pathOffset + 27),
          unittest.equals('doubleclickbidmanager/v1.1/'),
        );
        pathOffset += 27;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('query/'),
        );
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_queryId'),
        );

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
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.deletequery(arg_queryId, $fields: arg_$fields);
    });

    unittest.test('method--getquery', () async {
      final mock = HttpServerMock();
      final res = api.DoubleClickBidManagerApi(mock).queries;
      final arg_queryId = 'foo';
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
          path.substring(pathOffset, pathOffset + 27),
          unittest.equals('doubleclickbidmanager/v1.1/'),
        );
        pathOffset += 27;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('query/'),
        );
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_queryId'),
        );

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
        final resp = convert.json.encode(buildQuery());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getquery(arg_queryId, $fields: arg_$fields);
      checkQuery(response as api.Query);
    });

    unittest.test('method--listqueries', () async {
      final mock = HttpServerMock();
      final res = api.DoubleClickBidManagerApi(mock).queries;
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
          path.substring(pathOffset, pathOffset + 27),
          unittest.equals('doubleclickbidmanager/v1.1/'),
        );
        pathOffset += 27;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('queries'),
        );
        pathOffset += 7;

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
        final resp = convert.json.encode(buildListQueriesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.listqueries(
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListQueriesResponse(response as api.ListQueriesResponse);
    });

    unittest.test('method--runquery', () async {
      final mock = HttpServerMock();
      final res = api.DoubleClickBidManagerApi(mock).queries;
      final arg_request = buildRunQueryRequest();
      final arg_queryId = 'foo';
      final arg_asynchronous = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RunQueryRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRunQueryRequest(obj);

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
          path.substring(pathOffset, pathOffset + 27),
          unittest.equals('doubleclickbidmanager/v1.1/'),
        );
        pathOffset += 27;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('query/'),
        );
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_queryId'),
        );

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
          queryMap['asynchronous']!.first,
          unittest.equals('$arg_asynchronous'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.runquery(arg_request, arg_queryId,
          asynchronous: arg_asynchronous, $fields: arg_$fields);
    });
  });

  unittest.group('resource-ReportsResource', () {
    unittest.test('method--listreports', () async {
      final mock = HttpServerMock();
      final res = api.DoubleClickBidManagerApi(mock).reports;
      final arg_queryId = 'foo';
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
          path.substring(pathOffset, pathOffset + 27),
          unittest.equals('doubleclickbidmanager/v1.1/'),
        );
        pathOffset += 27;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('queries/'),
        );
        pathOffset += 8;
        index = path.indexOf('/reports', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_queryId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/reports'),
        );
        pathOffset += 8;

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
        final resp = convert.json.encode(buildListReportsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.listreports(arg_queryId,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListReportsResponse(response as api.ListReportsResponse);
    });
  });
}
