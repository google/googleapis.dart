library googleapis.cloudtasks.v2.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/cloudtasks/v2.dart' as api;

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

buildUnnamed2061() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed2061(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterAppEngineHttpRequest = 0;
buildAppEngineHttpRequest() {
  var o = new api.AppEngineHttpRequest();
  buildCounterAppEngineHttpRequest++;
  if (buildCounterAppEngineHttpRequest < 3) {
    o.appEngineRouting = buildAppEngineRouting();
    o.body = "foo";
    o.headers = buildUnnamed2061();
    o.httpMethod = "foo";
    o.relativeUri = "foo";
  }
  buildCounterAppEngineHttpRequest--;
  return o;
}

checkAppEngineHttpRequest(api.AppEngineHttpRequest o) {
  buildCounterAppEngineHttpRequest++;
  if (buildCounterAppEngineHttpRequest < 3) {
    checkAppEngineRouting(o.appEngineRouting);
    unittest.expect(o.body, unittest.equals('foo'));
    checkUnnamed2061(o.headers);
    unittest.expect(o.httpMethod, unittest.equals('foo'));
    unittest.expect(o.relativeUri, unittest.equals('foo'));
  }
  buildCounterAppEngineHttpRequest--;
}

core.int buildCounterAppEngineRouting = 0;
buildAppEngineRouting() {
  var o = new api.AppEngineRouting();
  buildCounterAppEngineRouting++;
  if (buildCounterAppEngineRouting < 3) {
    o.host = "foo";
    o.instance = "foo";
    o.service = "foo";
    o.version = "foo";
  }
  buildCounterAppEngineRouting--;
  return o;
}

checkAppEngineRouting(api.AppEngineRouting o) {
  buildCounterAppEngineRouting++;
  if (buildCounterAppEngineRouting < 3) {
    unittest.expect(o.host, unittest.equals('foo'));
    unittest.expect(o.instance, unittest.equals('foo'));
    unittest.expect(o.service, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterAppEngineRouting--;
}

core.int buildCounterAttempt = 0;
buildAttempt() {
  var o = new api.Attempt();
  buildCounterAttempt++;
  if (buildCounterAttempt < 3) {
    o.dispatchTime = "foo";
    o.responseStatus = buildStatus();
    o.responseTime = "foo";
    o.scheduleTime = "foo";
  }
  buildCounterAttempt--;
  return o;
}

checkAttempt(api.Attempt o) {
  buildCounterAttempt++;
  if (buildCounterAttempt < 3) {
    unittest.expect(o.dispatchTime, unittest.equals('foo'));
    checkStatus(o.responseStatus);
    unittest.expect(o.responseTime, unittest.equals('foo'));
    unittest.expect(o.scheduleTime, unittest.equals('foo'));
  }
  buildCounterAttempt--;
}

buildUnnamed2062() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2062(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBinding = 0;
buildBinding() {
  var o = new api.Binding();
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    o.condition = buildExpr();
    o.members = buildUnnamed2062();
    o.role = "foo";
  }
  buildCounterBinding--;
  return o;
}

checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition);
    checkUnnamed2062(o.members);
    unittest.expect(o.role, unittest.equals('foo'));
  }
  buildCounterBinding--;
}

core.int buildCounterCreateTaskRequest = 0;
buildCreateTaskRequest() {
  var o = new api.CreateTaskRequest();
  buildCounterCreateTaskRequest++;
  if (buildCounterCreateTaskRequest < 3) {
    o.responseView = "foo";
    o.task = buildTask();
  }
  buildCounterCreateTaskRequest--;
  return o;
}

checkCreateTaskRequest(api.CreateTaskRequest o) {
  buildCounterCreateTaskRequest++;
  if (buildCounterCreateTaskRequest < 3) {
    unittest.expect(o.responseView, unittest.equals('foo'));
    checkTask(o.task);
  }
  buildCounterCreateTaskRequest--;
}

core.int buildCounterEmpty = 0;
buildEmpty() {
  var o = new api.Empty();
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
  return o;
}

checkEmpty(api.Empty o) {
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
}

core.int buildCounterExpr = 0;
buildExpr() {
  var o = new api.Expr();
  buildCounterExpr++;
  if (buildCounterExpr < 3) {
    o.description = "foo";
    o.expression = "foo";
    o.location = "foo";
    o.title = "foo";
  }
  buildCounterExpr--;
  return o;
}

