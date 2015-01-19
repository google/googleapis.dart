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
    o.rollingUpdate = "foo";
  }
  buildCounterInsertResponse--;
  return o;
}

checkInsertResponse(api.InsertResponse o) {
  buildCounterInsertResponse++;
  if (buildCounterInsertResponse < 3) {
    unittest.expect(o.rollingUpdate, unittest.equals('foo'));
  }
  buildCounterInsertResponse--;
}

core.int buildCounterInstanceUpdate = 0;
buildInstanceUpdate() {
  var o = new api.InstanceUpdate();
  buildCounterInstanceUpdate++;
  if (buildCounterInstanceUpdate < 3) {
    o.instance = "foo";
    o.status = "foo";
  }
  buildCounterInstanceUpdate--;
  return o;
}

checkInstanceUpdate(api.InstanceUpdate o) {
  buildCounterInstanceUpdate++;
  if (buildCounterInstanceUpdate < 3) {
    unittest.expect(o.instance, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
  }
  buildCounterInstanceUpdate--;
}

buildUnnamed1545() {
  var o = new core.List<api.InstanceUpdate>();
  o.add(buildInstanceUpdate());
  o.add(buildInstanceUpdate());
  return o;
}

checkUnnamed1545(core.List<api.InstanceUpdate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInstanceUpdate(o[0]);
  checkInstanceUpdate(o[1]);
}

core.int buildCounterInstanceUpdateList = 0;
buildInstanceUpdateList() {
  var o = new api.InstanceUpdateList();
  buildCounterInstanceUpdateList++;
  if (buildCounterInstanceUpdateList < 3) {
    o.items = buildUnnamed1545();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.selfLink = "foo";
  }
  buildCounterInstanceUpdateList--;
  return o;
}

checkInstanceUpdateList(api.InstanceUpdateList o) {
  buildCounterInstanceUpdateList++;
  if (buildCounterInstanceUpdateList < 3) {
    checkUnnamed1545(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterInstanceUpdateList--;
}

core.int buildCounterRollingUpdatePolicyCanary = 0;
buildRollingUpdatePolicyCanary() {
  var o = new api.RollingUpdatePolicyCanary();
  buildCounterRollingUpdatePolicyCanary++;
  if (buildCounterRollingUpdatePolicyCanary < 3) {
    o.numInstances = 42;
  }
  buildCounterRollingUpdatePolicyCanary--;
  return o;
}

checkRollingUpdatePolicyCanary(api.RollingUpdatePolicyCanary o) {
  buildCounterRollingUpdatePolicyCanary++;
  if (buildCounterRollingUpdatePolicyCanary < 3) {
    unittest.expect(o.numInstances, unittest.equals(42));
  }
  buildCounterRollingUpdatePolicyCanary--;
}

core.int buildCounterRollingUpdatePolicy = 0;
buildRollingUpdatePolicy() {
  var o = new api.RollingUpdatePolicy();
  buildCounterRollingUpdatePolicy++;
  if (buildCounterRollingUpdatePolicy < 3) {
    o.canary = buildRollingUpdatePolicyCanary();
    o.maxNumConcurrentInstances = 42;
    o.sleepAfterInstanceRestartSec = 42;
  }
  buildCounterRollingUpdatePolicy--;
  return o;
}

checkRollingUpdatePolicy(api.RollingUpdatePolicy o) {
  buildCounterRollingUpdatePolicy++;
  if (buildCounterRollingUpdatePolicy < 3) {
    checkRollingUpdatePolicyCanary(o.canary);
    unittest.expect(o.maxNumConcurrentInstances, unittest.equals(42));
    unittest.expect(o.sleepAfterInstanceRestartSec, unittest.equals(42));
  }
  buildCounterRollingUpdatePolicy--;
}

core.int buildCounterRollingUpdate = 0;
buildRollingUpdate() {
  var o = new api.RollingUpdate();
  buildCounterRollingUpdate++;
  if (buildCounterRollingUpdate < 3) {
    o.creationTimestamp = "foo";
    o.id = "foo";
    o.instanceGroupManager = "foo";
    o.instanceTemplate = "foo";
    o.kind = "foo";
    o.policy = buildRollingUpdatePolicy();
    o.progress = 42;
    o.selfLink = "foo";
    o.status = "foo";
    o.statusMessage = "foo";
    o.user = "foo";
  }
  buildCounterRollingUpdate--;
  return o;
}

checkRollingUpdate(api.RollingUpdate o) {
  buildCounterRollingUpdate++;
  if (buildCounterRollingUpdate < 3) {
    unittest.expect(o.creationTimestamp, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.instanceGroupManager, unittest.equals('foo'));
    unittest.expect(o.instanceTemplate, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkRollingUpdatePolicy(o.policy);
    unittest.expect(o.progress, unittest.equals(42));
    unittest.expect(o.selfLink, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
    unittest.expect(o.statusMessage, unittest.equals('foo'));
    unittest.expect(o.user, unittest.equals('foo'));
  }
  buildCounterRollingUpdate--;
}

buildUnnamed1546() {
  var o = new core.List<api.RollingUpdate>();
  o.add(buildRollingUpdate());
  o.add(buildRollingUpdate());
  return o;
}

checkUnnamed1546(core.List<api.RollingUpdate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRollingUpdate(o[0]);
  checkRollingUpdate(o[1]);
}

core.int buildCounterRollingUpdateList = 0;
buildRollingUpdateList() {
  var o = new api.RollingUpdateList();
  buildCounterRollingUpdateList++;
  if (buildCounterRollingUpdateList < 3) {
    o.items = buildUnnamed1546();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.selfLink = "foo";
  }
  buildCounterRollingUpdateList--;
  return o;
}

checkRollingUpdateList(api.RollingUpdateList o) {
  buildCounterRollingUpdateList++;
  if (buildCounterRollingUpdateList < 3) {
    checkUnnamed1546(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterRollingUpdateList--;
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


  unittest.group("obj-schema-InstanceUpdateList", () {
    unittest.test("to-json--from-json", () {
      var o = buildInstanceUpdateList();
      var od = new api.InstanceUpdateList.fromJson(o.toJson());
      checkInstanceUpdateList(od);
    });
  });


  unittest.group("obj-schema-RollingUpdatePolicyCanary", () {
    unittest.test("to-json--from-json", () {
      var o = buildRollingUpdatePolicyCanary();
      var od = new api.RollingUpdatePolicyCanary.fromJson(o.toJson());
      checkRollingUpdatePolicyCanary(od);
    });
  });


  unittest.group("obj-schema-RollingUpdatePolicy", () {
    unittest.test("to-json--from-json", () {
      var o = buildRollingUpdatePolicy();
      var od = new api.RollingUpdatePolicy.fromJson(o.toJson());
      checkRollingUpdatePolicy(od);
    });
  });


  unittest.group("obj-schema-RollingUpdate", () {
    unittest.test("to-json--from-json", () {
      var o = buildRollingUpdate();
      var od = new api.RollingUpdate.fromJson(o.toJson());
      checkRollingUpdate(od);
    });
  });


  unittest.group("obj-schema-RollingUpdateList", () {
    unittest.test("to-json--from-json", () {
      var o = buildRollingUpdateList();
      var od = new api.RollingUpdateList.fromJson(o.toJson());
      checkRollingUpdateList(od);
    });
  });


  unittest.group("resource-RollingUpdatesResourceApi", () {
    unittest.test("method--cancel", () {

      var mock = new common_test.HttpServerMock();
      api.RollingUpdatesResourceApi res = new api.ReplicapoolupdaterApi(mock).rollingUpdates;
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_rollingUpdate = "foo";
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
      res.cancel(arg_project, arg_zone, arg_rollingUpdate).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.RollingUpdatesResourceApi res = new api.ReplicapoolupdaterApi(mock).rollingUpdates;
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_rollingUpdate = "foo";
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
        var resp = convert.JSON.encode(buildRollingUpdate());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_project, arg_zone, arg_rollingUpdate).then(unittest.expectAsync(((api.RollingUpdate response) {
        checkRollingUpdate(response);
      })));
    });

    unittest.test("method--insert", () {

      var mock = new common_test.HttpServerMock();
      api.RollingUpdatesResourceApi res = new api.ReplicapoolupdaterApi(mock).rollingUpdates;
      var arg_request = buildRollingUpdate();
      var arg_project = "foo";
      var arg_zone = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.RollingUpdate.fromJson(json);
        checkRollingUpdate(obj);

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
      res.insert(arg_request, arg_project, arg_zone).then(unittest.expectAsync(((api.InsertResponse response) {
        checkInsertResponse(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.RollingUpdatesResourceApi res = new api.ReplicapoolupdaterApi(mock).rollingUpdates;
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
        unittest.expect(queryMap["instanceGroupManager"].first, unittest.equals(arg_instanceGroupManager));
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildRollingUpdateList());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_project, arg_zone, instanceGroupManager: arg_instanceGroupManager, maxResults: arg_maxResults, pageToken: arg_pageToken).then(unittest.expectAsync(((api.RollingUpdateList response) {
        checkRollingUpdateList(response);
      })));
    });

    unittest.test("method--listInstanceUpdates", () {

      var mock = new common_test.HttpServerMock();
      api.RollingUpdatesResourceApi res = new api.ReplicapoolupdaterApi(mock).rollingUpdates;
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_rollingUpdate = "foo";
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
        var resp = convert.JSON.encode(buildInstanceUpdateList());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.listInstanceUpdates(arg_project, arg_zone, arg_rollingUpdate, maxResults: arg_maxResults, pageToken: arg_pageToken).then(unittest.expectAsync(((api.InstanceUpdateList response) {
        checkInstanceUpdateList(response);
      })));
    });

    unittest.test("method--pause", () {

      var mock = new common_test.HttpServerMock();
      api.RollingUpdatesResourceApi res = new api.ReplicapoolupdaterApi(mock).rollingUpdates;
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_rollingUpdate = "foo";
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
      res.pause(arg_project, arg_zone, arg_rollingUpdate).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--resume", () {

      var mock = new common_test.HttpServerMock();
      api.RollingUpdatesResourceApi res = new api.ReplicapoolupdaterApi(mock).rollingUpdates;
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_rollingUpdate = "foo";
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
      res.resume(arg_project, arg_zone, arg_rollingUpdate).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--rollback", () {

      var mock = new common_test.HttpServerMock();
      api.RollingUpdatesResourceApi res = new api.ReplicapoolupdaterApi(mock).rollingUpdates;
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_rollingUpdate = "foo";
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
      res.rollback(arg_project, arg_zone, arg_rollingUpdate).then(unittest.expectAsync((_) {}));
    });

  });


}

