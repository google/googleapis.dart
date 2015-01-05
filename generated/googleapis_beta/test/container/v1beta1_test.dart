library googleapis_beta.container.v1beta1.test;

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

import 'package:googleapis_beta/container/v1beta1.dart' as api;



core.int buildCounterCluster = 0;
buildCluster() {
  var o = new api.Cluster();
  buildCounterCluster++;
  if (buildCounterCluster < 3) {
    o.clusterApiVersion = "foo";
    o.containerIpv4Cidr = "foo";
    o.creationTimestamp = "foo";
    o.description = "foo";
    o.endpoint = "foo";
    o.masterAuth = buildMasterAuth();
    o.name = "foo";
    o.network = "foo";
    o.nodeConfig = buildNodeConfig();
    o.nodeRoutingPrefixSize = 42;
    o.numNodes = 42;
    o.selfLink = "foo";
    o.servicesIpv4Cidr = "foo";
    o.status = "foo";
    o.statusMessage = "foo";
    o.zone = "foo";
  }
  buildCounterCluster--;
  return o;
}

checkCluster(api.Cluster o) {
  buildCounterCluster++;
  if (buildCounterCluster < 3) {
    unittest.expect(o.clusterApiVersion, unittest.equals('foo'));
    unittest.expect(o.containerIpv4Cidr, unittest.equals('foo'));
    unittest.expect(o.creationTimestamp, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.endpoint, unittest.equals('foo'));
    checkMasterAuth(o.masterAuth);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.network, unittest.equals('foo'));
    checkNodeConfig(o.nodeConfig);
    unittest.expect(o.nodeRoutingPrefixSize, unittest.equals(42));
    unittest.expect(o.numNodes, unittest.equals(42));
    unittest.expect(o.selfLink, unittest.equals('foo'));
    unittest.expect(o.servicesIpv4Cidr, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
    unittest.expect(o.statusMessage, unittest.equals('foo'));
    unittest.expect(o.zone, unittest.equals('foo'));
  }
  buildCounterCluster--;
}

core.int buildCounterCreateClusterRequest = 0;
buildCreateClusterRequest() {
  var o = new api.CreateClusterRequest();
  buildCounterCreateClusterRequest++;
  if (buildCounterCreateClusterRequest < 3) {
    o.cluster = buildCluster();
  }
  buildCounterCreateClusterRequest--;
  return o;
}

checkCreateClusterRequest(api.CreateClusterRequest o) {
  buildCounterCreateClusterRequest++;
  if (buildCounterCreateClusterRequest < 3) {
    checkCluster(o.cluster);
  }
  buildCounterCreateClusterRequest--;
}

buildUnnamed1444() {
  var o = new core.List<api.Cluster>();
  o.add(buildCluster());
  o.add(buildCluster());
  return o;
}

checkUnnamed1444(core.List<api.Cluster> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCluster(o[0]);
  checkCluster(o[1]);
}

core.int buildCounterListAggregatedClustersResponse = 0;
buildListAggregatedClustersResponse() {
  var o = new api.ListAggregatedClustersResponse();
  buildCounterListAggregatedClustersResponse++;
  if (buildCounterListAggregatedClustersResponse < 3) {
    o.clusters = buildUnnamed1444();
  }
  buildCounterListAggregatedClustersResponse--;
  return o;
}

checkListAggregatedClustersResponse(api.ListAggregatedClustersResponse o) {
  buildCounterListAggregatedClustersResponse++;
  if (buildCounterListAggregatedClustersResponse < 3) {
    checkUnnamed1444(o.clusters);
  }
  buildCounterListAggregatedClustersResponse--;
}

buildUnnamed1445() {
  var o = new core.List<api.Operation>();
  o.add(buildOperation());
  o.add(buildOperation());
  return o;
}

checkUnnamed1445(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0]);
  checkOperation(o[1]);
}

core.int buildCounterListAggregatedOperationsResponse = 0;
buildListAggregatedOperationsResponse() {
  var o = new api.ListAggregatedOperationsResponse();
  buildCounterListAggregatedOperationsResponse++;
  if (buildCounterListAggregatedOperationsResponse < 3) {
    o.operations = buildUnnamed1445();
  }
  buildCounterListAggregatedOperationsResponse--;
  return o;
}

checkListAggregatedOperationsResponse(api.ListAggregatedOperationsResponse o) {
  buildCounterListAggregatedOperationsResponse++;
  if (buildCounterListAggregatedOperationsResponse < 3) {
    checkUnnamed1445(o.operations);
  }
  buildCounterListAggregatedOperationsResponse--;
}