checkExpr(api.Expr o) {
  buildCounterExpr++;
  if (buildCounterExpr < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.expression, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterExpr--;
}

core.int buildCounterGetIamPolicyRequest = 0;
buildGetIamPolicyRequest() {
  var o = new api.GetIamPolicyRequest();
  buildCounterGetIamPolicyRequest++;
  if (buildCounterGetIamPolicyRequest < 3) {}
  buildCounterGetIamPolicyRequest--;
  return o;
}

checkGetIamPolicyRequest(api.GetIamPolicyRequest o) {
  buildCounterGetIamPolicyRequest++;
  if (buildCounterGetIamPolicyRequest < 3) {}
  buildCounterGetIamPolicyRequest--;
}

buildUnnamed2063() {
  var o = new core.List<api.Location>();
  o.add(buildLocation());
  o.add(buildLocation());
  return o;
}

checkUnnamed2063(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
buildListLocationsResponse() {
  var o = new api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed2063();
    o.nextPageToken = "foo";
  }
  buildCounterListLocationsResponse--;
  return o;
}

checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed2063(o.locations);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListLocationsResponse--;
}

buildUnnamed2064() {
  var o = new core.List<api.Queue>();
  o.add(buildQueue());
  o.add(buildQueue());
  return o;
}

checkUnnamed2064(core.List<api.Queue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkQueue(o[0]);
  checkQueue(o[1]);
}

core.int buildCounterListQueuesResponse = 0;
buildListQueuesResponse() {
  var o = new api.ListQueuesResponse();
  buildCounterListQueuesResponse++;
  if (buildCounterListQueuesResponse < 3) {
    o.nextPageToken = "foo";
    o.queues = buildUnnamed2064();
  }
  buildCounterListQueuesResponse--;
  return o;
}

checkListQueuesResponse(api.ListQueuesResponse o) {
  buildCounterListQueuesResponse++;
  if (buildCounterListQueuesResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed2064(o.queues);
  }
  buildCounterListQueuesResponse--;
}

buildUnnamed2065() {
  var o = new core.List<api.Task>();
  o.add(buildTask());
  o.add(buildTask());
  return o;
}

checkUnnamed2065(core.List<api.Task> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTask(o[0]);
  checkTask(o[1]);
}

core.int buildCounterListTasksResponse = 0;
buildListTasksResponse() {
  var o = new api.ListTasksResponse();
  buildCounterListTasksResponse++;
  if (buildCounterListTasksResponse < 3) {
    o.nextPageToken = "foo";
    o.tasks = buildUnnamed2065();
  }
  buildCounterListTasksResponse--;
  return o;
}

checkListTasksResponse(api.ListTasksResponse o) {
  buildCounterListTasksResponse++;
  if (buildCounterListTasksResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed2065(o.tasks);
  }
  buildCounterListTasksResponse--;
}

buildUnnamed2066() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed2066(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed2067() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed2067(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o["x"]) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(casted1["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted1["bool"], unittest.equals(true));
  unittest.expect(casted1["string"], unittest.equals('foo'));
  var casted2 = (o["y"]) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted2["bool"], unittest.equals(true));
  unittest.expect(casted2["string"], unittest.equals('foo'));
}

core.int buildCounterLocation = 0;
buildLocation() {
  var o = new api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.displayName = "foo";
    o.labels = buildUnnamed2066();
    o.locationId = "foo";
    o.metadata = buildUnnamed2067();
    o.name = "foo";
  }
  buildCounterLocation--;
  return o;
}

checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed2066(o.labels);
    unittest.expect(o.locationId, unittest.equals('foo'));
    checkUnnamed2067(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterLocation--;
}

core.int buildCounterPauseQueueRequest = 0;
buildPauseQueueRequest() {
  var o = new api.PauseQueueRequest();
  buildCounterPauseQueueRequest++;
  if (buildCounterPauseQueueRequest < 3) {}
  buildCounterPauseQueueRequest--;
  return o;
}

checkPauseQueueRequest(api.PauseQueueRequest o) {
  buildCounterPauseQueueRequest++;
  if (buildCounterPauseQueueRequest < 3) {}
  buildCounterPauseQueueRequest--;
}

buildUnnamed2068() {
  var o = new core.List<api.Binding>();
  o.add(buildBinding());
  o.add(buildBinding());
  return o;
}

checkUnnamed2068(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
buildPolicy() {
  var o = new api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.bindings = buildUnnamed2068();
    o.etag = "foo";
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed2068(o.bindings);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals(42));
  }
  buildCounterPolicy--;
}

