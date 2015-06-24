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

buildUnnamed1625() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1625(core.List<core.String> o) {
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
    o.serviceIndexPrefixes = buildUnnamed1625();
  }
  buildCounterListLogServiceIndexesResponse--;
  return o;
}

checkListLogServiceIndexesResponse(api.ListLogServiceIndexesResponse o) {
  buildCounterListLogServiceIndexesResponse++;
  if (buildCounterListLogServiceIndexesResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed1625(o.serviceIndexPrefixes);
  }
  buildCounterListLogServiceIndexesResponse--;
}

buildUnnamed1626() {
  var o = new core.List<api.LogSink>();
  o.add(buildLogSink());
  o.add(buildLogSink());
  return o;
}

checkUnnamed1626(core.List<api.LogSink> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLogSink(o[0]);
  checkLogSink(o[1]);
}

core.int buildCounterListLogServiceSinksResponse = 0;
buildListLogServiceSinksResponse() {
  var o = new api.ListLogServiceSinksResponse();
  buildCounterListLogServiceSinksResponse++;
  if (buildCounterListLogServiceSinksResponse < 3) {
    o.sinks = buildUnnamed1626();
  }
  buildCounterListLogServiceSinksResponse--;
  return o;
}

checkListLogServiceSinksResponse(api.ListLogServiceSinksResponse o) {
  buildCounterListLogServiceSinksResponse++;
  if (buildCounterListLogServiceSinksResponse < 3) {
    checkUnnamed1626(o.sinks);
  }
  buildCounterListLogServiceSinksResponse--;
}

buildUnnamed1627() {
  var o = new core.List<api.LogService>();
  o.add(buildLogService());
  o.add(buildLogService());
  return o;
}

checkUnnamed1627(core.List<api.LogService> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLogService(o[0]);
  checkLogService(o[1]);
}

core.int buildCounterListLogServicesResponse = 0;
buildListLogServicesResponse() {
  var o = new api.ListLogServicesResponse();
  buildCounterListLogServicesResponse++;
  if (buildCounterListLogServicesResponse < 3) {
    o.logServices = buildUnnamed1627();
    o.nextPageToken = "foo";
  }
  buildCounterListLogServicesResponse--;
  return o;
}

