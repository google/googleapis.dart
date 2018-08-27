library googleapis.servicecontrol.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/servicecontrol/v1.dart' as api;

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

buildUnnamed2490() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2490(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAllocateInfo = 0;
buildAllocateInfo() {
  var o = new api.AllocateInfo();
  buildCounterAllocateInfo++;
  if (buildCounterAllocateInfo < 3) {
    o.unusedArguments = buildUnnamed2490();
  }
  buildCounterAllocateInfo--;
  return o;
}

checkAllocateInfo(api.AllocateInfo o) {
  buildCounterAllocateInfo++;
  if (buildCounterAllocateInfo < 3) {
    checkUnnamed2490(o.unusedArguments);
  }
  buildCounterAllocateInfo--;
}

core.int buildCounterAllocateQuotaRequest = 0;
buildAllocateQuotaRequest() {
  var o = new api.AllocateQuotaRequest();
  buildCounterAllocateQuotaRequest++;
  if (buildCounterAllocateQuotaRequest < 3) {
    o.allocateOperation = buildQuotaOperation();
    o.serviceConfigId = "foo";
  }
  buildCounterAllocateQuotaRequest--;
  return o;
}

checkAllocateQuotaRequest(api.AllocateQuotaRequest o) {
  buildCounterAllocateQuotaRequest++;
  if (buildCounterAllocateQuotaRequest < 3) {
    checkQuotaOperation(o.allocateOperation);
    unittest.expect(o.serviceConfigId, unittest.equals('foo'));
  }
  buildCounterAllocateQuotaRequest--;
}

buildUnnamed2491() {
  var o = new core.List<api.QuotaError>();
  o.add(buildQuotaError());
  o.add(buildQuotaError());
  return o;
}

checkUnnamed2491(core.List<api.QuotaError> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkQuotaError(o[0]);
  checkQuotaError(o[1]);
}

buildUnnamed2492() {
  var o = new core.List<api.MetricValueSet>();
  o.add(buildMetricValueSet());
  o.add(buildMetricValueSet());
  return o;
}

checkUnnamed2492(core.List<api.MetricValueSet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetricValueSet(o[0]);
  checkMetricValueSet(o[1]);
}

core.int buildCounterAllocateQuotaResponse = 0;
buildAllocateQuotaResponse() {
  var o = new api.AllocateQuotaResponse();
  buildCounterAllocateQuotaResponse++;
  if (buildCounterAllocateQuotaResponse < 3) {
    o.allocateErrors = buildUnnamed2491();
    o.allocateInfo = buildAllocateInfo();
    o.operationId = "foo";
    o.quotaMetrics = buildUnnamed2492();
    o.serviceConfigId = "foo";
  }
  buildCounterAllocateQuotaResponse--;
  return o;
}

checkAllocateQuotaResponse(api.AllocateQuotaResponse o) {
  buildCounterAllocateQuotaResponse++;
  if (buildCounterAllocateQuotaResponse < 3) {
    checkUnnamed2491(o.allocateErrors);
    checkAllocateInfo(o.allocateInfo);
    unittest.expect(o.operationId, unittest.equals('foo'));
    checkUnnamed2492(o.quotaMetrics);
    unittest.expect(o.serviceConfigId, unittest.equals('foo'));
  }
  buildCounterAllocateQuotaResponse--;
}

buildUnnamed2493() {
  var o = new core.List<api.AuthorizationInfo>();
  o.add(buildAuthorizationInfo());
  o.add(buildAuthorizationInfo());
  return o;
}

checkUnnamed2493(core.List<api.AuthorizationInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuthorizationInfo(o[0]);
  checkAuthorizationInfo(o[1]);
}

buildUnnamed2494() {
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

checkUnnamed2494(core.Map<core.String, core.Object> o) {
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

buildUnnamed2495() {
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

checkUnnamed2495(core.Map<core.String, core.Object> o) {
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

buildUnnamed2496() {
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

checkUnnamed2496(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o["x"]) as core.Map;
  unittest.expect(casted5, unittest.hasLength(3));
  unittest.expect(casted5["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted5["bool"], unittest.equals(true));
  unittest.expect(casted5["string"], unittest.equals('foo'));
  var casted6 = (o["y"]) as core.Map;
  unittest.expect(casted6, unittest.hasLength(3));
  unittest.expect(casted6["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted6["bool"], unittest.equals(true));
  unittest.expect(casted6["string"], unittest.equals('foo'));
}

buildUnnamed2497() {
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

checkUnnamed2497(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted7 = (o["x"]) as core.Map;
  unittest.expect(casted7, unittest.hasLength(3));
  unittest.expect(casted7["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted7["bool"], unittest.equals(true));
  unittest.expect(casted7["string"], unittest.equals('foo'));
  var casted8 = (o["y"]) as core.Map;
  unittest.expect(casted8, unittest.hasLength(3));
  unittest.expect(casted8["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted8["bool"], unittest.equals(true));
  unittest.expect(casted8["string"], unittest.equals('foo'));
}

core.int buildCounterAuditLog = 0;
buildAuditLog() {
  var o = new api.AuditLog();
  buildCounterAuditLog++;
  if (buildCounterAuditLog < 3) {
    o.authenticationInfo = buildAuthenticationInfo();
    o.authorizationInfo = buildUnnamed2493();
    o.metadata = buildUnnamed2494();
    o.methodName = "foo";
    o.numResponseItems = "foo";
    o.request = buildUnnamed2495();
    o.requestMetadata = buildRequestMetadata();
    o.resourceLocation = buildResourceLocation();
    o.resourceName = "foo";
    o.response = buildUnnamed2496();
    o.serviceData = buildUnnamed2497();
    o.serviceName = "foo";
    o.status = buildStatus();
  }
  buildCounterAuditLog--;
  return o;
}

checkAuditLog(api.AuditLog o) {
  buildCounterAuditLog++;
  if (buildCounterAuditLog < 3) {
    checkAuthenticationInfo(o.authenticationInfo);
    checkUnnamed2493(o.authorizationInfo);
    checkUnnamed2494(o.metadata);
    unittest.expect(o.methodName, unittest.equals('foo'));
    unittest.expect(o.numResponseItems, unittest.equals('foo'));
    checkUnnamed2495(o.request);
    checkRequestMetadata(o.requestMetadata);
    checkResourceLocation(o.resourceLocation);
    unittest.expect(o.resourceName, unittest.equals('foo'));
    checkUnnamed2496(o.response);
    checkUnnamed2497(o.serviceData);
    unittest.expect(o.serviceName, unittest.equals('foo'));
    checkStatus(o.status);
  }
  buildCounterAuditLog--;
}

buildUnnamed2498() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2498(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2499() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2499(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2500() {
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

checkUnnamed2500(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted9 = (o["x"]) as core.Map;
  unittest.expect(casted9, unittest.hasLength(3));
  unittest.expect(casted9["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted9["bool"], unittest.equals(true));
  unittest.expect(casted9["string"], unittest.equals('foo'));
  var casted10 = (o["y"]) as core.Map;
  unittest.expect(casted10, unittest.hasLength(3));
  unittest.expect(casted10["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted10["bool"], unittest.equals(true));
  unittest.expect(casted10["string"], unittest.equals('foo'));
}

core.int buildCounterAuth = 0;
buildAuth() {
  var o = new api.Auth();
  buildCounterAuth++;
  if (buildCounterAuth < 3) {
    o.accessLevels = buildUnnamed2498();
    o.audiences = buildUnnamed2499();
    o.claims = buildUnnamed2500();
    o.presenter = "foo";
    o.principal = "foo";
  }
  buildCounterAuth--;
  return o;
}

checkAuth(api.Auth o) {
  buildCounterAuth++;
  if (buildCounterAuth < 3) {
    checkUnnamed2498(o.accessLevels);
    checkUnnamed2499(o.audiences);
    checkUnnamed2500(o.claims);
    unittest.expect(o.presenter, unittest.equals('foo'));
    unittest.expect(o.principal, unittest.equals('foo'));
  }
  buildCounterAuth--;
}

buildUnnamed2501() {
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

checkUnnamed2501(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted11 = (o["x"]) as core.Map;
  unittest.expect(casted11, unittest.hasLength(3));
  unittest.expect(casted11["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted11["bool"], unittest.equals(true));
  unittest.expect(casted11["string"], unittest.equals('foo'));
  var casted12 = (o["y"]) as core.Map;
  unittest.expect(casted12, unittest.hasLength(3));
  unittest.expect(casted12["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted12["bool"], unittest.equals(true));
  unittest.expect(casted12["string"], unittest.equals('foo'));
}

core.int buildCounterAuthenticationInfo = 0;
buildAuthenticationInfo() {
  var o = new api.AuthenticationInfo();
  buildCounterAuthenticationInfo++;
  if (buildCounterAuthenticationInfo < 3) {
    o.authoritySelector = "foo";
    o.principalEmail = "foo";
    o.thirdPartyPrincipal = buildUnnamed2501();
  }
  buildCounterAuthenticationInfo--;
  return o;
}

checkAuthenticationInfo(api.AuthenticationInfo o) {
  buildCounterAuthenticationInfo++;
  if (buildCounterAuthenticationInfo < 3) {
    unittest.expect(o.authoritySelector, unittest.equals('foo'));
    unittest.expect(o.principalEmail, unittest.equals('foo'));
    checkUnnamed2501(o.thirdPartyPrincipal);
  }
  buildCounterAuthenticationInfo--;
}

core.int buildCounterAuthorizationInfo = 0;
buildAuthorizationInfo() {
  var o = new api.AuthorizationInfo();
  buildCounterAuthorizationInfo++;
  if (buildCounterAuthorizationInfo < 3) {
    o.granted = true;
    o.permission = "foo";
    o.resource = "foo";
    o.resourceAttributes = buildResource();
  }
  buildCounterAuthorizationInfo--;
  return o;
}

checkAuthorizationInfo(api.AuthorizationInfo o) {
  buildCounterAuthorizationInfo++;
  if (buildCounterAuthorizationInfo < 3) {
    unittest.expect(o.granted, unittest.isTrue);
    unittest.expect(o.permission, unittest.equals('foo'));
    unittest.expect(o.resource, unittest.equals('foo'));
    checkResource(o.resourceAttributes);
  }
  buildCounterAuthorizationInfo--;
}

core.int buildCounterCheckError = 0;
buildCheckError() {
  var o = new api.CheckError();
  buildCounterCheckError++;
  if (buildCounterCheckError < 3) {
    o.code = "foo";
    o.detail = "foo";
    o.subject = "foo";
  }
  buildCounterCheckError--;
  return o;
}

checkCheckError(api.CheckError o) {
  buildCounterCheckError++;
  if (buildCounterCheckError < 3) {
    unittest.expect(o.code, unittest.equals('foo'));
    unittest.expect(o.detail, unittest.equals('foo'));
    unittest.expect(o.subject, unittest.equals('foo'));
  }
  buildCounterCheckError--;
}

buildUnnamed2502() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2502(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCheckInfo = 0;
buildCheckInfo() {
  var o = new api.CheckInfo();
  buildCounterCheckInfo++;
  if (buildCounterCheckInfo < 3) {
    o.consumerInfo = buildConsumerInfo();
    o.unusedArguments = buildUnnamed2502();
  }
  buildCounterCheckInfo--;
  return o;
}

checkCheckInfo(api.CheckInfo o) {
  buildCounterCheckInfo++;
  if (buildCounterCheckInfo < 3) {
    checkConsumerInfo(o.consumerInfo);
    checkUnnamed2502(o.unusedArguments);
  }
  buildCounterCheckInfo--;
}

core.int buildCounterCheckRequest = 0;
buildCheckRequest() {
  var o = new api.CheckRequest();
  buildCounterCheckRequest++;
  if (buildCounterCheckRequest < 3) {
    o.operation = buildOperation();
    o.requestProjectSettings = true;
    o.serviceConfigId = "foo";
    o.skipActivationCheck = true;
  }
  buildCounterCheckRequest--;
  return o;
}

checkCheckRequest(api.CheckRequest o) {
  buildCounterCheckRequest++;
  if (buildCounterCheckRequest < 3) {
    checkOperation(o.operation);
    unittest.expect(o.requestProjectSettings, unittest.isTrue);
    unittest.expect(o.serviceConfigId, unittest.equals('foo'));
    unittest.expect(o.skipActivationCheck, unittest.isTrue);
  }
  buildCounterCheckRequest--;
}

buildUnnamed2503() {
  var o = new core.List<api.CheckError>();
  o.add(buildCheckError());
  o.add(buildCheckError());
  return o;
}

checkUnnamed2503(core.List<api.CheckError> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCheckError(o[0]);
  checkCheckError(o[1]);
}

core.int buildCounterCheckResponse = 0;
buildCheckResponse() {
  var o = new api.CheckResponse();
  buildCounterCheckResponse++;
  if (buildCounterCheckResponse < 3) {
    o.checkErrors = buildUnnamed2503();
    o.checkInfo = buildCheckInfo();
    o.operationId = "foo";
    o.quotaInfo = buildQuotaInfo();
    o.serviceConfigId = "foo";
  }
  buildCounterCheckResponse--;
  return o;
}

checkCheckResponse(api.CheckResponse o) {
  buildCounterCheckResponse++;
  if (buildCounterCheckResponse < 3) {
    checkUnnamed2503(o.checkErrors);
    checkCheckInfo(o.checkInfo);
    unittest.expect(o.operationId, unittest.equals('foo'));
    checkQuotaInfo(o.quotaInfo);
    unittest.expect(o.serviceConfigId, unittest.equals('foo'));
  }
  buildCounterCheckResponse--;
}

core.int buildCounterConsumerInfo = 0;
buildConsumerInfo() {
  var o = new api.ConsumerInfo();
  buildCounterConsumerInfo++;
  if (buildCounterConsumerInfo < 3) {
    o.projectNumber = "foo";
  }
  buildCounterConsumerInfo--;
  return o;
}

checkConsumerInfo(api.ConsumerInfo o) {
  buildCounterConsumerInfo++;
  if (buildCounterConsumerInfo < 3) {
    unittest.expect(o.projectNumber, unittest.equals('foo'));
  }
  buildCounterConsumerInfo--;
}

buildUnnamed2504() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2504(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterDistribution = 0;
buildDistribution() {
  var o = new api.Distribution();
  buildCounterDistribution++;
  if (buildCounterDistribution < 3) {
    o.bucketCounts = buildUnnamed2504();
    o.count = "foo";
    o.explicitBuckets = buildExplicitBuckets();
    o.exponentialBuckets = buildExponentialBuckets();
    o.linearBuckets = buildLinearBuckets();
    o.maximum = 42.0;
    o.mean = 42.0;
    o.minimum = 42.0;
    o.sumOfSquaredDeviation = 42.0;
  }
  buildCounterDistribution--;
  return o;
}

checkDistribution(api.Distribution o) {
  buildCounterDistribution++;
  if (buildCounterDistribution < 3) {
    checkUnnamed2504(o.bucketCounts);
    unittest.expect(o.count, unittest.equals('foo'));
    checkExplicitBuckets(o.explicitBuckets);
    checkExponentialBuckets(o.exponentialBuckets);
    checkLinearBuckets(o.linearBuckets);
    unittest.expect(o.maximum, unittest.equals(42.0));
    unittest.expect(o.mean, unittest.equals(42.0));
    unittest.expect(o.minimum, unittest.equals(42.0));
    unittest.expect(o.sumOfSquaredDeviation, unittest.equals(42.0));
  }
  buildCounterDistribution--;
}

core.int buildCounterEndReconciliationRequest = 0;
buildEndReconciliationRequest() {
  var o = new api.EndReconciliationRequest();
  buildCounterEndReconciliationRequest++;
  if (buildCounterEndReconciliationRequest < 3) {
    o.reconciliationOperation = buildQuotaOperation();
    o.serviceConfigId = "foo";
  }
  buildCounterEndReconciliationRequest--;
  return o;
}

checkEndReconciliationRequest(api.EndReconciliationRequest o) {
  buildCounterEndReconciliationRequest++;
  if (buildCounterEndReconciliationRequest < 3) {
    checkQuotaOperation(o.reconciliationOperation);
    unittest.expect(o.serviceConfigId, unittest.equals('foo'));
  }
  buildCounterEndReconciliationRequest--;
}

buildUnnamed2505() {
  var o = new core.List<api.MetricValueSet>();
  o.add(buildMetricValueSet());
  o.add(buildMetricValueSet());
  return o;
}

checkUnnamed2505(core.List<api.MetricValueSet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetricValueSet(o[0]);
  checkMetricValueSet(o[1]);
}

buildUnnamed2506() {
  var o = new core.List<api.QuotaError>();
  o.add(buildQuotaError());
  o.add(buildQuotaError());
  return o;
}

checkUnnamed2506(core.List<api.QuotaError> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkQuotaError(o[0]);
  checkQuotaError(o[1]);
}

core.int buildCounterEndReconciliationResponse = 0;
buildEndReconciliationResponse() {
  var o = new api.EndReconciliationResponse();
  buildCounterEndReconciliationResponse++;
  if (buildCounterEndReconciliationResponse < 3) {
    o.operationId = "foo";
    o.quotaMetrics = buildUnnamed2505();
    o.reconciliationErrors = buildUnnamed2506();
    o.serviceConfigId = "foo";
  }
  buildCounterEndReconciliationResponse--;
  return o;
}

checkEndReconciliationResponse(api.EndReconciliationResponse o) {
  buildCounterEndReconciliationResponse++;
  if (buildCounterEndReconciliationResponse < 3) {
    unittest.expect(o.operationId, unittest.equals('foo'));
    checkUnnamed2505(o.quotaMetrics);
    checkUnnamed2506(o.reconciliationErrors);
    unittest.expect(o.serviceConfigId, unittest.equals('foo'));
  }
  buildCounterEndReconciliationResponse--;
}

buildUnnamed2507() {
  var o = new core.List<core.double>();
  o.add(42.0);
  o.add(42.0);
  return o;
}

checkUnnamed2507(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

core.int buildCounterExplicitBuckets = 0;
buildExplicitBuckets() {
  var o = new api.ExplicitBuckets();
  buildCounterExplicitBuckets++;
  if (buildCounterExplicitBuckets < 3) {
    o.bounds = buildUnnamed2507();
  }
  buildCounterExplicitBuckets--;
  return o;
}

checkExplicitBuckets(api.ExplicitBuckets o) {
  buildCounterExplicitBuckets++;
  if (buildCounterExplicitBuckets < 3) {
    checkUnnamed2507(o.bounds);
  }
  buildCounterExplicitBuckets--;
}

core.int buildCounterExponentialBuckets = 0;
buildExponentialBuckets() {
  var o = new api.ExponentialBuckets();
  buildCounterExponentialBuckets++;
  if (buildCounterExponentialBuckets < 3) {
    o.growthFactor = 42.0;
    o.numFiniteBuckets = 42;
    o.scale = 42.0;
  }
  buildCounterExponentialBuckets--;
  return o;
}

checkExponentialBuckets(api.ExponentialBuckets o) {
  buildCounterExponentialBuckets++;
  if (buildCounterExponentialBuckets < 3) {
    unittest.expect(o.growthFactor, unittest.equals(42.0));
    unittest.expect(o.numFiniteBuckets, unittest.equals(42));
    unittest.expect(o.scale, unittest.equals(42.0));
  }
  buildCounterExponentialBuckets--;
}

core.int buildCounterHttpRequest = 0;
buildHttpRequest() {
  var o = new api.HttpRequest();
  buildCounterHttpRequest++;
  if (buildCounterHttpRequest < 3) {
    o.cacheFillBytes = "foo";
    o.cacheHit = true;
    o.cacheLookup = true;
    o.cacheValidatedWithOriginServer = true;
    o.latency = "foo";
    o.protocol = "foo";
    o.referer = "foo";
    o.remoteIp = "foo";
    o.requestMethod = "foo";
    o.requestSize = "foo";
    o.requestUrl = "foo";
    o.responseSize = "foo";
    o.serverIp = "foo";
    o.status = 42;
    o.userAgent = "foo";
  }
  buildCounterHttpRequest--;
  return o;
}

checkHttpRequest(api.HttpRequest o) {
  buildCounterHttpRequest++;
  if (buildCounterHttpRequest < 3) {
    unittest.expect(o.cacheFillBytes, unittest.equals('foo'));
    unittest.expect(o.cacheHit, unittest.isTrue);
    unittest.expect(o.cacheLookup, unittest.isTrue);
    unittest.expect(o.cacheValidatedWithOriginServer, unittest.isTrue);
    unittest.expect(o.latency, unittest.equals('foo'));
    unittest.expect(o.protocol, unittest.equals('foo'));
    unittest.expect(o.referer, unittest.equals('foo'));
    unittest.expect(o.remoteIp, unittest.equals('foo'));
    unittest.expect(o.requestMethod, unittest.equals('foo'));
    unittest.expect(o.requestSize, unittest.equals('foo'));
    unittest.expect(o.requestUrl, unittest.equals('foo'));
    unittest.expect(o.responseSize, unittest.equals('foo'));
    unittest.expect(o.serverIp, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals(42));
    unittest.expect(o.userAgent, unittest.equals('foo'));
  }
  buildCounterHttpRequest--;
}

core.int buildCounterLinearBuckets = 0;
buildLinearBuckets() {
  var o = new api.LinearBuckets();
  buildCounterLinearBuckets++;
  if (buildCounterLinearBuckets < 3) {
    o.numFiniteBuckets = 42;
    o.offset = 42.0;
    o.width = 42.0;
  }
  buildCounterLinearBuckets--;
  return o;
}

checkLinearBuckets(api.LinearBuckets o) {
  buildCounterLinearBuckets++;
  if (buildCounterLinearBuckets < 3) {
    unittest.expect(o.numFiniteBuckets, unittest.equals(42));
    unittest.expect(o.offset, unittest.equals(42.0));
    unittest.expect(o.width, unittest.equals(42.0));
  }
  buildCounterLinearBuckets--;
}

buildUnnamed2508() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed2508(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed2509() {
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

checkUnnamed2509(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted13 = (o["x"]) as core.Map;
  unittest.expect(casted13, unittest.hasLength(3));
  unittest.expect(casted13["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted13["bool"], unittest.equals(true));
  unittest.expect(casted13["string"], unittest.equals('foo'));
  var casted14 = (o["y"]) as core.Map;
  unittest.expect(casted14, unittest.hasLength(3));
  unittest.expect(casted14["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted14["bool"], unittest.equals(true));
  unittest.expect(casted14["string"], unittest.equals('foo'));
}

buildUnnamed2510() {
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

checkUnnamed2510(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted15 = (o["x"]) as core.Map;
  unittest.expect(casted15, unittest.hasLength(3));
  unittest.expect(casted15["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted15["bool"], unittest.equals(true));
  unittest.expect(casted15["string"], unittest.equals('foo'));
  var casted16 = (o["y"]) as core.Map;
  unittest.expect(casted16, unittest.hasLength(3));
  unittest.expect(casted16["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted16["bool"], unittest.equals(true));
  unittest.expect(casted16["string"], unittest.equals('foo'));
}

core.int buildCounterLogEntry = 0;
buildLogEntry() {
  var o = new api.LogEntry();
  buildCounterLogEntry++;
  if (buildCounterLogEntry < 3) {
    o.httpRequest = buildHttpRequest();
    o.insertId = "foo";
    o.labels = buildUnnamed2508();
    o.name = "foo";
    o.operation = buildLogEntryOperation();
    o.protoPayload = buildUnnamed2509();
    o.severity = "foo";
    o.structPayload = buildUnnamed2510();
    o.textPayload = "foo";
    o.timestamp = "foo";
    o.trace = "foo";
  }
  buildCounterLogEntry--;
  return o;
}

checkLogEntry(api.LogEntry o) {
  buildCounterLogEntry++;
  if (buildCounterLogEntry < 3) {
    checkHttpRequest(o.httpRequest);
    unittest.expect(o.insertId, unittest.equals('foo'));
    checkUnnamed2508(o.labels);
    unittest.expect(o.name, unittest.equals('foo'));
    checkLogEntryOperation(o.operation);
    checkUnnamed2509(o.protoPayload);
    unittest.expect(o.severity, unittest.equals('foo'));
    checkUnnamed2510(o.structPayload);
    unittest.expect(o.textPayload, unittest.equals('foo'));
    unittest.expect(o.timestamp, unittest.equals('foo'));
    unittest.expect(o.trace, unittest.equals('foo'));
  }
  buildCounterLogEntry--;
}

core.int buildCounterLogEntryOperation = 0;
buildLogEntryOperation() {
  var o = new api.LogEntryOperation();
  buildCounterLogEntryOperation++;
  if (buildCounterLogEntryOperation < 3) {
    o.first = true;
    o.id = "foo";
    o.last = true;
    o.producer = "foo";
  }
  buildCounterLogEntryOperation--;
  return o;
}

checkLogEntryOperation(api.LogEntryOperation o) {
  buildCounterLogEntryOperation++;
  if (buildCounterLogEntryOperation < 3) {
    unittest.expect(o.first, unittest.isTrue);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.last, unittest.isTrue);
    unittest.expect(o.producer, unittest.equals('foo'));
  }
  buildCounterLogEntryOperation--;
}

buildUnnamed2511() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed2511(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterMetricValue = 0;
buildMetricValue() {
  var o = new api.MetricValue();
  buildCounterMetricValue++;
  if (buildCounterMetricValue < 3) {
    o.boolValue = true;
    o.distributionValue = buildDistribution();
    o.doubleValue = 42.0;
    o.endTime = "foo";
    o.int64Value = "foo";
    o.labels = buildUnnamed2511();
    o.moneyValue = buildMoney();
    o.startTime = "foo";
    o.stringValue = "foo";
  }
  buildCounterMetricValue--;
  return o;
}

checkMetricValue(api.MetricValue o) {
  buildCounterMetricValue++;
  if (buildCounterMetricValue < 3) {
    unittest.expect(o.boolValue, unittest.isTrue);
    checkDistribution(o.distributionValue);
    unittest.expect(o.doubleValue, unittest.equals(42.0));
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.int64Value, unittest.equals('foo'));
    checkUnnamed2511(o.labels);
    checkMoney(o.moneyValue);
    unittest.expect(o.startTime, unittest.equals('foo'));
    unittest.expect(o.stringValue, unittest.equals('foo'));
  }
  buildCounterMetricValue--;
}

buildUnnamed2512() {
  var o = new core.List<api.MetricValue>();
  o.add(buildMetricValue());
  o.add(buildMetricValue());
  return o;
}

checkUnnamed2512(core.List<api.MetricValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetricValue(o[0]);
  checkMetricValue(o[1]);
}

core.int buildCounterMetricValueSet = 0;
buildMetricValueSet() {
  var o = new api.MetricValueSet();
  buildCounterMetricValueSet++;
  if (buildCounterMetricValueSet < 3) {
    o.metricName = "foo";
    o.metricValues = buildUnnamed2512();
  }
  buildCounterMetricValueSet--;
  return o;
}

checkMetricValueSet(api.MetricValueSet o) {
  buildCounterMetricValueSet++;
  if (buildCounterMetricValueSet < 3) {
    unittest.expect(o.metricName, unittest.equals('foo'));
    checkUnnamed2512(o.metricValues);
  }
  buildCounterMetricValueSet--;
}

core.int buildCounterMoney = 0;
buildMoney() {
  var o = new api.Money();
  buildCounterMoney++;
  if (buildCounterMoney < 3) {
    o.currencyCode = "foo";
    o.nanos = 42;
    o.units = "foo";
  }
  buildCounterMoney--;
  return o;
}

checkMoney(api.Money o) {
  buildCounterMoney++;
  if (buildCounterMoney < 3) {
    unittest.expect(o.currencyCode, unittest.equals('foo'));
    unittest.expect(o.nanos, unittest.equals(42));
    unittest.expect(o.units, unittest.equals('foo'));
  }
  buildCounterMoney--;
}

buildUnnamed2513() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed2513(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed2514() {
  var o = new core.List<api.LogEntry>();
  o.add(buildLogEntry());
  o.add(buildLogEntry());
  return o;
}

checkUnnamed2514(core.List<api.LogEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLogEntry(o[0]);
  checkLogEntry(o[1]);
}

buildUnnamed2515() {
  var o = new core.List<api.MetricValueSet>();
  o.add(buildMetricValueSet());
  o.add(buildMetricValueSet());
  return o;
}

checkUnnamed2515(core.List<api.MetricValueSet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetricValueSet(o[0]);
  checkMetricValueSet(o[1]);
}

buildUnnamed2516() {
  var o = new core.List<api.ResourceInfo>();
  o.add(buildResourceInfo());
  o.add(buildResourceInfo());
  return o;
}

checkUnnamed2516(core.List<api.ResourceInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResourceInfo(o[0]);
  checkResourceInfo(o[1]);
}

buildUnnamed2517() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed2517(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterOperation = 0;
buildOperation() {
  var o = new api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.consumerId = "foo";
    o.endTime = "foo";
    o.importance = "foo";
    o.labels = buildUnnamed2513();
    o.logEntries = buildUnnamed2514();
    o.metricValueSets = buildUnnamed2515();
    o.operationId = "foo";
    o.operationName = "foo";
    o.quotaProperties = buildQuotaProperties();
    o.resourceContainer = "foo";
    o.resources = buildUnnamed2516();
    o.startTime = "foo";
    o.userLabels = buildUnnamed2517();
  }
  buildCounterOperation--;
  return o;
}

checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.consumerId, unittest.equals('foo'));
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.importance, unittest.equals('foo'));
    checkUnnamed2513(o.labels);
    checkUnnamed2514(o.logEntries);
    checkUnnamed2515(o.metricValueSets);
    unittest.expect(o.operationId, unittest.equals('foo'));
    unittest.expect(o.operationName, unittest.equals('foo'));
    checkQuotaProperties(o.quotaProperties);
    unittest.expect(o.resourceContainer, unittest.equals('foo'));
    checkUnnamed2516(o.resources);
    unittest.expect(o.startTime, unittest.equals('foo'));
    checkUnnamed2517(o.userLabels);
  }
  buildCounterOperation--;
}

buildUnnamed2518() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed2518(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterPeer = 0;
buildPeer() {
  var o = new api.Peer();
  buildCounterPeer++;
  if (buildCounterPeer < 3) {
    o.ip = "foo";
    o.labels = buildUnnamed2518();
    o.port = "foo";
    o.principal = "foo";
    o.regionCode = "foo";
    o.service = "foo";
  }
  buildCounterPeer--;
  return o;
}

checkPeer(api.Peer o) {
  buildCounterPeer++;
  if (buildCounterPeer < 3) {
    unittest.expect(o.ip, unittest.equals('foo'));
    checkUnnamed2518(o.labels);
    unittest.expect(o.port, unittest.equals('foo'));
    unittest.expect(o.principal, unittest.equals('foo'));
    unittest.expect(o.regionCode, unittest.equals('foo'));
    unittest.expect(o.service, unittest.equals('foo'));
  }
  buildCounterPeer--;
}

core.int buildCounterQuotaError = 0;
buildQuotaError() {
  var o = new api.QuotaError();
  buildCounterQuotaError++;
  if (buildCounterQuotaError < 3) {
    o.code = "foo";
    o.description = "foo";
    o.subject = "foo";
  }
  buildCounterQuotaError--;
  return o;
}

checkQuotaError(api.QuotaError o) {
  buildCounterQuotaError++;
  if (buildCounterQuotaError < 3) {
    unittest.expect(o.code, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.subject, unittest.equals('foo'));
  }
  buildCounterQuotaError--;
}

buildUnnamed2519() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2519(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2520() {
  var o = new core.Map<core.String, core.int>();
  o["x"] = 42;
  o["y"] = 42;
  return o;
}

checkUnnamed2520(core.Map<core.String, core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals(42));
  unittest.expect(o["y"], unittest.equals(42));
}

buildUnnamed2521() {
  var o = new core.List<api.MetricValueSet>();
  o.add(buildMetricValueSet());
  o.add(buildMetricValueSet());
  return o;
}

checkUnnamed2521(core.List<api.MetricValueSet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetricValueSet(o[0]);
  checkMetricValueSet(o[1]);
}

core.int buildCounterQuotaInfo = 0;
buildQuotaInfo() {
  var o = new api.QuotaInfo();
  buildCounterQuotaInfo++;
  if (buildCounterQuotaInfo < 3) {
    o.limitExceeded = buildUnnamed2519();
    o.quotaConsumed = buildUnnamed2520();
    o.quotaMetrics = buildUnnamed2521();
  }
  buildCounterQuotaInfo--;
  return o;
}

checkQuotaInfo(api.QuotaInfo o) {
  buildCounterQuotaInfo++;
  if (buildCounterQuotaInfo < 3) {
    checkUnnamed2519(o.limitExceeded);
    checkUnnamed2520(o.quotaConsumed);
    checkUnnamed2521(o.quotaMetrics);
  }
  buildCounterQuotaInfo--;
}

buildUnnamed2522() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed2522(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed2523() {
  var o = new core.List<api.MetricValueSet>();
  o.add(buildMetricValueSet());
  o.add(buildMetricValueSet());
  return o;
}

checkUnnamed2523(core.List<api.MetricValueSet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetricValueSet(o[0]);
  checkMetricValueSet(o[1]);
}

core.int buildCounterQuotaOperation = 0;
buildQuotaOperation() {
  var o = new api.QuotaOperation();
  buildCounterQuotaOperation++;
  if (buildCounterQuotaOperation < 3) {
    o.consumerId = "foo";
    o.labels = buildUnnamed2522();
    o.methodName = "foo";
    o.operationId = "foo";
    o.quotaMetrics = buildUnnamed2523();
    o.quotaMode = "foo";
  }
  buildCounterQuotaOperation--;
  return o;
}

checkQuotaOperation(api.QuotaOperation o) {
  buildCounterQuotaOperation++;
  if (buildCounterQuotaOperation < 3) {
    unittest.expect(o.consumerId, unittest.equals('foo'));
    checkUnnamed2522(o.labels);
    unittest.expect(o.methodName, unittest.equals('foo'));
    unittest.expect(o.operationId, unittest.equals('foo'));
    checkUnnamed2523(o.quotaMetrics);
    unittest.expect(o.quotaMode, unittest.equals('foo'));
  }
  buildCounterQuotaOperation--;
}

core.int buildCounterQuotaProperties = 0;
buildQuotaProperties() {
  var o = new api.QuotaProperties();
  buildCounterQuotaProperties++;
  if (buildCounterQuotaProperties < 3) {
    o.quotaMode = "foo";
  }
  buildCounterQuotaProperties--;
  return o;
}

checkQuotaProperties(api.QuotaProperties o) {
  buildCounterQuotaProperties++;
  if (buildCounterQuotaProperties < 3) {
    unittest.expect(o.quotaMode, unittest.equals('foo'));
  }
  buildCounterQuotaProperties--;
}

core.int buildCounterReleaseQuotaRequest = 0;
buildReleaseQuotaRequest() {
  var o = new api.ReleaseQuotaRequest();
  buildCounterReleaseQuotaRequest++;
  if (buildCounterReleaseQuotaRequest < 3) {
    o.releaseOperation = buildQuotaOperation();
    o.serviceConfigId = "foo";
  }
  buildCounterReleaseQuotaRequest--;
  return o;
}

checkReleaseQuotaRequest(api.ReleaseQuotaRequest o) {
  buildCounterReleaseQuotaRequest++;
  if (buildCounterReleaseQuotaRequest < 3) {
    checkQuotaOperation(o.releaseOperation);
    unittest.expect(o.serviceConfigId, unittest.equals('foo'));
  }
  buildCounterReleaseQuotaRequest--;
}

buildUnnamed2524() {
  var o = new core.List<api.MetricValueSet>();
  o.add(buildMetricValueSet());
  o.add(buildMetricValueSet());
  return o;
}

checkUnnamed2524(core.List<api.MetricValueSet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetricValueSet(o[0]);
  checkMetricValueSet(o[1]);
}

buildUnnamed2525() {
  var o = new core.List<api.QuotaError>();
  o.add(buildQuotaError());
  o.add(buildQuotaError());
  return o;
}

checkUnnamed2525(core.List<api.QuotaError> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkQuotaError(o[0]);
  checkQuotaError(o[1]);
}

core.int buildCounterReleaseQuotaResponse = 0;
buildReleaseQuotaResponse() {
  var o = new api.ReleaseQuotaResponse();
  buildCounterReleaseQuotaResponse++;
  if (buildCounterReleaseQuotaResponse < 3) {
    o.operationId = "foo";
    o.quotaMetrics = buildUnnamed2524();
    o.releaseErrors = buildUnnamed2525();
    o.serviceConfigId = "foo";
  }
  buildCounterReleaseQuotaResponse--;
  return o;
}

checkReleaseQuotaResponse(api.ReleaseQuotaResponse o) {
  buildCounterReleaseQuotaResponse++;
  if (buildCounterReleaseQuotaResponse < 3) {
    unittest.expect(o.operationId, unittest.equals('foo'));
    checkUnnamed2524(o.quotaMetrics);
    checkUnnamed2525(o.releaseErrors);
    unittest.expect(o.serviceConfigId, unittest.equals('foo'));
  }
  buildCounterReleaseQuotaResponse--;
}

core.int buildCounterReportError = 0;
buildReportError() {
  var o = new api.ReportError();
  buildCounterReportError++;
  if (buildCounterReportError < 3) {
    o.operationId = "foo";
    o.status = buildStatus();
  }
  buildCounterReportError--;
  return o;
}

checkReportError(api.ReportError o) {
  buildCounterReportError++;
  if (buildCounterReportError < 3) {
    unittest.expect(o.operationId, unittest.equals('foo'));
    checkStatus(o.status);
  }
  buildCounterReportError--;
}

core.int buildCounterReportInfo = 0;
buildReportInfo() {
  var o = new api.ReportInfo();
  buildCounterReportInfo++;
  if (buildCounterReportInfo < 3) {
    o.operationId = "foo";
    o.quotaInfo = buildQuotaInfo();
  }
  buildCounterReportInfo--;
  return o;
}

checkReportInfo(api.ReportInfo o) {
  buildCounterReportInfo++;
  if (buildCounterReportInfo < 3) {
    unittest.expect(o.operationId, unittest.equals('foo'));
    checkQuotaInfo(o.quotaInfo);
  }
  buildCounterReportInfo--;
}

buildUnnamed2526() {
  var o = new core.List<api.Operation>();
  o.add(buildOperation());
  o.add(buildOperation());
  return o;
}

checkUnnamed2526(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0]);
  checkOperation(o[1]);
}

core.int buildCounterReportRequest = 0;
buildReportRequest() {
  var o = new api.ReportRequest();
  buildCounterReportRequest++;
  if (buildCounterReportRequest < 3) {
    o.operations = buildUnnamed2526();
    o.serviceConfigId = "foo";
  }
  buildCounterReportRequest--;
  return o;
}

checkReportRequest(api.ReportRequest o) {
  buildCounterReportRequest++;
  if (buildCounterReportRequest < 3) {
    checkUnnamed2526(o.operations);
    unittest.expect(o.serviceConfigId, unittest.equals('foo'));
  }
  buildCounterReportRequest--;
}

buildUnnamed2527() {
  var o = new core.List<api.ReportError>();
  o.add(buildReportError());
  o.add(buildReportError());
  return o;
}

checkUnnamed2527(core.List<api.ReportError> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReportError(o[0]);
  checkReportError(o[1]);
}

buildUnnamed2528() {
  var o = new core.List<api.ReportInfo>();
  o.add(buildReportInfo());
  o.add(buildReportInfo());
  return o;
}

checkUnnamed2528(core.List<api.ReportInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReportInfo(o[0]);
  checkReportInfo(o[1]);
}

core.int buildCounterReportResponse = 0;
buildReportResponse() {
  var o = new api.ReportResponse();
  buildCounterReportResponse++;
  if (buildCounterReportResponse < 3) {
    o.reportErrors = buildUnnamed2527();
    o.reportInfos = buildUnnamed2528();
    o.serviceConfigId = "foo";
  }
  buildCounterReportResponse--;
  return o;
}

checkReportResponse(api.ReportResponse o) {
  buildCounterReportResponse++;
  if (buildCounterReportResponse < 3) {
    checkUnnamed2527(o.reportErrors);
    checkUnnamed2528(o.reportInfos);
    unittest.expect(o.serviceConfigId, unittest.equals('foo'));
  }
  buildCounterReportResponse--;
}

buildUnnamed2529() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed2529(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterRequest = 0;
buildRequest() {
  var o = new api.Request();
  buildCounterRequest++;
  if (buildCounterRequest < 3) {
    o.auth = buildAuth();
    o.fragment = "foo";
    o.headers = buildUnnamed2529();
    o.host = "foo";
    o.id = "foo";
    o.method = "foo";
    o.path = "foo";
    o.protocol = "foo";
    o.query = "foo";
    o.reason = "foo";
    o.scheme = "foo";
    o.size = "foo";
    o.time = "foo";
  }
  buildCounterRequest--;
  return o;
}

checkRequest(api.Request o) {
  buildCounterRequest++;
  if (buildCounterRequest < 3) {
    checkAuth(o.auth);
    unittest.expect(o.fragment, unittest.equals('foo'));
    checkUnnamed2529(o.headers);
    unittest.expect(o.host, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.method, unittest.equals('foo'));
    unittest.expect(o.path, unittest.equals('foo'));
    unittest.expect(o.protocol, unittest.equals('foo'));
    unittest.expect(o.query, unittest.equals('foo'));
    unittest.expect(o.reason, unittest.equals('foo'));
    unittest.expect(o.scheme, unittest.equals('foo'));
    unittest.expect(o.size, unittest.equals('foo'));
    unittest.expect(o.time, unittest.equals('foo'));
  }
  buildCounterRequest--;
}

core.int buildCounterRequestMetadata = 0;
buildRequestMetadata() {
  var o = new api.RequestMetadata();
  buildCounterRequestMetadata++;
  if (buildCounterRequestMetadata < 3) {
    o.callerIp = "foo";
    o.callerNetwork = "foo";
    o.callerSuppliedUserAgent = "foo";
    o.destinationAttributes = buildPeer();
    o.requestAttributes = buildRequest();
  }
  buildCounterRequestMetadata--;
  return o;
}

checkRequestMetadata(api.RequestMetadata o) {
  buildCounterRequestMetadata++;
  if (buildCounterRequestMetadata < 3) {
    unittest.expect(o.callerIp, unittest.equals('foo'));
    unittest.expect(o.callerNetwork, unittest.equals('foo'));
    unittest.expect(o.callerSuppliedUserAgent, unittest.equals('foo'));
    checkPeer(o.destinationAttributes);
    checkRequest(o.requestAttributes);
  }
  buildCounterRequestMetadata--;
}

buildUnnamed2530() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed2530(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterResource = 0;
buildResource() {
  var o = new api.Resource();
  buildCounterResource++;
  if (buildCounterResource < 3) {
    o.labels = buildUnnamed2530();
    o.name = "foo";
    o.service = "foo";
    o.type = "foo";
  }
  buildCounterResource--;
  return o;
}

checkResource(api.Resource o) {
  buildCounterResource++;
  if (buildCounterResource < 3) {
    checkUnnamed2530(o.labels);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.service, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterResource--;
}

core.int buildCounterResourceInfo = 0;
buildResourceInfo() {
  var o = new api.ResourceInfo();
  buildCounterResourceInfo++;
  if (buildCounterResourceInfo < 3) {
    o.resourceContainer = "foo";
    o.resourceLocation = "foo";
    o.resourceName = "foo";
  }
  buildCounterResourceInfo--;
  return o;
}

checkResourceInfo(api.ResourceInfo o) {
  buildCounterResourceInfo++;
  if (buildCounterResourceInfo < 3) {
    unittest.expect(o.resourceContainer, unittest.equals('foo'));
    unittest.expect(o.resourceLocation, unittest.equals('foo'));
    unittest.expect(o.resourceName, unittest.equals('foo'));
  }
  buildCounterResourceInfo--;
}

buildUnnamed2531() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2531(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterResourceLocation = 0;
buildResourceLocation() {
  var o = new api.ResourceLocation();
  buildCounterResourceLocation++;
  if (buildCounterResourceLocation < 3) {
    o.currentLocations = buildUnnamed2531();
  }
  buildCounterResourceLocation--;
  return o;
}

checkResourceLocation(api.ResourceLocation o) {
  buildCounterResourceLocation++;
  if (buildCounterResourceLocation < 3) {
    checkUnnamed2531(o.currentLocations);
  }
  buildCounterResourceLocation--;
}

core.int buildCounterStartReconciliationRequest = 0;
buildStartReconciliationRequest() {
  var o = new api.StartReconciliationRequest();
  buildCounterStartReconciliationRequest++;
  if (buildCounterStartReconciliationRequest < 3) {
    o.reconciliationOperation = buildQuotaOperation();
    o.serviceConfigId = "foo";
  }
  buildCounterStartReconciliationRequest--;
  return o;
}

checkStartReconciliationRequest(api.StartReconciliationRequest o) {
  buildCounterStartReconciliationRequest++;
  if (buildCounterStartReconciliationRequest < 3) {
    checkQuotaOperation(o.reconciliationOperation);
    unittest.expect(o.serviceConfigId, unittest.equals('foo'));
  }
  buildCounterStartReconciliationRequest--;
}

buildUnnamed2532() {
  var o = new core.List<api.MetricValueSet>();
  o.add(buildMetricValueSet());
  o.add(buildMetricValueSet());
  return o;
}

checkUnnamed2532(core.List<api.MetricValueSet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetricValueSet(o[0]);
  checkMetricValueSet(o[1]);
}

buildUnnamed2533() {
  var o = new core.List<api.QuotaError>();
  o.add(buildQuotaError());
  o.add(buildQuotaError());
  return o;
}

checkUnnamed2533(core.List<api.QuotaError> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkQuotaError(o[0]);
  checkQuotaError(o[1]);
}

core.int buildCounterStartReconciliationResponse = 0;
buildStartReconciliationResponse() {
  var o = new api.StartReconciliationResponse();
  buildCounterStartReconciliationResponse++;
  if (buildCounterStartReconciliationResponse < 3) {
    o.operationId = "foo";
    o.quotaMetrics = buildUnnamed2532();
    o.reconciliationErrors = buildUnnamed2533();
    o.serviceConfigId = "foo";
  }
  buildCounterStartReconciliationResponse--;
  return o;
}

checkStartReconciliationResponse(api.StartReconciliationResponse o) {
  buildCounterStartReconciliationResponse++;
  if (buildCounterStartReconciliationResponse < 3) {
    unittest.expect(o.operationId, unittest.equals('foo'));
    checkUnnamed2532(o.quotaMetrics);
    checkUnnamed2533(o.reconciliationErrors);
    unittest.expect(o.serviceConfigId, unittest.equals('foo'));
  }
  buildCounterStartReconciliationResponse--;
}

buildUnnamed2534() {
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

checkUnnamed2534(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted17 = (o["x"]) as core.Map;
  unittest.expect(casted17, unittest.hasLength(3));
  unittest.expect(casted17["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted17["bool"], unittest.equals(true));
  unittest.expect(casted17["string"], unittest.equals('foo'));
  var casted18 = (o["y"]) as core.Map;
  unittest.expect(casted18, unittest.hasLength(3));
  unittest.expect(casted18["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted18["bool"], unittest.equals(true));
  unittest.expect(casted18["string"], unittest.equals('foo'));
}

buildUnnamed2535() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed2534());
  o.add(buildUnnamed2534());
  return o;
}

checkUnnamed2535(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed2534(o[0]);
  checkUnnamed2534(o[1]);
}

core.int buildCounterStatus = 0;
buildStatus() {
  var o = new api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed2535();
    o.message = "foo";
  }
  buildCounterStatus--;
  return o;
}

checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed2535(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

main() {
  unittest.group("obj-schema-AllocateInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildAllocateInfo();
      var od = new api.AllocateInfo.fromJson(o.toJson());
      checkAllocateInfo(od);
    });
  });

  unittest.group("obj-schema-AllocateQuotaRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildAllocateQuotaRequest();
      var od = new api.AllocateQuotaRequest.fromJson(o.toJson());
      checkAllocateQuotaRequest(od);
    });
  });

  unittest.group("obj-schema-AllocateQuotaResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildAllocateQuotaResponse();
      var od = new api.AllocateQuotaResponse.fromJson(o.toJson());
      checkAllocateQuotaResponse(od);
    });
  });

  unittest.group("obj-schema-AuditLog", () {
    unittest.test("to-json--from-json", () {
      var o = buildAuditLog();
      var od = new api.AuditLog.fromJson(o.toJson());
      checkAuditLog(od);
    });
  });

  unittest.group("obj-schema-Auth", () {
    unittest.test("to-json--from-json", () {
      var o = buildAuth();
      var od = new api.Auth.fromJson(o.toJson());
      checkAuth(od);
    });
  });

  unittest.group("obj-schema-AuthenticationInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildAuthenticationInfo();
      var od = new api.AuthenticationInfo.fromJson(o.toJson());
      checkAuthenticationInfo(od);
    });
  });

  unittest.group("obj-schema-AuthorizationInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildAuthorizationInfo();
      var od = new api.AuthorizationInfo.fromJson(o.toJson());
      checkAuthorizationInfo(od);
    });
  });

  unittest.group("obj-schema-CheckError", () {
    unittest.test("to-json--from-json", () {
      var o = buildCheckError();
      var od = new api.CheckError.fromJson(o.toJson());
      checkCheckError(od);
    });
  });

  unittest.group("obj-schema-CheckInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildCheckInfo();
      var od = new api.CheckInfo.fromJson(o.toJson());
      checkCheckInfo(od);
    });
  });

  unittest.group("obj-schema-CheckRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildCheckRequest();
      var od = new api.CheckRequest.fromJson(o.toJson());
      checkCheckRequest(od);
    });
  });

  unittest.group("obj-schema-CheckResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildCheckResponse();
      var od = new api.CheckResponse.fromJson(o.toJson());
      checkCheckResponse(od);
    });
  });

  unittest.group("obj-schema-ConsumerInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildConsumerInfo();
      var od = new api.ConsumerInfo.fromJson(o.toJson());
      checkConsumerInfo(od);
    });
  });

  unittest.group("obj-schema-Distribution", () {
    unittest.test("to-json--from-json", () {
      var o = buildDistribution();
      var od = new api.Distribution.fromJson(o.toJson());
      checkDistribution(od);
    });
  });

  unittest.group("obj-schema-EndReconciliationRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildEndReconciliationRequest();
      var od = new api.EndReconciliationRequest.fromJson(o.toJson());
      checkEndReconciliationRequest(od);
    });
  });

  unittest.group("obj-schema-EndReconciliationResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildEndReconciliationResponse();
      var od = new api.EndReconciliationResponse.fromJson(o.toJson());
      checkEndReconciliationResponse(od);
    });
  });

  unittest.group("obj-schema-ExplicitBuckets", () {
    unittest.test("to-json--from-json", () {
      var o = buildExplicitBuckets();
      var od = new api.ExplicitBuckets.fromJson(o.toJson());
      checkExplicitBuckets(od);
    });
  });

  unittest.group("obj-schema-ExponentialBuckets", () {
    unittest.test("to-json--from-json", () {
      var o = buildExponentialBuckets();
      var od = new api.ExponentialBuckets.fromJson(o.toJson());
      checkExponentialBuckets(od);
    });
  });

  unittest.group("obj-schema-HttpRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildHttpRequest();
      var od = new api.HttpRequest.fromJson(o.toJson());
      checkHttpRequest(od);
    });
  });

  unittest.group("obj-schema-LinearBuckets", () {
    unittest.test("to-json--from-json", () {
      var o = buildLinearBuckets();
      var od = new api.LinearBuckets.fromJson(o.toJson());
      checkLinearBuckets(od);
    });
  });

  unittest.group("obj-schema-LogEntry", () {
    unittest.test("to-json--from-json", () {
      var o = buildLogEntry();
      var od = new api.LogEntry.fromJson(o.toJson());
      checkLogEntry(od);
    });
  });

  unittest.group("obj-schema-LogEntryOperation", () {
    unittest.test("to-json--from-json", () {
      var o = buildLogEntryOperation();
      var od = new api.LogEntryOperation.fromJson(o.toJson());
      checkLogEntryOperation(od);
    });
  });

  unittest.group("obj-schema-MetricValue", () {
    unittest.test("to-json--from-json", () {
      var o = buildMetricValue();
      var od = new api.MetricValue.fromJson(o.toJson());
      checkMetricValue(od);
    });
  });

  unittest.group("obj-schema-MetricValueSet", () {
    unittest.test("to-json--from-json", () {
      var o = buildMetricValueSet();
      var od = new api.MetricValueSet.fromJson(o.toJson());
      checkMetricValueSet(od);
    });
  });

  unittest.group("obj-schema-Money", () {
    unittest.test("to-json--from-json", () {
      var o = buildMoney();
      var od = new api.Money.fromJson(o.toJson());
      checkMoney(od);
    });
  });

  unittest.group("obj-schema-Operation", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperation();
      var od = new api.Operation.fromJson(o.toJson());
      checkOperation(od);
    });
  });

  unittest.group("obj-schema-Peer", () {
    unittest.test("to-json--from-json", () {
      var o = buildPeer();
      var od = new api.Peer.fromJson(o.toJson());
      checkPeer(od);
    });
  });

  unittest.group("obj-schema-QuotaError", () {
    unittest.test("to-json--from-json", () {
      var o = buildQuotaError();
      var od = new api.QuotaError.fromJson(o.toJson());
      checkQuotaError(od);
    });
  });

  unittest.group("obj-schema-QuotaInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildQuotaInfo();
      var od = new api.QuotaInfo.fromJson(o.toJson());
      checkQuotaInfo(od);
    });
  });

  unittest.group("obj-schema-QuotaOperation", () {
    unittest.test("to-json--from-json", () {
      var o = buildQuotaOperation();
      var od = new api.QuotaOperation.fromJson(o.toJson());
      checkQuotaOperation(od);
    });
  });

  unittest.group("obj-schema-QuotaProperties", () {
    unittest.test("to-json--from-json", () {
      var o = buildQuotaProperties();
      var od = new api.QuotaProperties.fromJson(o.toJson());
      checkQuotaProperties(od);
    });
  });

  unittest.group("obj-schema-ReleaseQuotaRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildReleaseQuotaRequest();
      var od = new api.ReleaseQuotaRequest.fromJson(o.toJson());
      checkReleaseQuotaRequest(od);
    });
  });

  unittest.group("obj-schema-ReleaseQuotaResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildReleaseQuotaResponse();
      var od = new api.ReleaseQuotaResponse.fromJson(o.toJson());
      checkReleaseQuotaResponse(od);
    });
  });

  unittest.group("obj-schema-ReportError", () {
    unittest.test("to-json--from-json", () {
      var o = buildReportError();
      var od = new api.ReportError.fromJson(o.toJson());
      checkReportError(od);
    });
  });

  unittest.group("obj-schema-ReportInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildReportInfo();
      var od = new api.ReportInfo.fromJson(o.toJson());
      checkReportInfo(od);
    });
  });

  unittest.group("obj-schema-ReportRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildReportRequest();
      var od = new api.ReportRequest.fromJson(o.toJson());
      checkReportRequest(od);
    });
  });

  unittest.group("obj-schema-ReportResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildReportResponse();
      var od = new api.ReportResponse.fromJson(o.toJson());
      checkReportResponse(od);
    });
  });

  unittest.group("obj-schema-Request", () {
    unittest.test("to-json--from-json", () {
      var o = buildRequest();
      var od = new api.Request.fromJson(o.toJson());
      checkRequest(od);
    });
  });

  unittest.group("obj-schema-RequestMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildRequestMetadata();
      var od = new api.RequestMetadata.fromJson(o.toJson());
      checkRequestMetadata(od);
    });
  });

  unittest.group("obj-schema-Resource", () {
    unittest.test("to-json--from-json", () {
      var o = buildResource();
      var od = new api.Resource.fromJson(o.toJson());
      checkResource(od);
    });
  });

  unittest.group("obj-schema-ResourceInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildResourceInfo();
      var od = new api.ResourceInfo.fromJson(o.toJson());
      checkResourceInfo(od);
    });
  });

  unittest.group("obj-schema-ResourceLocation", () {
    unittest.test("to-json--from-json", () {
      var o = buildResourceLocation();
      var od = new api.ResourceLocation.fromJson(o.toJson());
      checkResourceLocation(od);
    });
  });

  unittest.group("obj-schema-StartReconciliationRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildStartReconciliationRequest();
      var od = new api.StartReconciliationRequest.fromJson(o.toJson());
      checkStartReconciliationRequest(od);
    });
  });

  unittest.group("obj-schema-StartReconciliationResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildStartReconciliationResponse();
      var od = new api.StartReconciliationResponse.fromJson(o.toJson());
      checkStartReconciliationResponse(od);
    });
  });

  unittest.group("obj-schema-Status", () {
    unittest.test("to-json--from-json", () {
      var o = buildStatus();
      var od = new api.Status.fromJson(o.toJson());
      checkStatus(od);
    });
  });

  unittest.group("resource-ServicesResourceApi", () {
    unittest.test("method--allocateQuota", () {
      var mock = new HttpServerMock();
      api.ServicesResourceApi res = new api.ServicecontrolApi(mock).services;
      var arg_request = buildAllocateQuotaRequest();
      var arg_serviceName = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.AllocateQuotaRequest.fromJson(json);
        checkAllocateQuotaRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/services/"));
        pathOffset += 12;
        index = path.indexOf(":allocateQuota", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_serviceName"));
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals(":allocateQuota"));
        pathOffset += 14;

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
        var resp = convert.json.encode(buildAllocateQuotaResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .allocateQuota(arg_request, arg_serviceName, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAllocateQuotaResponse(response);
      })));
    });

    unittest.test("method--check", () {
      var mock = new HttpServerMock();
      api.ServicesResourceApi res = new api.ServicecontrolApi(mock).services;
      var arg_request = buildCheckRequest();
      var arg_serviceName = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.CheckRequest.fromJson(json);
        checkCheckRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/services/"));
        pathOffset += 12;
        index = path.indexOf(":check", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_serviceName"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals(":check"));
        pathOffset += 6;

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
        var resp = convert.json.encode(buildCheckResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .check(arg_request, arg_serviceName, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCheckResponse(response);
      })));
    });

    unittest.test("method--endReconciliation", () {
      var mock = new HttpServerMock();
      api.ServicesResourceApi res = new api.ServicecontrolApi(mock).services;
      var arg_request = buildEndReconciliationRequest();
      var arg_serviceName = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.EndReconciliationRequest.fromJson(json);
        checkEndReconciliationRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/services/"));
        pathOffset += 12;
        index = path.indexOf(":endReconciliation", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_serviceName"));
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals(":endReconciliation"));
        pathOffset += 18;

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
        var resp = convert.json.encode(buildEndReconciliationResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .endReconciliation(arg_request, arg_serviceName, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEndReconciliationResponse(response);
      })));
    });

    unittest.test("method--releaseQuota", () {
      var mock = new HttpServerMock();
      api.ServicesResourceApi res = new api.ServicecontrolApi(mock).services;
      var arg_request = buildReleaseQuotaRequest();
      var arg_serviceName = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ReleaseQuotaRequest.fromJson(json);
        checkReleaseQuotaRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/services/"));
        pathOffset += 12;
        index = path.indexOf(":releaseQuota", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_serviceName"));
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals(":releaseQuota"));
        pathOffset += 13;

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
        var resp = convert.json.encode(buildReleaseQuotaResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .releaseQuota(arg_request, arg_serviceName, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkReleaseQuotaResponse(response);
      })));
    });

    unittest.test("method--report", () {
      var mock = new HttpServerMock();
      api.ServicesResourceApi res = new api.ServicecontrolApi(mock).services;
      var arg_request = buildReportRequest();
      var arg_serviceName = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ReportRequest.fromJson(json);
        checkReportRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/services/"));
        pathOffset += 12;
        index = path.indexOf(":report", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_serviceName"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals(":report"));
        pathOffset += 7;

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
        var resp = convert.json.encode(buildReportResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .report(arg_request, arg_serviceName, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkReportResponse(response);
      })));
    });

    unittest.test("method--startReconciliation", () {
      var mock = new HttpServerMock();
      api.ServicesResourceApi res = new api.ServicecontrolApi(mock).services;
      var arg_request = buildStartReconciliationRequest();
      var arg_serviceName = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.StartReconciliationRequest.fromJson(json);
        checkStartReconciliationRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/services/"));
        pathOffset += 12;
        index = path.indexOf(":startReconciliation", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_serviceName"));
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals(":startReconciliation"));
        pathOffset += 20;

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
        var resp = convert.json.encode(buildStartReconciliationResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .startReconciliation(arg_request, arg_serviceName,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkStartReconciliationResponse(response);
      })));
    });
  });
}
