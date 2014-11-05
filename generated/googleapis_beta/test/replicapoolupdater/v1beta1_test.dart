library googleapis_beta.replicapoolupdater.v1beta1.test;

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

import 'package:googleapis_beta/replicapoolupdater/v1beta1.dart' as api;



core.int buildCounterInsertResponse = 0;
buildInsertResponse() {
  var o = new api.InsertResponse();
  buildCounterInsertResponse++;
  if (buildCounterInsertResponse < 3) {
    o.update = "foo";
  }
  buildCounterInsertResponse--;
  return o;
}

checkInsertResponse(api.InsertResponse o) {
  buildCounterInsertResponse++;
  if (buildCounterInsertResponse < 3) {
    unittest.expect(o.update, unittest.equals('foo'));
  }
  buildCounterInsertResponse--;
}

core.int buildCounterInstanceUpdate = 0;
buildInstanceUpdate() {
  var o = new api.InstanceUpdate();
  buildCounterInstanceUpdate++;
  if (buildCounterInstanceUpdate < 3) {
    o.instanceName = "foo";
    o.state = "foo";
  }
  buildCounterInstanceUpdate--;
  return o;
}

checkInstanceUpdate(api.InstanceUpdate o) {
  buildCounterInstanceUpdate++;
  if (buildCounterInstanceUpdate < 3) {
    unittest.expect(o.instanceName, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
  }
  buildCounterInstanceUpdate--;
}

buildUnnamed1375() {
  var o = new core.List<api.InstanceUpdate>();
  o.add(buildInstanceUpdate());
  o.add(buildInstanceUpdate());
  return o;
}

checkUnnamed1375(core.List<api.InstanceUpdate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInstanceUpdate(o[0]);
  checkInstanceUpdate(o[1]);
}

core.int buildCounterUpdate = 0;
buildUpdate() {
  var o = new api.Update();
  buildCounterUpdate++;
  if (buildCounterUpdate < 3) {
    o.details = "foo";
    o.handle = "foo";
    o.instanceTemplate = "foo";
    o.instanceUpdates = buildUnnamed1375();
    o.kind = "foo";
    o.policy = buildUpdatePolicy();
    o.selfLink = "foo";
    o.state = "foo";
    o.targetState = "foo";
  }
  buildCounterUpdate--;
  return o;
}

checkUpdate(api.Update o) {
  buildCounterUpdate++;
  if (buildCounterUpdate < 3) {
    unittest.expect(o.details, unittest.equals('foo'));
    unittest.expect(o.handle, unittest.equals('foo'));
    unittest.expect(o.instanceTemplate, unittest.equals('foo'));
    checkUnnamed1375(o.instanceUpdates);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUpdatePolicy(o.policy);
    unittest.expect(o.selfLink, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.targetState, unittest.equals('foo'));
  }
  buildCounterUpdate--;
}

buildUnnamed1376() {
  var o = new core.List<api.Update>();
  o.add(buildUpdate());
  o.add(buildUpdate());
  return o;
}

checkUnnamed1376(core.List<api.Update> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUpdate(o[0]);
  checkUpdate(o[1]);
}

core.int buildCounterUpdateList = 0;
buildUpdateList() {
  var o = new api.UpdateList();
  buildCounterUpdateList++;
  if (buildCounterUpdateList < 3) {
    o.items = buildUnnamed1376();
    o.nextPageToken = "foo";
  }
  buildCounterUpdateList--;
  return o;
}

checkUpdateList(api.UpdateList o) {
  buildCounterUpdateList++;
  if (buildCounterUpdateList < 3) {
    checkUnnamed1376(o.items);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterUpdateList--;
}

core.int buildCounterUpdatePolicy = 0;
buildUpdatePolicy() {
  var o = new api.UpdatePolicy();
  buildCounterUpdatePolicy++;
  if (buildCounterUpdatePolicy < 3) {
    o.canary = buildUpdatePolicyCanary();
    o.maxNumConcurrentInstances = 42;
    o.sleepAfterInstanceRestartSec = 42;
  }
  buildCounterUpdatePolicy--;
  return o;
}

checkUpdatePolicy(api.UpdatePolicy o) {
  buildCounterUpdatePolicy++;
  if (buildCounterUpdatePolicy < 3) {
    checkUpdatePolicyCanary(o.canary);
    unittest.expect(o.maxNumConcurrentInstances, unittest.equals(42));
    unittest.expect(o.sleepAfterInstanceRestartSec, unittest.equals(42));
  }
  buildCounterUpdatePolicy--;
}

core.int buildCounterUpdatePolicyCanary = 0;
buildUpdatePolicyCanary() {
  var o = new api.UpdatePolicyCanary();
  buildCounterUpdatePolicyCanary++;
  if (buildCounterUpdatePolicyCanary < 3) {
    o.numInstances = 42;
  }
  buildCounterUpdatePolicyCanary--;
  return o;
}

checkUpdatePolicyCanary(api.UpdatePolicyCanary o) {
  buildCounterUpdatePolicyCanary++;
  if (buildCounterUpdatePolicyCanary < 3) {
    unittest.expect(o.numInstances, unittest.equals(42));
  }
  buildCounterUpdatePolicyCanary--;
}


main() {
  unittest.group("obj-schema-InsertResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildInsertResponse();
      var od = new api.InsertResponse.fromJson(o.toJson());
      checkInsertResponse(od);
    });
  });


  unittest.group("obj-schema-InstanceUpdate", () {
    unittest.test("to-json--from-json", () {
      var o = buildInstanceUpdate();
      var od = new api.InstanceUpdate.fromJson(o.toJson());
      checkInstanceUpdate(od);
    });
  });


  unittest.group("obj-schema-Update", () {
    unittest.test("to-json--from-json", () {
      var o = buildUpdate();
      var od = new api.Update.fromJson(o.toJson());
      checkUpdate(od);
    });
  });


  unittest.group("obj-schema-UpdateList", () {
    unittest.test("to-json--from-json", () {
      var o = buildUpdateList();
      var od = new api.UpdateList.fromJson(o.toJson());
      checkUpdateList(od);
    });
  });


  unittest.group("obj-schema-UpdatePolicy", () {
    unittest.test("to-json--from-json", () {
      var o = buildUpdatePolicy();
      var od = new api.UpdatePolicy.fromJson(o.toJson());
      checkUpdatePolicy(od);
    });
  });


  unittest.group("obj-schema-UpdatePolicyCanary", () {
    unittest.test("to-json--from-json", () {
      var o = buildUpdatePolicyCanary();
      var od = new api.UpdatePolicyCanary.fromJson(o.toJson());
      checkUpdatePolicyCanary(od);
    });
  });


  unittest.group("resource-UpdatesResourceApi", () {
    unittest.test("method--cancel", () {

      var mock = new common_test.HttpServerMock();
      api.UpdatesResourceApi res = new api.ReplicapoolupdaterApi(mock).updates;
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_instanceGroupManager = "foo";
      var arg_update = "foo";
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
        var resp = "";
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.cancel(arg_project, arg_zone, arg_instanceGroupManager, arg_update).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.UpdatesResourceApi res = new api.ReplicapoolupdaterApi(mock).updates;
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_instanceGroupManager = "foo";
      var arg_update = "foo";
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
        var resp = convert.JSON.encode(buildUpdate());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_project, arg_zone, arg_instanceGroupManager, arg_update).then(unittest.expectAsync(((api.Update response) {
        checkUpdate(response);
      })));
    });

    unittest.test("method--insert", () {

      var mock = new common_test.HttpServerMock();
      api.UpdatesResourceApi res = new api.ReplicapoolupdaterApi(mock).updates;
      var arg_request = buildUpdate();
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_instanceGroupManager = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Update.fromJson(json);
        checkUpdate(obj);

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
        var resp = convert.JSON.encode(buildInsertResponse());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.insert(arg_request, arg_project, arg_zone, arg_instanceGroupManager).then(unittest.expectAsync(((api.InsertResponse response) {
        checkInsertResponse(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.UpdatesResourceApi res = new api.ReplicapoolupdaterApi(mock).updates;
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_instanceGroupManager = "foo";
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
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildUpdateList());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_project, arg_zone, arg_instanceGroupManager, maxResults: arg_maxResults, pageToken: arg_pageToken).then(unittest.expectAsync(((api.UpdateList response) {
        checkUpdateList(response);
      })));
    });

    unittest.test("method--pause", () {

      var mock = new common_test.HttpServerMock();
      api.UpdatesResourceApi res = new api.ReplicapoolupdaterApi(mock).updates;
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_instanceGroupManager = "foo";
      var arg_update = "foo";
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
        var resp = "";
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.pause(arg_project, arg_zone, arg_instanceGroupManager, arg_update).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--rollback", () {

      var mock = new common_test.HttpServerMock();
      api.UpdatesResourceApi res = new api.ReplicapoolupdaterApi(mock).updates;
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_instanceGroupManager = "foo";
      var arg_update = "foo";
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
        var resp = "";
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.rollback(arg_project, arg_zone, arg_instanceGroupManager, arg_update).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--rollforward", () {

      var mock = new common_test.HttpServerMock();
      api.UpdatesResourceApi res = new api.ReplicapoolupdaterApi(mock).updates;
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_instanceGroupManager = "foo";
      var arg_update = "foo";
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
        var resp = "";
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.rollforward(arg_project, arg_zone, arg_instanceGroupManager, arg_update).then(unittest.expectAsync((_) {}));
    });

  });


}

