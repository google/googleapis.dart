library googleapis_beta.clouderrorreporting.v1beta1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis_beta/clouderrorreporting/v1beta1.dart' as api;

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

core.int buildCounterDeleteEventsResponse = 0;
buildDeleteEventsResponse() {
  var o = new api.DeleteEventsResponse();
  buildCounterDeleteEventsResponse++;
  if (buildCounterDeleteEventsResponse < 3) {}
  buildCounterDeleteEventsResponse--;
  return o;
}

checkDeleteEventsResponse(api.DeleteEventsResponse o) {
  buildCounterDeleteEventsResponse++;
  if (buildCounterDeleteEventsResponse < 3) {}
  buildCounterDeleteEventsResponse--;
}

buildUnnamed5118() {
  var o = new core.List<api.SourceReference>();
  o.add(buildSourceReference());
  o.add(buildSourceReference());
  return o;
}

checkUnnamed5118(core.List<api.SourceReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSourceReference(o[0]);
  checkSourceReference(o[1]);
}

core.int buildCounterErrorContext = 0;
buildErrorContext() {
  var o = new api.ErrorContext();
  buildCounterErrorContext++;
  if (buildCounterErrorContext < 3) {
    o.httpRequest = buildHttpRequestContext();
    o.reportLocation = buildSourceLocation();
    o.sourceReferences = buildUnnamed5118();
    o.user = "foo";
  }
  buildCounterErrorContext--;
  return o;
}

checkErrorContext(api.ErrorContext o) {
  buildCounterErrorContext++;
  if (buildCounterErrorContext < 3) {
    checkHttpRequestContext(o.httpRequest);
    checkSourceLocation(o.reportLocation);
    checkUnnamed5118(o.sourceReferences);
    unittest.expect(o.user, unittest.equals('foo'));
  }
  buildCounterErrorContext--;
}

core.int buildCounterErrorEvent = 0;
buildErrorEvent() {
  var o = new api.ErrorEvent();
  buildCounterErrorEvent++;
  if (buildCounterErrorEvent < 3) {
    o.context = buildErrorContext();
    o.eventTime = "foo";
    o.message = "foo";
    o.serviceContext = buildServiceContext();
  }
  buildCounterErrorEvent--;
  return o;
}

checkErrorEvent(api.ErrorEvent o) {
  buildCounterErrorEvent++;
  if (buildCounterErrorEvent < 3) {
    checkErrorContext(o.context);
    unittest.expect(o.eventTime, unittest.equals('foo'));
    unittest.expect(o.message, unittest.equals('foo'));
    checkServiceContext(o.serviceContext);
  }
  buildCounterErrorEvent--;
}

buildUnnamed5119() {
  var o = new core.List<api.TrackingIssue>();
  o.add(buildTrackingIssue());
  o.add(buildTrackingIssue());
  return o;
}

checkUnnamed5119(core.List<api.TrackingIssue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTrackingIssue(o[0]);
  checkTrackingIssue(o[1]);
}

core.int buildCounterErrorGroup = 0;
buildErrorGroup() {
  var o = new api.ErrorGroup();
  buildCounterErrorGroup++;
  if (buildCounterErrorGroup < 3) {
    o.groupId = "foo";
    o.name = "foo";
    o.trackingIssues = buildUnnamed5119();
  }
  buildCounterErrorGroup--;
  return o;
}

