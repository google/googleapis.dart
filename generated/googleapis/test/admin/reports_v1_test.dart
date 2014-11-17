library googleapis.admin.reports_v1.test;

import "dart:core" as core;
import "dart:collection" as collection;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:http/testing.dart' as http_testing;
import 'package:unittest/unittest.dart' as unittest;
import 'package:googleapis/common/common.dart' as common;
import 'package:googleapis/src/common_internal.dart' as common_internal;
import '../common/common_internal_test.dart' as common_test;

import 'package:googleapis/admin/reports_v1.dart' as api;



buildUnnamed391() {
  var o = new core.List<api.Activity>();
  o.add(buildActivity());
  o.add(buildActivity());
  return o;
}

checkUnnamed391(core.List<api.Activity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkActivity(o[0]);
  checkActivity(o[1]);
}

core.int buildCounterActivities = 0;
buildActivities() {
  var o = new api.Activities();
  buildCounterActivities++;
  if (buildCounterActivities < 3) {
    o.etag = "foo";
    o.items = buildUnnamed391();
    o.kind = "foo";
    o.nextPageToken = "foo";
  }
  buildCounterActivities--;
  return o;
}

checkActivities(api.Activities o) {
  buildCounterActivities++;
  if (buildCounterActivities < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed391(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterActivities--;
}

core.int buildCounterActivityActor = 0;
buildActivityActor() {
  var o = new api.ActivityActor();
  buildCounterActivityActor++;
  if (buildCounterActivityActor < 3) {
    o.callerType = "foo";
    o.email = "foo";
    o.key = "foo";
    o.profileId = "foo";
  }
  buildCounterActivityActor--;
  return o;
}

checkActivityActor(api.ActivityActor o) {
  buildCounterActivityActor++;
  if (buildCounterActivityActor < 3) {
    unittest.expect(o.callerType, unittest.equals('foo'));
    unittest.expect(o.email, unittest.equals('foo'));
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.profileId, unittest.equals('foo'));
  }
  buildCounterActivityActor--;
}

buildUnnamed392() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed392(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed393() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed393(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterActivityEventsParameters = 0;
buildActivityEventsParameters() {
  var o = new api.ActivityEventsParameters();
  buildCounterActivityEventsParameters++;
  if (buildCounterActivityEventsParameters < 3) {
    o.boolValue = true;
    o.intValue = "foo";
    o.multiIntValue = buildUnnamed392();
    o.multiValue = buildUnnamed393();
    o.name = "foo";
    o.value = "foo";
  }
  buildCounterActivityEventsParameters--;
  return o;
}

checkActivityEventsParameters(api.ActivityEventsParameters o) {
  buildCounterActivityEventsParameters++;
  if (buildCounterActivityEventsParameters < 3) {
    unittest.expect(o.boolValue, unittest.isTrue);
    unittest.expect(o.intValue, unittest.equals('foo'));
    checkUnnamed392(o.multiIntValue);
    checkUnnamed393(o.multiValue);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterActivityEventsParameters--;
}

buildUnnamed394() {
  var o = new core.List<api.ActivityEventsParameters>();
  o.add(buildActivityEventsParameters());
  o.add(buildActivityEventsParameters());
  return o;
}

checkUnnamed394(core.List<api.ActivityEventsParameters> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkActivityEventsParameters(o[0]);
  checkActivityEventsParameters(o[1]);
}

core.int buildCounterActivityEvents = 0;
buildActivityEvents() {
  var o = new api.ActivityEvents();
  buildCounterActivityEvents++;
  if (buildCounterActivityEvents < 3) {
    o.name = "foo";
    o.parameters = buildUnnamed394();
    o.type = "foo";
  }
  buildCounterActivityEvents--;
  return o;
}

checkActivityEvents(api.ActivityEvents o) {
  buildCounterActivityEvents++;
  if (buildCounterActivityEvents < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed394(o.parameters);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterActivityEvents--;
}

buildUnnamed395() {
  var o = new core.List<api.ActivityEvents>();
  o.add(buildActivityEvents());
  o.add(buildActivityEvents());
  return o;
}

checkUnnamed395(core.List<api.ActivityEvents> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkActivityEvents(o[0]);
  checkActivityEvents(o[1]);
}

core.int buildCounterActivityId = 0;
buildActivityId() {
  var o = new api.ActivityId();
  buildCounterActivityId++;
  if (buildCounterActivityId < 3) {
    o.applicationName = "foo";
    o.customerId = "foo";
    o.time = core.DateTime.parse("2002-02-27T14:01:02");
    o.uniqueQualifier = "foo";
  }
  buildCounterActivityId--;
  return o;
}

checkActivityId(api.ActivityId o) {
  buildCounterActivityId++;
  if (buildCounterActivityId < 3) {
    unittest.expect(o.applicationName, unittest.equals('foo'));
    unittest.expect(o.customerId, unittest.equals('foo'));
    unittest.expect(o.time, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.uniqueQualifier, unittest.equals('foo'));
  }
  buildCounterActivityId--;
}

core.int buildCounterActivity = 0;
buildActivity() {
  var o = new api.Activity();
  buildCounterActivity++;
  if (buildCounterActivity < 3) {
    o.actor = buildActivityActor();
    o.etag = "foo";
    o.events = buildUnnamed395();
    o.id = buildActivityId();
    o.ipAddress = "foo";
    o.kind = "foo";
    o.ownerDomain = "foo";
  }
  buildCounterActivity--;
  return o;
}

checkActivity(api.Activity o) {
  buildCounterActivity++;
  if (buildCounterActivity < 3) {
    checkActivityActor(o.actor);
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed395(o.events);
    checkActivityId(o.id);
    unittest.expect(o.ipAddress, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.ownerDomain, unittest.equals('foo'));
  }
  buildCounterActivity--;
}

buildUnnamed396() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed396(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterChannel = 0;
buildChannel() {
  var o = new api.Channel();
  buildCounterChannel++;
  if (buildCounterChannel < 3) {
    o.address = "foo";
    o.expiration = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.params = buildUnnamed396();
    o.payload = true;
    o.resourceId = "foo";
    o.resourceUri = "foo";
    o.token = "foo";
    o.type = "foo";
  }
  buildCounterChannel--;
  return o;
}

checkChannel(api.Channel o) {
  buildCounterChannel++;
  if (buildCounterChannel < 3) {
    unittest.expect(o.address, unittest.equals('foo'));
    unittest.expect(o.expiration, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed396(o.params);
    unittest.expect(o.payload, unittest.isTrue);
    unittest.expect(o.resourceId, unittest.equals('foo'));
    unittest.expect(o.resourceUri, unittest.equals('foo'));
    unittest.expect(o.token, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterChannel--;
}

core.int buildCounterUsageReportEntity = 0;
buildUsageReportEntity() {
  var o = new api.UsageReportEntity();
  buildCounterUsageReportEntity++;
  if (buildCounterUsageReportEntity < 3) {
    o.customerId = "foo";
    o.profileId = "foo";
    o.type = "foo";
    o.userEmail = "foo";
  }
  buildCounterUsageReportEntity--;
  return o;
}

checkUsageReportEntity(api.UsageReportEntity o) {
  buildCounterUsageReportEntity++;
  if (buildCounterUsageReportEntity < 3) {
    unittest.expect(o.customerId, unittest.equals('foo'));
    unittest.expect(o.profileId, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.userEmail, unittest.equals('foo'));
  }
  buildCounterUsageReportEntity--;
}

buildUnnamed397() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  o["y"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  return o;
}

checkUnnamed397(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o["x"]) as core.Map; unittest.expect(casted1, unittest.hasLength(3)); unittest.expect(casted1["list"], unittest.equals([1, 2, 3])); unittest.expect(casted1["bool"], unittest.equals(true)); unittest.expect(casted1["string"], unittest.equals('foo')); 
  var casted2 = (o["y"]) as core.Map; unittest.expect(casted2, unittest.hasLength(3)); unittest.expect(casted2["list"], unittest.equals([1, 2, 3])); unittest.expect(casted2["bool"], unittest.equals(true)); unittest.expect(casted2["string"], unittest.equals('foo')); 
}

buildUnnamed398() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed397());
  o.add(buildUnnamed397());
  return o;
}

checkUnnamed398(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed397(o[0]);
  checkUnnamed397(o[1]);
}

core.int buildCounterUsageReportParameters = 0;
buildUsageReportParameters() {
  var o = new api.UsageReportParameters();
  buildCounterUsageReportParameters++;
  if (buildCounterUsageReportParameters < 3) {
    o.boolValue = true;
    o.datetimeValue = core.DateTime.parse("2002-02-27T14:01:02");
    o.intValue = "foo";
    o.msgValue = buildUnnamed398();
    o.name = "foo";
    o.stringValue = "foo";
  }
  buildCounterUsageReportParameters--;
  return o;
}

checkUsageReportParameters(api.UsageReportParameters o) {
  buildCounterUsageReportParameters++;
  if (buildCounterUsageReportParameters < 3) {
    unittest.expect(o.boolValue, unittest.isTrue);
    unittest.expect(o.datetimeValue, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.intValue, unittest.equals('foo'));
    checkUnnamed398(o.msgValue);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.stringValue, unittest.equals('foo'));
  }
  buildCounterUsageReportParameters--;
}

buildUnnamed399() {
  var o = new core.List<api.UsageReportParameters>();
  o.add(buildUsageReportParameters());
  o.add(buildUsageReportParameters());
  return o;
}

checkUnnamed399(core.List<api.UsageReportParameters> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUsageReportParameters(o[0]);
  checkUsageReportParameters(o[1]);
}

core.int buildCounterUsageReport = 0;
buildUsageReport() {
  var o = new api.UsageReport();
  buildCounterUsageReport++;
  if (buildCounterUsageReport < 3) {
    o.date = "foo";
    o.entity = buildUsageReportEntity();
    o.etag = "foo";
    o.kind = "foo";
    o.parameters = buildUnnamed399();
  }
  buildCounterUsageReport--;
  return o;
}

checkUsageReport(api.UsageReport o) {
  buildCounterUsageReport++;
  if (buildCounterUsageReport < 3) {
    unittest.expect(o.date, unittest.equals('foo'));
    checkUsageReportEntity(o.entity);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed399(o.parameters);
  }
  buildCounterUsageReport--;
}

buildUnnamed400() {
  var o = new core.List<api.UsageReport>();
  o.add(buildUsageReport());
  o.add(buildUsageReport());
  return o;
}

checkUnnamed400(core.List<api.UsageReport> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUsageReport(o[0]);
  checkUsageReport(o[1]);
}

core.int buildCounterUsageReportsWarningsData = 0;
buildUsageReportsWarningsData() {
  var o = new api.UsageReportsWarningsData();
  buildCounterUsageReportsWarningsData++;
  if (buildCounterUsageReportsWarningsData < 3) {
    o.key = "foo";
    o.value = "foo";
  }
  buildCounterUsageReportsWarningsData--;
  return o;
}

checkUsageReportsWarningsData(api.UsageReportsWarningsData o) {
  buildCounterUsageReportsWarningsData++;
  if (buildCounterUsageReportsWarningsData < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterUsageReportsWarningsData--;
}

buildUnnamed401() {
  var o = new core.List<api.UsageReportsWarningsData>();
  o.add(buildUsageReportsWarningsData());
  o.add(buildUsageReportsWarningsData());
  return o;
}

checkUnnamed401(core.List<api.UsageReportsWarningsData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUsageReportsWarningsData(o[0]);
  checkUsageReportsWarningsData(o[1]);
}

core.int buildCounterUsageReportsWarnings = 0;
buildUsageReportsWarnings() {
  var o = new api.UsageReportsWarnings();
  buildCounterUsageReportsWarnings++;
  if (buildCounterUsageReportsWarnings < 3) {
    o.code = "foo";
    o.data = buildUnnamed401();
    o.message = "foo";
  }
  buildCounterUsageReportsWarnings--;
  return o;
}

checkUsageReportsWarnings(api.UsageReportsWarnings o) {
  buildCounterUsageReportsWarnings++;
  if (buildCounterUsageReportsWarnings < 3) {
    unittest.expect(o.code, unittest.equals('foo'));
    checkUnnamed401(o.data);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterUsageReportsWarnings--;
}

buildUnnamed402() {
  var o = new core.List<api.UsageReportsWarnings>();
  o.add(buildUsageReportsWarnings());
  o.add(buildUsageReportsWarnings());
  return o;
}

checkUnnamed402(core.List<api.UsageReportsWarnings> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUsageReportsWarnings(o[0]);
  checkUsageReportsWarnings(o[1]);
}

core.int buildCounterUsageReports = 0;
buildUsageReports() {
  var o = new api.UsageReports();
  buildCounterUsageReports++;
  if (buildCounterUsageReports < 3) {
    o.etag = "foo";
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.usageReports = buildUnnamed400();
    o.warnings = buildUnnamed402();
  }
  buildCounterUsageReports--;
  return o;
}

checkUsageReports(api.UsageReports o) {
  buildCounterUsageReports++;
  if (buildCounterUsageReports < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed400(o.usageReports);
    checkUnnamed402(o.warnings);
  }
  buildCounterUsageReports--;
}


main() {
  unittest.group("obj-schema-Activities", () {
    unittest.test("to-json--from-json", () {
      var o = buildActivities();
      var od = new api.Activities.fromJson(o.toJson());
      checkActivities(od);
    });
  });


  unittest.group("obj-schema-ActivityActor", () {
    unittest.test("to-json--from-json", () {
      var o = buildActivityActor();
      var od = new api.ActivityActor.fromJson(o.toJson());
      checkActivityActor(od);
    });
  });


  unittest.group("obj-schema-ActivityEventsParameters", () {
    unittest.test("to-json--from-json", () {
      var o = buildActivityEventsParameters();
      var od = new api.ActivityEventsParameters.fromJson(o.toJson());
      checkActivityEventsParameters(od);
    });
  });


  unittest.group("obj-schema-ActivityEvents", () {
    unittest.test("to-json--from-json", () {
      var o = buildActivityEvents();
      var od = new api.ActivityEvents.fromJson(o.toJson());
      checkActivityEvents(od);
    });
  });


  unittest.group("obj-schema-ActivityId", () {
    unittest.test("to-json--from-json", () {
      var o = buildActivityId();
      var od = new api.ActivityId.fromJson(o.toJson());
      checkActivityId(od);
    });
  });


  unittest.group("obj-schema-Activity", () {
    unittest.test("to-json--from-json", () {
      var o = buildActivity();
      var od = new api.Activity.fromJson(o.toJson());
      checkActivity(od);
    });
  });


  unittest.group("obj-schema-Channel", () {
    unittest.test("to-json--from-json", () {
      var o = buildChannel();
      var od = new api.Channel.fromJson(o.toJson());
      checkChannel(od);
    });
  });


  unittest.group("obj-schema-UsageReportEntity", () {
    unittest.test("to-json--from-json", () {
      var o = buildUsageReportEntity();
      var od = new api.UsageReportEntity.fromJson(o.toJson());
      checkUsageReportEntity(od);
    });
  });


  unittest.group("obj-schema-UsageReportParameters", () {
    unittest.test("to-json--from-json", () {
      var o = buildUsageReportParameters();
      var od = new api.UsageReportParameters.fromJson(o.toJson());
      checkUsageReportParameters(od);
    });
  });


  unittest.group("obj-schema-UsageReport", () {
    unittest.test("to-json--from-json", () {
      var o = buildUsageReport();
      var od = new api.UsageReport.fromJson(o.toJson());
      checkUsageReport(od);
    });
  });


  unittest.group("obj-schema-UsageReportsWarningsData", () {
    unittest.test("to-json--from-json", () {
      var o = buildUsageReportsWarningsData();
      var od = new api.UsageReportsWarningsData.fromJson(o.toJson());
      checkUsageReportsWarningsData(od);
    });
  });


  unittest.group("obj-schema-UsageReportsWarnings", () {
    unittest.test("to-json--from-json", () {
      var o = buildUsageReportsWarnings();
      var od = new api.UsageReportsWarnings.fromJson(o.toJson());
      checkUsageReportsWarnings(od);
    });
  });


  unittest.group("obj-schema-UsageReports", () {
    unittest.test("to-json--from-json", () {
      var o = buildUsageReports();
      var od = new api.UsageReports.fromJson(o.toJson());
      checkUsageReports(od);
    });
  });


  unittest.group("resource-ActivitiesResourceApi", () {
    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.ActivitiesResourceApi res = new api.AdminApi(mock).activities;
      var arg_userKey = "foo";
      var arg_applicationName = "foo";
      var arg_actorIpAddress = "foo";
      var arg_customerId = "foo";
      var arg_endTime = "foo";
      var arg_eventName = "foo";
      var arg_filters = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      var arg_startTime = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("admin/reports/v1/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("activity/users/"));
        pathOffset += 15;
        index = path.indexOf("/applications/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_userKey"));
        unittest.expect(path.substring(pathOffset, pathOffset + 14), unittest.equals("/applications/"));
        pathOffset += 14;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_applicationName"));

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
        unittest.expect(queryMap["actorIpAddress"].first, unittest.equals(arg_actorIpAddress));
        unittest.expect(queryMap["customerId"].first, unittest.equals(arg_customerId));
        unittest.expect(queryMap["endTime"].first, unittest.equals(arg_endTime));
        unittest.expect(queryMap["eventName"].first, unittest.equals(arg_eventName));
        unittest.expect(queryMap["filters"].first, unittest.equals(arg_filters));
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["startTime"].first, unittest.equals(arg_startTime));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildActivities());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_userKey, arg_applicationName, actorIpAddress: arg_actorIpAddress, customerId: arg_customerId, endTime: arg_endTime, eventName: arg_eventName, filters: arg_filters, maxResults: arg_maxResults, pageToken: arg_pageToken, startTime: arg_startTime).then(unittest.expectAsync(((api.Activities response) {
        checkActivities(response);
      })));
    });

    unittest.test("method--watch", () {

      var mock = new common_test.HttpServerMock();
      api.ActivitiesResourceApi res = new api.AdminApi(mock).activities;
      var arg_request = buildChannel();
      var arg_userKey = "foo";
      var arg_applicationName = "foo";
      var arg_actorIpAddress = "foo";
      var arg_customerId = "foo";
      var arg_endTime = "foo";
      var arg_eventName = "foo";
      var arg_filters = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      var arg_startTime = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Channel.fromJson(json);
        checkChannel(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("admin/reports/v1/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("activity/users/"));
        pathOffset += 15;
        index = path.indexOf("/applications/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_userKey"));
        unittest.expect(path.substring(pathOffset, pathOffset + 14), unittest.equals("/applications/"));
        pathOffset += 14;
        index = path.indexOf("/watch", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_applicationName"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("/watch"));
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
        unittest.expect(queryMap["actorIpAddress"].first, unittest.equals(arg_actorIpAddress));
        unittest.expect(queryMap["customerId"].first, unittest.equals(arg_customerId));
        unittest.expect(queryMap["endTime"].first, unittest.equals(arg_endTime));
        unittest.expect(queryMap["eventName"].first, unittest.equals(arg_eventName));
        unittest.expect(queryMap["filters"].first, unittest.equals(arg_filters));
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["startTime"].first, unittest.equals(arg_startTime));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildChannel());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.watch(arg_request, arg_userKey, arg_applicationName, actorIpAddress: arg_actorIpAddress, customerId: arg_customerId, endTime: arg_endTime, eventName: arg_eventName, filters: arg_filters, maxResults: arg_maxResults, pageToken: arg_pageToken, startTime: arg_startTime).then(unittest.expectAsync(((api.Channel response) {
        checkChannel(response);
      })));
    });

  });


  unittest.group("resource-ChannelsResourceApi", () {
    unittest.test("method--stop", () {

      var mock = new common_test.HttpServerMock();
      api.ChannelsResourceApi res = new api.AdminApi(mock).channels;
      var arg_request = buildChannel();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Channel.fromJson(json);
        checkChannel(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 30), unittest.equals("admin/reports_v1/channels/stop"));
        pathOffset += 30;

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
        var resp = "";
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.stop(arg_request).then(unittest.expectAsync((_) {}));
    });

  });


  unittest.group("resource-CustomerUsageReportsResourceApi", () {
    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.CustomerUsageReportsResourceApi res = new api.AdminApi(mock).customerUsageReports;
      var arg_date = "foo";
      var arg_customerId = "foo";
      var arg_pageToken = "foo";
      var arg_parameters = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("admin/reports/v1/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("usage/dates/"));
        pathOffset += 12;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_date"));

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
        unittest.expect(queryMap["customerId"].first, unittest.equals(arg_customerId));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["parameters"].first, unittest.equals(arg_parameters));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildUsageReports());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_date, customerId: arg_customerId, pageToken: arg_pageToken, parameters: arg_parameters).then(unittest.expectAsync(((api.UsageReports response) {
        checkUsageReports(response);
      })));
    });

  });


  unittest.group("resource-UserUsageReportResourceApi", () {
    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.UserUsageReportResourceApi res = new api.AdminApi(mock).userUsageReport;
      var arg_userKey = "foo";
      var arg_date = "foo";
      var arg_customerId = "foo";
      var arg_filters = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      var arg_parameters = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("admin/reports/v1/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("usage/users/"));
        pathOffset += 12;
        index = path.indexOf("/dates/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_userKey"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("/dates/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_date"));

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
        unittest.expect(queryMap["customerId"].first, unittest.equals(arg_customerId));
        unittest.expect(queryMap["filters"].first, unittest.equals(arg_filters));
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["parameters"].first, unittest.equals(arg_parameters));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildUsageReports());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_userKey, arg_date, customerId: arg_customerId, filters: arg_filters, maxResults: arg_maxResults, pageToken: arg_pageToken, parameters: arg_parameters).then(unittest.expectAsync(((api.UsageReports response) {
        checkUsageReports(response);
      })));
    });

  });


}

