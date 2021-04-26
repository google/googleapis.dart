// ignore_for_file: avoid_returning_null
// ignore_for_file: camel_case_types
// ignore_for_file: cascade_invocations
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: prefer_single_quotes
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
  var o = api.DeleteEventsResponse();
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

core.List<api.SourceReference> buildUnnamed7878() {
  var o = <api.SourceReference>[];
  o.add(buildSourceReference());
  o.add(buildSourceReference());
  return o;
}

void checkUnnamed7878(core.List<api.SourceReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSourceReference(o[0] as api.SourceReference);
  checkSourceReference(o[1] as api.SourceReference);
}

core.int buildCounterErrorContext = 0;
api.ErrorContext buildErrorContext() {
  var o = api.ErrorContext();
  buildCounterErrorContext++;
  if (buildCounterErrorContext < 3) {
    o.httpRequest = buildHttpRequestContext();
    o.reportLocation = buildSourceLocation();
    o.sourceReferences = buildUnnamed7878();
    o.user = 'foo';
  }
  buildCounterErrorContext--;
  return o;
}

void checkErrorContext(api.ErrorContext o) {
  buildCounterErrorContext++;
  if (buildCounterErrorContext < 3) {
    checkHttpRequestContext(o.httpRequest! as api.HttpRequestContext);
    checkSourceLocation(o.reportLocation! as api.SourceLocation);
    checkUnnamed7878(o.sourceReferences!);
    unittest.expect(
      o.user!,
      unittest.equals('foo'),
    );
  }
  buildCounterErrorContext--;
}

core.int buildCounterErrorEvent = 0;
api.ErrorEvent buildErrorEvent() {
  var o = api.ErrorEvent();
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
    checkErrorContext(o.context! as api.ErrorContext);
    unittest.expect(
      o.eventTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
    checkServiceContext(o.serviceContext! as api.ServiceContext);
  }
  buildCounterErrorEvent--;
}

core.List<api.TrackingIssue> buildUnnamed7879() {
  var o = <api.TrackingIssue>[];
  o.add(buildTrackingIssue());
  o.add(buildTrackingIssue());
  return o;
}

void checkUnnamed7879(core.List<api.TrackingIssue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTrackingIssue(o[0] as api.TrackingIssue);
  checkTrackingIssue(o[1] as api.TrackingIssue);
}

core.int buildCounterErrorGroup = 0;
api.ErrorGroup buildErrorGroup() {
  var o = api.ErrorGroup();
  buildCounterErrorGroup++;
  if (buildCounterErrorGroup < 3) {
    o.groupId = 'foo';
    o.name = 'foo';
    o.resolutionStatus = 'foo';
    o.trackingIssues = buildUnnamed7879();
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
    checkUnnamed7879(o.trackingIssues!);
  }
  buildCounterErrorGroup--;
}

core.List<api.ServiceContext> buildUnnamed7880() {
  var o = <api.ServiceContext>[];
  o.add(buildServiceContext());
  o.add(buildServiceContext());
  return o;
}

void checkUnnamed7880(core.List<api.ServiceContext> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkServiceContext(o[0] as api.ServiceContext);
  checkServiceContext(o[1] as api.ServiceContext);
}

core.List<api.TimedCount> buildUnnamed7881() {
  var o = <api.TimedCount>[];
  o.add(buildTimedCount());
  o.add(buildTimedCount());
  return o;
}

void checkUnnamed7881(core.List<api.TimedCount> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTimedCount(o[0] as api.TimedCount);
  checkTimedCount(o[1] as api.TimedCount);
}

