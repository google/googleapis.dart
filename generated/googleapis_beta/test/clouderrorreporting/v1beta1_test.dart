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

import 'package:googleapis_beta/clouderrorreporting/v1beta1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterDeleteEventsResponse = 0;
api.DeleteEventsResponse buildDeleteEventsResponse() {
  final o = api.DeleteEventsResponse();
  buildCounterDeleteEventsResponse++;
  if (buildCounterDeleteEventsResponse < 3) {}
  buildCounterDeleteEventsResponse--;
  return o;
}

void checkDeleteEventsResponse(api.DeleteEventsResponse o) {
  buildCounterDeleteEventsResponse++;
  if (buildCounterDeleteEventsResponse < 3) {}
  buildCounterDeleteEventsResponse--;
}

core.List<api.SourceReference> buildUnnamed8308() => [
      buildSourceReference(),
      buildSourceReference(),
    ];

void checkUnnamed8308(core.List<api.SourceReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSourceReference(o[0]);
  checkSourceReference(o[1]);
}

core.int buildCounterErrorContext = 0;
api.ErrorContext buildErrorContext() {
  final o = api.ErrorContext();
  buildCounterErrorContext++;
  if (buildCounterErrorContext < 3) {
    o.httpRequest = buildHttpRequestContext();
    o.reportLocation = buildSourceLocation();
    o.sourceReferences = buildUnnamed8308();
    o.user = 'foo';
  }
  buildCounterErrorContext--;
  return o;
}

void checkErrorContext(api.ErrorContext o) {
  buildCounterErrorContext++;
  if (buildCounterErrorContext < 3) {
    checkHttpRequestContext(o.httpRequest!);
    checkSourceLocation(o.reportLocation!);
    checkUnnamed8308(o.sourceReferences!);
    unittest.expect(
      o.user!,
      unittest.equals('foo'),
    );
  }
  buildCounterErrorContext--;
}

core.int buildCounterErrorEvent = 0;
api.ErrorEvent buildErrorEvent() {
  final o = api.ErrorEvent();
  buildCounterErrorEvent++;
  if (buildCounterErrorEvent < 3) {
    o.context = buildErrorContext();
    o.eventTime = 'foo';
    o.message = 'foo';
    o.serviceContext = buildServiceContext();
  }
  buildCounterErrorEvent--;
  return o;
}