core.int buildCounterPurgeQueueRequest = 0;
buildPurgeQueueRequest() {
  var o = new api.PurgeQueueRequest();
  buildCounterPurgeQueueRequest++;
  if (buildCounterPurgeQueueRequest < 3) {}
  buildCounterPurgeQueueRequest--;
  return o;
}

checkPurgeQueueRequest(api.PurgeQueueRequest o) {
  buildCounterPurgeQueueRequest++;
  if (buildCounterPurgeQueueRequest < 3) {}
  buildCounterPurgeQueueRequest--;
}

core.int buildCounterQueue = 0;
buildQueue() {
  var o = new api.Queue();
  buildCounterQueue++;
  if (buildCounterQueue < 3) {
    o.appEngineRoutingOverride = buildAppEngineRouting();
    o.name = "foo";
    o.purgeTime = "foo";
    o.rateLimits = buildRateLimits();
    o.retryConfig = buildRetryConfig();
    o.state = "foo";
  }
  buildCounterQueue--;
  return o;
}

checkQueue(api.Queue o) {
  buildCounterQueue++;
  if (buildCounterQueue < 3) {
    checkAppEngineRouting(o.appEngineRoutingOverride);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.purgeTime, unittest.equals('foo'));
    checkRateLimits(o.rateLimits);
    checkRetryConfig(o.retryConfig);
    unittest.expect(o.state, unittest.equals('foo'));
  }
  buildCounterQueue--;
}

core.int buildCounterRateLimits = 0;
buildRateLimits() {
  var o = new api.RateLimits();
  buildCounterRateLimits++;
  if (buildCounterRateLimits < 3) {
    o.maxBurstSize = 42;
    o.maxConcurrentDispatches = 42;
    o.maxDispatchesPerSecond = 42.0;
  }
  buildCounterRateLimits--;
  return o;
}

checkRateLimits(api.RateLimits o) {
  buildCounterRateLimits++;
  if (buildCounterRateLimits < 3) {
    unittest.expect(o.maxBurstSize, unittest.equals(42));
    unittest.expect(o.maxConcurrentDispatches, unittest.equals(42));
    unittest.expect(o.maxDispatchesPerSecond, unittest.equals(42.0));
  }
  buildCounterRateLimits--;
}

core.int buildCounterResumeQueueRequest = 0;
buildResumeQueueRequest() {
  var o = new api.ResumeQueueRequest();
  buildCounterResumeQueueRequest++;
  if (buildCounterResumeQueueRequest < 3) {}
  buildCounterResumeQueueRequest--;
  return o;
}

checkResumeQueueRequest(api.ResumeQueueRequest o) {
  buildCounterResumeQueueRequest++;
  if (buildCounterResumeQueueRequest < 3) {}
  buildCounterResumeQueueRequest--;
}

core.int buildCounterRetryConfig = 0;
buildRetryConfig() {
  var o = new api.RetryConfig();
  buildCounterRetryConfig++;
  if (buildCounterRetryConfig < 3) {
    o.maxAttempts = 42;
    o.maxBackoff = "foo";
    o.maxDoublings = 42;
    o.maxRetryDuration = "foo";
    o.minBackoff = "foo";
  }
  buildCounterRetryConfig--;
  return o;
}

checkRetryConfig(api.RetryConfig o) {
  buildCounterRetryConfig++;
  if (buildCounterRetryConfig < 3) {
    unittest.expect(o.maxAttempts, unittest.equals(42));
    unittest.expect(o.maxBackoff, unittest.equals('foo'));
    unittest.expect(o.maxDoublings, unittest.equals(42));
    unittest.expect(o.maxRetryDuration, unittest.equals('foo'));
    unittest.expect(o.minBackoff, unittest.equals('foo'));
  }
  buildCounterRetryConfig--;
}

core.int buildCounterRunTaskRequest = 0;
buildRunTaskRequest() {
  var o = new api.RunTaskRequest();
  buildCounterRunTaskRequest++;
  if (buildCounterRunTaskRequest < 3) {
    o.responseView = "foo";
  }
  buildCounterRunTaskRequest--;
  return o;
}

checkRunTaskRequest(api.RunTaskRequest o) {
  buildCounterRunTaskRequest++;
  if (buildCounterRunTaskRequest < 3) {
    unittest.expect(o.responseView, unittest.equals('foo'));
  }
  buildCounterRunTaskRequest--;
}

core.int buildCounterSetIamPolicyRequest = 0;
buildSetIamPolicyRequest() {
  var o = new api.SetIamPolicyRequest();
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    o.policy = buildPolicy();
  }
  buildCounterSetIamPolicyRequest--;
  return o;
}

