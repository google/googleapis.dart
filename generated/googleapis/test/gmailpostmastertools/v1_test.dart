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

import 'package:googleapis/gmailpostmastertools/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterDeliveryError = 0;
api.DeliveryError buildDeliveryError() {
  final o = api.DeliveryError();
  buildCounterDeliveryError++;
  if (buildCounterDeliveryError < 3) {
    o.errorClass = 'foo';
    o.errorRatio = 42.0;
    o.errorType = 'foo';
  }
  buildCounterDeliveryError--;
  return o;
}

void checkDeliveryError(api.DeliveryError o) {
  buildCounterDeliveryError++;
  if (buildCounterDeliveryError < 3) {
    unittest.expect(
      o.errorClass!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.errorRatio!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.errorType!,
      unittest.equals('foo'),
    );
  }
  buildCounterDeliveryError--;
}

core.int buildCounterDomain = 0;
api.Domain buildDomain() {
  final o = api.Domain();
  buildCounterDomain++;
  if (buildCounterDomain < 3) {
    o.createTime = 'foo';
    o.name = 'foo';
    o.permission = 'foo';
  }
  buildCounterDomain--;
  return o;
}

void checkDomain(api.Domain o) {
  buildCounterDomain++;
  if (buildCounterDomain < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.permission!,
      unittest.equals('foo'),
    );
  }
  buildCounterDomain--;
}

core.int buildCounterFeedbackLoop = 0;
api.FeedbackLoop buildFeedbackLoop() {
  final o = api.FeedbackLoop();
  buildCounterFeedbackLoop++;
  if (buildCounterFeedbackLoop < 3) {
    o.id = 'foo';
    o.spamRatio = 42.0;
  }
  buildCounterFeedbackLoop--;
  return o;
}

void checkFeedbackLoop(api.FeedbackLoop o) {
  buildCounterFeedbackLoop++;
  if (buildCounterFeedbackLoop < 3) {
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.spamRatio!,
      unittest.equals(42.0),
    );
  }
  buildCounterFeedbackLoop--;
}

core.List<core.String> buildUnnamed6137() => [
      'foo',
      'foo',
    ];