void checkErrorEvent(api.ErrorEvent o) {
  buildCounterErrorEvent++;
  if (buildCounterErrorEvent < 3) {
    checkErrorContext(o.context!);
    unittest.expect(
      o.eventTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
    checkServiceContext(o.serviceContext!);
  }
  buildCounterErrorEvent--;
}

core.List<api.TrackingIssue> buildUnnamed8309() => [
      buildTrackingIssue(),
      buildTrackingIssue(),
    ];

void checkUnnamed8309(core.List<api.TrackingIssue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTrackingIssue(o[0]);
  checkTrackingIssue(o[1]);
}

core.int buildCounterErrorGroup = 0;
api.ErrorGroup buildErrorGroup() {
  final o = api.ErrorGroup();
  buildCounterErrorGroup++;
  if (buildCounterErrorGroup < 3) {
    o.groupId = 'foo';
    o.name = 'foo';
    o.resolutionStatus = 'foo';
    o.trackingIssues = buildUnnamed8309();
  }
  buildCounterErrorGroup--;
  return o;
}

void checkErrorGroup(api.ErrorGroup o) {
  buildCounterErrorGroup++;
  if (buildCounterErrorGroup < 3) {
    unittest.expect(
      o.groupId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resolutionStatus!,
      unittest.equals('foo'),
    );
    checkUnnamed8309(o.trackingIssues!);
  }
  buildCounterErrorGroup--;
}

core.List<api.ServiceContext> buildUnnamed8310() => [
      buildServiceContext(),
      buildServiceContext(),
    ];

void checkUnnamed8310(core.List<api.ServiceContext> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkServiceContext(o[0]);
  checkServiceContext(o[1]);
}

core.List<api.TimedCount> buildUnnamed8311() => [
      buildTimedCount(),
      buildTimedCount(),
    ];

void checkUnnamed8311(core.List<api.TimedCount> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTimedCount(o[0]);
  checkTimedCount(o[1]);
}

core.int buildCounterErrorGroupStats = 0;
api.ErrorGroupStats buildErrorGroupStats() {
  final o = api.ErrorGroupStats();
  buildCounterErrorGroupStats++;
  if (buildCounterErrorGroupStats < 3) {
    o.affectedServices = buildUnnamed8310();
    o.affectedUsersCount = 'foo';
    o.count = 'foo';
    o.firstSeenTime = 'foo';
    o.group = buildErrorGroup();
    o.lastSeenTime = 'foo';
    o.numAffectedServices = 42;
    o.representative = buildErrorEvent();
    o.timedCounts = buildUnnamed8311();
  }
  buildCounterErrorGroupStats--;
  return o;
}

void checkErrorGroupStats(api.ErrorGroupStats o) {
  buildCounterErrorGroupStats++;
  if (buildCounterErrorGroupStats < 3) {
    checkUnnamed8310(o.affectedServices!);
    unittest.expect(
      o.affectedUsersCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.count!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.firstSeenTime!,
      unittest.equals('foo'),
    );
    checkErrorGroup(o.group!);
    unittest.expect(
      o.lastSeenTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.numAffectedServices!,
      unittest.equals(42),
    );
    checkErrorEvent(o.representative!);
    checkUnnamed8311(o.timedCounts!);
  }
  buildCounterErrorGroupStats--;
}

core.int buildCounterHttpRequestContext = 0;
api.HttpRequestContext buildHttpRequestContext() {
  final o = api.HttpRequestContext();
  buildCounterHttpRequestContext++;
  if (buildCounterHttpRequestContext < 3) {
    o.method = 'foo';
    o.referrer = 'foo';
    o.remoteIp = 'foo';
    o.responseStatusCode = 42;
    o.url = 'foo';
    o.userAgent = 'foo';
  }
  buildCounterHttpRequestContext--;
  return o;
}

void checkHttpRequestContext(api.HttpRequestContext o) {
  buildCounterHttpRequestContext++;
  if (buildCounterHttpRequestContext < 3) {
    unittest.expect(
      o.method!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.referrer!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.remoteIp!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.responseStatusCode!,
      unittest.equals(42),
    );
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userAgent!,
      unittest.equals('foo'),
    );
  }
  buildCounterHttpRequestContext--;
}

core.List<api.ErrorEvent> buildUnnamed8312() => [
      buildErrorEvent(),
      buildErrorEvent(),
    ];

void checkUnnamed8312(core.List<api.ErrorEvent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkErrorEvent(o[0]);
  checkErrorEvent(o[1]);
}

core.int buildCounterListEventsResponse = 0;
api.ListEventsResponse buildListEventsResponse() {
  final o = api.ListEventsResponse();
  buildCounterListEventsResponse++;
  if (buildCounterListEventsResponse < 3) {
    o.errorEvents = buildUnnamed8312();
    o.nextPageToken = 'foo';
    o.timeRangeBegin = 'foo';
  }
  buildCounterListEventsResponse--;
  return o;
}

void checkListEventsResponse(api.ListEventsResponse o) {
  buildCounterListEventsResponse++;
  if (buildCounterListEventsResponse < 3) {
    checkUnnamed8312(o.errorEvents!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.timeRangeBegin!,
      unittest.equals('foo'),
    );
  }
  buildCounterListEventsResponse--;
}

core.List<api.ErrorGroupStats> buildUnnamed8313() => [
      buildErrorGroupStats(),
      buildErrorGroupStats(),
    ];

void checkUnnamed8313(core.List<api.ErrorGroupStats> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkErrorGroupStats(o[0]);
  checkErrorGroupStats(o[1]);
}

core.int buildCounterListGroupStatsResponse = 0;
api.ListGroupStatsResponse buildListGroupStatsResponse() {
  final o = api.ListGroupStatsResponse();
  buildCounterListGroupStatsResponse++;
  if (buildCounterListGroupStatsResponse < 3) {
    o.errorGroupStats = buildUnnamed8313();
    o.nextPageToken = 'foo';
    o.timeRangeBegin = 'foo';
  }
  buildCounterListGroupStatsResponse--;
  return o;
}

