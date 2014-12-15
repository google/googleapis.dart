library googleapis_beta.replicapool.v1beta2.test;

import "dart:core" as core;
import "dart:collection" as collection;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:http/testing.dart' as http_testing;
import 'package:unittest/unittest.dart' as unittest;
import 'package:googleapis_beta/common/common.dart' as common;
import 'package:googleapis_beta/src/common_internal.dart' as common_internal;
import '../common/common_internal_test.dart' as common_test;

import 'package:googleapis_beta/replicapool/v1beta2.dart' as api;



buildUnnamed1354() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1354(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterInstanceGroupManager = 0;
buildInstanceGroupManager() {
  var o = new api.InstanceGroupManager();
  buildCounterInstanceGroupManager++;
  if (buildCounterInstanceGroupManager < 3) {
    o.baseInstanceName = "foo";
    o.creationTimestamp = "foo";
    o.currentSize = 42;
    o.description = "foo";
    o.fingerprint = "foo";
    o.group = "foo";
    o.id = "foo";
    o.instanceTemplate = "foo";
    o.kind = "foo";
    o.name = "foo";
    o.selfLink = "foo";
    o.targetPools = buildUnnamed1354();
    o.targetSize = 42;
  }
  buildCounterInstanceGroupManager--;
  return o;
}

checkInstanceGroupManager(api.InstanceGroupManager o) {
  buildCounterInstanceGroupManager++;
  if (buildCounterInstanceGroupManager < 3) {
    unittest.expect(o.baseInstanceName, unittest.equals('foo'));
    unittest.expect(o.creationTimestamp, unittest.equals('foo'));
    unittest.expect(o.currentSize, unittest.equals(42));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.fingerprint, unittest.equals('foo'));
    unittest.expect(o.group, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.instanceTemplate, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
    checkUnnamed1354(o.targetPools);
    unittest.expect(o.targetSize, unittest.equals(42));
  }
  buildCounterInstanceGroupManager--;
}

buildUnnamed1355() {
  var o = new core.List<api.InstanceGroupManager>();
  o.add(buildInstanceGroupManager());
  o.add(buildInstanceGroupManager());
  return o;
}

checkUnnamed1355(core.List<api.InstanceGroupManager> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInstanceGroupManager(o[0]);
  checkInstanceGroupManager(o[1]);
}

core.int buildCounterInstanceGroupManagerList = 0;
buildInstanceGroupManagerList() {
  var o = new api.InstanceGroupManagerList();
  buildCounterInstanceGroupManagerList++;
  if (buildCounterInstanceGroupManagerList < 3) {
    o.id = "foo";
    o.items = buildUnnamed1355();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.selfLink = "foo";
  }
  buildCounterInstanceGroupManagerList--;
  return o;
}

checkInstanceGroupManagerList(api.InstanceGroupManagerList o) {
  buildCounterInstanceGroupManagerList++;
  if (buildCounterInstanceGroupManagerList < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed1355(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterInstanceGroupManagerList--;
}

buildUnnamed1356() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1356(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterInstanceGroupManagersAbandonInstancesRequest = 0;
buildInstanceGroupManagersAbandonInstancesRequest() {
  var o = new api.InstanceGroupManagersAbandonInstancesRequest();
  buildCounterInstanceGroupManagersAbandonInstancesRequest++;
  if (buildCounterInstanceGroupManagersAbandonInstancesRequest < 3) {
    o.instances = buildUnnamed1356();
  }
  buildCounterInstanceGroupManagersAbandonInstancesRequest--;
  return o;
}

checkInstanceGroupManagersAbandonInstancesRequest(api.InstanceGroupManagersAbandonInstancesRequest o) {
  buildCounterInstanceGroupManagersAbandonInstancesRequest++;
  if (buildCounterInstanceGroupManagersAbandonInstancesRequest < 3) {
    checkUnnamed1356(o.instances);
  }
  buildCounterInstanceGroupManagersAbandonInstancesRequest--;
}

buildUnnamed1357() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1357(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterInstanceGroupManagersDeleteInstancesRequest = 0;
buildInstanceGroupManagersDeleteInstancesRequest() {
  var o = new api.InstanceGroupManagersDeleteInstancesRequest();
  buildCounterInstanceGroupManagersDeleteInstancesRequest++;
  if (buildCounterInstanceGroupManagersDeleteInstancesRequest < 3) {
    o.instances = buildUnnamed1357();
  }
  buildCounterInstanceGroupManagersDeleteInstancesRequest--;
  return o;
}

checkInstanceGroupManagersDeleteInstancesRequest(api.InstanceGroupManagersDeleteInstancesRequest o) {
  buildCounterInstanceGroupManagersDeleteInstancesRequest++;
  if (buildCounterInstanceGroupManagersDeleteInstancesRequest < 3) {
    checkUnnamed1357(o.instances);
  }
  buildCounterInstanceGroupManagersDeleteInstancesRequest--;
}

buildUnnamed1358() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1358(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterInstanceGroupManagersRecreateInstancesRequest = 0;
buildInstanceGroupManagersRecreateInstancesRequest() {
  var o = new api.InstanceGroupManagersRecreateInstancesRequest();
  buildCounterInstanceGroupManagersRecreateInstancesRequest++;
  if (buildCounterInstanceGroupManagersRecreateInstancesRequest < 3) {
    o.instances = buildUnnamed1358();
  }
  buildCounterInstanceGroupManagersRecreateInstancesRequest--;
  return o;
}

checkInstanceGroupManagersRecreateInstancesRequest(api.InstanceGroupManagersRecreateInstancesRequest o) {
  buildCounterInstanceGroupManagersRecreateInstancesRequest++;
  if (buildCounterInstanceGroupManagersRecreateInstancesRequest < 3) {
    checkUnnamed1358(o.instances);
  }
  buildCounterInstanceGroupManagersRecreateInstancesRequest--;
}

core.int buildCounterInstanceGroupManagersSetInstanceTemplateRequest = 0;
buildInstanceGroupManagersSetInstanceTemplateRequest() {
  var o = new api.InstanceGroupManagersSetInstanceTemplateRequest();
  buildCounterInstanceGroupManagersSetInstanceTemplateRequest++;
  if (buildCounterInstanceGroupManagersSetInstanceTemplateRequest < 3) {
    o.instanceTemplate = "foo";
  }
  buildCounterInstanceGroupManagersSetInstanceTemplateRequest--;
  return o;
}

checkInstanceGroupManagersSetInstanceTemplateRequest(api.InstanceGroupManagersSetInstanceTemplateRequest o) {
  buildCounterInstanceGroupManagersSetInstanceTemplateRequest++;
  if (buildCounterInstanceGroupManagersSetInstanceTemplateRequest < 3) {
    unittest.expect(o.instanceTemplate, unittest.equals('foo'));
  }
  buildCounterInstanceGroupManagersSetInstanceTemplateRequest--;
}

buildUnnamed1359() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1359(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterInstanceGroupManagersSetTargetPoolsRequest = 0;
buildInstanceGroupManagersSetTargetPoolsRequest() {
  var o = new api.InstanceGroupManagersSetTargetPoolsRequest();
  buildCounterInstanceGroupManagersSetTargetPoolsRequest++;
  if (buildCounterInstanceGroupManagersSetTargetPoolsRequest < 3) {
    o.fingerprint = "foo";
    o.targetPools = buildUnnamed1359();
  }
  buildCounterInstanceGroupManagersSetTargetPoolsRequest--;
  return o;
}

checkInstanceGroupManagersSetTargetPoolsRequest(api.InstanceGroupManagersSetTargetPoolsRequest o) {
  buildCounterInstanceGroupManagersSetTargetPoolsRequest++;
  if (buildCounterInstanceGroupManagersSetTargetPoolsRequest < 3) {
    unittest.expect(o.fingerprint, unittest.equals('foo'));
    checkUnnamed1359(o.targetPools);
  }
  buildCounterInstanceGroupManagersSetTargetPoolsRequest--;
}

core.int buildCounterOperationErrorErrors = 0;
buildOperationErrorErrors() {
  var o = new api.OperationErrorErrors();
  buildCounterOperationErrorErrors++;
  if (buildCounterOperationErrorErrors < 3) {
    o.code = "foo";
    o.location = "foo";
    o.message = "foo";
  }
  buildCounterOperationErrorErrors--;
  return o;
}

checkOperationErrorErrors(api.OperationErrorErrors o) {
  buildCounterOperationErrorErrors++;
  if (buildCounterOperationErrorErrors < 3) {
    unittest.expect(o.code, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterOperationErrorErrors--;
}

buildUnnamed1360() {
  var o = new core.List<api.OperationErrorErrors>();
  o.add(buildOperationErrorErrors());
  o.add(buildOperationErrorErrors());
  return o;
}

checkUnnamed1360(core.List<api.OperationErrorErrors> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperationErrorErrors(o[0]);
  checkOperationErrorErrors(o[1]);
}

core.int buildCounterOperationError = 0;
buildOperationError() {
  var o = new api.OperationError();
  buildCounterOperationError++;
  if (buildCounterOperationError < 3) {
    o.errors = buildUnnamed1360();
  }
  buildCounterOperationError--;
  return o;
}

checkOperationError(api.OperationError o) {
  buildCounterOperationError++;
  if (buildCounterOperationError < 3) {
    checkUnnamed1360(o.errors);
  }
  buildCounterOperationError--;
}

core.int buildCounterOperationWarningsData = 0;
buildOperationWarningsData() {
  var o = new api.OperationWarningsData();
  buildCounterOperationWarningsData++;
  if (buildCounterOperationWarningsData < 3) {
    o.key = "foo";
    o.value = "foo";
  }
  buildCounterOperationWarningsData--;
  return o;
}

checkOperationWarningsData(api.OperationWarningsData o) {
  buildCounterOperationWarningsData++;
  if (buildCounterOperationWarningsData < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterOperationWarningsData--;
}

buildUnnamed1361() {
  var o = new core.List<api.OperationWarningsData>();
  o.add(buildOperationWarningsData());
  o.add(buildOperationWarningsData());
  return o;
}

checkUnnamed1361(core.List<api.OperationWarningsData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperationWarningsData(o[0]);
  checkOperationWarningsData(o[1]);
}

core.int buildCounterOperationWarnings = 0;
buildOperationWarnings() {
  var o = new api.OperationWarnings();
  buildCounterOperationWarnings++;
  if (buildCounterOperationWarnings < 3) {
    o.code = "foo";
    o.data = buildUnnamed1361();
    o.message = "foo";
  }
  buildCounterOperationWarnings--;
  return o;
}

checkOperationWarnings(api.OperationWarnings o) {
  buildCounterOperationWarnings++;
  if (buildCounterOperationWarnings < 3) {
    unittest.expect(o.code, unittest.equals('foo'));
    checkUnnamed1361(o.data);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterOperationWarnings--;
}

buildUnnamed1362() {
  var o = new core.List<api.OperationWarnings>();
  o.add(buildOperationWarnings());
  o.add(buildOperationWarnings());
  return o;
}

checkUnnamed1362(core.List<api.OperationWarnings> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperationWarnings(o[0]);
  checkOperationWarnings(o[1]);
}

core.int buildCounterOperation = 0;
buildOperation() {
  var o = new api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.clientOperationId = "foo";
    o.creationTimestamp = "foo";
    o.endTime = "foo";
    o.error = buildOperationError();
    o.httpErrorMessage = "foo";
    o.httpErrorStatusCode = 42;
    o.id = "foo";
    o.insertTime = "foo";
    o.kind = "foo";
    o.name = "foo";
    o.operationType = "foo";
    o.progress = 42;
    o.region = "foo";
    o.selfLink = "foo";
    o.startTime = "foo";
    o.status = "foo";
    o.statusMessage = "foo";
    o.targetId = "foo";
    o.targetLink = "foo";
    o.user = "foo";
    o.warnings = buildUnnamed1362();
    o.zone = "foo";
  }
  buildCounterOperation--;
  return o;
}

checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.clientOperationId, unittest.equals('foo'));
    unittest.expect(o.creationTimestamp, unittest.equals('foo'));
    unittest.expect(o.endTime, unittest.equals('foo'));
    checkOperationError(o.error);
    unittest.expect(o.httpErrorMessage, unittest.equals('foo'));
    unittest.expect(o.httpErrorStatusCode, unittest.equals(42));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.insertTime, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.operationType, unittest.equals('foo'));
    unittest.expect(o.progress, unittest.equals(42));
    unittest.expect(o.region, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
    unittest.expect(o.startTime, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
    unittest.expect(o.statusMessage, unittest.equals('foo'));
    unittest.expect(o.targetId, unittest.equals('foo'));
    unittest.expect(o.targetLink, unittest.equals('foo'));
    unittest.expect(o.user, unittest.equals('foo'));
    checkUnnamed1362(o.warnings);
    unittest.expect(o.zone, unittest.equals('foo'));
  }
  buildCounterOperation--;
}

buildUnnamed1363() {
  var o = new core.List<api.Operation>();
  o.add(buildOperation());
  o.add(buildOperation());
  return o;
}

checkUnnamed1363(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0]);
  checkOperation(o[1]);
}

core.int buildCounterOperationList = 0;
buildOperationList() {
  var o = new api.OperationList();
  buildCounterOperationList++;
  if (buildCounterOperationList < 3) {
    o.id = "foo";
    o.items = buildUnnamed1363();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.selfLink = "foo";
  }
  buildCounterOperationList--;
  return o;
}

checkOperationList(api.OperationList o) {
  buildCounterOperationList++;
  if (buildCounterOperationList < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed1363(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterOperationList--;
}


main() {
  unittest.group("obj-schema-InstanceGroupManager", () {
    unittest.test("to-json--from-json", () {
      var o = buildInstanceGroupManager();
      var od = new api.InstanceGroupManager.fromJson(o.toJson());
      checkInstanceGroupManager(od);
    });
  });


  unittest.group("obj-schema-InstanceGroupManagerList", () {
    unittest.test("to-json--from-json", () {
      var o = buildInstanceGroupManagerList();
      var od = new api.InstanceGroupManagerList.fromJson(o.toJson());
      checkInstanceGroupManagerList(od);
    });
  });


  unittest.group("obj-schema-InstanceGroupManagersAbandonInstancesRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildInstanceGroupManagersAbandonInstancesRequest();
      var od = new api.InstanceGroupManagersAbandonInstancesRequest.fromJson(o.toJson());
      checkInstanceGroupManagersAbandonInstancesRequest(od);
    });
  });


  unittest.group("obj-schema-InstanceGroupManagersDeleteInstancesRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildInstanceGroupManagersDeleteInstancesRequest();
      var od = new api.InstanceGroupManagersDeleteInstancesRequest.fromJson(o.toJson());
      checkInstanceGroupManagersDeleteInstancesRequest(od);
    });
  });


  unittest.group("obj-schema-InstanceGroupManagersRecreateInstancesRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildInstanceGroupManagersRecreateInstancesRequest();
      var od = new api.InstanceGroupManagersRecreateInstancesRequest.fromJson(o.toJson());
      checkInstanceGroupManagersRecreateInstancesRequest(od);
    });
  });


  unittest.group("obj-schema-InstanceGroupManagersSetInstanceTemplateRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildInstanceGroupManagersSetInstanceTemplateRequest();
      var od = new api.InstanceGroupManagersSetInstanceTemplateRequest.fromJson(o.toJson());
      checkInstanceGroupManagersSetInstanceTemplateRequest(od);
    });
  });


  unittest.group("obj-schema-InstanceGroupManagersSetTargetPoolsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildInstanceGroupManagersSetTargetPoolsRequest();
      var od = new api.InstanceGroupManagersSetTargetPoolsRequest.fromJson(o.toJson());
      checkInstanceGroupManagersSetTargetPoolsRequest(od);
    });
  });


  unittest.group("obj-schema-OperationErrorErrors", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperationErrorErrors();
      var od = new api.OperationErrorErrors.fromJson(o.toJson());
      checkOperationErrorErrors(od);
    });
  });


  unittest.group("obj-schema-OperationError", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperationError();
      var od = new api.OperationError.fromJson(o.toJson());
      checkOperationError(od);
    });
  });


  unittest.group("obj-schema-OperationWarningsData", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperationWarningsData();
      var od = new api.OperationWarningsData.fromJson(o.toJson());
      checkOperationWarningsData(od);
    });
  });


  unittest.group("obj-schema-OperationWarnings", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperationWarnings();
      var od = new api.OperationWarnings.fromJson(o.toJson());
      checkOperationWarnings(od);
    });
  });


  unittest.group("obj-schema-Operation", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperation();
      var od = new api.Operation.fromJson(o.toJson());
      checkOperation(od);
    });
  });


  unittest.group("obj-schema-OperationList", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperationList();
      var od = new api.OperationList.fromJson(o.toJson());
      checkOperationList(od);
    });
  });


  unittest.group("resource-InstanceGroupManagersResourceApi", () {
    unittest.test("method--abandonInstances", () {

      var mock = new common_test.HttpServerMock();
      api.InstanceGroupManagersResourceApi res = new api.ReplicapoolApi(mock).instanceGroupManagers;
      var arg_request = buildInstanceGroupManagersAbandonInstancesRequest();
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_instanceGroupManager = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.InstanceGroupManagersAbandonInstancesRequest.fromJson(json);
        checkInstanceGroupManagersAbandonInstancesRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.abandonInstances(arg_request, arg_project, arg_zone, arg_instanceGroupManager).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--delete", () {

      var mock = new common_test.HttpServerMock();
      api.InstanceGroupManagersResourceApi res = new api.ReplicapoolApi(mock).instanceGroupManagers;
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_instanceGroupManager = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.delete(arg_project, arg_zone, arg_instanceGroupManager).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--deleteInstances", () {

      var mock = new common_test.HttpServerMock();
      api.InstanceGroupManagersResourceApi res = new api.ReplicapoolApi(mock).instanceGroupManagers;
      var arg_request = buildInstanceGroupManagersDeleteInstancesRequest();
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_instanceGroupManager = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.InstanceGroupManagersDeleteInstancesRequest.fromJson(json);
        checkInstanceGroupManagersDeleteInstancesRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.deleteInstances(arg_request, arg_project, arg_zone, arg_instanceGroupManager).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.InstanceGroupManagersResourceApi res = new api.ReplicapoolApi(mock).instanceGroupManagers;
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_instanceGroupManager = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.JSON.encode(buildInstanceGroupManager());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_project, arg_zone, arg_instanceGroupManager).then(unittest.expectAsync(((api.InstanceGroupManager response) {
        checkInstanceGroupManager(response);
      })));
    });

    unittest.test("method--insert", () {

      var mock = new common_test.HttpServerMock();
      api.InstanceGroupManagersResourceApi res = new api.ReplicapoolApi(mock).instanceGroupManagers;
      var arg_request = buildInstanceGroupManager();
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_size = 42;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.InstanceGroupManager.fromJson(json);
        checkInstanceGroupManager(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        unittest.expect(core.int.parse(queryMap["size"].first), unittest.equals(arg_size));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.insert(arg_request, arg_project, arg_zone, arg_size).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.InstanceGroupManagersResourceApi res = new api.ReplicapoolApi(mock).instanceGroupManagers;
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildInstanceGroupManagerList());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_project, arg_zone, filter: arg_filter, maxResults: arg_maxResults, pageToken: arg_pageToken).then(unittest.expectAsync(((api.InstanceGroupManagerList response) {
        checkInstanceGroupManagerList(response);
      })));
    });

    unittest.test("method--recreateInstances", () {

      var mock = new common_test.HttpServerMock();
      api.InstanceGroupManagersResourceApi res = new api.ReplicapoolApi(mock).instanceGroupManagers;
      var arg_request = buildInstanceGroupManagersRecreateInstancesRequest();
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_instanceGroupManager = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.InstanceGroupManagersRecreateInstancesRequest.fromJson(json);
        checkInstanceGroupManagersRecreateInstancesRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.recreateInstances(arg_request, arg_project, arg_zone, arg_instanceGroupManager).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--resize", () {

      var mock = new common_test.HttpServerMock();
      api.InstanceGroupManagersResourceApi res = new api.ReplicapoolApi(mock).instanceGroupManagers;
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_instanceGroupManager = "foo";
      var arg_size = 42;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        unittest.expect(core.int.parse(queryMap["size"].first), unittest.equals(arg_size));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.resize(arg_project, arg_zone, arg_instanceGroupManager, arg_size).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--setInstanceTemplate", () {

      var mock = new common_test.HttpServerMock();
      api.InstanceGroupManagersResourceApi res = new api.ReplicapoolApi(mock).instanceGroupManagers;
      var arg_request = buildInstanceGroupManagersSetInstanceTemplateRequest();
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_instanceGroupManager = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.InstanceGroupManagersSetInstanceTemplateRequest.fromJson(json);
        checkInstanceGroupManagersSetInstanceTemplateRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.setInstanceTemplate(arg_request, arg_project, arg_zone, arg_instanceGroupManager).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--setTargetPools", () {

      var mock = new common_test.HttpServerMock();
      api.InstanceGroupManagersResourceApi res = new api.ReplicapoolApi(mock).instanceGroupManagers;
      var arg_request = buildInstanceGroupManagersSetTargetPoolsRequest();
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_instanceGroupManager = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.InstanceGroupManagersSetTargetPoolsRequest.fromJson(json);
        checkInstanceGroupManagersSetTargetPoolsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.setTargetPools(arg_request, arg_project, arg_zone, arg_instanceGroupManager).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

  });


  unittest.group("resource-ZoneOperationsResourceApi", () {
    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.ZoneOperationsResourceApi res = new api.ReplicapoolApi(mock).zoneOperations;
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_operation = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_project, arg_zone, arg_operation).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.ZoneOperationsResourceApi res = new api.ReplicapoolApi(mock).zoneOperations;
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperationList());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_project, arg_zone, filter: arg_filter, maxResults: arg_maxResults, pageToken: arg_pageToken).then(unittest.expectAsync(((api.OperationList response) {
        checkOperationList(response);
      })));
    });

  });


}

