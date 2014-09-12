library googleapis.coordinate.v1.test;

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

import 'package:googleapis/coordinate/v1.dart' as api;



core.int buildCounterCustomField = 0;
buildCustomField() {
  var o = new api.CustomField();
  buildCounterCustomField++;
  if (buildCounterCustomField < 3) {
    o.customFieldId = "foo";
    o.kind = "foo";
    o.value = "foo";
  }
  buildCounterCustomField--;
  return o;
}

checkCustomField(api.CustomField o) {
  buildCounterCustomField++;
  if (buildCounterCustomField < 3) {
    unittest.expect(o.customFieldId, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterCustomField--;
}

core.int buildCounterCustomFieldDef = 0;
buildCustomFieldDef() {
  var o = new api.CustomFieldDef();
  buildCounterCustomFieldDef++;
  if (buildCounterCustomFieldDef < 3) {
    o.enabled = true;
    o.id = "foo";
    o.kind = "foo";
    o.name = "foo";
    o.requiredForCheckout = true;
    o.type = "foo";
  }
  buildCounterCustomFieldDef--;
  return o;
}

checkCustomFieldDef(api.CustomFieldDef o) {
  buildCounterCustomFieldDef++;
  if (buildCounterCustomFieldDef < 3) {
    unittest.expect(o.enabled, unittest.isTrue);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.requiredForCheckout, unittest.isTrue);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterCustomFieldDef--;
}

buildUnnamed445() {
  var o = new core.List<api.CustomFieldDef>();
  o.add(buildCustomFieldDef());
  o.add(buildCustomFieldDef());
  return o;
}

checkUnnamed445(core.List<api.CustomFieldDef> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomFieldDef(o[0]);
  checkCustomFieldDef(o[1]);
}

core.int buildCounterCustomFieldDefListResponse = 0;
buildCustomFieldDefListResponse() {
  var o = new api.CustomFieldDefListResponse();
  buildCounterCustomFieldDefListResponse++;
  if (buildCounterCustomFieldDefListResponse < 3) {
    o.items = buildUnnamed445();
    o.kind = "foo";
  }
  buildCounterCustomFieldDefListResponse--;
  return o;
}

checkCustomFieldDefListResponse(api.CustomFieldDefListResponse o) {
  buildCounterCustomFieldDefListResponse++;
  if (buildCounterCustomFieldDefListResponse < 3) {
    checkUnnamed445(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterCustomFieldDefListResponse--;
}

buildUnnamed446() {
  var o = new core.List<api.CustomField>();
  o.add(buildCustomField());
  o.add(buildCustomField());
  return o;
}

checkUnnamed446(core.List<api.CustomField> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomField(o[0]);
  checkCustomField(o[1]);
}

core.int buildCounterCustomFields = 0;
buildCustomFields() {
  var o = new api.CustomFields();
  buildCounterCustomFields++;
  if (buildCounterCustomFields < 3) {
    o.customField = buildUnnamed446();
    o.kind = "foo";
  }
  buildCounterCustomFields--;
  return o;
}

checkCustomFields(api.CustomFields o) {
  buildCounterCustomFields++;
  if (buildCounterCustomFields < 3) {
    checkUnnamed446(o.customField);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterCustomFields--;
}

buildUnnamed447() {
  var o = new core.List<api.JobChange>();
  o.add(buildJobChange());
  o.add(buildJobChange());
  return o;
}

checkUnnamed447(core.List<api.JobChange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJobChange(o[0]);
  checkJobChange(o[1]);
}

core.int buildCounterJob = 0;
buildJob() {
  var o = new api.Job();
  buildCounterJob++;
  if (buildCounterJob < 3) {
    o.id = "foo";
    o.jobChange = buildUnnamed447();
    o.kind = "foo";
    o.state = buildJobState();
  }
  buildCounterJob--;
  return o;
}

checkJob(api.Job o) {
  buildCounterJob++;
  if (buildCounterJob < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed447(o.jobChange);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkJobState(o.state);
  }
  buildCounterJob--;
}

core.int buildCounterJobChange = 0;
buildJobChange() {
  var o = new api.JobChange();
  buildCounterJobChange++;
  if (buildCounterJobChange < 3) {
    o.kind = "foo";
    o.state = buildJobState();
    o.timestamp = "foo";
  }
  buildCounterJobChange--;
  return o;
}

checkJobChange(api.JobChange o) {
  buildCounterJobChange++;
  if (buildCounterJobChange < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkJobState(o.state);
    unittest.expect(o.timestamp, unittest.equals('foo'));
  }
  buildCounterJobChange--;
}

buildUnnamed448() {
  var o = new core.List<api.Job>();
  o.add(buildJob());
  o.add(buildJob());
  return o;
}

checkUnnamed448(core.List<api.Job> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJob(o[0]);
  checkJob(o[1]);
}

core.int buildCounterJobListResponse = 0;
buildJobListResponse() {
  var o = new api.JobListResponse();
  buildCounterJobListResponse++;
  if (buildCounterJobListResponse < 3) {
    o.items = buildUnnamed448();
    o.kind = "foo";
    o.nextPageToken = "foo";
  }
  buildCounterJobListResponse--;
  return o;
}

checkJobListResponse(api.JobListResponse o) {
  buildCounterJobListResponse++;
  if (buildCounterJobListResponse < 3) {
    checkUnnamed448(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterJobListResponse--;
}

buildUnnamed449() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed449(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterJobState = 0;
buildJobState() {
  var o = new api.JobState();
  buildCounterJobState++;
  if (buildCounterJobState < 3) {
    o.assignee = "foo";
    o.customFields = buildCustomFields();
    o.customerName = "foo";
    o.customerPhoneNumber = "foo";
    o.kind = "foo";
    o.location = buildLocation();
    o.note = buildUnnamed449();
    o.progress = "foo";
    o.title = "foo";
  }
  buildCounterJobState--;
  return o;
}

checkJobState(api.JobState o) {
  buildCounterJobState++;
  if (buildCounterJobState < 3) {
    unittest.expect(o.assignee, unittest.equals('foo'));
    checkCustomFields(o.customFields);
    unittest.expect(o.customerName, unittest.equals('foo'));
    unittest.expect(o.customerPhoneNumber, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkLocation(o.location);
    checkUnnamed449(o.note);
    unittest.expect(o.progress, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterJobState--;
}

buildUnnamed450() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed450(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterLocation = 0;
buildLocation() {
  var o = new api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.addressLine = buildUnnamed450();
    o.kind = "foo";
    o.lat = 42.0;
    o.lng = 42.0;
  }
  buildCounterLocation--;
  return o;
}

checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    checkUnnamed450(o.addressLine);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.lat, unittest.equals(42.0));
    unittest.expect(o.lng, unittest.equals(42.0));
  }
  buildCounterLocation--;
}

buildUnnamed451() {
  var o = new core.List<api.LocationRecord>();
  o.add(buildLocationRecord());
  o.add(buildLocationRecord());
  return o;
}

checkUnnamed451(core.List<api.LocationRecord> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocationRecord(o[0]);
  checkLocationRecord(o[1]);
}

core.int buildCounterLocationListResponse = 0;
buildLocationListResponse() {
  var o = new api.LocationListResponse();
  buildCounterLocationListResponse++;
  if (buildCounterLocationListResponse < 3) {
    o.items = buildUnnamed451();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.tokenPagination = buildTokenPagination();
  }
  buildCounterLocationListResponse--;
  return o;
}

checkLocationListResponse(api.LocationListResponse o) {
  buildCounterLocationListResponse++;
  if (buildCounterLocationListResponse < 3) {
    checkUnnamed451(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkTokenPagination(o.tokenPagination);
  }
  buildCounterLocationListResponse--;
}

core.int buildCounterLocationRecord = 0;
buildLocationRecord() {
  var o = new api.LocationRecord();
  buildCounterLocationRecord++;
  if (buildCounterLocationRecord < 3) {
    o.collectionTime = "foo";
    o.confidenceRadius = 42.0;
    o.kind = "foo";
    o.latitude = 42.0;
    o.longitude = 42.0;
  }
  buildCounterLocationRecord--;
  return o;
}

checkLocationRecord(api.LocationRecord o) {
  buildCounterLocationRecord++;
  if (buildCounterLocationRecord < 3) {
    unittest.expect(o.collectionTime, unittest.equals('foo'));
    unittest.expect(o.confidenceRadius, unittest.equals(42.0));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.latitude, unittest.equals(42.0));
    unittest.expect(o.longitude, unittest.equals(42.0));
  }
  buildCounterLocationRecord--;
}

core.int buildCounterSchedule = 0;
buildSchedule() {
  var o = new api.Schedule();
  buildCounterSchedule++;
  if (buildCounterSchedule < 3) {
    o.allDay = true;
    o.duration = "foo";
    o.endTime = "foo";
    o.kind = "foo";
    o.startTime = "foo";
  }
  buildCounterSchedule--;
  return o;
}

checkSchedule(api.Schedule o) {
  buildCounterSchedule++;
  if (buildCounterSchedule < 3) {
    unittest.expect(o.allDay, unittest.isTrue);
    unittest.expect(o.duration, unittest.equals('foo'));
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.startTime, unittest.equals('foo'));
  }
  buildCounterSchedule--;
}

core.int buildCounterTokenPagination = 0;
buildTokenPagination() {
  var o = new api.TokenPagination();
  buildCounterTokenPagination++;
  if (buildCounterTokenPagination < 3) {
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.previousPageToken = "foo";
  }
  buildCounterTokenPagination--;
  return o;
}

checkTokenPagination(api.TokenPagination o) {
  buildCounterTokenPagination++;
  if (buildCounterTokenPagination < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.previousPageToken, unittest.equals('foo'));
  }
  buildCounterTokenPagination--;
}

core.int buildCounterWorker = 0;
buildWorker() {
  var o = new api.Worker();
  buildCounterWorker++;
  if (buildCounterWorker < 3) {
    o.id = "foo";
    o.kind = "foo";
  }
  buildCounterWorker--;
  return o;
}

checkWorker(api.Worker o) {
  buildCounterWorker++;
  if (buildCounterWorker < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterWorker--;
}

buildUnnamed452() {
  var o = new core.List<api.Worker>();
  o.add(buildWorker());
  o.add(buildWorker());
  return o;
}

checkUnnamed452(core.List<api.Worker> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWorker(o[0]);
  checkWorker(o[1]);
}

core.int buildCounterWorkerListResponse = 0;
buildWorkerListResponse() {
  var o = new api.WorkerListResponse();
  buildCounterWorkerListResponse++;
  if (buildCounterWorkerListResponse < 3) {
    o.items = buildUnnamed452();
    o.kind = "foo";
  }
  buildCounterWorkerListResponse--;
  return o;
}

checkWorkerListResponse(api.WorkerListResponse o) {
  buildCounterWorkerListResponse++;
  if (buildCounterWorkerListResponse < 3) {
    checkUnnamed452(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterWorkerListResponse--;
}

buildUnnamed453() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed453(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed454() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed454(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed455() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed455(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}


main() {
  unittest.group("obj-schema-CustomField", () {
    unittest.test("to-json--from-json", () {
      var o = buildCustomField();
      var od = new api.CustomField.fromJson(o.toJson());
      checkCustomField(od);
    });
  });


  unittest.group("obj-schema-CustomFieldDef", () {
    unittest.test("to-json--from-json", () {
      var o = buildCustomFieldDef();
      var od = new api.CustomFieldDef.fromJson(o.toJson());
      checkCustomFieldDef(od);
    });
  });


  unittest.group("obj-schema-CustomFieldDefListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildCustomFieldDefListResponse();
      var od = new api.CustomFieldDefListResponse.fromJson(o.toJson());
      checkCustomFieldDefListResponse(od);
    });
  });


  unittest.group("obj-schema-CustomFields", () {
    unittest.test("to-json--from-json", () {
      var o = buildCustomFields();
      var od = new api.CustomFields.fromJson(o.toJson());
      checkCustomFields(od);
    });
  });


  unittest.group("obj-schema-Job", () {
    unittest.test("to-json--from-json", () {
      var o = buildJob();
      var od = new api.Job.fromJson(o.toJson());
      checkJob(od);
    });
  });


  unittest.group("obj-schema-JobChange", () {
    unittest.test("to-json--from-json", () {
      var o = buildJobChange();
      var od = new api.JobChange.fromJson(o.toJson());
      checkJobChange(od);
    });
  });


  unittest.group("obj-schema-JobListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildJobListResponse();
      var od = new api.JobListResponse.fromJson(o.toJson());
      checkJobListResponse(od);
    });
  });


  unittest.group("obj-schema-JobState", () {
    unittest.test("to-json--from-json", () {
      var o = buildJobState();
      var od = new api.JobState.fromJson(o.toJson());
      checkJobState(od);
    });
  });


  unittest.group("obj-schema-Location", () {
    unittest.test("to-json--from-json", () {
      var o = buildLocation();
      var od = new api.Location.fromJson(o.toJson());
      checkLocation(od);
    });
  });


  unittest.group("obj-schema-LocationListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildLocationListResponse();
      var od = new api.LocationListResponse.fromJson(o.toJson());
      checkLocationListResponse(od);
    });
  });


  unittest.group("obj-schema-LocationRecord", () {
    unittest.test("to-json--from-json", () {
      var o = buildLocationRecord();
      var od = new api.LocationRecord.fromJson(o.toJson());
      checkLocationRecord(od);
    });
  });


  unittest.group("obj-schema-Schedule", () {
    unittest.test("to-json--from-json", () {
      var o = buildSchedule();
      var od = new api.Schedule.fromJson(o.toJson());
      checkSchedule(od);
    });
  });


  unittest.group("obj-schema-TokenPagination", () {
    unittest.test("to-json--from-json", () {
      var o = buildTokenPagination();
      var od = new api.TokenPagination.fromJson(o.toJson());
      checkTokenPagination(od);
    });
  });


  unittest.group("obj-schema-Worker", () {
    unittest.test("to-json--from-json", () {
      var o = buildWorker();
      var od = new api.Worker.fromJson(o.toJson());
      checkWorker(od);
    });
  });


  unittest.group("obj-schema-WorkerListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildWorkerListResponse();
      var od = new api.WorkerListResponse.fromJson(o.toJson());
      checkWorkerListResponse(od);
    });
  });


  unittest.group("resource-CustomFieldDefResourceApi", () {
    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.CustomFieldDefResourceApi res = new api.CoordinateApi(mock).customFieldDef;
      var arg_teamId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("/coordinate/v1/teams/"));
        pathOffset += 21;
        index = path.indexOf("/custom_fields", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_teamId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 14), unittest.equals("/custom_fields"));
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
        var resp = convert.JSON.encode(buildCustomFieldDefListResponse());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_teamId).then(unittest.expectAsync(((api.CustomFieldDefListResponse response) {
        checkCustomFieldDefListResponse(response);
      })));
    });

  });


  unittest.group("resource-JobsResourceApi", () {
    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.JobsResourceApi res = new api.CoordinateApi(mock).jobs;
      var arg_teamId = "foo";
      var arg_jobId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("/coordinate/v1/teams/"));
        pathOffset += 21;
        index = path.indexOf("/jobs/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_teamId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("/jobs/"));
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_jobId"));

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
        var resp = convert.JSON.encode(buildJob());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_teamId, arg_jobId).then(unittest.expectAsync(((api.Job response) {
        checkJob(response);
      })));
    });

    unittest.test("method--insert", () {

      var mock = new common_test.HttpServerMock();
      api.JobsResourceApi res = new api.CoordinateApi(mock).jobs;
      var arg_request = buildJob();
      var arg_teamId = "foo";
      var arg_address = "foo";
      var arg_lat = 42.0;
      var arg_lng = 42.0;
      var arg_title = "foo";
      var arg_assignee = "foo";
      var arg_customField = buildUnnamed453();
      var arg_customerName = "foo";
      var arg_customerPhoneNumber = "foo";
      var arg_note = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Job.fromJson(json);
        checkJob(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("/coordinate/v1/teams/"));
        pathOffset += 21;
        index = path.indexOf("/jobs", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_teamId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 5), unittest.equals("/jobs"));
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
        unittest.expect(queryMap["address"].first, unittest.equals(arg_address));
        unittest.expect(core.num.parse(queryMap["lat"].first), unittest.equals(arg_lat));
        unittest.expect(core.num.parse(queryMap["lng"].first), unittest.equals(arg_lng));
        unittest.expect(queryMap["title"].first, unittest.equals(arg_title));
        unittest.expect(queryMap["assignee"].first, unittest.equals(arg_assignee));
        unittest.expect(queryMap["customField"], unittest.equals(arg_customField));
        unittest.expect(queryMap["customerName"].first, unittest.equals(arg_customerName));
        unittest.expect(queryMap["customerPhoneNumber"].first, unittest.equals(arg_customerPhoneNumber));
        unittest.expect(queryMap["note"].first, unittest.equals(arg_note));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildJob());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.insert(arg_request, arg_teamId, arg_address, arg_lat, arg_lng, arg_title, assignee: arg_assignee, customField: arg_customField, customerName: arg_customerName, customerPhoneNumber: arg_customerPhoneNumber, note: arg_note).then(unittest.expectAsync(((api.Job response) {
        checkJob(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.JobsResourceApi res = new api.CoordinateApi(mock).jobs;
      var arg_teamId = "foo";
      var arg_maxResults = 42;
      var arg_minModifiedTimestampMs = "foo";
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("/coordinate/v1/teams/"));
        pathOffset += 21;
        index = path.indexOf("/jobs", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_teamId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 5), unittest.equals("/jobs"));
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
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["minModifiedTimestampMs"].first, unittest.equals(arg_minModifiedTimestampMs));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildJobListResponse());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_teamId, maxResults: arg_maxResults, minModifiedTimestampMs: arg_minModifiedTimestampMs, pageToken: arg_pageToken).then(unittest.expectAsync(((api.JobListResponse response) {
        checkJobListResponse(response);
      })));
    });

    unittest.test("method--patch", () {

      var mock = new common_test.HttpServerMock();
      api.JobsResourceApi res = new api.CoordinateApi(mock).jobs;
      var arg_request = buildJob();
      var arg_teamId = "foo";
      var arg_jobId = "foo";
      var arg_address = "foo";
      var arg_assignee = "foo";
      var arg_customField = buildUnnamed454();
      var arg_customerName = "foo";
      var arg_customerPhoneNumber = "foo";
      var arg_lat = 42.0;
      var arg_lng = 42.0;
      var arg_note = "foo";
      var arg_progress = "foo";
      var arg_title = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Job.fromJson(json);
        checkJob(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("/coordinate/v1/teams/"));
        pathOffset += 21;
        index = path.indexOf("/jobs/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_teamId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("/jobs/"));
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_jobId"));

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
        unittest.expect(queryMap["address"].first, unittest.equals(arg_address));
        unittest.expect(queryMap["assignee"].first, unittest.equals(arg_assignee));
        unittest.expect(queryMap["customField"], unittest.equals(arg_customField));
        unittest.expect(queryMap["customerName"].first, unittest.equals(arg_customerName));
        unittest.expect(queryMap["customerPhoneNumber"].first, unittest.equals(arg_customerPhoneNumber));
        unittest.expect(core.num.parse(queryMap["lat"].first), unittest.equals(arg_lat));
        unittest.expect(core.num.parse(queryMap["lng"].first), unittest.equals(arg_lng));
        unittest.expect(queryMap["note"].first, unittest.equals(arg_note));
        unittest.expect(queryMap["progress"].first, unittest.equals(arg_progress));
        unittest.expect(queryMap["title"].first, unittest.equals(arg_title));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildJob());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.patch(arg_request, arg_teamId, arg_jobId, address: arg_address, assignee: arg_assignee, customField: arg_customField, customerName: arg_customerName, customerPhoneNumber: arg_customerPhoneNumber, lat: arg_lat, lng: arg_lng, note: arg_note, progress: arg_progress, title: arg_title).then(unittest.expectAsync(((api.Job response) {
        checkJob(response);
      })));
    });

    unittest.test("method--update", () {

      var mock = new common_test.HttpServerMock();
      api.JobsResourceApi res = new api.CoordinateApi(mock).jobs;
      var arg_request = buildJob();
      var arg_teamId = "foo";
      var arg_jobId = "foo";
      var arg_address = "foo";
      var arg_assignee = "foo";
      var arg_customField = buildUnnamed455();
      var arg_customerName = "foo";
      var arg_customerPhoneNumber = "foo";
      var arg_lat = 42.0;
      var arg_lng = 42.0;
      var arg_note = "foo";
      var arg_progress = "foo";
      var arg_title = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Job.fromJson(json);
        checkJob(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("/coordinate/v1/teams/"));
        pathOffset += 21;
        index = path.indexOf("/jobs/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_teamId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("/jobs/"));
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_jobId"));

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
        unittest.expect(queryMap["address"].first, unittest.equals(arg_address));
        unittest.expect(queryMap["assignee"].first, unittest.equals(arg_assignee));
        unittest.expect(queryMap["customField"], unittest.equals(arg_customField));
        unittest.expect(queryMap["customerName"].first, unittest.equals(arg_customerName));
        unittest.expect(queryMap["customerPhoneNumber"].first, unittest.equals(arg_customerPhoneNumber));
        unittest.expect(core.num.parse(queryMap["lat"].first), unittest.equals(arg_lat));
        unittest.expect(core.num.parse(queryMap["lng"].first), unittest.equals(arg_lng));
        unittest.expect(queryMap["note"].first, unittest.equals(arg_note));
        unittest.expect(queryMap["progress"].first, unittest.equals(arg_progress));
        unittest.expect(queryMap["title"].first, unittest.equals(arg_title));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildJob());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.update(arg_request, arg_teamId, arg_jobId, address: arg_address, assignee: arg_assignee, customField: arg_customField, customerName: arg_customerName, customerPhoneNumber: arg_customerPhoneNumber, lat: arg_lat, lng: arg_lng, note: arg_note, progress: arg_progress, title: arg_title).then(unittest.expectAsync(((api.Job response) {
        checkJob(response);
      })));
    });

  });


  unittest.group("resource-LocationResourceApi", () {
    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.LocationResourceApi res = new api.CoordinateApi(mock).location;
      var arg_teamId = "foo";
      var arg_workerEmail = "foo";
      var arg_startTimestampMs = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("/coordinate/v1/teams/"));
        pathOffset += 21;
        index = path.indexOf("/workers/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_teamId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("/workers/"));
        pathOffset += 9;
        index = path.indexOf("/locations", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_workerEmail"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("/locations"));
        pathOffset += 10;

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
        unittest.expect(queryMap["startTimestampMs"].first, unittest.equals(arg_startTimestampMs));
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildLocationListResponse());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_teamId, arg_workerEmail, arg_startTimestampMs, maxResults: arg_maxResults, pageToken: arg_pageToken).then(unittest.expectAsync(((api.LocationListResponse response) {
        checkLocationListResponse(response);
      })));
    });

  });


  unittest.group("resource-ScheduleResourceApi", () {
    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.ScheduleResourceApi res = new api.CoordinateApi(mock).schedule;
      var arg_teamId = "foo";
      var arg_jobId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("/coordinate/v1/teams/"));
        pathOffset += 21;
        index = path.indexOf("/jobs/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_teamId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("/jobs/"));
        pathOffset += 6;
        index = path.indexOf("/schedule", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_jobId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("/schedule"));
        pathOffset += 9;

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
        var resp = convert.JSON.encode(buildSchedule());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_teamId, arg_jobId).then(unittest.expectAsync(((api.Schedule response) {
        checkSchedule(response);
      })));
    });

    unittest.test("method--patch", () {

      var mock = new common_test.HttpServerMock();
      api.ScheduleResourceApi res = new api.CoordinateApi(mock).schedule;
      var arg_request = buildSchedule();
      var arg_teamId = "foo";
      var arg_jobId = "foo";
      var arg_allDay = true;
      var arg_duration = "foo";
      var arg_endTime = "foo";
      var arg_startTime = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Schedule.fromJson(json);
        checkSchedule(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("/coordinate/v1/teams/"));
        pathOffset += 21;
        index = path.indexOf("/jobs/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_teamId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("/jobs/"));
        pathOffset += 6;
        index = path.indexOf("/schedule", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_jobId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("/schedule"));
        pathOffset += 9;

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
        unittest.expect(queryMap["allDay"].first, unittest.equals("$arg_allDay"));
        unittest.expect(queryMap["duration"].first, unittest.equals(arg_duration));
        unittest.expect(queryMap["endTime"].first, unittest.equals(arg_endTime));
        unittest.expect(queryMap["startTime"].first, unittest.equals(arg_startTime));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildSchedule());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.patch(arg_request, arg_teamId, arg_jobId, allDay: arg_allDay, duration: arg_duration, endTime: arg_endTime, startTime: arg_startTime).then(unittest.expectAsync(((api.Schedule response) {
        checkSchedule(response);
      })));
    });

    unittest.test("method--update", () {

      var mock = new common_test.HttpServerMock();
      api.ScheduleResourceApi res = new api.CoordinateApi(mock).schedule;
      var arg_request = buildSchedule();
      var arg_teamId = "foo";
      var arg_jobId = "foo";
      var arg_allDay = true;
      var arg_duration = "foo";
      var arg_endTime = "foo";
      var arg_startTime = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Schedule.fromJson(json);
        checkSchedule(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("/coordinate/v1/teams/"));
        pathOffset += 21;
        index = path.indexOf("/jobs/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_teamId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("/jobs/"));
        pathOffset += 6;
        index = path.indexOf("/schedule", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_jobId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("/schedule"));
        pathOffset += 9;

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
        unittest.expect(queryMap["allDay"].first, unittest.equals("$arg_allDay"));
        unittest.expect(queryMap["duration"].first, unittest.equals(arg_duration));
        unittest.expect(queryMap["endTime"].first, unittest.equals(arg_endTime));
        unittest.expect(queryMap["startTime"].first, unittest.equals(arg_startTime));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildSchedule());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.update(arg_request, arg_teamId, arg_jobId, allDay: arg_allDay, duration: arg_duration, endTime: arg_endTime, startTime: arg_startTime).then(unittest.expectAsync(((api.Schedule response) {
        checkSchedule(response);
      })));
    });

  });


  unittest.group("resource-WorkerResourceApi", () {
    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.WorkerResourceApi res = new api.CoordinateApi(mock).worker;
      var arg_teamId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("/coordinate/v1/teams/"));
        pathOffset += 21;
        index = path.indexOf("/workers", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_teamId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("/workers"));
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
        var resp = convert.JSON.encode(buildWorkerListResponse());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_teamId).then(unittest.expectAsync(((api.WorkerListResponse response) {
        checkWorkerListResponse(response);
      })));
    });

  });


}

