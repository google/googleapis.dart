library googleapis_beta.autoscaler.v1beta2.test;

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

import 'package:googleapis_beta/autoscaler/v1beta2.dart' as api;



core.int buildCounterAutoscaler = 0;
buildAutoscaler() {
  var o = new api.Autoscaler();
  buildCounterAutoscaler++;
  if (buildCounterAutoscaler < 3) {
    o.autoscalingPolicy = buildAutoscalingPolicy();
    o.creationTimestamp = "foo";
    o.description = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.name = "foo";
    o.selfLink = "foo";
    o.target = "foo";
  }
  buildCounterAutoscaler--;
  return o;
}

checkAutoscaler(api.Autoscaler o) {
  buildCounterAutoscaler++;
  if (buildCounterAutoscaler < 3) {
    checkAutoscalingPolicy(o.autoscalingPolicy);
    unittest.expect(o.creationTimestamp, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
    unittest.expect(o.target, unittest.equals('foo'));
  }
  buildCounterAutoscaler--;
}

buildUnnamed1144() {
  var o = new core.List<api.Autoscaler>();
  o.add(buildAutoscaler());
  o.add(buildAutoscaler());
  return o;
}

checkUnnamed1144(core.List<api.Autoscaler> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAutoscaler(o[0]);
  checkAutoscaler(o[1]);
}

core.int buildCounterAutoscalerListResponse = 0;
buildAutoscalerListResponse() {
  var o = new api.AutoscalerListResponse();
  buildCounterAutoscalerListResponse++;
  if (buildCounterAutoscalerListResponse < 3) {
    o.items = buildUnnamed1144();
    o.kind = "foo";
    o.nextPageToken = "foo";
  }
  buildCounterAutoscalerListResponse--;
  return o;
}

checkAutoscalerListResponse(api.AutoscalerListResponse o) {
  buildCounterAutoscalerListResponse++;
  if (buildCounterAutoscalerListResponse < 3) {
    checkUnnamed1144(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterAutoscalerListResponse--;
}

buildUnnamed1145() {
  var o = new core.List<api.AutoscalingPolicyCustomMetricUtilization>();
  o.add(buildAutoscalingPolicyCustomMetricUtilization());
  o.add(buildAutoscalingPolicyCustomMetricUtilization());
  return o;
}

checkUnnamed1145(core.List<api.AutoscalingPolicyCustomMetricUtilization> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAutoscalingPolicyCustomMetricUtilization(o[0]);
  checkAutoscalingPolicyCustomMetricUtilization(o[1]);
}

core.int buildCounterAutoscalingPolicy = 0;
buildAutoscalingPolicy() {
  var o = new api.AutoscalingPolicy();
  buildCounterAutoscalingPolicy++;
  if (buildCounterAutoscalingPolicy < 3) {
    o.coolDownPeriodSec = 42;
    o.cpuUtilization = buildAutoscalingPolicyCpuUtilization();
    o.customMetricUtilizations = buildUnnamed1145();
    o.loadBalancingUtilization = buildAutoscalingPolicyLoadBalancingUtilization();
    o.maxNumReplicas = 42;
    o.minNumReplicas = 42;
  }
  buildCounterAutoscalingPolicy--;
  return o;
}

checkAutoscalingPolicy(api.AutoscalingPolicy o) {
  buildCounterAutoscalingPolicy++;
  if (buildCounterAutoscalingPolicy < 3) {
    unittest.expect(o.coolDownPeriodSec, unittest.equals(42));
    checkAutoscalingPolicyCpuUtilization(o.cpuUtilization);
    checkUnnamed1145(o.customMetricUtilizations);
    checkAutoscalingPolicyLoadBalancingUtilization(o.loadBalancingUtilization);
    unittest.expect(o.maxNumReplicas, unittest.equals(42));
    unittest.expect(o.minNumReplicas, unittest.equals(42));
  }
  buildCounterAutoscalingPolicy--;
}

core.int buildCounterAutoscalingPolicyCpuUtilization = 0;
buildAutoscalingPolicyCpuUtilization() {
  var o = new api.AutoscalingPolicyCpuUtilization();
  buildCounterAutoscalingPolicyCpuUtilization++;
  if (buildCounterAutoscalingPolicyCpuUtilization < 3) {
    o.utilizationTarget = 42.0;
  }
  buildCounterAutoscalingPolicyCpuUtilization--;
  return o;
}

checkAutoscalingPolicyCpuUtilization(api.AutoscalingPolicyCpuUtilization o) {
  buildCounterAutoscalingPolicyCpuUtilization++;
  if (buildCounterAutoscalingPolicyCpuUtilization < 3) {
    unittest.expect(o.utilizationTarget, unittest.equals(42.0));
  }
  buildCounterAutoscalingPolicyCpuUtilization--;
}

core.int buildCounterAutoscalingPolicyCustomMetricUtilization = 0;
buildAutoscalingPolicyCustomMetricUtilization() {
  var o = new api.AutoscalingPolicyCustomMetricUtilization();
  buildCounterAutoscalingPolicyCustomMetricUtilization++;
  if (buildCounterAutoscalingPolicyCustomMetricUtilization < 3) {
    o.metric = "foo";
    o.utilizationTarget = 42.0;
    o.utilizationTargetType = "foo";
  }
  buildCounterAutoscalingPolicyCustomMetricUtilization--;
  return o;
}

checkAutoscalingPolicyCustomMetricUtilization(api.AutoscalingPolicyCustomMetricUtilization o) {
  buildCounterAutoscalingPolicyCustomMetricUtilization++;
  if (buildCounterAutoscalingPolicyCustomMetricUtilization < 3) {
    unittest.expect(o.metric, unittest.equals('foo'));
    unittest.expect(o.utilizationTarget, unittest.equals(42.0));
    unittest.expect(o.utilizationTargetType, unittest.equals('foo'));
  }
  buildCounterAutoscalingPolicyCustomMetricUtilization--;
}

core.int buildCounterAutoscalingPolicyLoadBalancingUtilization = 0;
buildAutoscalingPolicyLoadBalancingUtilization() {
  var o = new api.AutoscalingPolicyLoadBalancingUtilization();
  buildCounterAutoscalingPolicyLoadBalancingUtilization++;
  if (buildCounterAutoscalingPolicyLoadBalancingUtilization < 3) {
    o.utilizationTarget = 42.0;
  }
  buildCounterAutoscalingPolicyLoadBalancingUtilization--;
  return o;
}

checkAutoscalingPolicyLoadBalancingUtilization(api.AutoscalingPolicyLoadBalancingUtilization o) {
  buildCounterAutoscalingPolicyLoadBalancingUtilization++;
  if (buildCounterAutoscalingPolicyLoadBalancingUtilization < 3) {
    unittest.expect(o.utilizationTarget, unittest.equals(42.0));
  }
  buildCounterAutoscalingPolicyLoadBalancingUtilization--;
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

buildUnnamed1146() {
  var o = new core.List<api.OperationErrorErrors>();
  o.add(buildOperationErrorErrors());
  o.add(buildOperationErrorErrors());
  return o;
}

checkUnnamed1146(core.List<api.OperationErrorErrors> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperationErrorErrors(o[0]);
  checkOperationErrorErrors(o[1]);
}

core.int buildCounterOperationError = 0;
buildOperationError() {
  var o = new api.OperationError();
  buildCounterOperationError++;
  if (buildCounterOperationError < 3) {
    o.errors = buildUnnamed1146();
  }
  buildCounterOperationError--;
  return o;
}

checkOperationError(api.OperationError o) {
  buildCounterOperationError++;
  if (buildCounterOperationError < 3) {
    checkUnnamed1146(o.errors);
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

buildUnnamed1147() {
  var o = new core.List<api.OperationWarningsData>();
  o.add(buildOperationWarningsData());
  o.add(buildOperationWarningsData());
  return o;
}

checkUnnamed1147(core.List<api.OperationWarningsData> o) {
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
    o.data = buildUnnamed1147();
    o.message = "foo";
  }
  buildCounterOperationWarnings--;
  return o;
}

checkOperationWarnings(api.OperationWarnings o) {
  buildCounterOperationWarnings++;
  if (buildCounterOperationWarnings < 3) {
    unittest.expect(o.code, unittest.equals('foo'));
    checkUnnamed1147(o.data);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterOperationWarnings--;
}

buildUnnamed1148() {
  var o = new core.List<api.OperationWarnings>();
  o.add(buildOperationWarnings());
  o.add(buildOperationWarnings());
  return o;
}

checkUnnamed1148(core.List<api.OperationWarnings> o) {
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
    o.warnings = buildUnnamed1148();
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
    checkUnnamed1148(o.warnings);
    unittest.expect(o.zone, unittest.equals('foo'));
  }
  buildCounterOperation--;
}

buildUnnamed1149() {
  var o = new core.List<api.Operation>();
  o.add(buildOperation());
  o.add(buildOperation());
  return o;
}

checkUnnamed1149(core.List<api.Operation> o) {
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
    o.items = buildUnnamed1149();
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
    checkUnnamed1149(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterOperationList--;
}


main() {
  unittest.group("obj-schema-Autoscaler", () {
    unittest.test("to-json--from-json", () {
      var o = buildAutoscaler();
      var od = new api.Autoscaler.fromJson(o.toJson());
      checkAutoscaler(od);
    });
  });


  unittest.group("obj-schema-AutoscalerListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildAutoscalerListResponse();
      var od = new api.AutoscalerListResponse.fromJson(o.toJson());
      checkAutoscalerListResponse(od);
    });
  });


  unittest.group("obj-schema-AutoscalingPolicy", () {
    unittest.test("to-json--from-json", () {
      var o = buildAutoscalingPolicy();
      var od = new api.AutoscalingPolicy.fromJson(o.toJson());
      checkAutoscalingPolicy(od);
    });
  });


  unittest.group("obj-schema-AutoscalingPolicyCpuUtilization", () {
    unittest.test("to-json--from-json", () {
      var o = buildAutoscalingPolicyCpuUtilization();
      var od = new api.AutoscalingPolicyCpuUtilization.fromJson(o.toJson());
      checkAutoscalingPolicyCpuUtilization(od);
    });
  });


  unittest.group("obj-schema-AutoscalingPolicyCustomMetricUtilization", () {
    unittest.test("to-json--from-json", () {
      var o = buildAutoscalingPolicyCustomMetricUtilization();
      var od = new api.AutoscalingPolicyCustomMetricUtilization.fromJson(o.toJson());
      checkAutoscalingPolicyCustomMetricUtilization(od);
    });
  });


  unittest.group("obj-schema-AutoscalingPolicyLoadBalancingUtilization", () {
    unittest.test("to-json--from-json", () {
      var o = buildAutoscalingPolicyLoadBalancingUtilization();
      var od = new api.AutoscalingPolicyLoadBalancingUtilization.fromJson(o.toJson());
      checkAutoscalingPolicyLoadBalancingUtilization(od);
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


  unittest.group("resource-AutoscalersResourceApi", () {
    unittest.test("method--delete", () {

      var mock = new common_test.HttpServerMock();
      api.AutoscalersResourceApi res = new api.AutoscalerApi(mock).autoscalers;
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_autoscaler = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("autoscaler/v1beta2/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("projects/"));
        pathOffset += 9;
        index = path.indexOf("/zones/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_project"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("/zones/"));
        pathOffset += 7;
        index = path.indexOf("/autoscalers/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_zone"));
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("/autoscalers/"));
        pathOffset += 13;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_autoscaler"));

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
      res.delete(arg_project, arg_zone, arg_autoscaler).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.AutoscalersResourceApi res = new api.AutoscalerApi(mock).autoscalers;
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_autoscaler = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("autoscaler/v1beta2/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("projects/"));
        pathOffset += 9;
        index = path.indexOf("/zones/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_project"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("/zones/"));
        pathOffset += 7;
        index = path.indexOf("/autoscalers/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_zone"));
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("/autoscalers/"));
        pathOffset += 13;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_autoscaler"));

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
        var resp = convert.JSON.encode(buildAutoscaler());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_project, arg_zone, arg_autoscaler).then(unittest.expectAsync(((api.Autoscaler response) {
        checkAutoscaler(response);
      })));
    });

    unittest.test("method--insert", () {

      var mock = new common_test.HttpServerMock();
      api.AutoscalersResourceApi res = new api.AutoscalerApi(mock).autoscalers;
      var arg_request = buildAutoscaler();
      var arg_project = "foo";
      var arg_zone = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Autoscaler.fromJson(json);
        checkAutoscaler(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("autoscaler/v1beta2/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("projects/"));
        pathOffset += 9;
        index = path.indexOf("/zones/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_project"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("/zones/"));
        pathOffset += 7;
        index = path.indexOf("/autoscalers", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_zone"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("/autoscalers"));
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


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.insert(arg_request, arg_project, arg_zone).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.AutoscalersResourceApi res = new api.AutoscalerApi(mock).autoscalers;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("autoscaler/v1beta2/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("projects/"));
        pathOffset += 9;
        index = path.indexOf("/zones/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_project"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("/zones/"));
        pathOffset += 7;
        index = path.indexOf("/autoscalers", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_zone"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("/autoscalers"));
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
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildAutoscalerListResponse());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_project, arg_zone, filter: arg_filter, maxResults: arg_maxResults, pageToken: arg_pageToken).then(unittest.expectAsync(((api.AutoscalerListResponse response) {
        checkAutoscalerListResponse(response);
      })));
    });

    unittest.test("method--patch", () {

      var mock = new common_test.HttpServerMock();
      api.AutoscalersResourceApi res = new api.AutoscalerApi(mock).autoscalers;
      var arg_request = buildAutoscaler();
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_autoscaler = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Autoscaler.fromJson(json);
        checkAutoscaler(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("autoscaler/v1beta2/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("projects/"));
        pathOffset += 9;
        index = path.indexOf("/zones/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_project"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("/zones/"));
        pathOffset += 7;
        index = path.indexOf("/autoscalers/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_zone"));
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("/autoscalers/"));
        pathOffset += 13;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_autoscaler"));

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
      res.patch(arg_request, arg_project, arg_zone, arg_autoscaler).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--update", () {

      var mock = new common_test.HttpServerMock();
      api.AutoscalersResourceApi res = new api.AutoscalerApi(mock).autoscalers;
      var arg_request = buildAutoscaler();
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_autoscaler = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Autoscaler.fromJson(json);
        checkAutoscaler(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("autoscaler/v1beta2/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("projects/"));
        pathOffset += 9;
        index = path.indexOf("/zones/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_project"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("/zones/"));
        pathOffset += 7;
        index = path.indexOf("/autoscalers/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_zone"));
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("/autoscalers/"));
        pathOffset += 13;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_autoscaler"));

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
      res.update(arg_request, arg_project, arg_zone, arg_autoscaler).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

  });


  unittest.group("resource-ZoneOperationsResourceApi", () {
    unittest.test("method--delete", () {

      var mock = new common_test.HttpServerMock();
      api.ZoneOperationsResourceApi res = new api.AutoscalerApi(mock).zoneOperations;
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
        var resp = "";
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.delete(arg_project, arg_zone, arg_operation).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.ZoneOperationsResourceApi res = new api.AutoscalerApi(mock).zoneOperations;
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
      api.ZoneOperationsResourceApi res = new api.AutoscalerApi(mock).zoneOperations;
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