checkErrorGroup(api.ErrorGroup o) {
  buildCounterErrorGroup++;
  if (buildCounterErrorGroup < 3) {
    unittest.expect(o.groupId, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed5119(o.trackingIssues);
  }
  buildCounterErrorGroup--;
}

buildUnnamed5120() {
  var o = new core.List<api.ServiceContext>();
  o.add(buildServiceContext());
  o.add(buildServiceContext());
  return o;
}

checkUnnamed5120(core.List<api.ServiceContext> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkServiceContext(o[0]);
  checkServiceContext(o[1]);
}

buildUnnamed5121() {
  var o = new core.List<api.TimedCount>();
  o.add(buildTimedCount());
  o.add(buildTimedCount());
  return o;
}

checkUnnamed5121(core.List<api.TimedCount> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTimedCount(o[0]);
  checkTimedCount(o[1]);
}

core.int buildCounterErrorGroupStats = 0;
buildErrorGroupStats() {
  var o = new api.ErrorGroupStats();
  buildCounterErrorGroupStats++;
  if (buildCounterErrorGroupStats < 3) {
    o.affectedServices = buildUnnamed5120();
    o.affectedUsersCount = "foo";
    o.count = "foo";
    o.firstSeenTime = "foo";
    o.group = buildErrorGroup();
    o.lastSeenTime = "foo";
    o.numAffectedServices = 42;
    o.representative = buildErrorEvent();
    o.timedCounts = buildUnnamed5121();
  }
  buildCounterErrorGroupStats--;
  return o;
}

checkErrorGroupStats(api.ErrorGroupStats o) {
  buildCounterErrorGroupStats++;
  if (buildCounterErrorGroupStats < 3) {
    checkUnnamed5120(o.affectedServices);
    unittest.expect(o.affectedUsersCount, unittest.equals('foo'));
    unittest.expect(o.count, unittest.equals('foo'));
    unittest.expect(o.firstSeenTime, unittest.equals('foo'));
    checkErrorGroup(o.group);
    unittest.expect(o.lastSeenTime, unittest.equals('foo'));
    unittest.expect(o.numAffectedServices, unittest.equals(42));
    checkErrorEvent(o.representative);
    checkUnnamed5121(o.timedCounts);
  }
  buildCounterErrorGroupStats--;
}

core.int buildCounterHttpRequestContext = 0;
buildHttpRequestContext() {
  var o = new api.HttpRequestContext();
  buildCounterHttpRequestContext++;
  if (buildCounterHttpRequestContext < 3) {
    o.method = "foo";
    o.referrer = "foo";
    o.remoteIp = "foo";
    o.responseStatusCode = 42;
    o.url = "foo";
    o.userAgent = "foo";
  }
  buildCounterHttpRequestContext--;
  return o;
}

checkHttpRequestContext(api.HttpRequestContext o) {
  buildCounterHttpRequestContext++;
  if (buildCounterHttpRequestContext < 3) {
    unittest.expect(o.method, unittest.equals('foo'));
    unittest.expect(o.referrer, unittest.equals('foo'));
    unittest.expect(o.remoteIp, unittest.equals('foo'));
    unittest.expect(o.responseStatusCode, unittest.equals(42));
    unittest.expect(o.url, unittest.equals('foo'));
    unittest.expect(o.userAgent, unittest.equals('foo'));
  }
  buildCounterHttpRequestContext--;
}

buildUnnamed5122() {
  var o = new core.List<api.ErrorEvent>();
  o.add(buildErrorEvent());
  o.add(buildErrorEvent());
  return o;
}

checkUnnamed5122(core.List<api.ErrorEvent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkErrorEvent(o[0]);
  checkErrorEvent(o[1]);
}

core.int buildCounterListEventsResponse = 0;
buildListEventsResponse() {
  var o = new api.ListEventsResponse();
  buildCounterListEventsResponse++;
  if (buildCounterListEventsResponse < 3) {
    o.errorEvents = buildUnnamed5122();
    o.nextPageToken = "foo";
    o.timeRangeBegin = "foo";
  }
  buildCounterListEventsResponse--;
  return o;
}

checkListEventsResponse(api.ListEventsResponse o) {
  buildCounterListEventsResponse++;
  if (buildCounterListEventsResponse < 3) {
    checkUnnamed5122(o.errorEvents);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.timeRangeBegin, unittest.equals('foo'));
  }
  buildCounterListEventsResponse--;
}

buildUnnamed5123() {
  var o = new core.List<api.ErrorGroupStats>();
  o.add(buildErrorGroupStats());
  o.add(buildErrorGroupStats());
  return o;
}

checkUnnamed5123(core.List<api.ErrorGroupStats> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkErrorGroupStats(o[0]);
  checkErrorGroupStats(o[1]);
}