void checkListGroupStatsResponse(api.ListGroupStatsResponse o) {
  buildCounterListGroupStatsResponse++;
  if (buildCounterListGroupStatsResponse < 3) {
    checkUnnamed8313(o.errorGroupStats!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.timeRangeBegin!,
      unittest.equals('foo'),
    );
  }
  buildCounterListGroupStatsResponse--;
}

core.int buildCounterReportErrorEventResponse = 0;
api.ReportErrorEventResponse buildReportErrorEventResponse() {
  final o = api.ReportErrorEventResponse();
  buildCounterReportErrorEventResponse++;
  if (buildCounterReportErrorEventResponse < 3) {}
  buildCounterReportErrorEventResponse--;
  return o;
}

void checkReportErrorEventResponse(api.ReportErrorEventResponse o) {
  buildCounterReportErrorEventResponse++;
  if (buildCounterReportErrorEventResponse < 3) {}
  buildCounterReportErrorEventResponse--;
}

core.int buildCounterReportedErrorEvent = 0;
api.ReportedErrorEvent buildReportedErrorEvent() {
  final o = api.ReportedErrorEvent();
  buildCounterReportedErrorEvent++;
  if (buildCounterReportedErrorEvent < 3) {
    o.context = buildErrorContext();
    o.eventTime = 'foo';
    o.message = 'foo';
    o.serviceContext = buildServiceContext();
  }
  buildCounterReportedErrorEvent--;
  return o;
}

