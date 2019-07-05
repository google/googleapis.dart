library googleapis.cloudtrace.v2.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/cloudtrace/v2.dart' as api;

class HttpServerMock extends http.BaseClient {
  core.Function _callback;
  core.bool _expectJson;

  void register(core.Function callback, core.bool expectJson) {
    _callback = callback;
    _expectJson = expectJson;
  }

  async.Future<http.StreamedResponse> send(http.BaseRequest request) {
    if (_expectJson) {
      return request
          .finalize()
          .transform(convert.utf8.decoder)
          .join('')
          .then((core.String jsonString) {
        if (jsonString.isEmpty) {
          return _callback(request, null);
        } else {
          return _callback(request, convert.json.decode(jsonString));
        }
      });
    } else {
      var stream = request.finalize();
      if (stream == null) {
        return _callback(request, []);
      } else {
        return stream.toBytes().then((data) {
          return _callback(request, data);
        });
      }
    }
  }
}

http.StreamedResponse stringResponse(core.int status,
    core.Map<core.String, core.String> headers, core.String body) {
  var stream = new async.Stream.fromIterable([convert.utf8.encode(body)]);
  return new http.StreamedResponse(stream, status, headers: headers);
}

core.int buildCounterAnnotation = 0;
buildAnnotation() {
  var o = new api.Annotation();
  buildCounterAnnotation++;
  if (buildCounterAnnotation < 3) {
    o.attributes = buildAttributes();
    o.description = buildTruncatableString();
  }
  buildCounterAnnotation--;
  return o;
}

checkAnnotation(api.Annotation o) {
  buildCounterAnnotation++;
  if (buildCounterAnnotation < 3) {
    checkAttributes(o.attributes);
    checkTruncatableString(o.description);
  }
  buildCounterAnnotation--;
}

core.int buildCounterAttributeValue = 0;
buildAttributeValue() {
  var o = new api.AttributeValue();
  buildCounterAttributeValue++;
  if (buildCounterAttributeValue < 3) {
    o.boolValue = true;
    o.intValue = "foo";
    o.stringValue = buildTruncatableString();
  }
  buildCounterAttributeValue--;
  return o;
}

checkAttributeValue(api.AttributeValue o) {
  buildCounterAttributeValue++;
  if (buildCounterAttributeValue < 3) {
    unittest.expect(o.boolValue, unittest.isTrue);
    unittest.expect(o.intValue, unittest.equals('foo'));
    checkTruncatableString(o.stringValue);
  }
  buildCounterAttributeValue--;
}

buildUnnamed642() {
  var o = new core.Map<core.String, api.AttributeValue>();
  o["x"] = buildAttributeValue();
  o["y"] = buildAttributeValue();
  return o;
}

checkUnnamed642(core.Map<core.String, api.AttributeValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAttributeValue(o["x"]);
  checkAttributeValue(o["y"]);
}

core.int buildCounterAttributes = 0;
buildAttributes() {
  var o = new api.Attributes();
  buildCounterAttributes++;
  if (buildCounterAttributes < 3) {
    o.attributeMap = buildUnnamed642();
    o.droppedAttributesCount = 42;
  }
  buildCounterAttributes--;
  return o;
}

checkAttributes(api.Attributes o) {
  buildCounterAttributes++;
  if (buildCounterAttributes < 3) {
    checkUnnamed642(o.attributeMap);
    unittest.expect(o.droppedAttributesCount, unittest.equals(42));
  }
  buildCounterAttributes--;
}

buildUnnamed643() {
  var o = new core.List<api.Span>();
  o.add(buildSpan());
  o.add(buildSpan());
  return o;
}

checkUnnamed643(core.List<api.Span> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSpan(o[0]);
  checkSpan(o[1]);
}

core.int buildCounterBatchWriteSpansRequest = 0;
buildBatchWriteSpansRequest() {
  var o = new api.BatchWriteSpansRequest();
  buildCounterBatchWriteSpansRequest++;
  if (buildCounterBatchWriteSpansRequest < 3) {
    o.spans = buildUnnamed643();
  }
  buildCounterBatchWriteSpansRequest--;
  return o;
}

checkBatchWriteSpansRequest(api.BatchWriteSpansRequest o) {
  buildCounterBatchWriteSpansRequest++;
  if (buildCounterBatchWriteSpansRequest < 3) {
    checkUnnamed643(o.spans);
  }
  buildCounterBatchWriteSpansRequest--;
}

core.int buildCounterEmpty = 0;
buildEmpty() {
  var o = new api.Empty();
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
  return o;
}

checkEmpty(api.Empty o) {
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
}

core.int buildCounterLink = 0;
buildLink() {
  var o = new api.Link();
  buildCounterLink++;
  if (buildCounterLink < 3) {
    o.attributes = buildAttributes();
    o.spanId = "foo";
    o.traceId = "foo";
    o.type = "foo";
  }
  buildCounterLink--;
  return o;
}