core.int buildCounterListGroupStatsResponse = 0;
buildListGroupStatsResponse() {
  var o = new api.ListGroupStatsResponse();
  buildCounterListGroupStatsResponse++;
  if (buildCounterListGroupStatsResponse < 3) {
    o.errorGroupStats = buildUnnamed5123();
    o.nextPageToken = "foo";
    o.timeRangeBegin = "foo";
  }
  buildCounterListGroupStatsResponse--;
  return o;
}

checkListGroupStatsResponse(api.ListGroupStatsResponse o) {
  buildCounterListGroupStatsResponse++;
  if (buildCounterListGroupStatsResponse < 3) {
    checkUnnamed5123(o.errorGroupStats);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.timeRangeBegin, unittest.equals('foo'));
  }
  buildCounterListGroupStatsResponse--;
}

core.int buildCounterReportErrorEventResponse = 0;
buildReportErrorEventResponse() {
  var o = new api.ReportErrorEventResponse();
  buildCounterReportErrorEventResponse++;
  if (buildCounterReportErrorEventResponse < 3) {}
  buildCounterReportErrorEventResponse--;
  return o;
}

checkReportErrorEventResponse(api.ReportErrorEventResponse o) {
  buildCounterReportErrorEventResponse++;
  if (buildCounterReportErrorEventResponse < 3) {}
  buildCounterReportErrorEventResponse--;
}

core.int buildCounterReportedErrorEvent = 0;
buildReportedErrorEvent() {
  var o = new api.ReportedErrorEvent();
  buildCounterReportedErrorEvent++;
  if (buildCounterReportedErrorEvent < 3) {
    o.context = buildErrorContext();
    o.eventTime = "foo";
    o.message = "foo";
    o.serviceContext = buildServiceContext();
  }
  buildCounterReportedErrorEvent--;
  return o;
}

checkReportedErrorEvent(api.ReportedErrorEvent o) {
  buildCounterReportedErrorEvent++;
  if (buildCounterReportedErrorEvent < 3) {
    checkErrorContext(o.context);
    unittest.expect(o.eventTime, unittest.equals('foo'));
    unittest.expect(o.message, unittest.equals('foo'));
    checkServiceContext(o.serviceContext);
  }
  buildCounterReportedErrorEvent--;
}

core.int buildCounterServiceContext = 0;
buildServiceContext() {
  var o = new api.ServiceContext();
  buildCounterServiceContext++;
  if (buildCounterServiceContext < 3) {
    o.resourceType = "foo";
    o.service = "foo";
    o.version = "foo";
  }
  buildCounterServiceContext--;
  return o;
}

