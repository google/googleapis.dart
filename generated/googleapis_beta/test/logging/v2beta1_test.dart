library googleapis_beta.logging.v2beta1.test;

import "dart:core" as core;
import "dart:collection" as collection;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:http/testing.dart' as http_testing;
import 'package:unittest/unittest.dart' as unittest;

import 'package:googleapis_beta/logging/v2beta1.dart' as api;

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

buildUnnamed2726() {
  var o = new core.List<api.LogLine>();
  o.add(buildLogLine());
  o.add(buildLogLine());
  return o;
}

checkUnnamed2726(core.List<api.LogLine> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLogLine(o[0]);
  checkLogLine(o[1]);
}

buildUnnamed2727() {
  var o = new core.List<api.SourceReference>();
  o.add(buildSourceReference());
  o.add(buildSourceReference());
  return o;
}

checkUnnamed2727(core.List<api.SourceReference> o) {
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
    o.line = buildUnnamed2726();
    o.megaCycles = "foo";
    o.method = "foo";
    o.moduleId = "foo";
    o.nickname = "foo";
    o.pendingTime = "foo";
    o.referrer = "foo";
    o.requestId = "foo";
    o.resource = "foo";
    o.responseSize = "foo";
    o.sourceReference = buildUnnamed2727();
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
    checkUnnamed2726(o.line);
    unittest.expect(o.megaCycles, unittest.equals('foo'));
    unittest.expect(o.method, unittest.equals('foo'));
    unittest.expect(o.moduleId, unittest.equals('foo'));
    unittest.expect(o.nickname, unittest.equals('foo'));
    unittest.expect(o.pendingTime, unittest.equals('foo'));
    unittest.expect(o.referrer, unittest.equals('foo'));
    unittest.expect(o.requestId, unittest.equals('foo'));
    unittest.expect(o.resource, unittest.equals('foo'));
    unittest.expect(o.responseSize, unittest.equals('foo'));
    checkUnnamed2727(o.sourceReference);
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


main() {
  unittest.group("obj-schema-LogLine", () {
    unittest.test("to-json--from-json", () {
      var o = buildLogLine();
      var od = new api.LogLine.fromJson(o.toJson());
      checkLogLine(od);
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


}

