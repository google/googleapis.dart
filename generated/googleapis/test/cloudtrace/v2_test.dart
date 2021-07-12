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

import 'package:googleapis/cloudtrace/v2.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAnnotation = 0;
api.Annotation buildAnnotation() {
  final o = api.Annotation();
  buildCounterAnnotation++;
  if (buildCounterAnnotation < 3) {
    o.attributes = buildAttributes();
    o.description = buildTruncatableString();
  }
  buildCounterAnnotation--;
  return o;
}

void checkAnnotation(api.Annotation o) {
  buildCounterAnnotation++;
  if (buildCounterAnnotation < 3) {
    checkAttributes(o.attributes!);
    checkTruncatableString(o.description!);
  }
  buildCounterAnnotation--;
}

core.int buildCounterAttributeValue = 0;
api.AttributeValue buildAttributeValue() {
  final o = api.AttributeValue();
  buildCounterAttributeValue++;
  if (buildCounterAttributeValue < 3) {
    o.boolValue = true;
    o.intValue = 'foo';
    o.stringValue = buildTruncatableString();
  }
  buildCounterAttributeValue--;
  return o;
}

void checkAttributeValue(api.AttributeValue o) {
  buildCounterAttributeValue++;
  if (buildCounterAttributeValue < 3) {
    unittest.expect(o.boolValue!, unittest.isTrue);
    unittest.expect(
      o.intValue!,
      unittest.equals('foo'),
    );
    checkTruncatableString(o.stringValue!);
  }
  buildCounterAttributeValue--;
}

core.Map<core.String, api.AttributeValue> buildUnnamed1636() => {
      'x': buildAttributeValue(),
      'y': buildAttributeValue(),
    };

void checkUnnamed1636(core.Map<core.String, api.AttributeValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAttributeValue(o['x']!);
  checkAttributeValue(o['y']!);
}

core.int buildCounterAttributes = 0;
api.Attributes buildAttributes() {
  final o = api.Attributes();
  buildCounterAttributes++;
  if (buildCounterAttributes < 3) {
    o.attributeMap = buildUnnamed1636();
    o.droppedAttributesCount = 42;
  }
  buildCounterAttributes--;
  return o;
}

void checkAttributes(api.Attributes o) {
  buildCounterAttributes++;
  if (buildCounterAttributes < 3) {
    checkUnnamed1636(o.attributeMap!);
    unittest.expect(
      o.droppedAttributesCount!,
      unittest.equals(42),
    );
  }
  buildCounterAttributes--;
}

core.List<api.Span> buildUnnamed1637() => [
      buildSpan(),
      buildSpan(),
    ];

void checkUnnamed1637(core.List<api.Span> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSpan(o[0]);
  checkSpan(o[1]);
}

core.int buildCounterBatchWriteSpansRequest = 0;
api.BatchWriteSpansRequest buildBatchWriteSpansRequest() {
  final o = api.BatchWriteSpansRequest();
  buildCounterBatchWriteSpansRequest++;
  if (buildCounterBatchWriteSpansRequest < 3) {
    o.spans = buildUnnamed1637();
  }
  buildCounterBatchWriteSpansRequest--;
  return o;
}

void checkBatchWriteSpansRequest(api.BatchWriteSpansRequest o) {
  buildCounterBatchWriteSpansRequest++;
  if (buildCounterBatchWriteSpansRequest < 3) {
    checkUnnamed1637(o.spans!);
  }
  buildCounterBatchWriteSpansRequest--;
}

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

core.int buildCounterLink = 0;
api.Link buildLink() {
  final o = api.Link();
  buildCounterLink++;
  if (buildCounterLink < 3) {
    o.attributes = buildAttributes();
    o.spanId = 'foo';
    o.traceId = 'foo';
    o.type = 'foo';
  }
  buildCounterLink--;
  return o;
}