void checkUnnamed6137(core.List<core.String> o) {
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

core.int buildCounterIpReputation = 0;
api.IpReputation buildIpReputation() {
  final o = api.IpReputation();
  buildCounterIpReputation++;
  if (buildCounterIpReputation < 3) {
    o.ipCount = 'foo';
    o.reputation = 'foo';
    o.sampleIps = buildUnnamed6137();
  }
  buildCounterIpReputation--;
  return o;
}

void checkIpReputation(api.IpReputation o) {
  buildCounterIpReputation++;
  if (buildCounterIpReputation < 3) {
    unittest.expect(
      o.ipCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reputation!,
      unittest.equals('foo'),
    );
    checkUnnamed6137(o.sampleIps!);
  }
  buildCounterIpReputation--;
}

core.List<api.Domain> buildUnnamed6138() => [
      buildDomain(),
      buildDomain(),
    ];

void checkUnnamed6138(core.List<api.Domain> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDomain(o[0]);
  checkDomain(o[1]);
}

core.int buildCounterListDomainsResponse = 0;
api.ListDomainsResponse buildListDomainsResponse() {
  final o = api.ListDomainsResponse();
  buildCounterListDomainsResponse++;
  if (buildCounterListDomainsResponse < 3) {
    o.domains = buildUnnamed6138();
    o.nextPageToken = 'foo';
  }
  buildCounterListDomainsResponse--;
  return o;
}

void checkListDomainsResponse(api.ListDomainsResponse o) {
  buildCounterListDomainsResponse++;
  if (buildCounterListDomainsResponse < 3) {
    checkUnnamed6138(o.domains!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListDomainsResponse--;
}

core.List<api.TrafficStats> buildUnnamed6139() => [
      buildTrafficStats(),
      buildTrafficStats(),
    ];

void checkUnnamed6139(core.List<api.TrafficStats> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTrafficStats(o[0]);
  checkTrafficStats(o[1]);
}

core.int buildCounterListTrafficStatsResponse = 0;
api.ListTrafficStatsResponse buildListTrafficStatsResponse() {
  final o = api.ListTrafficStatsResponse();
  buildCounterListTrafficStatsResponse++;
  if (buildCounterListTrafficStatsResponse < 3) {
    o.nextPageToken = 'foo';
    o.trafficStats = buildUnnamed6139();
  }
  buildCounterListTrafficStatsResponse--;
  return o;
}

void checkListTrafficStatsResponse(api.ListTrafficStatsResponse o) {
  buildCounterListTrafficStatsResponse++;
  if (buildCounterListTrafficStatsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed6139(o.trafficStats!);
  }
  buildCounterListTrafficStatsResponse--;
}

core.List<api.DeliveryError> buildUnnamed6140() => [
      buildDeliveryError(),
      buildDeliveryError(),
    ];

void checkUnnamed6140(core.List<api.DeliveryError> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeliveryError(o[0]);
  checkDeliveryError(o[1]);
}

core.List<api.IpReputation> buildUnnamed6141() => [
      buildIpReputation(),
      buildIpReputation(),
    ];

void checkUnnamed6141(core.List<api.IpReputation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIpReputation(o[0]);
  checkIpReputation(o[1]);
}

core.List<api.FeedbackLoop> buildUnnamed6142() => [
      buildFeedbackLoop(),
      buildFeedbackLoop(),
    ];

void checkUnnamed6142(core.List<api.FeedbackLoop> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFeedbackLoop(o[0]);
  checkFeedbackLoop(o[1]);
}

core.int buildCounterTrafficStats = 0;
api.TrafficStats buildTrafficStats() {
  final o = api.TrafficStats();
  buildCounterTrafficStats++;
  if (buildCounterTrafficStats < 3) {
    o.deliveryErrors = buildUnnamed6140();
    o.dkimSuccessRatio = 42.0;
    o.dmarcSuccessRatio = 42.0;
    o.domainReputation = 'foo';
    o.inboundEncryptionRatio = 42.0;
    o.ipReputations = buildUnnamed6141();
    o.name = 'foo';
    o.outboundEncryptionRatio = 42.0;
    o.spammyFeedbackLoops = buildUnnamed6142();
    o.spfSuccessRatio = 42.0;
    o.userReportedSpamRatio = 42.0;
  }
  buildCounterTrafficStats--;
  return o;
}

void checkTrafficStats(api.TrafficStats o) {
  buildCounterTrafficStats++;
  if (buildCounterTrafficStats < 3) {
    checkUnnamed6140(o.deliveryErrors!);
    unittest.expect(
      o.dkimSuccessRatio!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.dmarcSuccessRatio!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.domainReputation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.inboundEncryptionRatio!,
      unittest.equals(42.0),
    );
    checkUnnamed6141(o.ipReputations!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.outboundEncryptionRatio!,
      unittest.equals(42.0),
    );
    checkUnnamed6142(o.spammyFeedbackLoops!);
    unittest.expect(
      o.spfSuccessRatio!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.userReportedSpamRatio!,
      unittest.equals(42.0),
    );
  }
  buildCounterTrafficStats--;
}

void main() {
  unittest.group('obj-schema-DeliveryError', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeliveryError();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeliveryError.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeliveryError(od);
    });
  });

  unittest.group('obj-schema-Domain', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDomain();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Domain.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDomain(od);
    });
  });

  unittest.group('obj-schema-FeedbackLoop', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFeedbackLoop();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FeedbackLoop.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFeedbackLoop(od);
    });
  });

  unittest.group('obj-schema-IpReputation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIpReputation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IpReputation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIpReputation(od);
    });
  });

  unittest.group('obj-schema-ListDomainsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListDomainsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListDomainsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListDomainsResponse(od);
    });
  });

  unittest.group('obj-schema-ListTrafficStatsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListTrafficStatsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListTrafficStatsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListTrafficStatsResponse(od);
    });
  });

  unittest.group('obj-schema-TrafficStats', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTrafficStats();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TrafficStats.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTrafficStats(od);
    });
  });

  unittest.group('resource-DomainsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.PostmasterToolsApi(mock).domains;
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
        final resp = convert.json.encode(buildDomain());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkDomain(response as api.Domain);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.PostmasterToolsApi(mock).domains;
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
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('v1/domains'),
        );
        pathOffset += 10;

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
        final resp = convert.json.encode(buildListDomainsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListDomainsResponse(response as api.ListDomainsResponse);
    });
  });

  unittest.group('resource-DomainsTrafficStatsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.PostmasterToolsApi(mock).domains.trafficStats;
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
        final resp = convert.json.encode(buildTrafficStats());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkTrafficStats(response as api.TrafficStats);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.PostmasterToolsApi(mock).domains.trafficStats;
      final arg_parent = 'foo';
      final arg_endDate_day = 42;
      final arg_endDate_month = 42;
      final arg_endDate_year = 42;
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
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
        final resp = convert.json.encode(buildListTrafficStatsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          endDate_day: arg_endDate_day,
          endDate_month: arg_endDate_month,
          endDate_year: arg_endDate_year,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          startDate_day: arg_startDate_day,
          startDate_month: arg_startDate_month,
          startDate_year: arg_startDate_year,
          $fields: arg_$fields);
      checkListTrafficStatsResponse(response as api.ListTrafficStatsResponse);
    });
  });
}
