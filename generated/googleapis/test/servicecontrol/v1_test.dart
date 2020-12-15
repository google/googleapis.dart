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

buildUnnamed1351() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1351(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAllocateInfo = 0;
buildAllocateInfo() {
  var o = new api.AllocateInfo();
  buildCounterAllocateInfo++;
  if (buildCounterAllocateInfo < 3) {
    o.unusedArguments = buildUnnamed1351();
  }
  buildCounterAllocateInfo--;
  return o;
}

checkAllocateInfo(api.AllocateInfo o) {
  buildCounterAllocateInfo++;
  if (buildCounterAllocateInfo < 3) {
    checkUnnamed1351(o.unusedArguments);
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

buildUnnamed1352() {
  var o = new core.List<api.QuotaError>();
  o.add(buildQuotaError());
  o.add(buildQuotaError());
  return o;
}

checkUnnamed1352(core.List<api.QuotaError> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkQuotaError(o[0]);
  checkQuotaError(o[1]);
}

buildUnnamed1353() {
  var o = new core.List<api.MetricValueSet>();
  o.add(buildMetricValueSet());
  o.add(buildMetricValueSet());
  return o;
}

checkUnnamed1353(core.List<api.MetricValueSet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetricValueSet(o[0]);
  checkMetricValueSet(o[1]);
}

core.int buildCounterAllocateQuotaResponse = 0;
buildAllocateQuotaResponse() {
  var o = new api.AllocateQuotaResponse();
  buildCounterAllocateQuotaResponse++;
  if (buildCounterAllocateQuotaResponse < 3) {
    o.allocateErrors = buildUnnamed1352();
    o.allocateInfo = buildAllocateInfo();
    o.operationId = "foo";
    o.quotaMetrics = buildUnnamed1353();
    o.serviceConfigId = "foo";
  }
  buildCounterAllocateQuotaResponse--;
  return o;
}

checkAllocateQuotaResponse(api.AllocateQuotaResponse o) {
  buildCounterAllocateQuotaResponse++;
  if (buildCounterAllocateQuotaResponse < 3) {
    checkUnnamed1352(o.allocateErrors);
    checkAllocateInfo(o.allocateInfo);
    unittest.expect(o.operationId, unittest.equals('foo'));
    checkUnnamed1353(o.quotaMetrics);
    unittest.expect(o.serviceConfigId, unittest.equals('foo'));
  }
  buildCounterAllocateQuotaResponse--;
}

core.int buildCounterAttributeValue = 0;
buildAttributeValue() {
  var o = new api.AttributeValue();
  buildCounterAttributeValue++;
  if (buildCounterAttributeValue < 3) {
    o.boolValue = true;
    o.intValue = "foo";
    o.stringValue = buildTruncatableString();
  }
  buildCounterAttributeValue--;
  return o;
}

checkAttributeValue(api.AttributeValue o) {
  buildCounterAttributeValue++;
  if (buildCounterAttributeValue < 3) {
    unittest.expect(o.boolValue, unittest.isTrue);
    unittest.expect(o.intValue, unittest.equals('foo'));
    checkTruncatableString(o.stringValue);
  }
  buildCounterAttributeValue--;
}

buildUnnamed1354() {
  var o = new core.Map<core.String, api.AttributeValue>();
  o["x"] = buildAttributeValue();
  o["y"] = buildAttributeValue();
  return o;
}

checkUnnamed1354(core.Map<core.String, api.AttributeValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAttributeValue(o["x"]);
  checkAttributeValue(o["y"]);
}

core.int buildCounterAttributes = 0;
buildAttributes() {
  var o = new api.Attributes();
  buildCounterAttributes++;
  if (buildCounterAttributes < 3) {
    o.attributeMap = buildUnnamed1354();
    o.droppedAttributesCount = 42;
  }
  buildCounterAttributes--;
  return o;
}

checkAttributes(api.Attributes o) {
  buildCounterAttributes++;
  if (buildCounterAttributes < 3) {
    checkUnnamed1354(o.attributeMap);
    unittest.expect(o.droppedAttributesCount, unittest.equals(42));
  }
  buildCounterAttributes--;
}

buildUnnamed1355() {
  var o = new core.List<api.AuthorizationInfo>();
  o.add(buildAuthorizationInfo());
  o.add(buildAuthorizationInfo());
  return o;
}

checkUnnamed1355(core.List<api.AuthorizationInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuthorizationInfo(o[0]);
  checkAuthorizationInfo(o[1]);
}

buildUnnamed1356() {
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

checkUnnamed1356(core.Map<core.String, core.Object> o) {
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

buildUnnamed1357() {
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

checkUnnamed1357(core.Map<core.String, core.Object> o) {
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

buildUnnamed1358() {
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

checkUnnamed1358(core.Map<core.String, core.Object> o) {
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

buildUnnamed1359() {
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

checkUnnamed1359(core.Map<core.String, core.Object> o) {
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

buildUnnamed1360() {
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

checkUnnamed1360(core.Map<core.String, core.Object> o) {
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

core.int buildCounterAuditLog = 0;
buildAuditLog() {
  var o = new api.AuditLog();
  buildCounterAuditLog++;
  if (buildCounterAuditLog < 3) {
    o.authenticationInfo = buildAuthenticationInfo();
    o.authorizationInfo = buildUnnamed1355();
    o.metadata = buildUnnamed1356();
    o.methodName = "foo";
    o.numResponseItems = "foo";
    o.request = buildUnnamed1357();
    o.requestMetadata = buildRequestMetadata();
    o.resourceLocation = buildResourceLocation();
    o.resourceName = "foo";
    o.resourceOriginalState = buildUnnamed1358();
    o.response = buildUnnamed1359();
    o.serviceData = buildUnnamed1360();
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
    checkUnnamed1355(o.authorizationInfo);
    checkUnnamed1356(o.metadata);
    unittest.expect(o.methodName, unittest.equals('foo'));
    unittest.expect(o.numResponseItems, unittest.equals('foo'));
    checkUnnamed1357(o.request);
    checkRequestMetadata(o.requestMetadata);
    checkResourceLocation(o.resourceLocation);
    unittest.expect(o.resourceName, unittest.equals('foo'));
    checkUnnamed1358(o.resourceOriginalState);
    checkUnnamed1359(o.response);
    checkUnnamed1360(o.serviceData);
    unittest.expect(o.serviceName, unittest.equals('foo'));
    checkStatus(o.status);
  }
  buildCounterAuditLog--;
}

buildUnnamed1361() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1361(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1362() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1362(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1363() {
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

checkUnnamed1363(core.Map<core.String, core.Object> o) {
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

core.int buildCounterAuth = 0;
buildAuth() {
  var o = new api.Auth();
  buildCounterAuth++;
  if (buildCounterAuth < 3) {
    o.accessLevels = buildUnnamed1361();
    o.audiences = buildUnnamed1362();
    o.claims = buildUnnamed1363();
    o.presenter = "foo";
    o.principal = "foo";
  }
  buildCounterAuth--;
  return o;
}

checkAuth(api.Auth o) {
  buildCounterAuth++;
  if (buildCounterAuth < 3) {
    checkUnnamed1361(o.accessLevels);
    checkUnnamed1362(o.audiences);
    checkUnnamed1363(o.claims);
    unittest.expect(o.presenter, unittest.equals('foo'));
    unittest.expect(o.principal, unittest.equals('foo'));
  }
  buildCounterAuth--;
}

buildUnnamed1364() {
  var o = new core.List<api.ServiceAccountDelegationInfo>();
  o.add(buildServiceAccountDelegationInfo());
  o.add(buildServiceAccountDelegationInfo());
  return o;
}

checkUnnamed1364(core.List<api.ServiceAccountDelegationInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkServiceAccountDelegationInfo(o[0]);
  checkServiceAccountDelegationInfo(o[1]);
}

buildUnnamed1365() {
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

checkUnnamed1365(core.Map<core.String, core.Object> o) {
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

core.int buildCounterAuthenticationInfo = 0;
buildAuthenticationInfo() {
  var o = new api.AuthenticationInfo();
  buildCounterAuthenticationInfo++;
  if (buildCounterAuthenticationInfo < 3) {
    o.authoritySelector = "foo";
    o.principalEmail = "foo";
    o.principalSubject = "foo";
    o.serviceAccountDelegationInfo = buildUnnamed1364();
    o.serviceAccountKeyName = "foo";
    o.thirdPartyPrincipal = buildUnnamed1365();
  }
  buildCounterAuthenticationInfo--;
  return o;
}

checkAuthenticationInfo(api.AuthenticationInfo o) {
  buildCounterAuthenticationInfo++;
  if (buildCounterAuthenticationInfo < 3) {
    unittest.expect(o.authoritySelector, unittest.equals('foo'));
    unittest.expect(o.principalEmail, unittest.equals('foo'));
    unittest.expect(o.principalSubject, unittest.equals('foo'));
    checkUnnamed1364(o.serviceAccountDelegationInfo);
    unittest.expect(o.serviceAccountKeyName, unittest.equals('foo'));
    checkUnnamed1365(o.thirdPartyPrincipal);
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
    o.status = buildStatus();
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
    checkStatus(o.status);
    unittest.expect(o.subject, unittest.equals('foo'));
  }
  buildCounterCheckError--;
}

buildUnnamed1366() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1366(core.List<core.String> o) {
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
    o.unusedArguments = buildUnnamed1366();
  }
  buildCounterCheckInfo--;
  return o;
}

checkCheckInfo(api.CheckInfo o) {
  buildCounterCheckInfo++;
  if (buildCounterCheckInfo < 3) {
    checkConsumerInfo(o.consumerInfo);
    checkUnnamed1366(o.unusedArguments);
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

buildUnnamed1367() {
  var o = new core.List<api.CheckError>();
  o.add(buildCheckError());
  o.add(buildCheckError());
  return o;
}

checkUnnamed1367(core.List<api.CheckError> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCheckError(o[0]);
  checkCheckError(o[1]);
}

core.int buildCounterCheckResponse = 0;
buildCheckResponse() {
  var o = new api.CheckResponse();
  buildCounterCheckResponse++;
  if (buildCounterCheckResponse < 3) {
    o.checkErrors = buildUnnamed1367();
    o.checkInfo = buildCheckInfo();
    o.operationId = "foo";
    o.quotaInfo = buildQuotaInfo();
    o.serviceConfigId = "foo";
    o.serviceRolloutId = "foo";
  }
  buildCounterCheckResponse--;
  return o;
}

checkCheckResponse(api.CheckResponse o) {
  buildCounterCheckResponse++;
  if (buildCounterCheckResponse < 3) {
    checkUnnamed1367(o.checkErrors);
    checkCheckInfo(o.checkInfo);
    unittest.expect(o.operationId, unittest.equals('foo'));
    checkQuotaInfo(o.quotaInfo);
    unittest.expect(o.serviceConfigId, unittest.equals('foo'));
    unittest.expect(o.serviceRolloutId, unittest.equals('foo'));
  }
  buildCounterCheckResponse--;
}

core.int buildCounterConsumerInfo = 0;
buildConsumerInfo() {
  var o = new api.ConsumerInfo();
  buildCounterConsumerInfo++;
  if (buildCounterConsumerInfo < 3) {
    o.consumerNumber = "foo";
    o.projectNumber = "foo";
    o.type = "foo";
  }
  buildCounterConsumerInfo--;
  return o;
}

checkConsumerInfo(api.ConsumerInfo o) {
  buildCounterConsumerInfo++;
  if (buildCounterConsumerInfo < 3) {
    unittest.expect(o.consumerNumber, unittest.equals('foo'));
    unittest.expect(o.projectNumber, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterConsumerInfo--;
}

buildUnnamed1368() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1368(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1369() {
  var o = new core.List<api.Exemplar>();
  o.add(buildExemplar());
  o.add(buildExemplar());
  return o;
}

checkUnnamed1369(core.List<api.Exemplar> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExemplar(o[0]);
  checkExemplar(o[1]);
}

core.int buildCounterDistribution = 0;
buildDistribution() {
  var o = new api.Distribution();
  buildCounterDistribution++;
  if (buildCounterDistribution < 3) {
    o.bucketCounts = buildUnnamed1368();
    o.count = "foo";
    o.exemplars = buildUnnamed1369();
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
    checkUnnamed1368(o.bucketCounts);
    unittest.expect(o.count, unittest.equals('foo'));
    checkUnnamed1369(o.exemplars);
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

buildUnnamed1370() {
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

checkUnnamed1370(core.Map<core.String, core.Object> o) {
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

buildUnnamed1371() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed1370());
  o.add(buildUnnamed1370());
  return o;
}

checkUnnamed1371(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed1370(o[0]);
  checkUnnamed1370(o[1]);
}

core.int buildCounterExemplar = 0;
buildExemplar() {
  var o = new api.Exemplar();
  buildCounterExemplar++;
  if (buildCounterExemplar < 3) {
    o.attachments = buildUnnamed1371();
    o.timestamp = "foo";
    o.value = 42.0;
  }
  buildCounterExemplar--;
  return o;
}

checkExemplar(api.Exemplar o) {
  buildCounterExemplar++;
  if (buildCounterExemplar < 3) {
    checkUnnamed1371(o.attachments);
    unittest.expect(o.timestamp, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals(42.0));
  }
  buildCounterExemplar--;
}

buildUnnamed1372() {
  var o = new core.List<core.double>();
  o.add(42.0);
  o.add(42.0);
  return o;
}

checkUnnamed1372(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

core.int buildCounterExplicitBuckets = 0;
buildExplicitBuckets() {
  var o = new api.ExplicitBuckets();
  buildCounterExplicitBuckets++;
  if (buildCounterExplicitBuckets < 3) {
    o.bounds = buildUnnamed1372();
  }
  buildCounterExplicitBuckets--;
  return o;
}

checkExplicitBuckets(api.ExplicitBuckets o) {
  buildCounterExplicitBuckets++;
  if (buildCounterExplicitBuckets < 3) {
    checkUnnamed1372(o.bounds);
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

buildUnnamed1373() {
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

checkUnnamed1373(core.Map<core.String, core.Object> o) {
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

core.int buildCounterFirstPartyPrincipal = 0;
buildFirstPartyPrincipal() {
  var o = new api.FirstPartyPrincipal();
  buildCounterFirstPartyPrincipal++;
  if (buildCounterFirstPartyPrincipal < 3) {
    o.principalEmail = "foo";
    o.serviceMetadata = buildUnnamed1373();
  }
  buildCounterFirstPartyPrincipal--;
  return o;
}

checkFirstPartyPrincipal(api.FirstPartyPrincipal o) {
  buildCounterFirstPartyPrincipal++;
  if (buildCounterFirstPartyPrincipal < 3) {
    unittest.expect(o.principalEmail, unittest.equals('foo'));
    checkUnnamed1373(o.serviceMetadata);
  }
  buildCounterFirstPartyPrincipal--;
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

buildUnnamed1374() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed1374(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed1375() {
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

checkUnnamed1375(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted19 = (o["x"]) as core.Map;
  unittest.expect(casted19, unittest.hasLength(3));
  unittest.expect(casted19["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted19["bool"], unittest.equals(true));
  unittest.expect(casted19["string"], unittest.equals('foo'));
  var casted20 = (o["y"]) as core.Map;
  unittest.expect(casted20, unittest.hasLength(3));
  unittest.expect(casted20["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted20["bool"], unittest.equals(true));
  unittest.expect(casted20["string"], unittest.equals('foo'));
}

buildUnnamed1376() {
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

checkUnnamed1376(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted21 = (o["x"]) as core.Map;
  unittest.expect(casted21, unittest.hasLength(3));
  unittest.expect(casted21["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted21["bool"], unittest.equals(true));
  unittest.expect(casted21["string"], unittest.equals('foo'));
  var casted22 = (o["y"]) as core.Map;
  unittest.expect(casted22, unittest.hasLength(3));
  unittest.expect(casted22["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted22["bool"], unittest.equals(true));
  unittest.expect(casted22["string"], unittest.equals('foo'));
}

core.int buildCounterLogEntry = 0;
buildLogEntry() {
  var o = new api.LogEntry();
  buildCounterLogEntry++;
  if (buildCounterLogEntry < 3) {
    o.httpRequest = buildHttpRequest();
    o.insertId = "foo";
    o.labels = buildUnnamed1374();
    o.name = "foo";
    o.operation = buildLogEntryOperation();
    o.protoPayload = buildUnnamed1375();
    o.severity = "foo";
    o.sourceLocation = buildLogEntrySourceLocation();
    o.structPayload = buildUnnamed1376();
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
    checkUnnamed1374(o.labels);
    unittest.expect(o.name, unittest.equals('foo'));
    checkLogEntryOperation(o.operation);
    checkUnnamed1375(o.protoPayload);
    unittest.expect(o.severity, unittest.equals('foo'));
    checkLogEntrySourceLocation(o.sourceLocation);
    checkUnnamed1376(o.structPayload);
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

core.int buildCounterLogEntrySourceLocation = 0;
buildLogEntrySourceLocation() {
  var o = new api.LogEntrySourceLocation();
  buildCounterLogEntrySourceLocation++;
  if (buildCounterLogEntrySourceLocation < 3) {
    o.file = "foo";
    o.function = "foo";
    o.line = "foo";
  }
  buildCounterLogEntrySourceLocation--;
  return o;
}

checkLogEntrySourceLocation(api.LogEntrySourceLocation o) {
  buildCounterLogEntrySourceLocation++;
  if (buildCounterLogEntrySourceLocation < 3) {
    unittest.expect(o.file, unittest.equals('foo'));
    unittest.expect(o.function, unittest.equals('foo'));
    unittest.expect(o.line, unittest.equals('foo'));
  }
  buildCounterLogEntrySourceLocation--;
}

buildUnnamed1377() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed1377(core.Map<core.String, core.String> o) {
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
    o.labels = buildUnnamed1377();
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
    checkUnnamed1377(o.labels);
    checkMoney(o.moneyValue);
    unittest.expect(o.startTime, unittest.equals('foo'));
    unittest.expect(o.stringValue, unittest.equals('foo'));
  }
  buildCounterMetricValue--;
}

buildUnnamed1378() {
  var o = new core.List<api.MetricValue>();
  o.add(buildMetricValue());
  o.add(buildMetricValue());
  return o;
}

checkUnnamed1378(core.List<api.MetricValue> o) {
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
    o.metricValues = buildUnnamed1378();
  }
  buildCounterMetricValueSet--;
  return o;
}

checkMetricValueSet(api.MetricValueSet o) {
  buildCounterMetricValueSet++;
  if (buildCounterMetricValueSet < 3) {
    unittest.expect(o.metricName, unittest.equals('foo'));
    checkUnnamed1378(o.metricValues);
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

buildUnnamed1379() {
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

checkUnnamed1379(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted23 = (o["x"]) as core.Map;
  unittest.expect(casted23, unittest.hasLength(3));
  unittest.expect(casted23["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted23["bool"], unittest.equals(true));
  unittest.expect(casted23["string"], unittest.equals('foo'));
  var casted24 = (o["y"]) as core.Map;
  unittest.expect(casted24, unittest.hasLength(3));
  unittest.expect(casted24["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted24["bool"], unittest.equals(true));
  unittest.expect(casted24["string"], unittest.equals('foo'));
}

buildUnnamed1380() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed1379());
  o.add(buildUnnamed1379());
  return o;
}

checkUnnamed1380(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed1379(o[0]);
  checkUnnamed1379(o[1]);
}

buildUnnamed1381() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed1381(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed1382() {
  var o = new core.List<api.LogEntry>();
  o.add(buildLogEntry());
  o.add(buildLogEntry());
  return o;
}

checkUnnamed1382(core.List<api.LogEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLogEntry(o[0]);
  checkLogEntry(o[1]);
}

buildUnnamed1383() {
  var o = new core.List<api.MetricValueSet>();
  o.add(buildMetricValueSet());
  o.add(buildMetricValueSet());
  return o;
}

checkUnnamed1383(core.List<api.MetricValueSet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetricValueSet(o[0]);
  checkMetricValueSet(o[1]);
}

buildUnnamed1384() {
  var o = new core.List<api.ResourceInfo>();
  o.add(buildResourceInfo());
  o.add(buildResourceInfo());
  return o;
}

checkUnnamed1384(core.List<api.ResourceInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResourceInfo(o[0]);
  checkResourceInfo(o[1]);
}

buildUnnamed1385() {
  var o = new core.List<api.TraceSpan>();
  o.add(buildTraceSpan());
  o.add(buildTraceSpan());
  return o;
}

checkUnnamed1385(core.List<api.TraceSpan> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTraceSpan(o[0]);
  checkTraceSpan(o[1]);
}

buildUnnamed1386() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed1386(core.Map<core.String, core.String> o) {
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
    o.extensions = buildUnnamed1380();
    o.importance = "foo";
    o.labels = buildUnnamed1381();
    o.logEntries = buildUnnamed1382();
    o.metricValueSets = buildUnnamed1383();
    o.operationId = "foo";
    o.operationName = "foo";
    o.quotaProperties = buildQuotaProperties();
    o.resources = buildUnnamed1384();
    o.startTime = "foo";
    o.traceSpans = buildUnnamed1385();
    o.userLabels = buildUnnamed1386();
  }
  buildCounterOperation--;
  return o;
}

checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.consumerId, unittest.equals('foo'));
    unittest.expect(o.endTime, unittest.equals('foo'));
    checkUnnamed1380(o.extensions);
    unittest.expect(o.importance, unittest.equals('foo'));
    checkUnnamed1381(o.labels);
    checkUnnamed1382(o.logEntries);
    checkUnnamed1383(o.metricValueSets);
    unittest.expect(o.operationId, unittest.equals('foo'));
    unittest.expect(o.operationName, unittest.equals('foo'));
    checkQuotaProperties(o.quotaProperties);
    checkUnnamed1384(o.resources);
    unittest.expect(o.startTime, unittest.equals('foo'));
    checkUnnamed1385(o.traceSpans);
    checkUnnamed1386(o.userLabels);
  }
  buildCounterOperation--;
}

buildUnnamed1387() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed1387(core.Map<core.String, core.String> o) {
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
    o.labels = buildUnnamed1387();
    o.port = "foo";
    o.principal = "foo";
    o.regionCode = "foo";
  }
  buildCounterPeer--;
  return o;
}

checkPeer(api.Peer o) {
  buildCounterPeer++;
  if (buildCounterPeer < 3) {
    unittest.expect(o.ip, unittest.equals('foo'));
    checkUnnamed1387(o.labels);
    unittest.expect(o.port, unittest.equals('foo'));
    unittest.expect(o.principal, unittest.equals('foo'));
    unittest.expect(o.regionCode, unittest.equals('foo'));
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
    o.status = buildStatus();
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
    checkStatus(o.status);
    unittest.expect(o.subject, unittest.equals('foo'));
  }
  buildCounterQuotaError--;
}

buildUnnamed1388() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1388(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1389() {
  var o = new core.Map<core.String, core.int>();
  o["x"] = 42;
  o["y"] = 42;
  return o;
}

checkUnnamed1389(core.Map<core.String, core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals(42));
  unittest.expect(o["y"], unittest.equals(42));
}

buildUnnamed1390() {
  var o = new core.List<api.MetricValueSet>();
  o.add(buildMetricValueSet());
  o.add(buildMetricValueSet());
  return o;
}

checkUnnamed1390(core.List<api.MetricValueSet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetricValueSet(o[0]);
  checkMetricValueSet(o[1]);
}

core.int buildCounterQuotaInfo = 0;
buildQuotaInfo() {
  var o = new api.QuotaInfo();
  buildCounterQuotaInfo++;
  if (buildCounterQuotaInfo < 3) {
    o.limitExceeded = buildUnnamed1388();
    o.quotaConsumed = buildUnnamed1389();
    o.quotaMetrics = buildUnnamed1390();
  }
  buildCounterQuotaInfo--;
  return o;
}

checkQuotaInfo(api.QuotaInfo o) {
  buildCounterQuotaInfo++;
  if (buildCounterQuotaInfo < 3) {
    checkUnnamed1388(o.limitExceeded);
    checkUnnamed1389(o.quotaConsumed);
    checkUnnamed1390(o.quotaMetrics);
  }
  buildCounterQuotaInfo--;
}

buildUnnamed1391() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed1391(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed1392() {
  var o = new core.List<api.MetricValueSet>();
  o.add(buildMetricValueSet());
  o.add(buildMetricValueSet());
  return o;
}

checkUnnamed1392(core.List<api.MetricValueSet> o) {
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
    o.labels = buildUnnamed1391();
    o.methodName = "foo";
    o.operationId = "foo";
    o.quotaMetrics = buildUnnamed1392();
    o.quotaMode = "foo";
  }
  buildCounterQuotaOperation--;
  return o;
}

checkQuotaOperation(api.QuotaOperation o) {
  buildCounterQuotaOperation++;
  if (buildCounterQuotaOperation < 3) {
    unittest.expect(o.consumerId, unittest.equals('foo'));
    checkUnnamed1391(o.labels);
    unittest.expect(o.methodName, unittest.equals('foo'));
    unittest.expect(o.operationId, unittest.equals('foo'));
    checkUnnamed1392(o.quotaMetrics);
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

buildUnnamed1393() {
  var o = new core.List<api.Operation>();
  o.add(buildOperation());
  o.add(buildOperation());
  return o;
}

checkUnnamed1393(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0]);
  checkOperation(o[1]);
}

core.int buildCounterReportRequest = 0;
buildReportRequest() {
  var o = new api.ReportRequest();
  buildCounterReportRequest++;
  if (buildCounterReportRequest < 3) {
    o.operations = buildUnnamed1393();
    o.serviceConfigId = "foo";
  }
  buildCounterReportRequest--;
  return o;
}

checkReportRequest(api.ReportRequest o) {
  buildCounterReportRequest++;
  if (buildCounterReportRequest < 3) {
    checkUnnamed1393(o.operations);
    unittest.expect(o.serviceConfigId, unittest.equals('foo'));
  }
  buildCounterReportRequest--;
}

buildUnnamed1394() {
  var o = new core.List<api.ReportError>();
  o.add(buildReportError());
  o.add(buildReportError());
  return o;
}

checkUnnamed1394(core.List<api.ReportError> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReportError(o[0]);
  checkReportError(o[1]);
}

buildUnnamed1395() {
  var o = new core.List<api.ReportInfo>();
  o.add(buildReportInfo());
  o.add(buildReportInfo());
  return o;
}

checkUnnamed1395(core.List<api.ReportInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReportInfo(o[0]);
  checkReportInfo(o[1]);
}

core.int buildCounterReportResponse = 0;
buildReportResponse() {
  var o = new api.ReportResponse();
  buildCounterReportResponse++;
  if (buildCounterReportResponse < 3) {
    o.reportErrors = buildUnnamed1394();
    o.reportInfos = buildUnnamed1395();
    o.serviceConfigId = "foo";
    o.serviceRolloutId = "foo";
  }
  buildCounterReportResponse--;
  return o;
}

checkReportResponse(api.ReportResponse o) {
  buildCounterReportResponse++;
  if (buildCounterReportResponse < 3) {
    checkUnnamed1394(o.reportErrors);
    checkUnnamed1395(o.reportInfos);
    unittest.expect(o.serviceConfigId, unittest.equals('foo'));
    unittest.expect(o.serviceRolloutId, unittest.equals('foo'));
  }
  buildCounterReportResponse--;
}

buildUnnamed1396() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed1396(core.Map<core.String, core.String> o) {
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
    o.headers = buildUnnamed1396();
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
    checkUnnamed1396(o.headers);
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

buildUnnamed1397() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed1397(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed1398() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed1398(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterResource = 0;
buildResource() {
  var o = new api.Resource();
  buildCounterResource++;
  if (buildCounterResource < 3) {
    o.annotations = buildUnnamed1397();
    o.createTime = "foo";
    o.deleteTime = "foo";
    o.displayName = "foo";
    o.etag = "foo";
    o.labels = buildUnnamed1398();
    o.name = "foo";
    o.service = "foo";
    o.type = "foo";
    o.uid = "foo";
    o.updateTime = "foo";
  }
  buildCounterResource--;
  return o;
}

checkResource(api.Resource o) {
  buildCounterResource++;
  if (buildCounterResource < 3) {
    checkUnnamed1397(o.annotations);
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.deleteTime, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed1398(o.labels);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.service, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.uid, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
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

buildUnnamed1399() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1399(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1400() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1400(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterResourceLocation = 0;
buildResourceLocation() {
  var o = new api.ResourceLocation();
  buildCounterResourceLocation++;
  if (buildCounterResourceLocation < 3) {
    o.currentLocations = buildUnnamed1399();
    o.originalLocations = buildUnnamed1400();
  }
  buildCounterResourceLocation--;
  return o;
}

checkResourceLocation(api.ResourceLocation o) {
  buildCounterResourceLocation++;
  if (buildCounterResourceLocation < 3) {
    checkUnnamed1399(o.currentLocations);
    checkUnnamed1400(o.originalLocations);
  }
  buildCounterResourceLocation--;
}

core.int buildCounterServiceAccountDelegationInfo = 0;
buildServiceAccountDelegationInfo() {
  var o = new api.ServiceAccountDelegationInfo();
  buildCounterServiceAccountDelegationInfo++;
  if (buildCounterServiceAccountDelegationInfo < 3) {
    o.firstPartyPrincipal = buildFirstPartyPrincipal();
    o.principalSubject = "foo";
    o.thirdPartyPrincipal = buildThirdPartyPrincipal();
  }
  buildCounterServiceAccountDelegationInfo--;
  return o;
}

checkServiceAccountDelegationInfo(api.ServiceAccountDelegationInfo o) {
  buildCounterServiceAccountDelegationInfo++;
  if (buildCounterServiceAccountDelegationInfo < 3) {
    checkFirstPartyPrincipal(o.firstPartyPrincipal);
    unittest.expect(o.principalSubject, unittest.equals('foo'));
    checkThirdPartyPrincipal(o.thirdPartyPrincipal);
  }
  buildCounterServiceAccountDelegationInfo--;
}

core.int buildCounterSpanContext = 0;
buildSpanContext() {
  var o = new api.SpanContext();
  buildCounterSpanContext++;
  if (buildCounterSpanContext < 3) {
    o.spanName = "foo";
  }
  buildCounterSpanContext--;
  return o;
}

checkSpanContext(api.SpanContext o) {
  buildCounterSpanContext++;
  if (buildCounterSpanContext < 3) {
    unittest.expect(o.spanName, unittest.equals('foo'));
  }
  buildCounterSpanContext--;
}

buildUnnamed1401() {
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

checkUnnamed1401(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted25 = (o["x"]) as core.Map;
  unittest.expect(casted25, unittest.hasLength(3));
  unittest.expect(casted25["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted25["bool"], unittest.equals(true));
  unittest.expect(casted25["string"], unittest.equals('foo'));
  var casted26 = (o["y"]) as core.Map;
  unittest.expect(casted26, unittest.hasLength(3));
  unittest.expect(casted26["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted26["bool"], unittest.equals(true));
  unittest.expect(casted26["string"], unittest.equals('foo'));
}

buildUnnamed1402() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed1401());
  o.add(buildUnnamed1401());
  return o;
}

checkUnnamed1402(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed1401(o[0]);
  checkUnnamed1401(o[1]);
}

core.int buildCounterStatus = 0;
buildStatus() {
  var o = new api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed1402();
    o.message = "foo";
  }
  buildCounterStatus--;
  return o;
}

checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed1402(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

buildUnnamed1403() {
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

checkUnnamed1403(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted27 = (o["x"]) as core.Map;
  unittest.expect(casted27, unittest.hasLength(3));
  unittest.expect(casted27["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted27["bool"], unittest.equals(true));
  unittest.expect(casted27["string"], unittest.equals('foo'));
  var casted28 = (o["y"]) as core.Map;
  unittest.expect(casted28, unittest.hasLength(3));
  unittest.expect(casted28["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted28["bool"], unittest.equals(true));
  unittest.expect(casted28["string"], unittest.equals('foo'));
}

core.int buildCounterThirdPartyPrincipal = 0;
buildThirdPartyPrincipal() {
  var o = new api.ThirdPartyPrincipal();
  buildCounterThirdPartyPrincipal++;
  if (buildCounterThirdPartyPrincipal < 3) {
    o.thirdPartyClaims = buildUnnamed1403();
  }
  buildCounterThirdPartyPrincipal--;
  return o;
}

checkThirdPartyPrincipal(api.ThirdPartyPrincipal o) {
  buildCounterThirdPartyPrincipal++;
  if (buildCounterThirdPartyPrincipal < 3) {
    checkUnnamed1403(o.thirdPartyClaims);
  }
  buildCounterThirdPartyPrincipal--;
}

core.int buildCounterTraceSpan = 0;
buildTraceSpan() {
  var o = new api.TraceSpan();
  buildCounterTraceSpan++;
  if (buildCounterTraceSpan < 3) {
    o.attributes = buildAttributes();
    o.childSpanCount = 42;
    o.displayName = buildTruncatableString();
    o.endTime = "foo";
    o.name = "foo";
    o.parentSpanId = "foo";
    o.sameProcessAsParentSpan = true;
    o.spanId = "foo";
    o.spanKind = "foo";
    o.startTime = "foo";
    o.status = buildStatus();
  }
  buildCounterTraceSpan--;
  return o;
}

checkTraceSpan(api.TraceSpan o) {
  buildCounterTraceSpan++;
  if (buildCounterTraceSpan < 3) {
    checkAttributes(o.attributes);
    unittest.expect(o.childSpanCount, unittest.equals(42));
    checkTruncatableString(o.displayName);
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.parentSpanId, unittest.equals('foo'));
    unittest.expect(o.sameProcessAsParentSpan, unittest.isTrue);
    unittest.expect(o.spanId, unittest.equals('foo'));
    unittest.expect(o.spanKind, unittest.equals('foo'));
    unittest.expect(o.startTime, unittest.equals('foo'));
    checkStatus(o.status);
  }
  buildCounterTraceSpan--;
}

core.int buildCounterTruncatableString = 0;
buildTruncatableString() {
  var o = new api.TruncatableString();
  buildCounterTruncatableString++;
  if (buildCounterTruncatableString < 3) {
    o.truncatedByteCount = 42;
    o.value = "foo";
  }
  buildCounterTruncatableString--;
  return o;
}

checkTruncatableString(api.TruncatableString o) {
  buildCounterTruncatableString++;
  if (buildCounterTruncatableString < 3) {
    unittest.expect(o.truncatedByteCount, unittest.equals(42));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterTruncatableString--;
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

  unittest.group("obj-schema-AttributeValue", () {
    unittest.test("to-json--from-json", () {
      var o = buildAttributeValue();
      var od = new api.AttributeValue.fromJson(o.toJson());
      checkAttributeValue(od);
    });
  });

  unittest.group("obj-schema-Attributes", () {
    unittest.test("to-json--from-json", () {
      var o = buildAttributes();
      var od = new api.Attributes.fromJson(o.toJson());
      checkAttributes(od);
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

  unittest.group("obj-schema-Exemplar", () {
    unittest.test("to-json--from-json", () {
      var o = buildExemplar();
      var od = new api.Exemplar.fromJson(o.toJson());
      checkExemplar(od);
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

  unittest.group("obj-schema-FirstPartyPrincipal", () {
    unittest.test("to-json--from-json", () {
      var o = buildFirstPartyPrincipal();
      var od = new api.FirstPartyPrincipal.fromJson(o.toJson());
      checkFirstPartyPrincipal(od);
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

  unittest.group("obj-schema-LogEntrySourceLocation", () {
    unittest.test("to-json--from-json", () {
      var o = buildLogEntrySourceLocation();
      var od = new api.LogEntrySourceLocation.fromJson(o.toJson());
      checkLogEntrySourceLocation(od);
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

  unittest.group("obj-schema-ServiceAccountDelegationInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildServiceAccountDelegationInfo();
      var od = new api.ServiceAccountDelegationInfo.fromJson(o.toJson());
      checkServiceAccountDelegationInfo(od);
    });
  });

  unittest.group("obj-schema-SpanContext", () {
    unittest.test("to-json--from-json", () {
      var o = buildSpanContext();
      var od = new api.SpanContext.fromJson(o.toJson());
      checkSpanContext(od);
    });
  });

  unittest.group("obj-schema-Status", () {
    unittest.test("to-json--from-json", () {
      var o = buildStatus();
      var od = new api.Status.fromJson(o.toJson());
      checkStatus(od);
    });
  });

  unittest.group("obj-schema-ThirdPartyPrincipal", () {
    unittest.test("to-json--from-json", () {
      var o = buildThirdPartyPrincipal();
      var od = new api.ThirdPartyPrincipal.fromJson(o.toJson());
      checkThirdPartyPrincipal(od);
    });
  });

  unittest.group("obj-schema-TraceSpan", () {
    unittest.test("to-json--from-json", () {
      var o = buildTraceSpan();
      var od = new api.TraceSpan.fromJson(o.toJson());
      checkTraceSpan(od);
    });
  });

  unittest.group("obj-schema-TruncatableString", () {
    unittest.test("to-json--from-json", () {
      var o = buildTruncatableString();
      var od = new api.TruncatableString.fromJson(o.toJson());
      checkTruncatableString(od);
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
  });
}
