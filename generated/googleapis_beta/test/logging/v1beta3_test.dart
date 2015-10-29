library googleapis_beta.logging.v1beta3.test;

import "dart:core" as core;
import "dart:collection" as collection;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:http/testing.dart' as http_testing;
import 'package:unittest/unittest.dart' as unittest;

import 'package:googleapis_beta/logging/v1beta3.dart' as api;

class HttpServerMock extends http.BaseClient {
  core.Function _callback;
  core.bool _expectJson;

  void register(core.Function callback, core.bool expectJson) {
    _callback = callback;
    _expectJson = expectJson;
  }

  async.Future<http.StreamedResponse> send(http.BaseRequest request) {
    if (_expectJson) {
      return request.finalize()
          .transform(convert.UTF8.decoder)
          .join('')
          .then((core.String jsonString) {
        if (jsonString.isEmpty) {
          return _callback(request, null);
        } else {
          return _callback(request, convert.JSON.decode(jsonString));
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

http.StreamedResponse stringResponse(
    core.int status, core.Map headers, core.String body) {
  var stream = new async.Stream.fromIterable([convert.UTF8.encode(body)]);
  return new http.StreamedResponse(stream, status, headers: headers);
}

core.int buildCounterEmpty = 0;
buildEmpty() {
  var o = new api.Empty();
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {
  }
  buildCounterEmpty--;
  return o;
}

checkEmpty(api.Empty o) {
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {
  }
  buildCounterEmpty--;
}

core.int buildCounterHttpRequest = 0;
buildHttpRequest() {
  var o = new api.HttpRequest();
  buildCounterHttpRequest++;
  if (buildCounterHttpRequest < 3) {
    o.cacheHit = true;
    o.referer = "foo";
    o.remoteIp = "foo";
    o.requestMethod = "foo";
    o.requestSize = "foo";
    o.requestUrl = "foo";
    o.responseSize = "foo";
    o.status = 42;
    o.userAgent = "foo";
    o.validatedWithOriginServer = true;
  }
  buildCounterHttpRequest--;
  return o;
}

checkHttpRequest(api.HttpRequest o) {
  buildCounterHttpRequest++;
  if (buildCounterHttpRequest < 3) {
    unittest.expect(o.cacheHit, unittest.isTrue);
    unittest.expect(o.referer, unittest.equals('foo'));
    unittest.expect(o.remoteIp, unittest.equals('foo'));
    unittest.expect(o.requestMethod, unittest.equals('foo'));
    unittest.expect(o.requestSize, unittest.equals('foo'));
    unittest.expect(o.requestUrl, unittest.equals('foo'));
    unittest.expect(o.responseSize, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals(42));
    unittest.expect(o.userAgent, unittest.equals('foo'));
    unittest.expect(o.validatedWithOriginServer, unittest.isTrue);
  }
  buildCounterHttpRequest--;
}

buildUnnamed2715() {
  var o = new core.List<api.LogMetric>();
  o.add(buildLogMetric());
  o.add(buildLogMetric());
  return o;
}

checkUnnamed2715(core.List<api.LogMetric> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLogMetric(o[0]);
  checkLogMetric(o[1]);
}

core.int buildCounterListLogMetricsResponse = 0;
buildListLogMetricsResponse() {
  var o = new api.ListLogMetricsResponse();
  buildCounterListLogMetricsResponse++;
  if (buildCounterListLogMetricsResponse < 3) {
    o.metrics = buildUnnamed2715();
    o.nextPageToken = "foo";
  }
  buildCounterListLogMetricsResponse--;
  return o;
}

checkListLogMetricsResponse(api.ListLogMetricsResponse o) {
  buildCounterListLogMetricsResponse++;
  if (buildCounterListLogMetricsResponse < 3) {
    checkUnnamed2715(o.metrics);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListLogMetricsResponse--;
}

buildUnnamed2716() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2716(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListLogServiceIndexesResponse = 0;
buildListLogServiceIndexesResponse() {
  var o = new api.ListLogServiceIndexesResponse();
  buildCounterListLogServiceIndexesResponse++;
  if (buildCounterListLogServiceIndexesResponse < 3) {
    o.nextPageToken = "foo";
    o.serviceIndexPrefixes = buildUnnamed2716();
  }
  buildCounterListLogServiceIndexesResponse--;
  return o;
}

checkListLogServiceIndexesResponse(api.ListLogServiceIndexesResponse o) {
  buildCounterListLogServiceIndexesResponse++;
  if (buildCounterListLogServiceIndexesResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed2716(o.serviceIndexPrefixes);
  }
  buildCounterListLogServiceIndexesResponse--;
}

buildUnnamed2717() {
  var o = new core.List<api.LogSink>();
  o.add(buildLogSink());
  o.add(buildLogSink());
  return o;
}

checkUnnamed2717(core.List<api.LogSink> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLogSink(o[0]);
  checkLogSink(o[1]);
}

core.int buildCounterListLogServiceSinksResponse = 0;
buildListLogServiceSinksResponse() {
  var o = new api.ListLogServiceSinksResponse();
  buildCounterListLogServiceSinksResponse++;
  if (buildCounterListLogServiceSinksResponse < 3) {
    o.sinks = buildUnnamed2717();
  }
  buildCounterListLogServiceSinksResponse--;
  return o;
}

checkListLogServiceSinksResponse(api.ListLogServiceSinksResponse o) {
  buildCounterListLogServiceSinksResponse++;
  if (buildCounterListLogServiceSinksResponse < 3) {
    checkUnnamed2717(o.sinks);
  }
  buildCounterListLogServiceSinksResponse--;
}

buildUnnamed2718() {
  var o = new core.List<api.LogService>();
  o.add(buildLogService());
  o.add(buildLogService());
  return o;
}

checkUnnamed2718(core.List<api.LogService> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLogService(o[0]);
  checkLogService(o[1]);
}

core.int buildCounterListLogServicesResponse = 0;
buildListLogServicesResponse() {
  var o = new api.ListLogServicesResponse();
  buildCounterListLogServicesResponse++;
  if (buildCounterListLogServicesResponse < 3) {
    o.logServices = buildUnnamed2718();
    o.nextPageToken = "foo";
  }
  buildCounterListLogServicesResponse--;
  return o;
}

checkListLogServicesResponse(api.ListLogServicesResponse o) {
  buildCounterListLogServicesResponse++;
  if (buildCounterListLogServicesResponse < 3) {
    checkUnnamed2718(o.logServices);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListLogServicesResponse--;
}

buildUnnamed2719() {
  var o = new core.List<api.LogSink>();
  o.add(buildLogSink());
  o.add(buildLogSink());
  return o;
}

checkUnnamed2719(core.List<api.LogSink> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLogSink(o[0]);
  checkLogSink(o[1]);
}

core.int buildCounterListLogSinksResponse = 0;
buildListLogSinksResponse() {
  var o = new api.ListLogSinksResponse();
  buildCounterListLogSinksResponse++;
  if (buildCounterListLogSinksResponse < 3) {
    o.sinks = buildUnnamed2719();
  }
  buildCounterListLogSinksResponse--;
  return o;
}

checkListLogSinksResponse(api.ListLogSinksResponse o) {
  buildCounterListLogSinksResponse++;
  if (buildCounterListLogSinksResponse < 3) {
    checkUnnamed2719(o.sinks);
  }
  buildCounterListLogSinksResponse--;
}

buildUnnamed2720() {
  var o = new core.List<api.Log>();
  o.add(buildLog());
  o.add(buildLog());
  return o;
}

checkUnnamed2720(core.List<api.Log> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLog(o[0]);
  checkLog(o[1]);
}

core.int buildCounterListLogsResponse = 0;
buildListLogsResponse() {
  var o = new api.ListLogsResponse();
  buildCounterListLogsResponse++;
  if (buildCounterListLogsResponse < 3) {
    o.logs = buildUnnamed2720();
    o.nextPageToken = "foo";
  }
  buildCounterListLogsResponse--;
  return o;
}

checkListLogsResponse(api.ListLogsResponse o) {
  buildCounterListLogsResponse++;
  if (buildCounterListLogsResponse < 3) {
    checkUnnamed2720(o.logs);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListLogsResponse--;
}

buildUnnamed2721() {
  var o = new core.List<api.LogSink>();
  o.add(buildLogSink());
  o.add(buildLogSink());
  return o;
}

checkUnnamed2721(core.List<api.LogSink> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLogSink(o[0]);
  checkLogSink(o[1]);
}

core.int buildCounterListSinksResponse = 0;
buildListSinksResponse() {
  var o = new api.ListSinksResponse();
  buildCounterListSinksResponse++;
  if (buildCounterListSinksResponse < 3) {
    o.sinks = buildUnnamed2721();
  }
  buildCounterListSinksResponse--;
  return o;
}

checkListSinksResponse(api.ListSinksResponse o) {
  buildCounterListSinksResponse++;
  if (buildCounterListSinksResponse < 3) {
    checkUnnamed2721(o.sinks);
  }
  buildCounterListSinksResponse--;
}

core.int buildCounterLog = 0;
buildLog() {
  var o = new api.Log();
  buildCounterLog++;
  if (buildCounterLog < 3) {
    o.displayName = "foo";
    o.name = "foo";
    o.payloadType = "foo";
  }
  buildCounterLog--;
  return o;
}

checkLog(api.Log o) {
  buildCounterLog++;
  if (buildCounterLog < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.payloadType, unittest.equals('foo'));
  }
  buildCounterLog--;
}

buildUnnamed2722() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  o["y"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  return o;
}

checkUnnamed2722(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o["x"]) as core.Map; unittest.expect(casted1, unittest.hasLength(3)); unittest.expect(casted1["list"], unittest.equals([1, 2, 3])); unittest.expect(casted1["bool"], unittest.equals(true)); unittest.expect(casted1["string"], unittest.equals('foo')); 
  var casted2 = (o["y"]) as core.Map; unittest.expect(casted2, unittest.hasLength(3)); unittest.expect(casted2["list"], unittest.equals([1, 2, 3])); unittest.expect(casted2["bool"], unittest.equals(true)); unittest.expect(casted2["string"], unittest.equals('foo')); 
}

buildUnnamed2723() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  o["y"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  return o;
}

checkUnnamed2723(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o["x"]) as core.Map; unittest.expect(casted3, unittest.hasLength(3)); unittest.expect(casted3["list"], unittest.equals([1, 2, 3])); unittest.expect(casted3["bool"], unittest.equals(true)); unittest.expect(casted3["string"], unittest.equals('foo')); 
  var casted4 = (o["y"]) as core.Map; unittest.expect(casted4, unittest.hasLength(3)); unittest.expect(casted4["list"], unittest.equals([1, 2, 3])); unittest.expect(casted4["bool"], unittest.equals(true)); unittest.expect(casted4["string"], unittest.equals('foo')); 
}

core.int buildCounterLogEntry = 0;
buildLogEntry() {
  var o = new api.LogEntry();
  buildCounterLogEntry++;
  if (buildCounterLogEntry < 3) {
    o.httpRequest = buildHttpRequest();
    o.insertId = "foo";
    o.log = "foo";
    o.metadata = buildLogEntryMetadata();
    o.protoPayload = buildUnnamed2722();
    o.structPayload = buildUnnamed2723();
    o.textPayload = "foo";
  }
  buildCounterLogEntry--;
  return o;
}

checkLogEntry(api.LogEntry o) {
  buildCounterLogEntry++;
  if (buildCounterLogEntry < 3) {
    checkHttpRequest(o.httpRequest);
    unittest.expect(o.insertId, unittest.equals('foo'));
    unittest.expect(o.log, unittest.equals('foo'));
    checkLogEntryMetadata(o.metadata);
    checkUnnamed2722(o.protoPayload);
    checkUnnamed2723(o.structPayload);
    unittest.expect(o.textPayload, unittest.equals('foo'));
  }
  buildCounterLogEntry--;
}

buildUnnamed2724() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed2724(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterLogEntryMetadata = 0;
buildLogEntryMetadata() {
  var o = new api.LogEntryMetadata();
  buildCounterLogEntryMetadata++;
  if (buildCounterLogEntryMetadata < 3) {
    o.labels = buildUnnamed2724();
    o.projectId = "foo";
    o.region = "foo";
    o.serviceName = "foo";
    o.severity = "foo";
    o.timestamp = "foo";
    o.userId = "foo";
    o.zone = "foo";
  }
  buildCounterLogEntryMetadata--;
  return o;
}

checkLogEntryMetadata(api.LogEntryMetadata o) {
  buildCounterLogEntryMetadata++;
  if (buildCounterLogEntryMetadata < 3) {
    checkUnnamed2724(o.labels);
    unittest.expect(o.projectId, unittest.equals('foo'));
    unittest.expect(o.region, unittest.equals('foo'));
    unittest.expect(o.serviceName, unittest.equals('foo'));
    unittest.expect(o.severity, unittest.equals('foo'));
    unittest.expect(o.timestamp, unittest.equals('foo'));
    unittest.expect(o.userId, unittest.equals('foo'));
    unittest.expect(o.zone, unittest.equals('foo'));
  }
  buildCounterLogEntryMetadata--;
}

core.int buildCounterLogError = 0;
buildLogError() {
  var o = new api.LogError();
  buildCounterLogError++;
  if (buildCounterLogError < 3) {
    o.resource = "foo";
    o.status = buildStatus();
    o.timeNanos = "foo";
  }
  buildCounterLogError--;
  return o;
}

checkLogError(api.LogError o) {
  buildCounterLogError++;
  if (buildCounterLogError < 3) {
    unittest.expect(o.resource, unittest.equals('foo'));
    checkStatus(o.status);
    unittest.expect(o.timeNanos, unittest.equals('foo'));
  }
  buildCounterLogError--;
}

core.int buildCounterLogLine = 0;
buildLogLine() {
  var o = new api.LogLine();
  buildCounterLogLine++;
  if (buildCounterLogLine < 3) {
    o.logMessage = "foo";
    o.severity = "foo";
    o.sourceLocation = buildSourceLocation();
    o.time = "foo";
  }
  buildCounterLogLine--;
  return o;
}

checkLogLine(api.LogLine o) {
  buildCounterLogLine++;
  if (buildCounterLogLine < 3) {
    unittest.expect(o.logMessage, unittest.equals('foo'));
    unittest.expect(o.severity, unittest.equals('foo'));
    checkSourceLocation(o.sourceLocation);
    unittest.expect(o.time, unittest.equals('foo'));
  }
  buildCounterLogLine--;
}

core.int buildCounterLogMetric = 0;
buildLogMetric() {
  var o = new api.LogMetric();
  buildCounterLogMetric++;
  if (buildCounterLogMetric < 3) {
    o.description = "foo";
    o.filter = "foo";
    o.name = "foo";
  }
  buildCounterLogMetric--;
  return o;
}

checkLogMetric(api.LogMetric o) {
  buildCounterLogMetric++;
  if (buildCounterLogMetric < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.filter, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterLogMetric--;
}

buildUnnamed2725() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2725(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterLogService = 0;
buildLogService() {
  var o = new api.LogService();
  buildCounterLogService++;
  if (buildCounterLogService < 3) {
    o.indexKeys = buildUnnamed2725();
    o.name = "foo";
  }
  buildCounterLogService--;
  return o;
}

checkLogService(api.LogService o) {
  buildCounterLogService++;
  if (buildCounterLogService < 3) {
    checkUnnamed2725(o.indexKeys);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterLogService--;
}

buildUnnamed2726() {
  var o = new core.List<api.LogError>();
  o.add(buildLogError());
  o.add(buildLogError());
  return o;
}

checkUnnamed2726(core.List<api.LogError> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLogError(o[0]);
  checkLogError(o[1]);
}

core.int buildCounterLogSink = 0;
buildLogSink() {
  var o = new api.LogSink();
  buildCounterLogSink++;
  if (buildCounterLogSink < 3) {
    o.destination = "foo";
    o.errors = buildUnnamed2726();
    o.filter = "foo";
    o.name = "foo";
  }
  buildCounterLogSink--;
  return o;
}

checkLogSink(api.LogSink o) {
  buildCounterLogSink++;
  if (buildCounterLogSink < 3) {
    unittest.expect(o.destination, unittest.equals('foo'));
    checkUnnamed2726(o.errors);
    unittest.expect(o.filter, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterLogSink--;
}

buildUnnamed2727() {
  var o = new core.List<api.LogLine>();
  o.add(buildLogLine());
  o.add(buildLogLine());
  return o;
}

checkUnnamed2727(core.List<api.LogLine> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLogLine(o[0]);
  checkLogLine(o[1]);
}

buildUnnamed2728() {
  var o = new core.List<api.SourceReference>();
  o.add(buildSourceReference());
  o.add(buildSourceReference());
  return o;
}

checkUnnamed2728(core.List<api.SourceReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSourceReference(o[0]);
  checkSourceReference(o[1]);
}

core.int buildCounterRequestLog = 0;
buildRequestLog() {
  var o = new api.RequestLog();
  buildCounterRequestLog++;
  if (buildCounterRequestLog < 3) {
    o.appEngineRelease = "foo";
    o.appId = "foo";
    o.cost = 42.0;
    o.endTime = "foo";
    o.finished = true;
    o.host = "foo";
    o.httpVersion = "foo";
    o.instanceId = "foo";
    o.instanceIndex = 42;
    o.ip = "foo";
    o.latency = "foo";
    o.line = buildUnnamed2727();
    o.megaCycles = "foo";
    o.method = "foo";
    o.moduleId = "foo";
    o.nickname = "foo";
    o.pendingTime = "foo";
    o.referrer = "foo";
    o.requestId = "foo";
    o.resource = "foo";
    o.responseSize = "foo";
    o.sourceReference = buildUnnamed2728();
    o.startTime = "foo";
    o.status = 42;
    o.taskName = "foo";
    o.taskQueueName = "foo";
    o.traceId = "foo";
    o.urlMapEntry = "foo";
    o.userAgent = "foo";
    o.versionId = "foo";
    o.wasLoadingRequest = true;
  }
  buildCounterRequestLog--;
  return o;
}

checkRequestLog(api.RequestLog o) {
  buildCounterRequestLog++;
  if (buildCounterRequestLog < 3) {
    unittest.expect(o.appEngineRelease, unittest.equals('foo'));
    unittest.expect(o.appId, unittest.equals('foo'));
    unittest.expect(o.cost, unittest.equals(42.0));
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.finished, unittest.isTrue);
    unittest.expect(o.host, unittest.equals('foo'));
    unittest.expect(o.httpVersion, unittest.equals('foo'));
    unittest.expect(o.instanceId, unittest.equals('foo'));
    unittest.expect(o.instanceIndex, unittest.equals(42));
    unittest.expect(o.ip, unittest.equals('foo'));
    unittest.expect(o.latency, unittest.equals('foo'));
    checkUnnamed2727(o.line);
    unittest.expect(o.megaCycles, unittest.equals('foo'));
    unittest.expect(o.method, unittest.equals('foo'));
    unittest.expect(o.moduleId, unittest.equals('foo'));
    unittest.expect(o.nickname, unittest.equals('foo'));
    unittest.expect(o.pendingTime, unittest.equals('foo'));
    unittest.expect(o.referrer, unittest.equals('foo'));
    unittest.expect(o.requestId, unittest.equals('foo'));
    unittest.expect(o.resource, unittest.equals('foo'));
    unittest.expect(o.responseSize, unittest.equals('foo'));
    checkUnnamed2728(o.sourceReference);
    unittest.expect(o.startTime, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals(42));
    unittest.expect(o.taskName, unittest.equals('foo'));
    unittest.expect(o.taskQueueName, unittest.equals('foo'));
    unittest.expect(o.traceId, unittest.equals('foo'));
    unittest.expect(o.urlMapEntry, unittest.equals('foo'));
    unittest.expect(o.userAgent, unittest.equals('foo'));
    unittest.expect(o.versionId, unittest.equals('foo'));
    unittest.expect(o.wasLoadingRequest, unittest.isTrue);
  }
  buildCounterRequestLog--;
}

core.int buildCounterSourceLocation = 0;
buildSourceLocation() {
  var o = new api.SourceLocation();
  buildCounterSourceLocation++;
  if (buildCounterSourceLocation < 3) {
    o.file = "foo";
    o.functionName = "foo";
    o.line = "foo";
  }
  buildCounterSourceLocation--;
  return o;
}

checkSourceLocation(api.SourceLocation o) {
  buildCounterSourceLocation++;
  if (buildCounterSourceLocation < 3) {
    unittest.expect(o.file, unittest.equals('foo'));
    unittest.expect(o.functionName, unittest.equals('foo'));
    unittest.expect(o.line, unittest.equals('foo'));
  }
  buildCounterSourceLocation--;
}

core.int buildCounterSourceReference = 0;
buildSourceReference() {
  var o = new api.SourceReference();
  buildCounterSourceReference++;
  if (buildCounterSourceReference < 3) {
    o.repository = "foo";
    o.revisionId = "foo";
  }
  buildCounterSourceReference--;
  return o;
}

checkSourceReference(api.SourceReference o) {
  buildCounterSourceReference++;
  if (buildCounterSourceReference < 3) {
    unittest.expect(o.repository, unittest.equals('foo'));
    unittest.expect(o.revisionId, unittest.equals('foo'));
  }
  buildCounterSourceReference--;
}

buildUnnamed2729() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  o["y"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  return o;
}

checkUnnamed2729(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o["x"]) as core.Map; unittest.expect(casted5, unittest.hasLength(3)); unittest.expect(casted5["list"], unittest.equals([1, 2, 3])); unittest.expect(casted5["bool"], unittest.equals(true)); unittest.expect(casted5["string"], unittest.equals('foo')); 
  var casted6 = (o["y"]) as core.Map; unittest.expect(casted6, unittest.hasLength(3)); unittest.expect(casted6["list"], unittest.equals([1, 2, 3])); unittest.expect(casted6["bool"], unittest.equals(true)); unittest.expect(casted6["string"], unittest.equals('foo')); 
}

buildUnnamed2730() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed2729());
  o.add(buildUnnamed2729());
  return o;
}

checkUnnamed2730(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed2729(o[0]);
  checkUnnamed2729(o[1]);
}

core.int buildCounterStatus = 0;
buildStatus() {
  var o = new api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed2730();
    o.message = "foo";
  }
  buildCounterStatus--;
  return o;
}

checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed2730(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

buildUnnamed2731() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed2731(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed2732() {
  var o = new core.List<api.LogEntry>();
  o.add(buildLogEntry());
  o.add(buildLogEntry());
  return o;
}

checkUnnamed2732(core.List<api.LogEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLogEntry(o[0]);
  checkLogEntry(o[1]);
}

core.int buildCounterWriteLogEntriesRequest = 0;
buildWriteLogEntriesRequest() {
  var o = new api.WriteLogEntriesRequest();
  buildCounterWriteLogEntriesRequest++;
  if (buildCounterWriteLogEntriesRequest < 3) {
    o.commonLabels = buildUnnamed2731();
    o.entries = buildUnnamed2732();
  }
  buildCounterWriteLogEntriesRequest--;
  return o;
}

checkWriteLogEntriesRequest(api.WriteLogEntriesRequest o) {
  buildCounterWriteLogEntriesRequest++;
  if (buildCounterWriteLogEntriesRequest < 3) {
    checkUnnamed2731(o.commonLabels);
    checkUnnamed2732(o.entries);
  }
  buildCounterWriteLogEntriesRequest--;
}

core.int buildCounterWriteLogEntriesResponse = 0;
buildWriteLogEntriesResponse() {
  var o = new api.WriteLogEntriesResponse();
  buildCounterWriteLogEntriesResponse++;
  if (buildCounterWriteLogEntriesResponse < 3) {
  }
  buildCounterWriteLogEntriesResponse--;
  return o;
}

checkWriteLogEntriesResponse(api.WriteLogEntriesResponse o) {
  buildCounterWriteLogEntriesResponse++;
  if (buildCounterWriteLogEntriesResponse < 3) {
  }
  buildCounterWriteLogEntriesResponse--;
}


main() {
  unittest.group("obj-schema-Empty", () {
    unittest.test("to-json--from-json", () {
      var o = buildEmpty();
      var od = new api.Empty.fromJson(o.toJson());
      checkEmpty(od);
    });
  });


  unittest.group("obj-schema-HttpRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildHttpRequest();
      var od = new api.HttpRequest.fromJson(o.toJson());
      checkHttpRequest(od);
    });
  });


  unittest.group("obj-schema-ListLogMetricsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListLogMetricsResponse();
      var od = new api.ListLogMetricsResponse.fromJson(o.toJson());
      checkListLogMetricsResponse(od);
    });
  });


  unittest.group("obj-schema-ListLogServiceIndexesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListLogServiceIndexesResponse();
      var od = new api.ListLogServiceIndexesResponse.fromJson(o.toJson());
      checkListLogServiceIndexesResponse(od);
    });
  });


  unittest.group("obj-schema-ListLogServiceSinksResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListLogServiceSinksResponse();
      var od = new api.ListLogServiceSinksResponse.fromJson(o.toJson());
      checkListLogServiceSinksResponse(od);
    });
  });


  unittest.group("obj-schema-ListLogServicesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListLogServicesResponse();
      var od = new api.ListLogServicesResponse.fromJson(o.toJson());
      checkListLogServicesResponse(od);
    });
  });


  unittest.group("obj-schema-ListLogSinksResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListLogSinksResponse();
      var od = new api.ListLogSinksResponse.fromJson(o.toJson());
      checkListLogSinksResponse(od);
    });
  });


  unittest.group("obj-schema-ListLogsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListLogsResponse();
      var od = new api.ListLogsResponse.fromJson(o.toJson());
      checkListLogsResponse(od);
    });
  });


  unittest.group("obj-schema-ListSinksResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListSinksResponse();
      var od = new api.ListSinksResponse.fromJson(o.toJson());
      checkListSinksResponse(od);
    });
  });


  unittest.group("obj-schema-Log", () {
    unittest.test("to-json--from-json", () {
      var o = buildLog();
      var od = new api.Log.fromJson(o.toJson());
      checkLog(od);
    });
  });


  unittest.group("obj-schema-LogEntry", () {
    unittest.test("to-json--from-json", () {
      var o = buildLogEntry();
      var od = new api.LogEntry.fromJson(o.toJson());
      checkLogEntry(od);
    });
  });


  unittest.group("obj-schema-LogEntryMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildLogEntryMetadata();
      var od = new api.LogEntryMetadata.fromJson(o.toJson());
      checkLogEntryMetadata(od);
    });
  });


  unittest.group("obj-schema-LogError", () {
    unittest.test("to-json--from-json", () {
      var o = buildLogError();
      var od = new api.LogError.fromJson(o.toJson());
      checkLogError(od);
    });
  });


  unittest.group("obj-schema-LogLine", () {
    unittest.test("to-json--from-json", () {
      var o = buildLogLine();
      var od = new api.LogLine.fromJson(o.toJson());
      checkLogLine(od);
    });
  });


  unittest.group("obj-schema-LogMetric", () {
    unittest.test("to-json--from-json", () {
      var o = buildLogMetric();
      var od = new api.LogMetric.fromJson(o.toJson());
      checkLogMetric(od);
    });
  });


  unittest.group("obj-schema-LogService", () {
    unittest.test("to-json--from-json", () {
      var o = buildLogService();
      var od = new api.LogService.fromJson(o.toJson());
      checkLogService(od);
    });
  });


  unittest.group("obj-schema-LogSink", () {
    unittest.test("to-json--from-json", () {
      var o = buildLogSink();
      var od = new api.LogSink.fromJson(o.toJson());
      checkLogSink(od);
    });
  });


  unittest.group("obj-schema-RequestLog", () {
    unittest.test("to-json--from-json", () {
      var o = buildRequestLog();
      var od = new api.RequestLog.fromJson(o.toJson());
      checkRequestLog(od);
    });
  });


  unittest.group("obj-schema-SourceLocation", () {
    unittest.test("to-json--from-json", () {
      var o = buildSourceLocation();
      var od = new api.SourceLocation.fromJson(o.toJson());
      checkSourceLocation(od);
    });
  });


  unittest.group("obj-schema-SourceReference", () {
    unittest.test("to-json--from-json", () {
      var o = buildSourceReference();
      var od = new api.SourceReference.fromJson(o.toJson());
      checkSourceReference(od);
    });
  });


  unittest.group("obj-schema-Status", () {
    unittest.test("to-json--from-json", () {
      var o = buildStatus();
      var od = new api.Status.fromJson(o.toJson());
      checkStatus(od);
    });
  });


  unittest.group("obj-schema-WriteLogEntriesRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildWriteLogEntriesRequest();
      var od = new api.WriteLogEntriesRequest.fromJson(o.toJson());
      checkWriteLogEntriesRequest(od);
    });
  });


  unittest.group("obj-schema-WriteLogEntriesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildWriteLogEntriesResponse();
      var od = new api.WriteLogEntriesResponse.fromJson(o.toJson());
      checkWriteLogEntriesResponse(od);
    });
  });


  unittest.group("resource-ProjectsLogServicesResourceApi", () {
    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.ProjectsLogServicesResourceApi res = new api.LoggingApi(mock).projects.logServices;
      var arg_projectsId = "foo";
      var arg_pageSize = 42;
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v1beta3/projects/"));
        pathOffset += 17;
        index = path.indexOf("/logServices", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("/logServices"));
        pathOffset += 12;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(core.int.parse(queryMap["pageSize"].first), unittest.equals(arg_pageSize));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListLogServicesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_projectsId, pageSize: arg_pageSize, pageToken: arg_pageToken).then(unittest.expectAsync(((api.ListLogServicesResponse response) {
        checkListLogServicesResponse(response);
      })));
    });

  });


  unittest.group("resource-ProjectsLogServicesIndexesResourceApi", () {
    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.ProjectsLogServicesIndexesResourceApi res = new api.LoggingApi(mock).projects.logServices.indexes;
      var arg_projectsId = "foo";
      var arg_logServicesId = "foo";
      var arg_indexPrefix = "foo";
      var arg_depth = 42;
      var arg_pageSize = 42;
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v1beta3/projects/"));
        pathOffset += 17;
        index = path.indexOf("/logServices/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("/logServices/"));
        pathOffset += 13;
        index = path.indexOf("/indexes", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_logServicesId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("/indexes"));
        pathOffset += 8;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["indexPrefix"].first, unittest.equals(arg_indexPrefix));
        unittest.expect(core.int.parse(queryMap["depth"].first), unittest.equals(arg_depth));
        unittest.expect(core.int.parse(queryMap["pageSize"].first), unittest.equals(arg_pageSize));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListLogServiceIndexesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_projectsId, arg_logServicesId, indexPrefix: arg_indexPrefix, depth: arg_depth, pageSize: arg_pageSize, pageToken: arg_pageToken).then(unittest.expectAsync(((api.ListLogServiceIndexesResponse response) {
        checkListLogServiceIndexesResponse(response);
      })));
    });

  });


  unittest.group("resource-ProjectsLogServicesSinksResourceApi", () {
    unittest.test("method--create", () {

      var mock = new HttpServerMock();
      api.ProjectsLogServicesSinksResourceApi res = new api.LoggingApi(mock).projects.logServices.sinks;
      var arg_request = buildLogSink();
      var arg_projectsId = "foo";
      var arg_logServicesId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.LogSink.fromJson(json);
        checkLogSink(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v1beta3/projects/"));
        pathOffset += 17;
        index = path.indexOf("/logServices/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("/logServices/"));
        pathOffset += 13;
        index = path.indexOf("/sinks", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_logServicesId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("/sinks"));
        pathOffset += 6;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildLogSink());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.create(arg_request, arg_projectsId, arg_logServicesId).then(unittest.expectAsync(((api.LogSink response) {
        checkLogSink(response);
      })));
    });

    unittest.test("method--delete", () {

      var mock = new HttpServerMock();
      api.ProjectsLogServicesSinksResourceApi res = new api.LoggingApi(mock).projects.logServices.sinks;
      var arg_projectsId = "foo";
      var arg_logServicesId = "foo";
      var arg_sinksId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v1beta3/projects/"));
        pathOffset += 17;
        index = path.indexOf("/logServices/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("/logServices/"));
        pathOffset += 13;
        index = path.indexOf("/sinks/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_logServicesId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("/sinks/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_sinksId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.delete(arg_projectsId, arg_logServicesId, arg_sinksId).then(unittest.expectAsync(((api.Empty response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.ProjectsLogServicesSinksResourceApi res = new api.LoggingApi(mock).projects.logServices.sinks;
      var arg_projectsId = "foo";
      var arg_logServicesId = "foo";
      var arg_sinksId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v1beta3/projects/"));
        pathOffset += 17;
        index = path.indexOf("/logServices/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("/logServices/"));
        pathOffset += 13;
        index = path.indexOf("/sinks/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_logServicesId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("/sinks/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_sinksId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildLogSink());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_projectsId, arg_logServicesId, arg_sinksId).then(unittest.expectAsync(((api.LogSink response) {
        checkLogSink(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.ProjectsLogServicesSinksResourceApi res = new api.LoggingApi(mock).projects.logServices.sinks;
      var arg_projectsId = "foo";
      var arg_logServicesId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v1beta3/projects/"));
        pathOffset += 17;
        index = path.indexOf("/logServices/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("/logServices/"));
        pathOffset += 13;
        index = path.indexOf("/sinks", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_logServicesId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("/sinks"));
        pathOffset += 6;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListLogServiceSinksResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_projectsId, arg_logServicesId).then(unittest.expectAsync(((api.ListLogServiceSinksResponse response) {
        checkListLogServiceSinksResponse(response);
      })));
    });

    unittest.test("method--update", () {

      var mock = new HttpServerMock();
      api.ProjectsLogServicesSinksResourceApi res = new api.LoggingApi(mock).projects.logServices.sinks;
      var arg_request = buildLogSink();
      var arg_projectsId = "foo";
      var arg_logServicesId = "foo";
      var arg_sinksId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.LogSink.fromJson(json);
        checkLogSink(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v1beta3/projects/"));
        pathOffset += 17;
        index = path.indexOf("/logServices/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("/logServices/"));
        pathOffset += 13;
        index = path.indexOf("/sinks/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_logServicesId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("/sinks/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_sinksId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildLogSink());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.update(arg_request, arg_projectsId, arg_logServicesId, arg_sinksId).then(unittest.expectAsync(((api.LogSink response) {
        checkLogSink(response);
      })));
    });

  });


  unittest.group("resource-ProjectsLogsResourceApi", () {
    unittest.test("method--delete", () {

      var mock = new HttpServerMock();
      api.ProjectsLogsResourceApi res = new api.LoggingApi(mock).projects.logs;
      var arg_projectsId = "foo";
      var arg_logsId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v1beta3/projects/"));
        pathOffset += 17;
        index = path.indexOf("/logs/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("/logs/"));
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_logsId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.delete(arg_projectsId, arg_logsId).then(unittest.expectAsync(((api.Empty response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.ProjectsLogsResourceApi res = new api.LoggingApi(mock).projects.logs;
      var arg_projectsId = "foo";
      var arg_serviceName = "foo";
      var arg_serviceIndexPrefix = "foo";
      var arg_pageSize = 42;
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v1beta3/projects/"));
        pathOffset += 17;
        index = path.indexOf("/logs", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 5), unittest.equals("/logs"));
        pathOffset += 5;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["serviceName"].first, unittest.equals(arg_serviceName));
        unittest.expect(queryMap["serviceIndexPrefix"].first, unittest.equals(arg_serviceIndexPrefix));
        unittest.expect(core.int.parse(queryMap["pageSize"].first), unittest.equals(arg_pageSize));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListLogsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_projectsId, serviceName: arg_serviceName, serviceIndexPrefix: arg_serviceIndexPrefix, pageSize: arg_pageSize, pageToken: arg_pageToken).then(unittest.expectAsync(((api.ListLogsResponse response) {
        checkListLogsResponse(response);
      })));
    });

  });


  unittest.group("resource-ProjectsLogsEntriesResourceApi", () {
    unittest.test("method--write", () {

      var mock = new HttpServerMock();
      api.ProjectsLogsEntriesResourceApi res = new api.LoggingApi(mock).projects.logs.entries;
      var arg_request = buildWriteLogEntriesRequest();
      var arg_projectsId = "foo";
      var arg_logsId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.WriteLogEntriesRequest.fromJson(json);
        checkWriteLogEntriesRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v1beta3/projects/"));
        pathOffset += 17;
        index = path.indexOf("/logs/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("/logs/"));
        pathOffset += 6;
        index = path.indexOf("/entries:write", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_logsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 14), unittest.equals("/entries:write"));
        pathOffset += 14;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildWriteLogEntriesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.write(arg_request, arg_projectsId, arg_logsId).then(unittest.expectAsync(((api.WriteLogEntriesResponse response) {
        checkWriteLogEntriesResponse(response);
      })));
    });

  });


  unittest.group("resource-ProjectsLogsSinksResourceApi", () {
    unittest.test("method--create", () {

      var mock = new HttpServerMock();
      api.ProjectsLogsSinksResourceApi res = new api.LoggingApi(mock).projects.logs.sinks;
      var arg_request = buildLogSink();
      var arg_projectsId = "foo";
      var arg_logsId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.LogSink.fromJson(json);
        checkLogSink(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v1beta3/projects/"));
        pathOffset += 17;
        index = path.indexOf("/logs/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("/logs/"));
        pathOffset += 6;
        index = path.indexOf("/sinks", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_logsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("/sinks"));
        pathOffset += 6;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildLogSink());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.create(arg_request, arg_projectsId, arg_logsId).then(unittest.expectAsync(((api.LogSink response) {
        checkLogSink(response);
      })));
    });

    unittest.test("method--delete", () {

      var mock = new HttpServerMock();
      api.ProjectsLogsSinksResourceApi res = new api.LoggingApi(mock).projects.logs.sinks;
      var arg_projectsId = "foo";
      var arg_logsId = "foo";
      var arg_sinksId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v1beta3/projects/"));
        pathOffset += 17;
        index = path.indexOf("/logs/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("/logs/"));
        pathOffset += 6;
        index = path.indexOf("/sinks/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_logsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("/sinks/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_sinksId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.delete(arg_projectsId, arg_logsId, arg_sinksId).then(unittest.expectAsync(((api.Empty response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.ProjectsLogsSinksResourceApi res = new api.LoggingApi(mock).projects.logs.sinks;
      var arg_projectsId = "foo";
      var arg_logsId = "foo";
      var arg_sinksId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v1beta3/projects/"));
        pathOffset += 17;
        index = path.indexOf("/logs/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("/logs/"));
        pathOffset += 6;
        index = path.indexOf("/sinks/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_logsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("/sinks/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_sinksId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildLogSink());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_projectsId, arg_logsId, arg_sinksId).then(unittest.expectAsync(((api.LogSink response) {
        checkLogSink(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.ProjectsLogsSinksResourceApi res = new api.LoggingApi(mock).projects.logs.sinks;
      var arg_projectsId = "foo";
      var arg_logsId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v1beta3/projects/"));
        pathOffset += 17;
        index = path.indexOf("/logs/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("/logs/"));
        pathOffset += 6;
        index = path.indexOf("/sinks", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_logsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("/sinks"));
        pathOffset += 6;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListLogSinksResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_projectsId, arg_logsId).then(unittest.expectAsync(((api.ListLogSinksResponse response) {
        checkListLogSinksResponse(response);
      })));
    });

    unittest.test("method--update", () {

      var mock = new HttpServerMock();
      api.ProjectsLogsSinksResourceApi res = new api.LoggingApi(mock).projects.logs.sinks;
      var arg_request = buildLogSink();
      var arg_projectsId = "foo";
      var arg_logsId = "foo";
      var arg_sinksId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.LogSink.fromJson(json);
        checkLogSink(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v1beta3/projects/"));
        pathOffset += 17;
        index = path.indexOf("/logs/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("/logs/"));
        pathOffset += 6;
        index = path.indexOf("/sinks/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_logsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("/sinks/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_sinksId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildLogSink());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.update(arg_request, arg_projectsId, arg_logsId, arg_sinksId).then(unittest.expectAsync(((api.LogSink response) {
        checkLogSink(response);
      })));
    });

  });


  unittest.group("resource-ProjectsMetricsResourceApi", () {
    unittest.test("method--create", () {

      var mock = new HttpServerMock();
      api.ProjectsMetricsResourceApi res = new api.LoggingApi(mock).projects.metrics;
      var arg_request = buildLogMetric();
      var arg_projectsId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.LogMetric.fromJson(json);
        checkLogMetric(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v1beta3/projects/"));
        pathOffset += 17;
        index = path.indexOf("/metrics", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("/metrics"));
        pathOffset += 8;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildLogMetric());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.create(arg_request, arg_projectsId).then(unittest.expectAsync(((api.LogMetric response) {
        checkLogMetric(response);
      })));
    });

    unittest.test("method--delete", () {

      var mock = new HttpServerMock();
      api.ProjectsMetricsResourceApi res = new api.LoggingApi(mock).projects.metrics;
      var arg_projectsId = "foo";
      var arg_metricsId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v1beta3/projects/"));
        pathOffset += 17;
        index = path.indexOf("/metrics/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("/metrics/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_metricsId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.delete(arg_projectsId, arg_metricsId).then(unittest.expectAsync(((api.Empty response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.ProjectsMetricsResourceApi res = new api.LoggingApi(mock).projects.metrics;
      var arg_projectsId = "foo";
      var arg_metricsId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v1beta3/projects/"));
        pathOffset += 17;
        index = path.indexOf("/metrics/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("/metrics/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_metricsId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildLogMetric());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_projectsId, arg_metricsId).then(unittest.expectAsync(((api.LogMetric response) {
        checkLogMetric(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.ProjectsMetricsResourceApi res = new api.LoggingApi(mock).projects.metrics;
      var arg_projectsId = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v1beta3/projects/"));
        pathOffset += 17;
        index = path.indexOf("/metrics", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("/metrics"));
        pathOffset += 8;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first), unittest.equals(arg_pageSize));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListLogMetricsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_projectsId, pageToken: arg_pageToken, pageSize: arg_pageSize).then(unittest.expectAsync(((api.ListLogMetricsResponse response) {
        checkListLogMetricsResponse(response);
      })));
    });

    unittest.test("method--update", () {

      var mock = new HttpServerMock();
      api.ProjectsMetricsResourceApi res = new api.LoggingApi(mock).projects.metrics;
      var arg_request = buildLogMetric();
      var arg_projectsId = "foo";
      var arg_metricsId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.LogMetric.fromJson(json);
        checkLogMetric(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v1beta3/projects/"));
        pathOffset += 17;
        index = path.indexOf("/metrics/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("/metrics/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_metricsId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildLogMetric());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.update(arg_request, arg_projectsId, arg_metricsId).then(unittest.expectAsync(((api.LogMetric response) {
        checkLogMetric(response);
      })));
    });

  });


  unittest.group("resource-ProjectsSinksResourceApi", () {
    unittest.test("method--create", () {

      var mock = new HttpServerMock();
      api.ProjectsSinksResourceApi res = new api.LoggingApi(mock).projects.sinks;
      var arg_request = buildLogSink();
      var arg_projectsId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.LogSink.fromJson(json);
        checkLogSink(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v1beta3/projects/"));
        pathOffset += 17;
        index = path.indexOf("/sinks", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("/sinks"));
        pathOffset += 6;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildLogSink());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.create(arg_request, arg_projectsId).then(unittest.expectAsync(((api.LogSink response) {
        checkLogSink(response);
      })));
    });

    unittest.test("method--delete", () {

      var mock = new HttpServerMock();
      api.ProjectsSinksResourceApi res = new api.LoggingApi(mock).projects.sinks;
      var arg_projectsId = "foo";
      var arg_sinksId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v1beta3/projects/"));
        pathOffset += 17;
        index = path.indexOf("/sinks/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("/sinks/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_sinksId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.delete(arg_projectsId, arg_sinksId).then(unittest.expectAsync(((api.Empty response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.ProjectsSinksResourceApi res = new api.LoggingApi(mock).projects.sinks;
      var arg_projectsId = "foo";
      var arg_sinksId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v1beta3/projects/"));
        pathOffset += 17;
        index = path.indexOf("/sinks/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("/sinks/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_sinksId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildLogSink());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_projectsId, arg_sinksId).then(unittest.expectAsync(((api.LogSink response) {
        checkLogSink(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.ProjectsSinksResourceApi res = new api.LoggingApi(mock).projects.sinks;
      var arg_projectsId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v1beta3/projects/"));
        pathOffset += 17;
        index = path.indexOf("/sinks", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("/sinks"));
        pathOffset += 6;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListSinksResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_projectsId).then(unittest.expectAsync(((api.ListSinksResponse response) {
        checkListSinksResponse(response);
      })));
    });

    unittest.test("method--update", () {

      var mock = new HttpServerMock();
      api.ProjectsSinksResourceApi res = new api.LoggingApi(mock).projects.sinks;
      var arg_request = buildLogSink();
      var arg_projectsId = "foo";
      var arg_sinksId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.LogSink.fromJson(json);
        checkLogSink(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v1beta3/projects/"));
        pathOffset += 17;
        index = path.indexOf("/sinks/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("/sinks/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_sinksId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildLogSink());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.update(arg_request, arg_projectsId, arg_sinksId).then(unittest.expectAsync(((api.LogSink response) {
        checkLogSink(response);
      })));
    });

  });


}

