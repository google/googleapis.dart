// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: doc_directive_unknown
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_const_declarations
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unintended_html_in_doc_comment
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unreachable_from_main
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:googleapis/cloudtrace/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterEmpty = 0;
api.Empty buildEmpty() {
  final o = api.Empty();
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
  return o;
}

void checkEmpty(api.Empty o) {
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
}

core.List<api.Trace> buildUnnamed0() => [buildTrace(), buildTrace()];

void checkUnnamed0(core.List<api.Trace> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTrace(o[0]);
  checkTrace(o[1]);
}

core.int buildCounterListTracesResponse = 0;
api.ListTracesResponse buildListTracesResponse() {
  final o = api.ListTracesResponse();
  buildCounterListTracesResponse++;
  if (buildCounterListTracesResponse < 3) {
    o.nextPageToken = 'foo';
    o.traces = buildUnnamed0();
  }
  buildCounterListTracesResponse--;
  return o;
}

void checkListTracesResponse(api.ListTracesResponse o) {
  buildCounterListTracesResponse++;
  if (buildCounterListTracesResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed0(o.traces!);
  }
  buildCounterListTracesResponse--;
}

core.List<api.TraceSpan> buildUnnamed1() => [
  buildTraceSpan(),
  buildTraceSpan(),
];

void checkUnnamed1(core.List<api.TraceSpan> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTraceSpan(o[0]);
  checkTraceSpan(o[1]);
}

core.int buildCounterTrace = 0;
api.Trace buildTrace() {
  final o = api.Trace();
  buildCounterTrace++;
  if (buildCounterTrace < 3) {
    o.projectId = 'foo';
    o.spans = buildUnnamed1();
    o.traceId = 'foo';
  }
  buildCounterTrace--;
  return o;
}

void checkTrace(api.Trace o) {
  buildCounterTrace++;
  if (buildCounterTrace < 3) {
    unittest.expect(o.projectId!, unittest.equals('foo'));
    checkUnnamed1(o.spans!);
    unittest.expect(o.traceId!, unittest.equals('foo'));
  }
  buildCounterTrace--;
}

core.Map<core.String, core.String> buildUnnamed2() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed2(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterTraceSpan = 0;
api.TraceSpan buildTraceSpan() {
  final o = api.TraceSpan();
  buildCounterTraceSpan++;
  if (buildCounterTraceSpan < 3) {
    o.endTime = 'foo';
    o.kind = 'foo';
    o.labels = buildUnnamed2();
    o.name = 'foo';
    o.parentSpanId = 'foo';
    o.spanId = 'foo';
    o.startTime = 'foo';
  }
  buildCounterTraceSpan--;
  return o;
}

void checkTraceSpan(api.TraceSpan o) {
  buildCounterTraceSpan++;
  if (buildCounterTraceSpan < 3) {
    unittest.expect(o.endTime!, unittest.equals('foo'));
    unittest.expect(o.kind!, unittest.equals('foo'));
    checkUnnamed2(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.parentSpanId!, unittest.equals('foo'));
    unittest.expect(o.spanId!, unittest.equals('foo'));
    unittest.expect(o.startTime!, unittest.equals('foo'));
  }
  buildCounterTraceSpan--;
}

core.List<api.Trace> buildUnnamed3() => [buildTrace(), buildTrace()];

void checkUnnamed3(core.List<api.Trace> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTrace(o[0]);
  checkTrace(o[1]);
}

core.int buildCounterTraces = 0;
api.Traces buildTraces() {
  final o = api.Traces();
  buildCounterTraces++;
  if (buildCounterTraces < 3) {
    o.traces = buildUnnamed3();
  }
  buildCounterTraces--;
  return o;
}

void checkTraces(api.Traces o) {
  buildCounterTraces++;
  if (buildCounterTraces < 3) {
    checkUnnamed3(o.traces!);
  }
  buildCounterTraces--;
}

void main() {
  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Empty.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEmpty(od);
    });
  });

  unittest.group('obj-schema-ListTracesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListTracesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListTracesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListTracesResponse(od);
    });
  });

  unittest.group('obj-schema-Trace', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTrace();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Trace.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTrace(od);
    });
  });

  unittest.group('obj-schema-TraceSpan', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTraceSpan();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TraceSpan.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTraceSpan(od);
    });
  });

  unittest.group('obj-schema-Traces', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTraces();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Traces.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTraces(od);
    });
  });

  unittest.group('resource-ProjectsResource', () {
    unittest.test('method--patchTraces', () async {
      final mock = HttpServerMock();
      final res = api.CloudTraceApi(mock).projects;
      final arg_request = buildTraces();
      final arg_projectId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Traces.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkTraces(obj);

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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('v1/projects/'),
          );
          pathOffset += 12;
          index = path.indexOf('/traces', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_projectId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('/traces'),
          );
          pathOffset += 7;

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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patchTraces(
        arg_request,
        arg_projectId,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });
  });

  unittest.group('resource-ProjectsTracesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudTraceApi(mock).projects.traces;
      final arg_projectId = 'foo';
      final arg_traceId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('v1/projects/'),
          );
          pathOffset += 12;
          index = path.indexOf('/traces/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_projectId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('/traces/'),
          );
          pathOffset += 8;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_traceId'));

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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildTrace());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_projectId,
        arg_traceId,
        $fields: arg_$fields,
      );
      checkTrace(response as api.Trace);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudTraceApi(mock).projects.traces;
      final arg_projectId = 'foo';
      final arg_endTime = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_startTime = 'foo';
      final arg_view = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('v1/projects/'),
          );
          pathOffset += 12;
          index = path.indexOf('/traces', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_projectId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('/traces'),
          );
          pathOffset += 7;

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
            queryMap['endTime']!.first,
            unittest.equals(arg_endTime),
          );
          unittest.expect(
            queryMap['filter']!.first,
            unittest.equals(arg_filter),
          );
          unittest.expect(
            queryMap['orderBy']!.first,
            unittest.equals(arg_orderBy),
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
            queryMap['startTime']!.first,
            unittest.equals(arg_startTime),
          );
          unittest.expect(queryMap['view']!.first, unittest.equals(arg_view));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListTracesResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_projectId,
        endTime: arg_endTime,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        startTime: arg_startTime,
        view: arg_view,
        $fields: arg_$fields,
      );
      checkListTracesResponse(response as api.ListTracesResponse);
    });
  });
}