checkServiceContext(api.ServiceContext o) {
  buildCounterServiceContext++;
  if (buildCounterServiceContext < 3) {
    unittest.expect(o.resourceType, unittest.equals('foo'));
    unittest.expect(o.service, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterServiceContext--;
}

core.int buildCounterSourceLocation = 0;
buildSourceLocation() {
  var o = new api.SourceLocation();
  buildCounterSourceLocation++;
  if (buildCounterSourceLocation < 3) {
    o.filePath = "foo";
    o.functionName = "foo";
    o.lineNumber = 42;
  }
  buildCounterSourceLocation--;
  return o;
}

checkSourceLocation(api.SourceLocation o) {
  buildCounterSourceLocation++;
  if (buildCounterSourceLocation < 3) {
    unittest.expect(o.filePath, unittest.equals('foo'));
    unittest.expect(o.functionName, unittest.equals('foo'));
    unittest.expect(o.lineNumber, unittest.equals(42));
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

core.int buildCounterTimedCount = 0;
buildTimedCount() {
  var o = new api.TimedCount();
  buildCounterTimedCount++;
  if (buildCounterTimedCount < 3) {
    o.count = "foo";
    o.endTime = "foo";
    o.startTime = "foo";
  }
  buildCounterTimedCount--;
  return o;
}

checkTimedCount(api.TimedCount o) {
  buildCounterTimedCount++;
  if (buildCounterTimedCount < 3) {
    unittest.expect(o.count, unittest.equals('foo'));
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.startTime, unittest.equals('foo'));
  }
  buildCounterTimedCount--;
}

core.int buildCounterTrackingIssue = 0;
buildTrackingIssue() {
  var o = new api.TrackingIssue();
  buildCounterTrackingIssue++;
  if (buildCounterTrackingIssue < 3) {
    o.url = "foo";
  }
  buildCounterTrackingIssue--;
  return o;
}

checkTrackingIssue(api.TrackingIssue o) {
  buildCounterTrackingIssue++;
  if (buildCounterTrackingIssue < 3) {
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterTrackingIssue--;
}

buildUnnamed5124() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5124(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

main() {
  unittest.group("obj-schema-DeleteEventsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeleteEventsResponse();
      var od = new api.DeleteEventsResponse.fromJson(o.toJson());
      checkDeleteEventsResponse(od);
    });
  });

  unittest.group("obj-schema-ErrorContext", () {
    unittest.test("to-json--from-json", () {
      var o = buildErrorContext();
      var od = new api.ErrorContext.fromJson(o.toJson());
      checkErrorContext(od);
    });
  });

  unittest.group("obj-schema-ErrorEvent", () {
    unittest.test("to-json--from-json", () {
      var o = buildErrorEvent();
      var od = new api.ErrorEvent.fromJson(o.toJson());
      checkErrorEvent(od);
    });
  });

  unittest.group("obj-schema-ErrorGroup", () {
    unittest.test("to-json--from-json", () {
      var o = buildErrorGroup();
      var od = new api.ErrorGroup.fromJson(o.toJson());
      checkErrorGroup(od);
    });
  });

  unittest.group("obj-schema-ErrorGroupStats", () {
    unittest.test("to-json--from-json", () {
      var o = buildErrorGroupStats();
      var od = new api.ErrorGroupStats.fromJson(o.toJson());
      checkErrorGroupStats(od);
    });
  });

  unittest.group("obj-schema-HttpRequestContext", () {
    unittest.test("to-json--from-json", () {
      var o = buildHttpRequestContext();
      var od = new api.HttpRequestContext.fromJson(o.toJson());
      checkHttpRequestContext(od);
    });
  });

  unittest.group("obj-schema-ListEventsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListEventsResponse();
      var od = new api.ListEventsResponse.fromJson(o.toJson());
      checkListEventsResponse(od);
    });
  });

  unittest.group("obj-schema-ListGroupStatsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListGroupStatsResponse();
      var od = new api.ListGroupStatsResponse.fromJson(o.toJson());
      checkListGroupStatsResponse(od);
    });
  });

  unittest.group("obj-schema-ReportErrorEventResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildReportErrorEventResponse();
      var od = new api.ReportErrorEventResponse.fromJson(o.toJson());
      checkReportErrorEventResponse(od);
    });
  });

  unittest.group("obj-schema-ReportedErrorEvent", () {
    unittest.test("to-json--from-json", () {
      var o = buildReportedErrorEvent();
      var od = new api.ReportedErrorEvent.fromJson(o.toJson());
      checkReportedErrorEvent(od);
    });
  });

  unittest.group("obj-schema-ServiceContext", () {
    unittest.test("to-json--from-json", () {
      var o = buildServiceContext();
      var od = new api.ServiceContext.fromJson(o.toJson());
      checkServiceContext(od);
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

  unittest.group("obj-schema-TimedCount", () {
    unittest.test("to-json--from-json", () {
      var o = buildTimedCount();
      var od = new api.TimedCount.fromJson(o.toJson());
      checkTimedCount(od);
    });
  });

  unittest.group("obj-schema-TrackingIssue", () {
    unittest.test("to-json--from-json", () {
      var o = buildTrackingIssue();
      var od = new api.TrackingIssue.fromJson(o.toJson());
      checkTrackingIssue(od);
    });
  });

  unittest.group("resource-ProjectsResourceApi", () {
    unittest.test("method--deleteEvents", () {
      var mock = new HttpServerMock();
      api.ProjectsResourceApi res =
          new api.ClouderrorreportingApi(mock).projects;
      var arg_projectName = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        var resp = convert.json.encode(buildDeleteEventsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .deleteEvents(arg_projectName, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDeleteEventsResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsEventsResourceApi", () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsEventsResourceApi res =
          new api.ClouderrorreportingApi(mock).projects.events;
      var arg_projectName = "foo";
      var arg_serviceFilter_version = "foo";
      var arg_serviceFilter_resourceType = "foo";
      var arg_timeRange_period = "foo";
      var arg_groupId = "foo";
      var arg_serviceFilter_service = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(queryMap["serviceFilter.version"].first,
            unittest.equals(arg_serviceFilter_version));
        unittest.expect(queryMap["serviceFilter.resourceType"].first,
            unittest.equals(arg_serviceFilter_resourceType));
        unittest.expect(queryMap["timeRange.period"].first,
            unittest.equals(arg_timeRange_period));
        unittest.expect(
            queryMap["groupId"].first, unittest.equals(arg_groupId));
        unittest.expect(queryMap["serviceFilter.service"].first,
            unittest.equals(arg_serviceFilter_service));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListEventsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_projectName,
              serviceFilter_version: arg_serviceFilter_version,
              serviceFilter_resourceType: arg_serviceFilter_resourceType,
              timeRange_period: arg_timeRange_period,
              groupId: arg_groupId,
              serviceFilter_service: arg_serviceFilter_service,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListEventsResponse(response);
      })));
    });

    unittest.test("method--report", () {
      var mock = new HttpServerMock();
      api.ProjectsEventsResourceApi res =
          new api.ClouderrorreportingApi(mock).projects.events;
      var arg_request = buildReportedErrorEvent();
      var arg_projectName = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ReportedErrorEvent.fromJson(json);
        checkReportedErrorEvent(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        var resp = convert.json.encode(buildReportErrorEventResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .report(arg_request, arg_projectName, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkReportErrorEventResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsGroupStatsResourceApi", () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsGroupStatsResourceApi res =
          new api.ClouderrorreportingApi(mock).projects.groupStats;
      var arg_projectName = "foo";
      var arg_timedCountDuration = "foo";
      var arg_pageToken = "foo";
      var arg_timeRange_period = "foo";
      var arg_alignment = "foo";
      var arg_groupId = buildUnnamed5124();
      var arg_serviceFilter_service = "foo";
      var arg_pageSize = 42;
      var arg_serviceFilter_version = "foo";
      var arg_order = "foo";
      var arg_serviceFilter_resourceType = "foo";
      var arg_alignmentTime = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(queryMap["timedCountDuration"].first,
            unittest.equals(arg_timedCountDuration));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["timeRange.period"].first,
            unittest.equals(arg_timeRange_period));
        unittest.expect(
            queryMap["alignment"].first, unittest.equals(arg_alignment));
        unittest.expect(queryMap["groupId"], unittest.equals(arg_groupId));
        unittest.expect(queryMap["serviceFilter.service"].first,
            unittest.equals(arg_serviceFilter_service));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["serviceFilter.version"].first,
            unittest.equals(arg_serviceFilter_version));
        unittest.expect(queryMap["order"].first, unittest.equals(arg_order));
        unittest.expect(queryMap["serviceFilter.resourceType"].first,
            unittest.equals(arg_serviceFilter_resourceType));
        unittest.expect(queryMap["alignmentTime"].first,
            unittest.equals(arg_alignmentTime));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListGroupStatsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_projectName,
              timedCountDuration: arg_timedCountDuration,
              pageToken: arg_pageToken,
              timeRange_period: arg_timeRange_period,
              alignment: arg_alignment,
              groupId: arg_groupId,
              serviceFilter_service: arg_serviceFilter_service,
              pageSize: arg_pageSize,
              serviceFilter_version: arg_serviceFilter_version,
              order: arg_order,
              serviceFilter_resourceType: arg_serviceFilter_resourceType,
              alignmentTime: arg_alignmentTime,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListGroupStatsResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsGroupsResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsGroupsResourceApi res =
          new api.ClouderrorreportingApi(mock).projects.groups;
      var arg_groupName = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        var resp = convert.json.encode(buildErrorGroup());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_groupName, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkErrorGroup(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.ProjectsGroupsResourceApi res =
          new api.ClouderrorreportingApi(mock).projects.groups;
      var arg_request = buildErrorGroup();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ErrorGroup.fromJson(json);
        checkErrorGroup(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        var resp = convert.json.encode(buildErrorGroup());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkErrorGroup(response);
      })));
    });
  });
}