checkLink(api.Link o) {
  buildCounterLink++;
  if (buildCounterLink < 3) {
    checkAttributes(o.attributes);
    unittest.expect(o.spanId, unittest.equals('foo'));
    unittest.expect(o.traceId, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterLink--;
}

buildUnnamed644() {
  var o = new core.List<api.Link>();
  o.add(buildLink());
  o.add(buildLink());
  return o;
}

checkUnnamed644(core.List<api.Link> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLink(o[0]);
  checkLink(o[1]);
}

core.int buildCounterLinks = 0;
buildLinks() {
  var o = new api.Links();
  buildCounterLinks++;
  if (buildCounterLinks < 3) {
    o.droppedLinksCount = 42;
    o.link = buildUnnamed644();
  }
  buildCounterLinks--;
  return o;
}

checkLinks(api.Links o) {
  buildCounterLinks++;
  if (buildCounterLinks < 3) {
    unittest.expect(o.droppedLinksCount, unittest.equals(42));
    checkUnnamed644(o.link);
  }
  buildCounterLinks--;
}

core.int buildCounterMessageEvent = 0;
buildMessageEvent() {
  var o = new api.MessageEvent();
  buildCounterMessageEvent++;
  if (buildCounterMessageEvent < 3) {
    o.compressedSizeBytes = "foo";
    o.id = "foo";
    o.type = "foo";
    o.uncompressedSizeBytes = "foo";
  }
  buildCounterMessageEvent--;
  return o;
}

checkMessageEvent(api.MessageEvent o) {
  buildCounterMessageEvent++;
  if (buildCounterMessageEvent < 3) {
    unittest.expect(o.compressedSizeBytes, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.uncompressedSizeBytes, unittest.equals('foo'));
  }
  buildCounterMessageEvent--;
}

core.int buildCounterModule = 0;
buildModule() {
  var o = new api.Module();
  buildCounterModule++;
  if (buildCounterModule < 3) {
    o.buildId = buildTruncatableString();
    o.module = buildTruncatableString();
  }
  buildCounterModule--;
  return o;
}

checkModule(api.Module o) {
  buildCounterModule++;
  if (buildCounterModule < 3) {
    checkTruncatableString(o.buildId);
    checkTruncatableString(o.module);
  }
  buildCounterModule--;
}

core.int buildCounterSpan = 0;
buildSpan() {
  var o = new api.Span();
  buildCounterSpan++;
  if (buildCounterSpan < 3) {
    o.attributes = buildAttributes();
    o.childSpanCount = 42;
    o.displayName = buildTruncatableString();
    o.endTime = "foo";
    o.links = buildLinks();
    o.name = "foo";
    o.parentSpanId = "foo";
    o.sameProcessAsParentSpan = true;
    o.spanId = "foo";
    o.stackTrace = buildStackTrace();
    o.startTime = "foo";
    o.status = buildStatus();
    o.timeEvents = buildTimeEvents();
  }
  buildCounterSpan--;
  return o;
}

checkSpan(api.Span o) {
  buildCounterSpan++;
  if (buildCounterSpan < 3) {
    checkAttributes(o.attributes);
    unittest.expect(o.childSpanCount, unittest.equals(42));
    checkTruncatableString(o.displayName);
    unittest.expect(o.endTime, unittest.equals('foo'));
    checkLinks(o.links);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.parentSpanId, unittest.equals('foo'));
    unittest.expect(o.sameProcessAsParentSpan, unittest.isTrue);
    unittest.expect(o.spanId, unittest.equals('foo'));
    checkStackTrace(o.stackTrace);
    unittest.expect(o.startTime, unittest.equals('foo'));
    checkStatus(o.status);
    checkTimeEvents(o.timeEvents);
  }
  buildCounterSpan--;
}

core.int buildCounterStackFrame = 0;
buildStackFrame() {
  var o = new api.StackFrame();
  buildCounterStackFrame++;
  if (buildCounterStackFrame < 3) {
    o.columnNumber = "foo";
    o.fileName = buildTruncatableString();
    o.functionName = buildTruncatableString();
    o.lineNumber = "foo";
    o.loadModule = buildModule();
    o.originalFunctionName = buildTruncatableString();
    o.sourceVersion = buildTruncatableString();
  }
  buildCounterStackFrame--;
  return o;
}

checkStackFrame(api.StackFrame o) {
  buildCounterStackFrame++;
  if (buildCounterStackFrame < 3) {
    unittest.expect(o.columnNumber, unittest.equals('foo'));
    checkTruncatableString(o.fileName);
    checkTruncatableString(o.functionName);
    unittest.expect(o.lineNumber, unittest.equals('foo'));
    checkModule(o.loadModule);
    checkTruncatableString(o.originalFunctionName);
    checkTruncatableString(o.sourceVersion);
  }
  buildCounterStackFrame--;
}

buildUnnamed645() {
  var o = new core.List<api.StackFrame>();
  o.add(buildStackFrame());
  o.add(buildStackFrame());
  return o;
}

checkUnnamed645(core.List<api.StackFrame> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStackFrame(o[0]);
  checkStackFrame(o[1]);
}

core.int buildCounterStackFrames = 0;
buildStackFrames() {
  var o = new api.StackFrames();
  buildCounterStackFrames++;
  if (buildCounterStackFrames < 3) {
    o.droppedFramesCount = 42;
    o.frame = buildUnnamed645();
  }
  buildCounterStackFrames--;
  return o;
}

checkStackFrames(api.StackFrames o) {
  buildCounterStackFrames++;
  if (buildCounterStackFrames < 3) {
    unittest.expect(o.droppedFramesCount, unittest.equals(42));
    checkUnnamed645(o.frame);
  }
  buildCounterStackFrames--;
}

core.int buildCounterStackTrace = 0;
buildStackTrace() {
  var o = new api.StackTrace();
  buildCounterStackTrace++;
  if (buildCounterStackTrace < 3) {
    o.stackFrames = buildStackFrames();
    o.stackTraceHashId = "foo";
  }
  buildCounterStackTrace--;
  return o;
}

checkStackTrace(api.StackTrace o) {
  buildCounterStackTrace++;
  if (buildCounterStackTrace < 3) {
    checkStackFrames(o.stackFrames);
    unittest.expect(o.stackTraceHashId, unittest.equals('foo'));
  }
  buildCounterStackTrace--;
}

buildUnnamed646() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed646(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o["x"]) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(casted1["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted1["bool"], unittest.equals(true));
  unittest.expect(casted1["string"], unittest.equals('foo'));
  var casted2 = (o["y"]) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted2["bool"], unittest.equals(true));
  unittest.expect(casted2["string"], unittest.equals('foo'));
}

buildUnnamed647() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed646());
  o.add(buildUnnamed646());
  return o;
}