checkSetIamPolicyRequest(api.SetIamPolicyRequest o) {
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    checkPolicy(o.policy);
  }
  buildCounterSetIamPolicyRequest--;
}

buildUnnamed2069() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed2069(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o["x"]) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(casted3["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted3["bool"], unittest.equals(true));
  unittest.expect(casted3["string"], unittest.equals('foo'));
  var casted4 = (o["y"]) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(casted4["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted4["bool"], unittest.equals(true));
  unittest.expect(casted4["string"], unittest.equals('foo'));
}

buildUnnamed2070() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed2069());
  o.add(buildUnnamed2069());
  return o;
}

checkUnnamed2070(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed2069(o[0]);
  checkUnnamed2069(o[1]);
}

core.int buildCounterStatus = 0;
buildStatus() {
  var o = new api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed2070();
    o.message = "foo";
  }
  buildCounterStatus--;
  return o;
}

checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed2070(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.int buildCounterTask = 0;
buildTask() {
  var o = new api.Task();
  buildCounterTask++;
  if (buildCounterTask < 3) {
    o.appEngineHttpRequest = buildAppEngineHttpRequest();
    o.createTime = "foo";
    o.dispatchCount = 42;
    o.dispatchDeadline = "foo";
    o.firstAttempt = buildAttempt();
    o.lastAttempt = buildAttempt();
    o.name = "foo";
    o.responseCount = 42;
    o.scheduleTime = "foo";
    o.view = "foo";
  }
  buildCounterTask--;
  return o;
}

checkTask(api.Task o) {
  buildCounterTask++;
  if (buildCounterTask < 3) {
    checkAppEngineHttpRequest(o.appEngineHttpRequest);
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.dispatchCount, unittest.equals(42));
    unittest.expect(o.dispatchDeadline, unittest.equals('foo'));
    checkAttempt(o.firstAttempt);
    checkAttempt(o.lastAttempt);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.responseCount, unittest.equals(42));
    unittest.expect(o.scheduleTime, unittest.equals('foo'));
    unittest.expect(o.view, unittest.equals('foo'));
  }
  buildCounterTask--;
}

buildUnnamed2071() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2071(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsRequest = 0;
buildTestIamPermissionsRequest() {
  var o = new api.TestIamPermissionsRequest();
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed2071();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed2071(o.permissions);
  }
  buildCounterTestIamPermissionsRequest--;
}

buildUnnamed2072() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2072(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsResponse = 0;
buildTestIamPermissionsResponse() {
  var o = new api.TestIamPermissionsResponse();
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed2072();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed2072(o.permissions);
  }
  buildCounterTestIamPermissionsResponse--;
}

