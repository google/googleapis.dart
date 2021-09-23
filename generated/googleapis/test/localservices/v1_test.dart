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

import 'package:googleapis/localservices/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterGoogleAdsHomeservicesLocalservicesV1AccountReport = 0;
api.GoogleAdsHomeservicesLocalservicesV1AccountReport
    buildGoogleAdsHomeservicesLocalservicesV1AccountReport() {
  final o = api.GoogleAdsHomeservicesLocalservicesV1AccountReport();
  buildCounterGoogleAdsHomeservicesLocalservicesV1AccountReport++;
  if (buildCounterGoogleAdsHomeservicesLocalservicesV1AccountReport < 3) {
    o.accountId = 'foo';
    o.aggregatorInfo =
        buildGoogleAdsHomeservicesLocalservicesV1AggregatorInfo();
    o.averageFiveStarRating = 42.0;
    o.averageWeeklyBudget = 42.0;
    o.businessName = 'foo';
    o.currencyCode = 'foo';
    o.currentPeriodChargedLeads = 'foo';
    o.currentPeriodConnectedPhoneCalls = 'foo';
    o.currentPeriodPhoneCalls = 'foo';
    o.currentPeriodTotalCost = 42.0;
    o.impressionsLastTwoDays = 'foo';
    o.phoneLeadResponsiveness = 42.0;
    o.previousPeriodChargedLeads = 'foo';
    o.previousPeriodConnectedPhoneCalls = 'foo';
    o.previousPeriodPhoneCalls = 'foo';
    o.previousPeriodTotalCost = 42.0;
    o.totalReview = 42;
  }
  buildCounterGoogleAdsHomeservicesLocalservicesV1AccountReport--;
  return o;
}