checkUnnamed647(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed646(o[0]);
  checkUnnamed646(o[1]);
}

core.int buildCounterStatus = 0;
buildStatus() {
  var o = new api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed647();
    o.message = "foo";
  }
  buildCounterStatus--;
  return o;
}

checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed647(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.int buildCounterTimeEvent = 0;
buildTimeEvent() {
  var o = new api.TimeEvent();
  buildCounterTimeEvent++;
  if (buildCounterTimeEvent < 3) {
    o.annotation = buildAnnotation();
    o.messageEvent = buildMessageEvent();
    o.time = "foo";
  }
  buildCounterTimeEvent--;
  return o;
}

checkTimeEvent(api.TimeEvent o) {
  buildCounterTimeEvent++;
  if (buildCounterTimeEvent < 3) {
    checkAnnotation(o.annotation);
    checkMessageEvent(o.messageEvent);
    unittest.expect(o.time, unittest.equals('foo'));
  }
  buildCounterTimeEvent--;
}

buildUnnamed648() {
  var o = new core.List<api.TimeEvent>();
  o.add(buildTimeEvent());
  o.add(buildTimeEvent());
  return o;
}

checkUnnamed648(core.List<api.TimeEvent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTimeEvent(o[0]);
  checkTimeEvent(o[1]);
}

core.int buildCounterTimeEvents = 0;
buildTimeEvents() {
  var o = new api.TimeEvents();
  buildCounterTimeEvents++;
  if (buildCounterTimeEvents < 3) {
    o.droppedAnnotationsCount = 42;
    o.droppedMessageEventsCount = 42;
    o.timeEvent = buildUnnamed648();
  }
  buildCounterTimeEvents--;
  return o;
}

checkTimeEvents(api.TimeEvents o) {
  buildCounterTimeEvents++;
  if (buildCounterTimeEvents < 3) {
    unittest.expect(o.droppedAnnotationsCount, unittest.equals(42));
    unittest.expect(o.droppedMessageEventsCount, unittest.equals(42));
    checkUnnamed648(o.timeEvent);
  }
  buildCounterTimeEvents--;
}

core.int buildCounterTruncatableString = 0;
buildTruncatableString() {
  var o = new api.TruncatableString();
  buildCounterTruncatableString++;
  if (buildCounterTruncatableString < 3) {
    o.truncatedByteCount = 42;
    o.value = "foo";
  }
  buildCounterTruncatableString--;
  return o;
}

checkTruncatableString(api.TruncatableString o) {
  buildCounterTruncatableString++;
  if (buildCounterTruncatableString < 3) {
    unittest.expect(o.truncatedByteCount, unittest.equals(42));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterTruncatableString--;
}

main() {
  unittest.group("obj-schema-Annotation", () {
    unittest.test("to-json--from-json", () {
      var o = buildAnnotation();
      var od = new api.Annotation.fromJson(o.toJson());
      checkAnnotation(od);
    });
  });

  unittest.group("obj-schema-AttributeValue", () {
    unittest.test("to-json--from-json", () {
      var o = buildAttributeValue();
      var od = new api.AttributeValue.fromJson(o.toJson());
      checkAttributeValue(od);
    });
  });

  unittest.group("obj-schema-Attributes", () {
    unittest.test("to-json--from-json", () {
      var o = buildAttributes();
      var od = new api.Attributes.fromJson(o.toJson());
      checkAttributes(od);
    });
  });

  unittest.group("obj-schema-BatchWriteSpansRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildBatchWriteSpansRequest();
      var od = new api.BatchWriteSpansRequest.fromJson(o.toJson());
      checkBatchWriteSpansRequest(od);
    });
  });

  unittest.group("obj-schema-Empty", () {
    unittest.test("to-json--from-json", () {
      var o = buildEmpty();
      var od = new api.Empty.fromJson(o.toJson());
      checkEmpty(od);
    });
  });

  unittest.group("obj-schema-Link", () {
    unittest.test("to-json--from-json", () {
      var o = buildLink();
      var od = new api.Link.fromJson(o.toJson());
      checkLink(od);
    });
  });

  unittest.group("obj-schema-Links", () {
    unittest.test("to-json--from-json", () {
      var o = buildLinks();
      var od = new api.Links.fromJson(o.toJson());
      checkLinks(od);
    });
  });

  unittest.group("obj-schema-MessageEvent", () {
    unittest.test("to-json--from-json", () {
      var o = buildMessageEvent();
      var od = new api.MessageEvent.fromJson(o.toJson());
      checkMessageEvent(od);
    });
  });

  unittest.group("obj-schema-Module", () {
    unittest.test("to-json--from-json", () {
      var o = buildModule();
      var od = new api.Module.fromJson(o.toJson());
      checkModule(od);
    });
  });

  unittest.group("obj-schema-Span", () {
    unittest.test("to-json--from-json", () {
      var o = buildSpan();
      var od = new api.Span.fromJson(o.toJson());
      checkSpan(od);
    });
  });

  unittest.group("obj-schema-StackFrame", () {
    unittest.test("to-json--from-json", () {
      var o = buildStackFrame();
      var od = new api.StackFrame.fromJson(o.toJson());
      checkStackFrame(od);
    });
  });

  unittest.group("obj-schema-StackFrames", () {
    unittest.test("to-json--from-json", () {
      var o = buildStackFrames();
      var od = new api.StackFrames.fromJson(o.toJson());
      checkStackFrames(od);
    });
  });

  unittest.group("obj-schema-StackTrace", () {
    unittest.test("to-json--from-json", () {
      var o = buildStackTrace();
      var od = new api.StackTrace.fromJson(o.toJson());
      checkStackTrace(od);
    });
  });

  unittest.group("obj-schema-Status", () {
    unittest.test("to-json--from-json", () {
      var o = buildStatus();
      var od = new api.Status.fromJson(o.toJson());
      checkStatus(od);
    });
  });

  unittest.group("obj-schema-TimeEvent", () {
    unittest.test("to-json--from-json", () {
      var o = buildTimeEvent();
      var od = new api.TimeEvent.fromJson(o.toJson());
      checkTimeEvent(od);
    });
  });

  unittest.group("obj-schema-TimeEvents", () {
    unittest.test("to-json--from-json", () {
      var o = buildTimeEvents();
      var od = new api.TimeEvents.fromJson(o.toJson());
      checkTimeEvents(od);
    });
  });

  unittest.group("obj-schema-TruncatableString", () {
    unittest.test("to-json--from-json", () {
      var o = buildTruncatableString();
      var od = new api.TruncatableString.fromJson(o.toJson());
      checkTruncatableString(od);
    });
  });

  unittest.group("resource-ProjectsTracesResourceApi", () {
    unittest.test("method--batchWrite", () {
      var mock = new HttpServerMock();
      api.ProjectsTracesResourceApi res =
          new api.CloudtraceApi(mock).projects.traces;
      var arg_request = buildBatchWriteSpansRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.BatchWriteSpansRequest.fromJson(json);
        checkBatchWriteSpansRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .batchWrite(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });
  });

  unittest.group("resource-ProjectsTracesSpansResourceApi", () {
    unittest.test("method--createSpan", () {
      var mock = new HttpServerMock();
      api.ProjectsTracesSpansResourceApi res =
          new api.CloudtraceApi(mock).projects.traces.spans;
      var arg_request = buildSpan();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Span.fromJson(json);
        checkSpan(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSpan());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .createSpan(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSpan(response);
      })));
    });
  });
}