main() {
  unittest.group("obj-schema-AppEngineHttpRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildAppEngineHttpRequest();
      var od = new api.AppEngineHttpRequest.fromJson(o.toJson());
      checkAppEngineHttpRequest(od);
    });
  });

  unittest.group("obj-schema-AppEngineRouting", () {
    unittest.test("to-json--from-json", () {
      var o = buildAppEngineRouting();
      var od = new api.AppEngineRouting.fromJson(o.toJson());
      checkAppEngineRouting(od);
    });
  });

  unittest.group("obj-schema-Attempt", () {
    unittest.test("to-json--from-json", () {
      var o = buildAttempt();
      var od = new api.Attempt.fromJson(o.toJson());
      checkAttempt(od);
    });
  });

  unittest.group("obj-schema-Binding", () {
    unittest.test("to-json--from-json", () {
      var o = buildBinding();
      var od = new api.Binding.fromJson(o.toJson());
      checkBinding(od);
    });
  });

  unittest.group("obj-schema-CreateTaskRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreateTaskRequest();
      var od = new api.CreateTaskRequest.fromJson(o.toJson());
      checkCreateTaskRequest(od);
    });
  });

  unittest.group("obj-schema-Empty", () {
    unittest.test("to-json--from-json", () {
      var o = buildEmpty();
      var od = new api.Empty.fromJson(o.toJson());
      checkEmpty(od);
    });
  });

  unittest.group("obj-schema-Expr", () {
    unittest.test("to-json--from-json", () {
      var o = buildExpr();
      var od = new api.Expr.fromJson(o.toJson());
      checkExpr(od);
    });
  });

  unittest.group("obj-schema-GetIamPolicyRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGetIamPolicyRequest();
      var od = new api.GetIamPolicyRequest.fromJson(o.toJson());
      checkGetIamPolicyRequest(od);
    });
  });

  unittest.group("obj-schema-ListLocationsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListLocationsResponse();
      var od = new api.ListLocationsResponse.fromJson(o.toJson());
      checkListLocationsResponse(od);
    });
  });

  unittest.group("obj-schema-ListQueuesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListQueuesResponse();
      var od = new api.ListQueuesResponse.fromJson(o.toJson());
      checkListQueuesResponse(od);
    });
  });

  unittest.group("obj-schema-ListTasksResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListTasksResponse();
      var od = new api.ListTasksResponse.fromJson(o.toJson());
      checkListTasksResponse(od);
    });
  });

  unittest.group("obj-schema-Location", () {
    unittest.test("to-json--from-json", () {
      var o = buildLocation();
      var od = new api.Location.fromJson(o.toJson());
      checkLocation(od);
    });
  });

  unittest.group("obj-schema-PauseQueueRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildPauseQueueRequest();
      var od = new api.PauseQueueRequest.fromJson(o.toJson());
      checkPauseQueueRequest(od);
    });
  });

  unittest.group("obj-schema-Policy", () {
    unittest.test("to-json--from-json", () {
      var o = buildPolicy();
      var od = new api.Policy.fromJson(o.toJson());
      checkPolicy(od);
    });
  });

  unittest.group("obj-schema-PurgeQueueRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildPurgeQueueRequest();
      var od = new api.PurgeQueueRequest.fromJson(o.toJson());
      checkPurgeQueueRequest(od);
    });
  });

  unittest.group("obj-schema-Queue", () {
    unittest.test("to-json--from-json", () {
      var o = buildQueue();
      var od = new api.Queue.fromJson(o.toJson());
      checkQueue(od);
    });
  });

  unittest.group("obj-schema-RateLimits", () {
    unittest.test("to-json--from-json", () {
      var o = buildRateLimits();
      var od = new api.RateLimits.fromJson(o.toJson());
      checkRateLimits(od);
    });
  });

  unittest.group("obj-schema-ResumeQueueRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildResumeQueueRequest();
      var od = new api.ResumeQueueRequest.fromJson(o.toJson());
      checkResumeQueueRequest(od);
    });
  });

  unittest.group("obj-schema-RetryConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildRetryConfig();
      var od = new api.RetryConfig.fromJson(o.toJson());
      checkRetryConfig(od);
    });
  });

  unittest.group("obj-schema-RunTaskRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildRunTaskRequest();
      var od = new api.RunTaskRequest.fromJson(o.toJson());
      checkRunTaskRequest(od);
    });
  });

  unittest.group("obj-schema-SetIamPolicyRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSetIamPolicyRequest();
      var od = new api.SetIamPolicyRequest.fromJson(o.toJson());
      checkSetIamPolicyRequest(od);
    });
  });

  unittest.group("obj-schema-Status", () {
    unittest.test("to-json--from-json", () {
      var o = buildStatus();
      var od = new api.Status.fromJson(o.toJson());
      checkStatus(od);
    });
  });

  unittest.group("obj-schema-Task", () {
    unittest.test("to-json--from-json", () {
      var o = buildTask();
      var od = new api.Task.fromJson(o.toJson());
      checkTask(od);
    });
  });

  unittest.group("obj-schema-TestIamPermissionsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildTestIamPermissionsRequest();
      var od = new api.TestIamPermissionsRequest.fromJson(o.toJson());
      checkTestIamPermissionsRequest(od);
    });
  });

  unittest.group("obj-schema-TestIamPermissionsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildTestIamPermissionsResponse();
      var od = new api.TestIamPermissionsResponse.fromJson(o.toJson());
      checkTestIamPermissionsResponse(od);
    });
  });

  unittest.group("resource-ProjectsLocationsResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsResourceApi res =
          new api.CloudtasksApi(mock).projects.locations;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
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
        var resp = convert.json.encode(buildLocation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLocation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsResourceApi res =
          new api.CloudtasksApi(mock).projects.locations;
      var arg_name = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_filter = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
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
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListLocationsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              filter: arg_filter,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListLocationsResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsLocationsQueuesResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsQueuesResourceApi res =
          new api.CloudtasksApi(mock).projects.locations.queues;
      var arg_request = buildQueue();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Queue.fromJson(json);
        checkQueue(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
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
        var resp = convert.json.encode(buildQueue());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkQueue(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsQueuesResourceApi res =
          new api.CloudtasksApi(mock).projects.locations.queues;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
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
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsQueuesResourceApi res =
          new api.CloudtasksApi(mock).projects.locations.queues;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
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
        var resp = convert.json.encode(buildQueue());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkQueue(response);
      })));
    });

    unittest.test("method--getIamPolicy", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsQueuesResourceApi res =
          new api.CloudtasksApi(mock).projects.locations.queues;
      var arg_request = buildGetIamPolicyRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GetIamPolicyRequest.fromJson(json);
        checkGetIamPolicyRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
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
        var resp = convert.json.encode(buildPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsQueuesResourceApi res =
          new api.CloudtasksApi(mock).projects.locations.queues;
      var arg_parent = "foo";
      var arg_pageSize = 42;
      var arg_filter = "foo";
      var arg_pageToken = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
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
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListQueuesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              filter: arg_filter,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListQueuesResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsQueuesResourceApi res =
          new api.CloudtasksApi(mock).projects.locations.queues;
      var arg_request = buildQueue();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Queue.fromJson(json);
        checkQueue(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
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
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildQueue());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkQueue(response);
      })));
    });

    unittest.test("method--pause", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsQueuesResourceApi res =
          new api.CloudtasksApi(mock).projects.locations.queues;
      var arg_request = buildPauseQueueRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.PauseQueueRequest.fromJson(json);
        checkPauseQueueRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
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
        var resp = convert.json.encode(buildQueue());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .pause(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkQueue(response);
      })));
    });

    unittest.test("method--purge", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsQueuesResourceApi res =
          new api.CloudtasksApi(mock).projects.locations.queues;
      var arg_request = buildPurgeQueueRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.PurgeQueueRequest.fromJson(json);
        checkPurgeQueueRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
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
        var resp = convert.json.encode(buildQueue());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .purge(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkQueue(response);
      })));
    });

    unittest.test("method--resume", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsQueuesResourceApi res =
          new api.CloudtasksApi(mock).projects.locations.queues;
      var arg_request = buildResumeQueueRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ResumeQueueRequest.fromJson(json);
        checkResumeQueueRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
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
        var resp = convert.json.encode(buildQueue());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .resume(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkQueue(response);
      })));
    });

    unittest.test("method--setIamPolicy", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsQueuesResourceApi res =
          new api.CloudtasksApi(mock).projects.locations.queues;
      var arg_request = buildSetIamPolicyRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SetIamPolicyRequest.fromJson(json);
        checkSetIamPolicyRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
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
        var resp = convert.json.encode(buildPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test("method--testIamPermissions", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsQueuesResourceApi res =
          new api.CloudtasksApi(mock).projects.locations.queues;
      var arg_request = buildTestIamPermissionsRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.TestIamPermissionsRequest.fromJson(json);
        checkTestIamPermissionsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
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
        var resp = convert.json.encode(buildTestIamPermissionsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .testIamPermissions(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTestIamPermissionsResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsLocationsQueuesTasksResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsQueuesTasksResourceApi res =
          new api.CloudtasksApi(mock).projects.locations.queues.tasks;
      var arg_request = buildCreateTaskRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.CreateTaskRequest.fromJson(json);
        checkCreateTaskRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
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
        var resp = convert.json.encode(buildTask());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTask(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsQueuesTasksResourceApi res =
          new api.CloudtasksApi(mock).projects.locations.queues.tasks;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
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
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsQueuesTasksResourceApi res =
          new api.CloudtasksApi(mock).projects.locations.queues.tasks;
      var arg_name = "foo";
      var arg_responseView = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
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
        unittest.expect(
            queryMap["responseView"].first, unittest.equals(arg_responseView));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildTask());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, responseView: arg_responseView, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTask(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsQueuesTasksResourceApi res =
          new api.CloudtasksApi(mock).projects.locations.queues.tasks;
      var arg_parent = "foo";
      var arg_pageSize = 42;
      var arg_responseView = "foo";
      var arg_pageToken = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
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
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["responseView"].first, unittest.equals(arg_responseView));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListTasksResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              responseView: arg_responseView,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListTasksResponse(response);
      })));
    });

    unittest.test("method--run", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsQueuesTasksResourceApi res =
          new api.CloudtasksApi(mock).projects.locations.queues.tasks;
      var arg_request = buildRunTaskRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.RunTaskRequest.fromJson(json);
        checkRunTaskRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
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
        var resp = convert.json.encode(buildTask());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .run(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTask(response);
      })));
    });
  });
}