void checkLink(api.Link o) {
  buildCounterLink++;
  if (buildCounterLink < 3) {
    checkAttributes(o.attributes!);
    unittest.expect(
      o.spanId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.traceId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterLink--;
}

core.List<api.Link> buildUnnamed1638() => [
      buildLink(),
      buildLink(),
    ];

void checkUnnamed1638(core.List<api.Link> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLink(o[0]);
  checkLink(o[1]);
}

core.int buildCounterLinks = 0;
api.Links buildLinks() {
  final o = api.Links();
  buildCounterLinks++;
  if (buildCounterLinks < 3) {
    o.droppedLinksCount = 42;
    o.link = buildUnnamed1638();
  }
  buildCounterLinks--;
  return o;
}

void checkLinks(api.Links o) {
  buildCounterLinks++;
  if (buildCounterLinks < 3) {
    unittest.expect(
      o.droppedLinksCount!,
      unittest.equals(42),
    );
    checkUnnamed1638(o.link!);
  }
  buildCounterLinks--;
}

core.int buildCounterMessageEvent = 0;
api.MessageEvent buildMessageEvent() {
  final o = api.MessageEvent();
  buildCounterMessageEvent++;
  if (buildCounterMessageEvent < 3) {
    o.compressedSizeBytes = 'foo';
    o.id = 'foo';
    o.type = 'foo';
    o.uncompressedSizeBytes = 'foo';
  }
  buildCounterMessageEvent--;
  return o;
}

void checkMessageEvent(api.MessageEvent o) {
  buildCounterMessageEvent++;
  if (buildCounterMessageEvent < 3) {
    unittest.expect(
      o.compressedSizeBytes!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uncompressedSizeBytes!,
      unittest.equals('foo'),
    );
  }
  buildCounterMessageEvent--;
}

core.int buildCounterModule = 0;
api.Module buildModule() {
  final o = api.Module();
  buildCounterModule++;
  if (buildCounterModule < 3) {
    o.buildId = buildTruncatableString();
    o.module = buildTruncatableString();
  }
  buildCounterModule--;
  return o;
}

void checkModule(api.Module o) {
  buildCounterModule++;
  if (buildCounterModule < 3) {
    checkTruncatableString(o.buildId!);
    checkTruncatableString(o.module!);
  }
  buildCounterModule--;
}

core.int buildCounterSpan = 0;
api.Span buildSpan() {
  final o = api.Span();
  buildCounterSpan++;
  if (buildCounterSpan < 3) {
    o.attributes = buildAttributes();
    o.childSpanCount = 42;
    o.displayName = buildTruncatableString();
    o.endTime = 'foo';
    o.links = buildLinks();
    o.name = 'foo';
    o.parentSpanId = 'foo';
    o.sameProcessAsParentSpan = true;
    o.spanId = 'foo';
    o.spanKind = 'foo';
    o.stackTrace = buildStackTrace();
    o.startTime = 'foo';
    o.status = buildStatus();
    o.timeEvents = buildTimeEvents();
  }
  buildCounterSpan--;
  return o;
}

void checkSpan(api.Span o) {
  buildCounterSpan++;
  if (buildCounterSpan < 3) {
    checkAttributes(o.attributes!);
    unittest.expect(
      o.childSpanCount!,
      unittest.equals(42),
    );
    checkTruncatableString(o.displayName!);
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    checkLinks(o.links!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.parentSpanId!,
      unittest.equals('foo'),
    );
    unittest.expect(o.sameProcessAsParentSpan!, unittest.isTrue);
    unittest.expect(
      o.spanId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.spanKind!,
      unittest.equals('foo'),
    );
    checkStackTrace(o.stackTrace!);
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
    checkStatus(o.status!);
    checkTimeEvents(o.timeEvents!);
  }
  buildCounterSpan--;
}

core.int buildCounterStackFrame = 0;
api.StackFrame buildStackFrame() {
  final o = api.StackFrame();
  buildCounterStackFrame++;
  if (buildCounterStackFrame < 3) {
    o.columnNumber = 'foo';
    o.fileName = buildTruncatableString();
    o.functionName = buildTruncatableString();
    o.lineNumber = 'foo';
    o.loadModule = buildModule();
    o.originalFunctionName = buildTruncatableString();
    o.sourceVersion = buildTruncatableString();
  }
  buildCounterStackFrame--;
  return o;
}

void checkStackFrame(api.StackFrame o) {
  buildCounterStackFrame++;
  if (buildCounterStackFrame < 3) {
    unittest.expect(
      o.columnNumber!,
      unittest.equals('foo'),
    );
    checkTruncatableString(o.fileName!);
    checkTruncatableString(o.functionName!);
    unittest.expect(
      o.lineNumber!,
      unittest.equals('foo'),
    );
    checkModule(o.loadModule!);
    checkTruncatableString(o.originalFunctionName!);
    checkTruncatableString(o.sourceVersion!);
  }
  buildCounterStackFrame--;
}

core.List<api.StackFrame> buildUnnamed1639() => [
      buildStackFrame(),
      buildStackFrame(),
    ];

void checkUnnamed1639(core.List<api.StackFrame> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStackFrame(o[0]);
  checkStackFrame(o[1]);
}

core.int buildCounterStackFrames = 0;
api.StackFrames buildStackFrames() {
  final o = api.StackFrames();
  buildCounterStackFrames++;
  if (buildCounterStackFrames < 3) {
    o.droppedFramesCount = 42;
    o.frame = buildUnnamed1639();
  }
  buildCounterStackFrames--;
  return o;
}

void checkStackFrames(api.StackFrames o) {
  buildCounterStackFrames++;
  if (buildCounterStackFrames < 3) {
    unittest.expect(
      o.droppedFramesCount!,
      unittest.equals(42),
    );
    checkUnnamed1639(o.frame!);
  }
  buildCounterStackFrames--;
}

core.int buildCounterStackTrace = 0;
api.StackTrace buildStackTrace() {
  final o = api.StackTrace();
  buildCounterStackTrace++;
  if (buildCounterStackTrace < 3) {
    o.stackFrames = buildStackFrames();
    o.stackTraceHashId = 'foo';
  }
  buildCounterStackTrace--;
  return o;
}

void checkStackTrace(api.StackTrace o) {
  buildCounterStackTrace++;
  if (buildCounterStackTrace < 3) {
    checkStackFrames(o.stackFrames!);
    unittest.expect(
      o.stackTraceHashId!,
      unittest.equals('foo'),
    );
  }
  buildCounterStackTrace--;
}

core.Map<core.String, core.Object> buildUnnamed1640() => {
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

void checkUnnamed1640(core.Map<core.String, core.Object> o) {
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

core.List<core.Map<core.String, core.Object>> buildUnnamed1641() => [
      buildUnnamed1640(),
      buildUnnamed1640(),
    ];

void checkUnnamed1641(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed1640(o[0]);
  checkUnnamed1640(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed1641();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(
      o.code!,
      unittest.equals(42),
    );
    checkUnnamed1641(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.int buildCounterTimeEvent = 0;
api.TimeEvent buildTimeEvent() {
  final o = api.TimeEvent();
  buildCounterTimeEvent++;
  if (buildCounterTimeEvent < 3) {
    o.annotation = buildAnnotation();
    o.messageEvent = buildMessageEvent();
    o.time = 'foo';
  }
  buildCounterTimeEvent--;
  return o;
}

void checkTimeEvent(api.TimeEvent o) {
  buildCounterTimeEvent++;
  if (buildCounterTimeEvent < 3) {
    checkAnnotation(o.annotation!);
    checkMessageEvent(o.messageEvent!);
    unittest.expect(
      o.time!,
      unittest.equals('foo'),
    );
  }
  buildCounterTimeEvent--;
}

core.List<api.TimeEvent> buildUnnamed1642() => [
      buildTimeEvent(),
      buildTimeEvent(),
    ];

void checkUnnamed1642(core.List<api.TimeEvent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTimeEvent(o[0]);
  checkTimeEvent(o[1]);
}

core.int buildCounterTimeEvents = 0;
api.TimeEvents buildTimeEvents() {
  final o = api.TimeEvents();
  buildCounterTimeEvents++;
  if (buildCounterTimeEvents < 3) {
    o.droppedAnnotationsCount = 42;
    o.droppedMessageEventsCount = 42;
    o.timeEvent = buildUnnamed1642();
  }
  buildCounterTimeEvents--;
  return o;
}

void checkTimeEvents(api.TimeEvents o) {
  buildCounterTimeEvents++;
  if (buildCounterTimeEvents < 3) {
    unittest.expect(
      o.droppedAnnotationsCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.droppedMessageEventsCount!,
      unittest.equals(42),
    );
    checkUnnamed1642(o.timeEvent!);
  }
  buildCounterTimeEvents--;
}

core.int buildCounterTruncatableString = 0;
api.TruncatableString buildTruncatableString() {
  final o = api.TruncatableString();
  buildCounterTruncatableString++;
  if (buildCounterTruncatableString < 3) {
    o.truncatedByteCount = 42;
    o.value = 'foo';
  }
  buildCounterTruncatableString--;
  return o;
}

void checkTruncatableString(api.TruncatableString o) {
  buildCounterTruncatableString++;
  if (buildCounterTruncatableString < 3) {
    unittest.expect(
      o.truncatedByteCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterTruncatableString--;
}

void main() {
  unittest.group('obj-schema-Annotation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Annotation.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAnnotation(od);
    });
  });

  unittest.group('obj-schema-AttributeValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAttributeValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AttributeValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAttributeValue(od);
    });
  });

  unittest.group('obj-schema-Attributes', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAttributes();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Attributes.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAttributes(od);
    });
  });

  unittest.group('obj-schema-BatchWriteSpansRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchWriteSpansRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchWriteSpansRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchWriteSpansRequest(od);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Empty.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEmpty(od);
    });
  });

  unittest.group('obj-schema-Link', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLink();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Link.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLink(od);
    });
  });

  unittest.group('obj-schema-Links', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLinks();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Links.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLinks(od);
    });
  });

  unittest.group('obj-schema-MessageEvent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMessageEvent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MessageEvent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMessageEvent(od);
    });
  });

  unittest.group('obj-schema-Module', () {
    unittest.test('to-json--from-json', () async {
      final o = buildModule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Module.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkModule(od);
    });
  });

  unittest.group('obj-schema-Span', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSpan();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Span.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSpan(od);
    });
  });

  unittest.group('obj-schema-StackFrame', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStackFrame();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.StackFrame.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkStackFrame(od);
    });
  });

  unittest.group('obj-schema-StackFrames', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStackFrames();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StackFrames.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStackFrames(od);
    });
  });

  unittest.group('obj-schema-StackTrace', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStackTrace();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.StackTrace.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkStackTrace(od);
    });
  });

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Status.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkStatus(od);
    });
  });

  unittest.group('obj-schema-TimeEvent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTimeEvent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.TimeEvent.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTimeEvent(od);
    });
  });

  unittest.group('obj-schema-TimeEvents', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTimeEvents();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.TimeEvents.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTimeEvents(od);
    });
  });

  unittest.group('obj-schema-TruncatableString', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTruncatableString();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TruncatableString.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTruncatableString(od);
    });
  });

  unittest.group('resource-ProjectsTracesResource', () {
    unittest.test('method--batchWrite', () async {
      final mock = HttpServerMock();
      final res = api.CloudTraceApi(mock).projects.traces;
      final arg_request = buildBatchWriteSpansRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BatchWriteSpansRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBatchWriteSpansRequest(obj);

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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.batchWrite(arg_request, arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });
  });

  unittest.group('resource-ProjectsTracesSpansResource', () {
    unittest.test('method--createSpan', () async {
      final mock = HttpServerMock();
      final res = api.CloudTraceApi(mock).projects.traces.spans;
      final arg_request = buildSpan();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Span.fromJson(json as core.Map<core.String, core.dynamic>);
        checkSpan(obj);

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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildSpan());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.createSpan(arg_request, arg_name, $fields: arg_$fields);
      checkSpan(response as api.Span);
    });
  });
}