buildUnnamed1446() {
  var o = new core.List<api.Cluster>();
  o.add(buildCluster());
  o.add(buildCluster());
  return o;
}

checkUnnamed1446(core.List<api.Cluster> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCluster(o[0]);
  checkCluster(o[1]);
}

core.int buildCounterListClustersResponse = 0;
buildListClustersResponse() {
  var o = new api.ListClustersResponse();
  buildCounterListClustersResponse++;
  if (buildCounterListClustersResponse < 3) {
    o.clusters = buildUnnamed1446();
  }
  buildCounterListClustersResponse--;
  return o;
}

checkListClustersResponse(api.ListClustersResponse o) {
  buildCounterListClustersResponse++;
  if (buildCounterListClustersResponse < 3) {
    checkUnnamed1446(o.clusters);
  }
  buildCounterListClustersResponse--;
}

buildUnnamed1447() {
  var o = new core.List<api.Operation>();
  o.add(buildOperation());
  o.add(buildOperation());
  return o;
}

checkUnnamed1447(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0]);
  checkOperation(o[1]);
}

core.int buildCounterListOperationsResponse = 0;
buildListOperationsResponse() {
  var o = new api.ListOperationsResponse();
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    o.operations = buildUnnamed1447();
  }
  buildCounterListOperationsResponse--;
  return o;
}

checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    checkUnnamed1447(o.operations);
  }
  buildCounterListOperationsResponse--;
}

core.int buildCounterMasterAuth = 0;
buildMasterAuth() {
  var o = new api.MasterAuth();
  buildCounterMasterAuth++;
  if (buildCounterMasterAuth < 3) {
    o.password = "foo";
    o.user = "foo";
  }
  buildCounterMasterAuth--;
  return o;
}

checkMasterAuth(api.MasterAuth o) {
  buildCounterMasterAuth++;
  if (buildCounterMasterAuth < 3) {
    unittest.expect(o.password, unittest.equals('foo'));
    unittest.expect(o.user, unittest.equals('foo'));
  }
  buildCounterMasterAuth--;
}

core.int buildCounterNodeConfig = 0;
buildNodeConfig() {
  var o = new api.NodeConfig();
  buildCounterNodeConfig++;
  if (buildCounterNodeConfig < 3) {
    o.machineType = "foo";
    o.sourceImage = "foo";
  }
  buildCounterNodeConfig--;
  return o;
}

checkNodeConfig(api.NodeConfig o) {
  buildCounterNodeConfig++;
  if (buildCounterNodeConfig < 3) {
    unittest.expect(o.machineType, unittest.equals('foo'));
    unittest.expect(o.sourceImage, unittest.equals('foo'));
  }
  buildCounterNodeConfig--;
}

core.int buildCounterOperation = 0;
buildOperation() {
  var o = new api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.errorMessage = "foo";
    o.name = "foo";
    o.operationType = "foo";
    o.selfLink = "foo";
    o.status = "foo";
    o.target = "foo";
    o.targetLink = "foo";
    o.zone = "foo";
  }
  buildCounterOperation--;
  return o;
}

checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.errorMessage, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.operationType, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
    unittest.expect(o.target, unittest.equals('foo'));
    unittest.expect(o.targetLink, unittest.equals('foo'));
    unittest.expect(o.zone, unittest.equals('foo'));
  }
  buildCounterOperation--;
}