void checkGoogleAdsHomeservicesLocalservicesV1AccountReport(
    api.GoogleAdsHomeservicesLocalservicesV1AccountReport o) {
  buildCounterGoogleAdsHomeservicesLocalservicesV1AccountReport++;
  if (buildCounterGoogleAdsHomeservicesLocalservicesV1AccountReport < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    checkGoogleAdsHomeservicesLocalservicesV1AggregatorInfo(o.aggregatorInfo!);
    unittest.expect(
      o.averageFiveStarRating!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.averageWeeklyBudget!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.businessName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.currencyCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.currentPeriodChargedLeads!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.currentPeriodConnectedPhoneCalls!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.currentPeriodPhoneCalls!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.currentPeriodTotalCost!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.impressionsLastTwoDays!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.phoneLeadResponsiveness!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.previousPeriodChargedLeads!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.previousPeriodConnectedPhoneCalls!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.previousPeriodPhoneCalls!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.previousPeriodTotalCost!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.totalReview!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleAdsHomeservicesLocalservicesV1AccountReport--;
}

core.int buildCounterGoogleAdsHomeservicesLocalservicesV1AggregatorInfo = 0;
api.GoogleAdsHomeservicesLocalservicesV1AggregatorInfo
    buildGoogleAdsHomeservicesLocalservicesV1AggregatorInfo() {
  final o = api.GoogleAdsHomeservicesLocalservicesV1AggregatorInfo();
  buildCounterGoogleAdsHomeservicesLocalservicesV1AggregatorInfo++;
  if (buildCounterGoogleAdsHomeservicesLocalservicesV1AggregatorInfo < 3) {
    o.aggregatorProviderId = 'foo';
  }
  buildCounterGoogleAdsHomeservicesLocalservicesV1AggregatorInfo--;
  return o;
}

void checkGoogleAdsHomeservicesLocalservicesV1AggregatorInfo(
    api.GoogleAdsHomeservicesLocalservicesV1AggregatorInfo o) {
  buildCounterGoogleAdsHomeservicesLocalservicesV1AggregatorInfo++;
  if (buildCounterGoogleAdsHomeservicesLocalservicesV1AggregatorInfo < 3) {
    unittest.expect(
      o.aggregatorProviderId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAdsHomeservicesLocalservicesV1AggregatorInfo--;
}

core.int buildCounterGoogleAdsHomeservicesLocalservicesV1DetailedLeadReport = 0;
api.GoogleAdsHomeservicesLocalservicesV1DetailedLeadReport
    buildGoogleAdsHomeservicesLocalservicesV1DetailedLeadReport() {
  final o = api.GoogleAdsHomeservicesLocalservicesV1DetailedLeadReport();
  buildCounterGoogleAdsHomeservicesLocalservicesV1DetailedLeadReport++;
  if (buildCounterGoogleAdsHomeservicesLocalservicesV1DetailedLeadReport < 3) {
    o.accountId = 'foo';
    o.aggregatorInfo =
        buildGoogleAdsHomeservicesLocalservicesV1AggregatorInfo();
    o.businessName = 'foo';
    o.chargeStatus = 'foo';
    o.currencyCode = 'foo';
    o.disputeStatus = 'foo';
    o.geo = 'foo';
    o.leadCategory = 'foo';
    o.leadCreationTimestamp = 'foo';
    o.leadId = 'foo';
    o.leadPrice = 42.0;
    o.leadType = 'foo';
    o.messageLead = buildGoogleAdsHomeservicesLocalservicesV1MessageLead();
    o.phoneLead = buildGoogleAdsHomeservicesLocalservicesV1PhoneLead();
    o.timezone = buildGoogleTypeTimeZone();
  }
  buildCounterGoogleAdsHomeservicesLocalservicesV1DetailedLeadReport--;
  return o;
}

void checkGoogleAdsHomeservicesLocalservicesV1DetailedLeadReport(
    api.GoogleAdsHomeservicesLocalservicesV1DetailedLeadReport o) {
  buildCounterGoogleAdsHomeservicesLocalservicesV1DetailedLeadReport++;
  if (buildCounterGoogleAdsHomeservicesLocalservicesV1DetailedLeadReport < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    checkGoogleAdsHomeservicesLocalservicesV1AggregatorInfo(o.aggregatorInfo!);
    unittest.expect(
      o.businessName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.chargeStatus!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.currencyCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.disputeStatus!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.geo!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.leadCategory!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.leadCreationTimestamp!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.leadId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.leadPrice!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.leadType!,
      unittest.equals('foo'),
    );
    checkGoogleAdsHomeservicesLocalservicesV1MessageLead(o.messageLead!);
    checkGoogleAdsHomeservicesLocalservicesV1PhoneLead(o.phoneLead!);
    checkGoogleTypeTimeZone(o.timezone!);
  }
  buildCounterGoogleAdsHomeservicesLocalservicesV1DetailedLeadReport--;
}

core.int buildCounterGoogleAdsHomeservicesLocalservicesV1MessageLead = 0;
api.GoogleAdsHomeservicesLocalservicesV1MessageLead
    buildGoogleAdsHomeservicesLocalservicesV1MessageLead() {
  final o = api.GoogleAdsHomeservicesLocalservicesV1MessageLead();
  buildCounterGoogleAdsHomeservicesLocalservicesV1MessageLead++;
  if (buildCounterGoogleAdsHomeservicesLocalservicesV1MessageLead < 3) {
    o.consumerPhoneNumber = 'foo';
    o.customerName = 'foo';
    o.jobType = 'foo';
    o.postalCode = 'foo';
  }
  buildCounterGoogleAdsHomeservicesLocalservicesV1MessageLead--;
  return o;
}

void checkGoogleAdsHomeservicesLocalservicesV1MessageLead(
    api.GoogleAdsHomeservicesLocalservicesV1MessageLead o) {
  buildCounterGoogleAdsHomeservicesLocalservicesV1MessageLead++;
  if (buildCounterGoogleAdsHomeservicesLocalservicesV1MessageLead < 3) {
    unittest.expect(
      o.consumerPhoneNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.customerName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.jobType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.postalCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAdsHomeservicesLocalservicesV1MessageLead--;
}

core.int buildCounterGoogleAdsHomeservicesLocalservicesV1PhoneLead = 0;
api.GoogleAdsHomeservicesLocalservicesV1PhoneLead
    buildGoogleAdsHomeservicesLocalservicesV1PhoneLead() {
  final o = api.GoogleAdsHomeservicesLocalservicesV1PhoneLead();
  buildCounterGoogleAdsHomeservicesLocalservicesV1PhoneLead++;
  if (buildCounterGoogleAdsHomeservicesLocalservicesV1PhoneLead < 3) {
    o.chargedCallTimestamp = 'foo';
    o.chargedConnectedCallDurationSeconds = 'foo';
    o.consumerPhoneNumber = 'foo';
  }
  buildCounterGoogleAdsHomeservicesLocalservicesV1PhoneLead--;
  return o;
}

void checkGoogleAdsHomeservicesLocalservicesV1PhoneLead(
    api.GoogleAdsHomeservicesLocalservicesV1PhoneLead o) {
  buildCounterGoogleAdsHomeservicesLocalservicesV1PhoneLead++;
  if (buildCounterGoogleAdsHomeservicesLocalservicesV1PhoneLead < 3) {
    unittest.expect(
      o.chargedCallTimestamp!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.chargedConnectedCallDurationSeconds!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.consumerPhoneNumber!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAdsHomeservicesLocalservicesV1PhoneLead--;
}

core.List<api.GoogleAdsHomeservicesLocalservicesV1AccountReport>
    buildUnnamed0() => [
          buildGoogleAdsHomeservicesLocalservicesV1AccountReport(),
          buildGoogleAdsHomeservicesLocalservicesV1AccountReport(),
        ];

void checkUnnamed0(
    core.List<api.GoogleAdsHomeservicesLocalservicesV1AccountReport> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAdsHomeservicesLocalservicesV1AccountReport(o[0]);
  checkGoogleAdsHomeservicesLocalservicesV1AccountReport(o[1]);
}

core.int
    buildCounterGoogleAdsHomeservicesLocalservicesV1SearchAccountReportsResponse =
    0;
api.GoogleAdsHomeservicesLocalservicesV1SearchAccountReportsResponse
    buildGoogleAdsHomeservicesLocalservicesV1SearchAccountReportsResponse() {
  final o =
      api.GoogleAdsHomeservicesLocalservicesV1SearchAccountReportsResponse();
  buildCounterGoogleAdsHomeservicesLocalservicesV1SearchAccountReportsResponse++;
  if (buildCounterGoogleAdsHomeservicesLocalservicesV1SearchAccountReportsResponse <
      3) {
    o.accountReports = buildUnnamed0();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleAdsHomeservicesLocalservicesV1SearchAccountReportsResponse--;
  return o;
}

void checkGoogleAdsHomeservicesLocalservicesV1SearchAccountReportsResponse(
    api.GoogleAdsHomeservicesLocalservicesV1SearchAccountReportsResponse o) {
  buildCounterGoogleAdsHomeservicesLocalservicesV1SearchAccountReportsResponse++;
  if (buildCounterGoogleAdsHomeservicesLocalservicesV1SearchAccountReportsResponse <
      3) {
    checkUnnamed0(o.accountReports!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAdsHomeservicesLocalservicesV1SearchAccountReportsResponse--;
}

core.List<api.GoogleAdsHomeservicesLocalservicesV1DetailedLeadReport>
    buildUnnamed1() => [
          buildGoogleAdsHomeservicesLocalservicesV1DetailedLeadReport(),
          buildGoogleAdsHomeservicesLocalservicesV1DetailedLeadReport(),
        ];

void checkUnnamed1(
    core.List<api.GoogleAdsHomeservicesLocalservicesV1DetailedLeadReport> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAdsHomeservicesLocalservicesV1DetailedLeadReport(o[0]);
  checkGoogleAdsHomeservicesLocalservicesV1DetailedLeadReport(o[1]);
}

core.int
    buildCounterGoogleAdsHomeservicesLocalservicesV1SearchDetailedLeadReportsResponse =
    0;
api.GoogleAdsHomeservicesLocalservicesV1SearchDetailedLeadReportsResponse
    buildGoogleAdsHomeservicesLocalservicesV1SearchDetailedLeadReportsResponse() {
  final o = api
      .GoogleAdsHomeservicesLocalservicesV1SearchDetailedLeadReportsResponse();
  buildCounterGoogleAdsHomeservicesLocalservicesV1SearchDetailedLeadReportsResponse++;
  if (buildCounterGoogleAdsHomeservicesLocalservicesV1SearchDetailedLeadReportsResponse <
      3) {
    o.detailedLeadReports = buildUnnamed1();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleAdsHomeservicesLocalservicesV1SearchDetailedLeadReportsResponse--;
  return o;
}

void checkGoogleAdsHomeservicesLocalservicesV1SearchDetailedLeadReportsResponse(
    api.GoogleAdsHomeservicesLocalservicesV1SearchDetailedLeadReportsResponse
        o) {
  buildCounterGoogleAdsHomeservicesLocalservicesV1SearchDetailedLeadReportsResponse++;
  if (buildCounterGoogleAdsHomeservicesLocalservicesV1SearchDetailedLeadReportsResponse <
      3) {
    checkUnnamed1(o.detailedLeadReports!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAdsHomeservicesLocalservicesV1SearchDetailedLeadReportsResponse--;
}

core.int buildCounterGoogleTypeTimeZone = 0;
api.GoogleTypeTimeZone buildGoogleTypeTimeZone() {
  final o = api.GoogleTypeTimeZone();
  buildCounterGoogleTypeTimeZone++;
  if (buildCounterGoogleTypeTimeZone < 3) {
    o.id = 'foo';
    o.version = 'foo';
  }
  buildCounterGoogleTypeTimeZone--;
  return o;
}

void checkGoogleTypeTimeZone(api.GoogleTypeTimeZone o) {
  buildCounterGoogleTypeTimeZone++;
  if (buildCounterGoogleTypeTimeZone < 3) {
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleTypeTimeZone--;
}

void main() {
  unittest.group('obj-schema-GoogleAdsHomeservicesLocalservicesV1AccountReport',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsHomeservicesLocalservicesV1AccountReport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsHomeservicesLocalservicesV1AccountReport.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAdsHomeservicesLocalservicesV1AccountReport(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAdsHomeservicesLocalservicesV1AggregatorInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsHomeservicesLocalservicesV1AggregatorInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAdsHomeservicesLocalservicesV1AggregatorInfo.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAdsHomeservicesLocalservicesV1AggregatorInfo(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAdsHomeservicesLocalservicesV1DetailedLeadReport', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsHomeservicesLocalservicesV1DetailedLeadReport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAdsHomeservicesLocalservicesV1DetailedLeadReport.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAdsHomeservicesLocalservicesV1DetailedLeadReport(od);
    });
  });

  unittest.group('obj-schema-GoogleAdsHomeservicesLocalservicesV1MessageLead',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsHomeservicesLocalservicesV1MessageLead();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsHomeservicesLocalservicesV1MessageLead.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAdsHomeservicesLocalservicesV1MessageLead(od);
    });
  });

  unittest.group('obj-schema-GoogleAdsHomeservicesLocalservicesV1PhoneLead',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAdsHomeservicesLocalservicesV1PhoneLead();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAdsHomeservicesLocalservicesV1PhoneLead.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAdsHomeservicesLocalservicesV1PhoneLead(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAdsHomeservicesLocalservicesV1SearchAccountReportsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAdsHomeservicesLocalservicesV1SearchAccountReportsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAdsHomeservicesLocalservicesV1SearchAccountReportsResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAdsHomeservicesLocalservicesV1SearchAccountReportsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAdsHomeservicesLocalservicesV1SearchDetailedLeadReportsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAdsHomeservicesLocalservicesV1SearchDetailedLeadReportsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAdsHomeservicesLocalservicesV1SearchDetailedLeadReportsResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAdsHomeservicesLocalservicesV1SearchDetailedLeadReportsResponse(
          od);
    });
  });

  unittest.group('obj-schema-GoogleTypeTimeZone', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleTypeTimeZone();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleTypeTimeZone.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleTypeTimeZone(od);
    });
  });

  unittest.group('resource-AccountReportsResource', () {
    unittest.test('method--search', () async {
      final mock = HttpServerMock();
      final res = api.LocalservicesApi(mock).accountReports;
      final arg_endDate_day = 42;
      final arg_endDate_month = 42;
      final arg_endDate_year = 42;
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_query = 'foo';
      final arg_startDate_day = 42;
      final arg_startDate_month = 42;
      final arg_startDate_year = 42;
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
          path.substring(pathOffset, pathOffset + 24),
          unittest.equals('v1/accountReports:search'),
        );
        pathOffset += 24;

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
          core.int.parse(queryMap['endDate.day']!.first),
          unittest.equals(arg_endDate_day),
        );
        unittest.expect(
          core.int.parse(queryMap['endDate.month']!.first),
          unittest.equals(arg_endDate_month),
        );
        unittest.expect(
          core.int.parse(queryMap['endDate.year']!.first),
          unittest.equals(arg_endDate_year),
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
          queryMap['query']!.first,
          unittest.equals(arg_query),
        );
        unittest.expect(
          core.int.parse(queryMap['startDate.day']!.first),
          unittest.equals(arg_startDate_day),
        );
        unittest.expect(
          core.int.parse(queryMap['startDate.month']!.first),
          unittest.equals(arg_startDate_month),
        );
        unittest.expect(
          core.int.parse(queryMap['startDate.year']!.first),
          unittest.equals(arg_startDate_year),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleAdsHomeservicesLocalservicesV1SearchAccountReportsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.search(
          endDate_day: arg_endDate_day,
          endDate_month: arg_endDate_month,
          endDate_year: arg_endDate_year,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          query: arg_query,
          startDate_day: arg_startDate_day,
          startDate_month: arg_startDate_month,
          startDate_year: arg_startDate_year,
          $fields: arg_$fields);
      checkGoogleAdsHomeservicesLocalservicesV1SearchAccountReportsResponse(
          response as api
              .GoogleAdsHomeservicesLocalservicesV1SearchAccountReportsResponse);
    });
  });

  unittest.group('resource-DetailedLeadReportsResource', () {
    unittest.test('method--search', () async {
      final mock = HttpServerMock();
      final res = api.LocalservicesApi(mock).detailedLeadReports;
      final arg_endDate_day = 42;
      final arg_endDate_month = 42;
      final arg_endDate_year = 42;
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_query = 'foo';
      final arg_startDate_day = 42;
      final arg_startDate_month = 42;
      final arg_startDate_year = 42;
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
          path.substring(pathOffset, pathOffset + 29),
          unittest.equals('v1/detailedLeadReports:search'),
        );
        pathOffset += 29;

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
          core.int.parse(queryMap['endDate.day']!.first),
          unittest.equals(arg_endDate_day),
        );
        unittest.expect(
          core.int.parse(queryMap['endDate.month']!.first),
          unittest.equals(arg_endDate_month),
        );
        unittest.expect(
          core.int.parse(queryMap['endDate.year']!.first),
          unittest.equals(arg_endDate_year),
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
          queryMap['query']!.first,
          unittest.equals(arg_query),
        );
        unittest.expect(
          core.int.parse(queryMap['startDate.day']!.first),
          unittest.equals(arg_startDate_day),
        );
        unittest.expect(
          core.int.parse(queryMap['startDate.month']!.first),
          unittest.equals(arg_startDate_month),
        );
        unittest.expect(
          core.int.parse(queryMap['startDate.year']!.first),
          unittest.equals(arg_startDate_year),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleAdsHomeservicesLocalservicesV1SearchDetailedLeadReportsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.search(
          endDate_day: arg_endDate_day,
          endDate_month: arg_endDate_month,
          endDate_year: arg_endDate_year,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          query: arg_query,
          startDate_day: arg_startDate_day,
          startDate_month: arg_startDate_month,
          startDate_year: arg_startDate_year,
          $fields: arg_$fields);
      checkGoogleAdsHomeservicesLocalservicesV1SearchDetailedLeadReportsResponse(
          response as api
              .GoogleAdsHomeservicesLocalservicesV1SearchDetailedLeadReportsResponse);
    });
  });
}