core.int buildCounterErrorGroupStats = 0;
api.ErrorGroupStats buildErrorGroupStats() {
  var o = api.ErrorGroupStats();
  buildCounterErrorGroupStats++;
  if (buildCounterErrorGroupStats < 3) {
    o.affectedServices = buildUnnamed7880();
    o.affectedUsersCount = 'foo';
    o.count = 'foo';
    o.firstSeenTime = 'foo';
    o.group = buildErrorGroup();
    o.lastSeenTime = 'foo';
    o.numAffectedServices = 42;
    o.representative = buildErrorEvent();
    o.timedCounts = buildUnnamed7881();
  }
  buildCounterErrorGroupStats--;
  return o;
}

void checkErrorGroupStats(api.ErrorGroupStats o) {
  buildCounterErrorGroupStats++;
  if (buildCounterErrorGroupStats < 3) {
    checkUnnamed7880(o.affectedServices!);
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
    checkErrorGroup(o.group! as api.ErrorGroup);
    unittest.expect(
      o.lastSeenTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.numAffectedServices!,
      unittest.equals(42),
    );
    checkErrorEvent(o.representative! as api.ErrorEvent);
    checkUnnamed7881(o.timedCounts!);
  }
  buildCounterErrorGroupStats--;
}

core.int buildCounterHttpRequestContext = 0;
api.HttpRequestContext buildHttpRequestContext() {
  var o = api.HttpRequestContext();
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

core.List<api.ErrorEvent> buildUnnamed7882() {
  var o = <api.ErrorEvent>[];
  o.add(buildErrorEvent());
  o.add(buildErrorEvent());
  return o;
}

void checkUnnamed7882(core.List<api.ErrorEvent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkErrorEvent(o[0] as api.ErrorEvent);
  checkErrorEvent(o[1] as api.ErrorEvent);
}

core.int buildCounterListEventsResponse = 0;
api.ListEventsResponse buildListEventsResponse() {
  var o = api.ListEventsResponse();
  buildCounterListEventsResponse++;
  if (buildCounterListEventsResponse < 3) {
    o.errorEvents = buildUnnamed7882();
    o.nextPageToken = 'foo';
    o.timeRangeBegin = 'foo';
  }
  buildCounterListEventsResponse--;
  return o;
}

void checkListEventsResponse(api.ListEventsResponse o) {
  buildCounterListEventsResponse++;
  if (buildCounterListEventsResponse < 3) {
    checkUnnamed7882(o.errorEvents!);
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

core.List<api.ErrorGroupStats> buildUnnamed7883() {
  var o = <api.ErrorGroupStats>[];
  o.add(buildErrorGroupStats());
  o.add(buildErrorGroupStats());
  return o;
}

void checkUnnamed7883(core.List<api.ErrorGroupStats> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkErrorGroupStats(o[0] as api.ErrorGroupStats);
  checkErrorGroupStats(o[1] as api.ErrorGroupStats);
}

core.int buildCounterListGroupStatsResponse = 0;
api.ListGroupStatsResponse buildListGroupStatsResponse() {
  var o = api.ListGroupStatsResponse();
  buildCounterListGroupStatsResponse++;
  if (buildCounterListGroupStatsResponse < 3) {
    o.errorGroupStats = buildUnnamed7883();
    o.nextPageToken = 'foo';
    o.timeRangeBegin = 'foo';
  }
  buildCounterListGroupStatsResponse--;
  return o;
}

void checkListGroupStatsResponse(api.ListGroupStatsResponse o) {
  buildCounterListGroupStatsResponse++;
  if (buildCounterListGroupStatsResponse < 3) {
    checkUnnamed7883(o.errorGroupStats!);
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
  var o = api.ReportErrorEventResponse();
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
  var o = api.ReportedErrorEvent();
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
    checkErrorContext(o.context! as api.ErrorContext);
    unittest.expect(
      o.eventTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
    checkServiceContext(o.serviceContext! as api.ServiceContext);
  }
  buildCounterReportedErrorEvent--;
}

core.int buildCounterServiceContext = 0;
api.ServiceContext buildServiceContext() {
  var o = api.ServiceContext();
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
  var o = api.SourceLocation();
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
  var o = api.SourceReference();
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
  var o = api.TimedCount();
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
  var o = api.TrackingIssue();
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

core.List<core.String> buildUnnamed7884() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7884(core.List<core.String> o) {
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
      var o = buildDeleteEventsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.DeleteEventsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeleteEventsResponse(od as api.DeleteEventsResponse);
    });
  });

  unittest.group('obj-schema-ErrorContext', () {
    unittest.test('to-json--from-json', () async {
      var o = buildErrorContext();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ErrorContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkErrorContext(od as api.ErrorContext);
    });
  });

  unittest.group('obj-schema-ErrorEvent', () {
    unittest.test('to-json--from-json', () async {
      var o = buildErrorEvent();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.ErrorEvent.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkErrorEvent(od as api.ErrorEvent);
    });
  });

  unittest.group('obj-schema-ErrorGroup', () {
    unittest.test('to-json--from-json', () async {
      var o = buildErrorGroup();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.ErrorGroup.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkErrorGroup(od as api.ErrorGroup);
    });
  });

  unittest.group('obj-schema-ErrorGroupStats', () {
    unittest.test('to-json--from-json', () async {
      var o = buildErrorGroupStats();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ErrorGroupStats.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkErrorGroupStats(od as api.ErrorGroupStats);
    });
  });

  unittest.group('obj-schema-HttpRequestContext', () {
    unittest.test('to-json--from-json', () async {
      var o = buildHttpRequestContext();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.HttpRequestContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkHttpRequestContext(od as api.HttpRequestContext);
    });
  });

  unittest.group('obj-schema-ListEventsResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListEventsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ListEventsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListEventsResponse(od as api.ListEventsResponse);
    });
  });

  unittest.group('obj-schema-ListGroupStatsResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListGroupStatsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ListGroupStatsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListGroupStatsResponse(od as api.ListGroupStatsResponse);
    });
  });

  unittest.group('obj-schema-ReportErrorEventResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildReportErrorEventResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ReportErrorEventResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReportErrorEventResponse(od as api.ReportErrorEventResponse);
    });
  });

  unittest.group('obj-schema-ReportedErrorEvent', () {
    unittest.test('to-json--from-json', () async {
      var o = buildReportedErrorEvent();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ReportedErrorEvent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReportedErrorEvent(od as api.ReportedErrorEvent);
    });
  });

  unittest.group('obj-schema-ServiceContext', () {
    unittest.test('to-json--from-json', () async {
      var o = buildServiceContext();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ServiceContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkServiceContext(od as api.ServiceContext);
    });
  });

  unittest.group('obj-schema-SourceLocation', () {
    unittest.test('to-json--from-json', () async {
      var o = buildSourceLocation();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.SourceLocation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSourceLocation(od as api.SourceLocation);
    });
  });

  unittest.group('obj-schema-SourceReference', () {
    unittest.test('to-json--from-json', () async {
      var o = buildSourceReference();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.SourceReference.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSourceReference(od as api.SourceReference);
    });
  });

  unittest.group('obj-schema-TimedCount', () {
    unittest.test('to-json--from-json', () async {
      var o = buildTimedCount();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.TimedCount.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTimedCount(od as api.TimedCount);
    });
  });

  unittest.group('obj-schema-TrackingIssue', () {
    unittest.test('to-json--from-json', () async {
      var o = buildTrackingIssue();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.TrackingIssue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTrackingIssue(od as api.TrackingIssue);
    });
  });

  unittest.group('resource-ProjectsResource', () {
    unittest.test('method--deleteEvents', () async {
      var mock = HttpServerMock();
      var res = api.ClouderrorreportingApi(mock).projects;
      var arg_projectName = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildDeleteEventsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.deleteEvents(arg_projectName, $fields: arg_$fields);
      checkDeleteEventsResponse(response as api.DeleteEventsResponse);
    });
  });

  unittest.group('resource-ProjectsEventsResource', () {
    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.ClouderrorreportingApi(mock).projects.events;
      var arg_projectName = 'foo';
      var arg_groupId = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_serviceFilter_resourceType = 'foo';
      var arg_serviceFilter_service = 'foo';
      var arg_serviceFilter_version = 'foo';
      var arg_timeRange_period = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
        unittest.expect(
          queryMap["groupId"]!.first,
          unittest.equals(arg_groupId),
        );
        unittest.expect(
          core.int.parse(queryMap["pageSize"]!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["serviceFilter.resourceType"]!.first,
          unittest.equals(arg_serviceFilter_resourceType),
        );
        unittest.expect(
          queryMap["serviceFilter.service"]!.first,
          unittest.equals(arg_serviceFilter_service),
        );
        unittest.expect(
          queryMap["serviceFilter.version"]!.first,
          unittest.equals(arg_serviceFilter_version),
        );
        unittest.expect(
          queryMap["timeRange.period"]!.first,
          unittest.equals(arg_timeRange_period),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListEventsResponse());
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
      var mock = HttpServerMock();
      var res = api.ClouderrorreportingApi(mock).projects.events;
      var arg_request = buildReportedErrorEvent();
      var arg_projectName = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ReportedErrorEvent.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkReportedErrorEvent(obj as api.ReportedErrorEvent);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildReportErrorEventResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.report(arg_request, arg_projectName, $fields: arg_$fields);
      checkReportErrorEventResponse(response as api.ReportErrorEventResponse);
    });
  });

  unittest.group('resource-ProjectsGroupStatsResource', () {
    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.ClouderrorreportingApi(mock).projects.groupStats;
      var arg_projectName = 'foo';
      var arg_alignment = 'foo';
      var arg_alignmentTime = 'foo';
      var arg_groupId = buildUnnamed7884();
      var arg_order = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_serviceFilter_resourceType = 'foo';
      var arg_serviceFilter_service = 'foo';
      var arg_serviceFilter_version = 'foo';
      var arg_timeRange_period = 'foo';
      var arg_timedCountDuration = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
        unittest.expect(
          queryMap["alignment"]!.first,
          unittest.equals(arg_alignment),
        );
        unittest.expect(
          queryMap["alignmentTime"]!.first,
          unittest.equals(arg_alignmentTime),
        );
        unittest.expect(
          queryMap["groupId"]!,
          unittest.equals(arg_groupId),
        );
        unittest.expect(
          queryMap["order"]!.first,
          unittest.equals(arg_order),
        );
        unittest.expect(
          core.int.parse(queryMap["pageSize"]!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["serviceFilter.resourceType"]!.first,
          unittest.equals(arg_serviceFilter_resourceType),
        );
        unittest.expect(
          queryMap["serviceFilter.service"]!.first,
          unittest.equals(arg_serviceFilter_service),
        );
        unittest.expect(
          queryMap["serviceFilter.version"]!.first,
          unittest.equals(arg_serviceFilter_version),
        );
        unittest.expect(
          queryMap["timeRange.period"]!.first,
          unittest.equals(arg_timeRange_period),
        );
        unittest.expect(
          queryMap["timedCountDuration"]!.first,
          unittest.equals(arg_timedCountDuration),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListGroupStatsResponse());
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
      var mock = HttpServerMock();
      var res = api.ClouderrorreportingApi(mock).projects.groups;
      var arg_groupName = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildErrorGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_groupName, $fields: arg_$fields);
      checkErrorGroup(response as api.ErrorGroup);
    });

    unittest.test('method--update', () async {
      var mock = HttpServerMock();
      var res = api.ClouderrorreportingApi(mock).projects.groups;
      var arg_request = buildErrorGroup();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ErrorGroup.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkErrorGroup(obj as api.ErrorGroup);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildErrorGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.update(arg_request, arg_name, $fields: arg_$fields);
      checkErrorGroup(response as api.ErrorGroup);
    });
  });
}