main() {
  unittest.group("obj-schema-Cluster", () {
    unittest.test("to-json--from-json", () {
      var o = buildCluster();
      var od = new api.Cluster.fromJson(o.toJson());
      checkCluster(od);
    });
  });


  unittest.group("obj-schema-CreateClusterRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreateClusterRequest();
      var od = new api.CreateClusterRequest.fromJson(o.toJson());
      checkCreateClusterRequest(od);
    });
  });


  unittest.group("obj-schema-ListAggregatedClustersResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListAggregatedClustersResponse();
      var od = new api.ListAggregatedClustersResponse.fromJson(o.toJson());
      checkListAggregatedClustersResponse(od);
    });
  });


  unittest.group("obj-schema-ListAggregatedOperationsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListAggregatedOperationsResponse();
      var od = new api.ListAggregatedOperationsResponse.fromJson(o.toJson());
      checkListAggregatedOperationsResponse(od);
    });
  });


  unittest.group("obj-schema-ListClustersResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListClustersResponse();
      var od = new api.ListClustersResponse.fromJson(o.toJson());
      checkListClustersResponse(od);
    });
  });


  unittest.group("obj-schema-ListOperationsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListOperationsResponse();
      var od = new api.ListOperationsResponse.fromJson(o.toJson());
      checkListOperationsResponse(od);
    });
  });


  unittest.group("obj-schema-MasterAuth", () {
    unittest.test("to-json--from-json", () {
      var o = buildMasterAuth();
      var od = new api.MasterAuth.fromJson(o.toJson());
      checkMasterAuth(od);
    });
  });


  unittest.group("obj-schema-NodeConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildNodeConfig();
      var od = new api.NodeConfig.fromJson(o.toJson());
      checkNodeConfig(od);
    });
  });


  unittest.group("obj-schema-Operation", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperation();
      var od = new api.Operation.fromJson(o.toJson());
      checkOperation(od);
    });
  });


  unittest.group("resource-ProjectsClustersResourceApi", () {
    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.ProjectsClustersResourceApi res = new api.ContainerApi(mock).projects.clusters;
      var arg_projectId = "foo";
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
        var resp = convert.JSON.encode(buildListAggregatedClustersResponse());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_projectId).then(unittest.expectAsync(((api.ListAggregatedClustersResponse response) {
        checkListAggregatedClustersResponse(response);
      })));
    });

  });


  unittest.group("resource-ProjectsOperationsResourceApi", () {
    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.ProjectsOperationsResourceApi res = new api.ContainerApi(mock).projects.operations;
      var arg_projectId = "foo";
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
        var resp = convert.JSON.encode(buildListAggregatedOperationsResponse());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_projectId).then(unittest.expectAsync(((api.ListAggregatedOperationsResponse response) {
        checkListAggregatedOperationsResponse(response);
      })));
    });

  });


  unittest.group("resource-ProjectsZonesClustersResourceApi", () {
    unittest.test("method--create", () {

      var mock = new common_test.HttpServerMock();
      api.ProjectsZonesClustersResourceApi res = new api.ContainerApi(mock).projects.zones.clusters;
      var arg_request = buildCreateClusterRequest();
      var arg_projectId = "foo";
      var arg_zoneId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.CreateClusterRequest.fromJson(json);
        checkCreateClusterRequest(obj);

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
      res.create(arg_request, arg_projectId, arg_zoneId).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--delete", () {

      var mock = new common_test.HttpServerMock();
      api.ProjectsZonesClustersResourceApi res = new api.ContainerApi(mock).projects.zones.clusters;
      var arg_projectId = "foo";
      var arg_zoneId = "foo";
      var arg_clusterId = "foo";
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
      res.delete(arg_projectId, arg_zoneId, arg_clusterId).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.ProjectsZonesClustersResourceApi res = new api.ContainerApi(mock).projects.zones.clusters;
      var arg_projectId = "foo";
      var arg_zoneId = "foo";
      var arg_clusterId = "foo";
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
        var resp = convert.JSON.encode(buildCluster());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_projectId, arg_zoneId, arg_clusterId).then(unittest.expectAsync(((api.Cluster response) {
        checkCluster(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.ProjectsZonesClustersResourceApi res = new api.ContainerApi(mock).projects.zones.clusters;
      var arg_projectId = "foo";
      var arg_zoneId = "foo";
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
        var resp = convert.JSON.encode(buildListClustersResponse());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_projectId, arg_zoneId).then(unittest.expectAsync(((api.ListClustersResponse response) {
        checkListClustersResponse(response);
      })));
    });

  });


  unittest.group("resource-ProjectsZonesOperationsResourceApi", () {
    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.ProjectsZonesOperationsResourceApi res = new api.ContainerApi(mock).projects.zones.operations;
      var arg_projectId = "foo";
      var arg_zoneId = "foo";
      var arg_operationId = "foo";
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
      res.get(arg_projectId, arg_zoneId, arg_operationId).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.ProjectsZonesOperationsResourceApi res = new api.ContainerApi(mock).projects.zones.operations;
      var arg_projectId = "foo";
      var arg_zoneId = "foo";
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
        var resp = convert.JSON.encode(buildListOperationsResponse());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_projectId, arg_zoneId).then(unittest.expectAsync(((api.ListOperationsResponse response) {
        checkListOperationsResponse(response);
      })));
    });

  });


}