checkListLogServicesResponse(api.ListLogServicesResponse o) {
  buildCounterListLogServicesResponse++;
  if (buildCounterListLogServicesResponse < 3) {
    checkUnnamed1627(o.logServices);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListLogServicesResponse--;
}

buildUnnamed1628() {
  var o = new core.List<api.LogSink>();
  o.add(buildLogSink());
  o.add(buildLogSink());
  return o;
}

checkUnnamed1628(core.List<api.LogSink> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLogSink(o[0]);
  checkLogSink(o[1]);
}

core.int buildCounterListLogSinksResponse = 0;
buildListLogSinksResponse() {
  var o = new api.ListLogSinksResponse();
  buildCounterListLogSinksResponse++;
  if (buildCounterListLogSinksResponse < 3) {
    o.sinks = buildUnnamed1628();
  }
  buildCounterListLogSinksResponse--;
  return o;
}

checkListLogSinksResponse(api.ListLogSinksResponse o) {
  buildCounterListLogSinksResponse++;
  if (buildCounterListLogSinksResponse < 3) {
    checkUnnamed1628(o.sinks);
  }
  buildCounterListLogSinksResponse--;
}

buildUnnamed1629() {
  var o = new core.List<api.Log>();
  o.add(buildLog());
  o.add(buildLog());
  return o;
}

checkUnnamed1629(core.List<api.Log> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLog(o[0]);
  checkLog(o[1]);
}

core.int buildCounterListLogsResponse = 0;
buildListLogsResponse() {
  var o = new api.ListLogsResponse();
  buildCounterListLogsResponse++;
  if (buildCounterListLogsResponse < 3) {
    o.logs = buildUnnamed1629();
    o.nextPageToken = "foo";
  }
  buildCounterListLogsResponse--;
  return o;
}

checkListLogsResponse(api.ListLogsResponse o) {
  buildCounterListLogsResponse++;
  if (buildCounterListLogsResponse < 3) {
    checkUnnamed1629(o.logs);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListLogsResponse--;
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

buildUnnamed1630() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  o["y"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  return o;
}

checkUnnamed1630(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o["x"]) as core.Map; unittest.expect(casted1, unittest.hasLength(3)); unittest.expect(casted1["list"], unittest.equals([1, 2, 3])); unittest.expect(casted1["bool"], unittest.equals(true)); unittest.expect(casted1["string"], unittest.equals('foo')); 
  var casted2 = (o["y"]) as core.Map; unittest.expect(casted2, unittest.hasLength(3)); unittest.expect(casted2["list"], unittest.equals([1, 2, 3])); unittest.expect(casted2["bool"], unittest.equals(true)); unittest.expect(casted2["string"], unittest.equals('foo')); 
}

buildUnnamed1631() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  o["y"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  return o;
}

checkUnnamed1631(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o["x"]) as core.Map; unittest.expect(casted3, unittest.hasLength(3)); unittest.expect(casted3["list"], unittest.equals([1, 2, 3])); unittest.expect(casted3["bool"], unittest.equals(true)); unittest.expect(casted3["string"], unittest.equals('foo')); 
  var casted4 = (o["y"]) as core.Map; unittest.expect(casted4, unittest.hasLength(3)); unittest.expect(casted4["list"], unittest.equals([1, 2, 3])); unittest.expect(casted4["bool"], unittest.equals(true)); unittest.expect(casted4["string"], unittest.equals('foo')); 
}

core.int buildCounterLogEntry = 0;
buildLogEntry() {
  var o = new api.LogEntry();
  buildCounterLogEntry++;
  if (buildCounterLogEntry < 3) {
    o.insertId = "foo";
    o.log = "foo";
    o.metadata = buildLogEntryMetadata();
    o.protoPayload = buildUnnamed1630();
    o.structPayload = buildUnnamed1631();
    o.textPayload = "foo";
  }
  buildCounterLogEntry--;
  return o;
}

checkLogEntry(api.LogEntry o) {
  buildCounterLogEntry++;
  if (buildCounterLogEntry < 3) {
    unittest.expect(o.insertId, unittest.equals('foo'));
    unittest.expect(o.log, unittest.equals('foo'));
    checkLogEntryMetadata(o.metadata);
    checkUnnamed1630(o.protoPayload);
    checkUnnamed1631(o.structPayload);
    unittest.expect(o.textPayload, unittest.equals('foo'));
  }
  buildCounterLogEntry--;
}

buildUnnamed1632() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed1632(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterLogEntryMetadata = 0;
buildLogEntryMetadata() {
  var o = new api.LogEntryMetadata();
  buildCounterLogEntryMetadata++;
  if (buildCounterLogEntryMetadata < 3) {
    o.labels = buildUnnamed1632();
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
    checkUnnamed1632(o.labels);
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

buildUnnamed1633() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1633(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterLogService = 0;
buildLogService() {
  var o = new api.LogService();
  buildCounterLogService++;
  if (buildCounterLogService < 3) {
    o.indexKeys = buildUnnamed1633();
    o.name = "foo";
  }
  buildCounterLogService--;
  return o;
}

checkLogService(api.LogService o) {
  buildCounterLogService++;
  if (buildCounterLogService < 3) {
    checkUnnamed1633(o.indexKeys);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterLogService--;
}

buildUnnamed1634() {
  var o = new core.List<api.LogError>();
  o.add(buildLogError());
  o.add(buildLogError());
  return o;
}

checkUnnamed1634(core.List<api.LogError> o) {
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
    o.errors = buildUnnamed1634();
    o.name = "foo";
  }
  buildCounterLogSink--;
  return o;
}

checkLogSink(api.LogSink o) {
  buildCounterLogSink++;
  if (buildCounterLogSink < 3) {
    unittest.expect(o.destination, unittest.equals('foo'));
    checkUnnamed1634(o.errors);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterLogSink--;
}

buildUnnamed1635() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  o["y"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  return o;
}

checkUnnamed1635(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o["x"]) as core.Map; unittest.expect(casted5, unittest.hasLength(3)); unittest.expect(casted5["list"], unittest.equals([1, 2, 3])); unittest.expect(casted5["bool"], unittest.equals(true)); unittest.expect(casted5["string"], unittest.equals('foo')); 
  var casted6 = (o["y"]) as core.Map; unittest.expect(casted6, unittest.hasLength(3)); unittest.expect(casted6["list"], unittest.equals([1, 2, 3])); unittest.expect(casted6["bool"], unittest.equals(true)); unittest.expect(casted6["string"], unittest.equals('foo')); 
}

buildUnnamed1636() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed1635());
  o.add(buildUnnamed1635());
  return o;
}

checkUnnamed1636(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed1635(o[0]);
  checkUnnamed1635(o[1]);
}

core.int buildCounterStatus = 0;
buildStatus() {
  var o = new api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed1636();
    o.message = "foo";
  }
  buildCounterStatus--;
  return o;
}

checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed1636(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

buildUnnamed1637() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed1637(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed1638() {
  var o = new core.List<api.LogEntry>();
  o.add(buildLogEntry());
  o.add(buildLogEntry());
  return o;
}

checkUnnamed1638(core.List<api.LogEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLogEntry(o[0]);
  checkLogEntry(o[1]);
}

core.int buildCounterWriteLogEntriesRequest = 0;
buildWriteLogEntriesRequest() {
  var o = new api.WriteLogEntriesRequest();
  buildCounterWriteLogEntriesRequest++;
  if (buildCounterWriteLogEntriesRequest < 3) {
    o.commonLabels = buildUnnamed1637();
    o.entries = buildUnnamed1638();
  }
  buildCounterWriteLogEntriesRequest--;
  return o;
}

checkWriteLogEntriesRequest(api.WriteLogEntriesRequest o) {
  buildCounterWriteLogEntriesRequest++;
  if (buildCounterWriteLogEntriesRequest < 3) {
    checkUnnamed1637(o.commonLabels);
    checkUnnamed1638(o.entries);
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
      var arg_log = "foo";
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
        unittest.expect(queryMap["log"].first, unittest.equals(arg_log));
        unittest.expect(core.int.parse(queryMap["pageSize"].first), unittest.equals(arg_pageSize));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListLogServicesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_projectsId, log: arg_log, pageSize: arg_pageSize, pageToken: arg_pageToken).then(unittest.expectAsync(((api.ListLogServicesResponse response) {
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
      var arg_log = "foo";
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
        unittest.expect(queryMap["log"].first, unittest.equals(arg_log));
        unittest.expect(core.int.parse(queryMap["pageSize"].first), unittest.equals(arg_pageSize));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListLogServiceIndexesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_projectsId, arg_logServicesId, indexPrefix: arg_indexPrefix, depth: arg_depth, log: arg_log, pageSize: arg_pageSize, pageToken: arg_pageToken).then(unittest.expectAsync(((api.ListLogServiceIndexesResponse response) {
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


}