void checkReportedErrorEvent(api.ReportedErrorEvent o) {
  buildCounterReportedErrorEvent++;
  if (buildCounterReportedErrorEvent < 3) {
    checkErrorContext(o.context!);
    unittest.expect(
      o.eventTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
    checkServiceContext(o.serviceContext!);
  }
  buildCounterReportedErrorEvent--;
}

core.int buildCounterServiceContext = 0;
api.ServiceContext buildServiceContext() {
  final o = api.ServiceContext();
  buildCounterServiceContext++;
  if (buildCounterServiceContext < 3) {
    o.resourceType = 'foo';
    o.service = 'foo';
    o.version = 'foo';
  }
  buildCounterServiceContext--;
  return o;
}

void checkServiceContext(api.ServiceContext o) {
  buildCounterServiceContext++;
  if (buildCounterServiceContext < 3) {
    unittest.expect(
      o.resourceType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.service!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterServiceContext--;
}

core.int buildCounterSourceLocation = 0;
api.SourceLocation buildSourceLocation() {
  final o = api.SourceLocation();
  buildCounterSourceLocation++;
  if (buildCounterSourceLocation < 3) {
    o.filePath = 'foo';
    o.functionName = 'foo';
    o.lineNumber = 42;
  }
  buildCounterSourceLocation--;
  return o;
}

void checkSourceLocation(api.SourceLocation o) {
  buildCounterSourceLocation++;
  if (buildCounterSourceLocation < 3) {
    unittest.expect(
      o.filePath!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.functionName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lineNumber!,
      unittest.equals(42),
    );
  }
  buildCounterSourceLocation--;
}

core.int buildCounterSourceReference = 0;
api.SourceReference buildSourceReference() {
  final o = api.SourceReference();
  buildCounterSourceReference++;
  if (buildCounterSourceReference < 3) {
    o.repository = 'foo';
    o.revisionId = 'foo';
  }
  buildCounterSourceReference--;
  return o;
}

void checkSourceReference(api.SourceReference o) {
  buildCounterSourceReference++;
  if (buildCounterSourceReference < 3) {
    unittest.expect(
      o.repository!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.revisionId!,
      unittest.equals('foo'),
    );
  }
  buildCounterSourceReference--;
}

core.int buildCounterTimedCount = 0;
api.TimedCount buildTimedCount() {
  final o = api.TimedCount();
  buildCounterTimedCount++;
  if (buildCounterTimedCount < 3) {
    o.count = 'foo';
    o.endTime = 'foo';
    o.startTime = 'foo';
  }
  buildCounterTimedCount--;
  return o;
}

void checkTimedCount(api.TimedCount o) {
  buildCounterTimedCount++;
  if (buildCounterTimedCount < 3) {
    unittest.expect(
      o.count!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterTimedCount--;
}

core.int buildCounterTrackingIssue = 0;
api.TrackingIssue buildTrackingIssue() {
  final o = api.TrackingIssue();
  buildCounterTrackingIssue++;
  if (buildCounterTrackingIssue < 3) {
    o.url = 'foo';
  }
  buildCounterTrackingIssue--;
  return o;
}

void checkTrackingIssue(api.TrackingIssue o) {
  buildCounterTrackingIssue++;
  if (buildCounterTrackingIssue < 3) {
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterTrackingIssue--;
}

core.List<core.String> buildUnnamed8314() => [
      'foo',
      'foo',
    ];

void checkUnnamed8314(core.List<core.String> o) {
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
  unittest.group('obj-schema-DeleteEventsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeleteEventsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeleteEventsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeleteEventsResponse(od);
    });
  });

  unittest.group('obj-schema-ErrorContext', () {
    unittest.test('to-json--from-json', () async {
      final o = buildErrorContext();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ErrorContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkErrorContext(od);
    });
  });

  unittest.group('obj-schema-ErrorEvent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildErrorEvent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ErrorEvent.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkErrorEvent(od);
    });
  });

  unittest.group('obj-schema-ErrorGroup', () {
    unittest.test('to-json--from-json', () async {
      final o = buildErrorGroup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ErrorGroup.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkErrorGroup(od);
    });
  });

  unittest.group('obj-schema-ErrorGroupStats', () {
    unittest.test('to-json--from-json', () async {
      final o = buildErrorGroupStats();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ErrorGroupStats.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkErrorGroupStats(od);
    });
  });

  unittest.group('obj-schema-HttpRequestContext', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHttpRequestContext();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HttpRequestContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkHttpRequestContext(od);
    });
  });

  unittest.group('obj-schema-ListEventsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListEventsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListEventsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListEventsResponse(od);
    });
  });

  unittest.group('obj-schema-ListGroupStatsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListGroupStatsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListGroupStatsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListGroupStatsResponse(od);
    });
  });

  unittest.group('obj-schema-ReportErrorEventResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportErrorEventResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportErrorEventResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReportErrorEventResponse(od);
    });
  });

  unittest.group('obj-schema-ReportedErrorEvent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportedErrorEvent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportedErrorEvent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReportedErrorEvent(od);
    });
  });

  unittest.group('obj-schema-ServiceContext', () {
    unittest.test('to-json--from-json', () async {
      final o = buildServiceContext();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ServiceContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkServiceContext(od);
    });
  });

  unittest.group('obj-schema-SourceLocation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSourceLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SourceLocation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSourceLocation(od);
    });
  });

  unittest.group('obj-schema-SourceReference', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSourceReference();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SourceReference.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSourceReference(od);
    });
  });

  unittest.group('obj-schema-TimedCount', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTimedCount();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.TimedCount.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTimedCount(od);
    });
  });

  unittest.group('obj-schema-TrackingIssue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTrackingIssue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TrackingIssue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTrackingIssue(od);
    });
  });

  unittest.group('resource-ProjectsResource', () {
    unittest.test('method--deleteEvents', () async {
      final mock = HttpServerMock();
      final res = api.ClouderrorreportingApi(mock).projects;
      final arg_projectName = 'foo';
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(buildDeleteEventsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.deleteEvents(arg_projectName, $fields: arg_$fields);
      checkDeleteEventsResponse(response as api.DeleteEventsResponse);
    });
  });

  unittest.group('resource-ProjectsEventsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ClouderrorreportingApi(mock).projects.events;
      final arg_projectName = 'foo';
      final arg_groupId = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_serviceFilter_resourceType = 'foo';
      final arg_serviceFilter_service = 'foo';
      final arg_serviceFilter_version = 'foo';
      final arg_timeRange_period = 'foo';
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
        );
        pathOffset += 8;
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
          queryMap['groupId']!.first,
          unittest.equals(arg_groupId),
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
          queryMap['serviceFilter.resourceType']!.first,
          unittest.equals(arg_serviceFilter_resourceType),
        );
        unittest.expect(
          queryMap['serviceFilter.service']!.first,
          unittest.equals(arg_serviceFilter_service),
        );
        unittest.expect(
          queryMap['serviceFilter.version']!.first,
          unittest.equals(arg_serviceFilter_version),
        );
        unittest.expect(
          queryMap['timeRange.period']!.first,
          unittest.equals(arg_timeRange_period),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListEventsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_projectName,
          groupId: arg_groupId,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          serviceFilter_resourceType: arg_serviceFilter_resourceType,
          serviceFilter_service: arg_serviceFilter_service,
          serviceFilter_version: arg_serviceFilter_version,
          timeRange_period: arg_timeRange_period,
          $fields: arg_$fields);
      checkListEventsResponse(response as api.ListEventsResponse);
    });

    unittest.test('method--report', () async {
      final mock = HttpServerMock();
      final res = api.ClouderrorreportingApi(mock).projects.events;
      final arg_request = buildReportedErrorEvent();
      final arg_projectName = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ReportedErrorEvent.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkReportedErrorEvent(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(buildReportErrorEventResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.report(arg_request, arg_projectName, $fields: arg_$fields);
      checkReportErrorEventResponse(response as api.ReportErrorEventResponse);
    });
  });

  unittest.group('resource-ProjectsGroupStatsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ClouderrorreportingApi(mock).projects.groupStats;
      final arg_projectName = 'foo';
      final arg_alignment = 'foo';
      final arg_alignmentTime = 'foo';
      final arg_groupId = buildUnnamed8314();
      final arg_order = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_serviceFilter_resourceType = 'foo';
      final arg_serviceFilter_service = 'foo';
      final arg_serviceFilter_version = 'foo';
      final arg_timeRange_period = 'foo';
      final arg_timedCountDuration = 'foo';
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
        );
        pathOffset += 8;
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
          queryMap['alignment']!.first,
          unittest.equals(arg_alignment),
        );
        unittest.expect(
          queryMap['alignmentTime']!.first,
          unittest.equals(arg_alignmentTime),
        );
        unittest.expect(
          queryMap['groupId']!,
          unittest.equals(arg_groupId),
        );
        unittest.expect(
          queryMap['order']!.first,
          unittest.equals(arg_order),
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
          queryMap['serviceFilter.resourceType']!.first,
          unittest.equals(arg_serviceFilter_resourceType),
        );
        unittest.expect(
          queryMap['serviceFilter.service']!.first,
          unittest.equals(arg_serviceFilter_service),
        );
        unittest.expect(
          queryMap['serviceFilter.version']!.first,
          unittest.equals(arg_serviceFilter_version),
        );
        unittest.expect(
          queryMap['timeRange.period']!.first,
          unittest.equals(arg_timeRange_period),
        );
        unittest.expect(
          queryMap['timedCountDuration']!.first,
          unittest.equals(arg_timedCountDuration),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListGroupStatsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_projectName,
          alignment: arg_alignment,
          alignmentTime: arg_alignmentTime,
          groupId: arg_groupId,
          order: arg_order,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          serviceFilter_resourceType: arg_serviceFilter_resourceType,
          serviceFilter_service: arg_serviceFilter_service,
          serviceFilter_version: arg_serviceFilter_version,
          timeRange_period: arg_timeRange_period,
          timedCountDuration: arg_timedCountDuration,
          $fields: arg_$fields);
      checkListGroupStatsResponse(response as api.ListGroupStatsResponse);
    });
  });

  unittest.group('resource-ProjectsGroupsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ClouderrorreportingApi(mock).projects.groups;
      final arg_groupName = 'foo';
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(buildErrorGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_groupName, $fields: arg_$fields);
      checkErrorGroup(response as api.ErrorGroup);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.ClouderrorreportingApi(mock).projects.groups;
      final arg_request = buildErrorGroup();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ErrorGroup.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkErrorGroup(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(buildErrorGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.update(arg_request, arg_name, $fields: arg_$fields);
      checkErrorGroup(response as api.ErrorGroup);
    });
  });
}
