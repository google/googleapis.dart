// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: avoid_returning_null
// ignore_for_file: cascade_invocations
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;
import 'package:googleapis_beta/networkconnectivity/v1alpha1.dart' as api;

import '../test_shared.dart';

core.int buildCounterAttributeValue = 0;
api.AttributeValue buildAttributeValue() {
  var o = api.AttributeValue();
  buildCounterAttributeValue++;
  if (buildCounterAttributeValue < 3) {
    o.boolValue = true;
    o.intValue = 'foo';
    o.stringValue = buildTruncatableString();
  }
  buildCounterAttributeValue--;
  return o;
}

void checkAttributeValue(api.AttributeValue o) {
  buildCounterAttributeValue++;
  if (buildCounterAttributeValue < 3) {
    unittest.expect(o.boolValue, unittest.isTrue);
    unittest.expect(o.intValue, unittest.equals('foo'));
    checkTruncatableString(o.stringValue as api.TruncatableString);
  }
  buildCounterAttributeValue--;
}

core.Map<core.String, api.AttributeValue> buildUnnamed7069() {
  var o = <core.String, api.AttributeValue>{};
  o['x'] = buildAttributeValue();
  o['y'] = buildAttributeValue();
  return o;
}

void checkUnnamed7069(core.Map<core.String, api.AttributeValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAttributeValue(o['x'] as api.AttributeValue);
  checkAttributeValue(o['y'] as api.AttributeValue);
}

core.int buildCounterAttributes = 0;
api.Attributes buildAttributes() {
  var o = api.Attributes();
  buildCounterAttributes++;
  if (buildCounterAttributes < 3) {
    o.attributeMap = buildUnnamed7069();
    o.droppedAttributesCount = 42;
  }
  buildCounterAttributes--;
  return o;
}

void checkAttributes(api.Attributes o) {
  buildCounterAttributes++;
  if (buildCounterAttributes < 3) {
    checkUnnamed7069(o.attributeMap);
    unittest.expect(o.droppedAttributesCount, unittest.equals(42));
  }
  buildCounterAttributes--;
}

core.List<api.AuditLogConfig> buildUnnamed7070() {
  var o = <api.AuditLogConfig>[];
  o.add(buildAuditLogConfig());
  o.add(buildAuditLogConfig());
  return o;
}

void checkUnnamed7070(core.List<api.AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditLogConfig(o[0] as api.AuditLogConfig);
  checkAuditLogConfig(o[1] as api.AuditLogConfig);
}

core.int buildCounterAuditConfig = 0;
api.AuditConfig buildAuditConfig() {
  var o = api.AuditConfig();
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed7070();
    o.service = 'foo';
  }
  buildCounterAuditConfig--;
  return o;
}

void checkAuditConfig(api.AuditConfig o) {
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    checkUnnamed7070(o.auditLogConfigs);
    unittest.expect(o.service, unittest.equals('foo'));
  }
  buildCounterAuditConfig--;
}

core.List<core.String> buildUnnamed7071() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7071(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAuditLogConfig = 0;
api.AuditLogConfig buildAuditLogConfig() {
  var o = api.AuditLogConfig();
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    o.exemptedMembers = buildUnnamed7071();
    o.logType = 'foo';
  }
  buildCounterAuditLogConfig--;
  return o;
}

void checkAuditLogConfig(api.AuditLogConfig o) {
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    checkUnnamed7071(o.exemptedMembers);
    unittest.expect(o.logType, unittest.equals('foo'));
  }
  buildCounterAuditLogConfig--;
}

core.List<api.ReportRequest> buildUnnamed7072() {
  var o = <api.ReportRequest>[];
  o.add(buildReportRequest());
  o.add(buildReportRequest());
  return o;
}

void checkUnnamed7072(core.List<api.ReportRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReportRequest(o[0] as api.ReportRequest);
  checkReportRequest(o[1] as api.ReportRequest);
}

core.int buildCounterBillingView = 0;
api.BillingView buildBillingView() {
  var o = api.BillingView();
  buildCounterBillingView++;
  if (buildCounterBillingView < 3) {
    o.reportRequests = buildUnnamed7072();
  }
  buildCounterBillingView--;
  return o;
}

void checkBillingView(api.BillingView o) {
  buildCounterBillingView++;
  if (buildCounterBillingView < 3) {
    checkUnnamed7072(o.reportRequests);
  }
  buildCounterBillingView--;
}

core.List<core.String> buildUnnamed7073() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7073(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBinding = 0;
api.Binding buildBinding() {
  var o = api.Binding();
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    o.condition = buildExpr();
    o.members = buildUnnamed7073();
    o.role = 'foo';
  }
  buildCounterBinding--;
  return o;
}

void checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition as api.Expr);
    checkUnnamed7073(o.members);
    unittest.expect(o.role, unittest.equals('foo'));
  }
  buildCounterBinding--;
}

core.List<core.String> buildUnnamed7074() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7074(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.Exemplar> buildUnnamed7075() {
  var o = <api.Exemplar>[];
  o.add(buildExemplar());
  o.add(buildExemplar());
  return o;
}

void checkUnnamed7075(core.List<api.Exemplar> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExemplar(o[0] as api.Exemplar);
  checkExemplar(o[1] as api.Exemplar);
}

core.int buildCounterDistribution = 0;
api.Distribution buildDistribution() {
  var o = api.Distribution();
  buildCounterDistribution++;
  if (buildCounterDistribution < 3) {
    o.bucketCounts = buildUnnamed7074();
    o.count = 'foo';
    o.exemplars = buildUnnamed7075();
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

void checkDistribution(api.Distribution o) {
  buildCounterDistribution++;
  if (buildCounterDistribution < 3) {
    checkUnnamed7074(o.bucketCounts);
    unittest.expect(o.count, unittest.equals('foo'));
    checkUnnamed7075(o.exemplars);
    checkExplicitBuckets(o.explicitBuckets as api.ExplicitBuckets);
    checkExponentialBuckets(o.exponentialBuckets as api.ExponentialBuckets);
    checkLinearBuckets(o.linearBuckets as api.LinearBuckets);
    unittest.expect(o.maximum, unittest.equals(42.0));
    unittest.expect(o.mean, unittest.equals(42.0));
    unittest.expect(o.minimum, unittest.equals(42.0));
    unittest.expect(o.sumOfSquaredDeviation, unittest.equals(42.0));
  }
  buildCounterDistribution--;
}

core.int buildCounterEmpty = 0;
api.Empty buildEmpty() {
  var o = api.Empty();
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
  return o;
}

void checkEmpty(api.Empty o) {
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
}

core.Map<core.String, core.Object> buildUnnamed7076() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed7076(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o['x']) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(casted1['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted1['bool'], unittest.equals(true));
  unittest.expect(casted1['string'], unittest.equals('foo'));
  var casted2 = (o['y']) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted2['bool'], unittest.equals(true));
  unittest.expect(casted2['string'], unittest.equals('foo'));
}

core.List<core.Map<core.String, core.Object>> buildUnnamed7077() {
  var o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed7076());
  o.add(buildUnnamed7076());
  return o;
}

void checkUnnamed7077(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed7076(o[0]);
  checkUnnamed7076(o[1]);
}

core.int buildCounterExemplar = 0;
api.Exemplar buildExemplar() {
  var o = api.Exemplar();
  buildCounterExemplar++;
  if (buildCounterExemplar < 3) {
    o.attachments = buildUnnamed7077();
    o.timestamp = 'foo';
    o.value = 42.0;
  }
  buildCounterExemplar--;
  return o;
}

void checkExemplar(api.Exemplar o) {
  buildCounterExemplar++;
  if (buildCounterExemplar < 3) {
    checkUnnamed7077(o.attachments);
    unittest.expect(o.timestamp, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals(42.0));
  }
  buildCounterExemplar--;
}

core.List<core.double> buildUnnamed7078() {
  var o = <core.double>[];
  o.add(42.0);
  o.add(42.0);
  return o;
}

void checkUnnamed7078(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

core.int buildCounterExplicitBuckets = 0;
api.ExplicitBuckets buildExplicitBuckets() {
  var o = api.ExplicitBuckets();
  buildCounterExplicitBuckets++;
  if (buildCounterExplicitBuckets < 3) {
    o.bounds = buildUnnamed7078();
  }
  buildCounterExplicitBuckets--;
  return o;
}

void checkExplicitBuckets(api.ExplicitBuckets o) {
  buildCounterExplicitBuckets++;
  if (buildCounterExplicitBuckets < 3) {
    checkUnnamed7078(o.bounds);
  }
  buildCounterExplicitBuckets--;
}

core.int buildCounterExponentialBuckets = 0;
api.ExponentialBuckets buildExponentialBuckets() {
  var o = api.ExponentialBuckets();
  buildCounterExponentialBuckets++;
  if (buildCounterExponentialBuckets < 3) {
    o.growthFactor = 42.0;
    o.numFiniteBuckets = 42;
    o.scale = 42.0;
  }
  buildCounterExponentialBuckets--;
  return o;
}

void checkExponentialBuckets(api.ExponentialBuckets o) {
  buildCounterExponentialBuckets++;
  if (buildCounterExponentialBuckets < 3) {
    unittest.expect(o.growthFactor, unittest.equals(42.0));
    unittest.expect(o.numFiniteBuckets, unittest.equals(42));
    unittest.expect(o.scale, unittest.equals(42.0));
  }
  buildCounterExponentialBuckets--;
}

core.int buildCounterExpr = 0;
api.Expr buildExpr() {
  var o = api.Expr();
  buildCounterExpr++;
  if (buildCounterExpr < 3) {
    o.description = 'foo';
    o.expression = 'foo';
    o.location = 'foo';
    o.title = 'foo';
  }
  buildCounterExpr--;
  return o;
}

void checkExpr(api.Expr o) {
  buildCounterExpr++;
  if (buildCounterExpr < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.expression, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterExpr--;
}

core.int buildCounterGoogleLongrunningCancelOperationRequest = 0;
api.GoogleLongrunningCancelOperationRequest
    buildGoogleLongrunningCancelOperationRequest() {
  var o = api.GoogleLongrunningCancelOperationRequest();
  buildCounterGoogleLongrunningCancelOperationRequest++;
  if (buildCounterGoogleLongrunningCancelOperationRequest < 3) {}
  buildCounterGoogleLongrunningCancelOperationRequest--;
  return o;
}

void checkGoogleLongrunningCancelOperationRequest(
    api.GoogleLongrunningCancelOperationRequest o) {
  buildCounterGoogleLongrunningCancelOperationRequest++;
  if (buildCounterGoogleLongrunningCancelOperationRequest < 3) {}
  buildCounterGoogleLongrunningCancelOperationRequest--;
}

core.List<api.GoogleLongrunningOperation> buildUnnamed7079() {
  var o = <api.GoogleLongrunningOperation>[];
  o.add(buildGoogleLongrunningOperation());
  o.add(buildGoogleLongrunningOperation());
  return o;
}

void checkUnnamed7079(core.List<api.GoogleLongrunningOperation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleLongrunningOperation(o[0] as api.GoogleLongrunningOperation);
  checkGoogleLongrunningOperation(o[1] as api.GoogleLongrunningOperation);
}

core.int buildCounterGoogleLongrunningListOperationsResponse = 0;
api.GoogleLongrunningListOperationsResponse
    buildGoogleLongrunningListOperationsResponse() {
  var o = api.GoogleLongrunningListOperationsResponse();
  buildCounterGoogleLongrunningListOperationsResponse++;
  if (buildCounterGoogleLongrunningListOperationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.operations = buildUnnamed7079();
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
  return o;
}

void checkGoogleLongrunningListOperationsResponse(
    api.GoogleLongrunningListOperationsResponse o) {
  buildCounterGoogleLongrunningListOperationsResponse++;
  if (buildCounterGoogleLongrunningListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed7079(o.operations);
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
}

core.Map<core.String, core.Object> buildUnnamed7080() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed7080(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o['x']) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(casted3['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted3['bool'], unittest.equals(true));
  unittest.expect(casted3['string'], unittest.equals('foo'));
  var casted4 = (o['y']) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(casted4['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted4['bool'], unittest.equals(true));
  unittest.expect(casted4['string'], unittest.equals('foo'));
}

core.Map<core.String, core.Object> buildUnnamed7081() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed7081(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o['x']) as core.Map;
  unittest.expect(casted5, unittest.hasLength(3));
  unittest.expect(casted5['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted5['bool'], unittest.equals(true));
  unittest.expect(casted5['string'], unittest.equals('foo'));
  var casted6 = (o['y']) as core.Map;
  unittest.expect(casted6, unittest.hasLength(3));
  unittest.expect(casted6['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted6['bool'], unittest.equals(true));
  unittest.expect(casted6['string'], unittest.equals('foo'));
}

core.int buildCounterGoogleLongrunningOperation = 0;
api.GoogleLongrunningOperation buildGoogleLongrunningOperation() {
  var o = api.GoogleLongrunningOperation();
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    o.done = true;
    o.error = buildGoogleRpcStatus();
    o.metadata = buildUnnamed7080();
    o.name = 'foo';
    o.response = buildUnnamed7081();
  }
  buildCounterGoogleLongrunningOperation--;
  return o;
}

void checkGoogleLongrunningOperation(api.GoogleLongrunningOperation o) {
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkGoogleRpcStatus(o.error as api.GoogleRpcStatus);
    checkUnnamed7080(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed7081(o.response);
  }
  buildCounterGoogleLongrunningOperation--;
}

core.Map<core.String, core.Object> buildUnnamed7082() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed7082(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted7 = (o['x']) as core.Map;
  unittest.expect(casted7, unittest.hasLength(3));
  unittest.expect(casted7['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted7['bool'], unittest.equals(true));
  unittest.expect(casted7['string'], unittest.equals('foo'));
  var casted8 = (o['y']) as core.Map;
  unittest.expect(casted8, unittest.hasLength(3));
  unittest.expect(casted8['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted8['bool'], unittest.equals(true));
  unittest.expect(casted8['string'], unittest.equals('foo'));
}

core.List<core.Map<core.String, core.Object>> buildUnnamed7083() {
  var o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed7082());
  o.add(buildUnnamed7082());
  return o;
}

void checkUnnamed7083(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed7082(o[0]);
  checkUnnamed7082(o[1]);
}

core.int buildCounterGoogleRpcStatus = 0;
api.GoogleRpcStatus buildGoogleRpcStatus() {
  var o = api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed7083();
    o.message = 'foo';
  }
  buildCounterGoogleRpcStatus--;
  return o;
}

void checkGoogleRpcStatus(api.GoogleRpcStatus o) {
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed7083(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterGoogleRpcStatus--;
}

core.int buildCounterHttpRequest = 0;
api.HttpRequest buildHttpRequest() {
  var o = api.HttpRequest();
  buildCounterHttpRequest++;
  if (buildCounterHttpRequest < 3) {
    o.cacheFillBytes = 'foo';
    o.cacheHit = true;
    o.cacheLookup = true;
    o.cacheValidatedWithOriginServer = true;
    o.latency = 'foo';
    o.protocol = 'foo';
    o.referer = 'foo';
    o.remoteIp = 'foo';
    o.requestMethod = 'foo';
    o.requestSize = 'foo';
    o.requestUrl = 'foo';
    o.responseSize = 'foo';
    o.serverIp = 'foo';
    o.status = 42;
    o.userAgent = 'foo';
  }
  buildCounterHttpRequest--;
  return o;
}

void checkHttpRequest(api.HttpRequest o) {
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

core.Map<core.String, core.String> buildUnnamed7084() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed7084(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed7085() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7085(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterHub = 0;
api.Hub buildHub() {
  var o = api.Hub();
  buildCounterHub++;
  if (buildCounterHub < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.labels = buildUnnamed7084();
    o.name = 'foo';
    o.spokes = buildUnnamed7085();
    o.state = 'foo';
    o.uniqueId = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterHub--;
  return o;
}

void checkHub(api.Hub o) {
  buildCounterHub++;
  if (buildCounterHub < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    checkUnnamed7084(o.labels);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed7085(o.spokes);
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.uniqueId, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterHub--;
}

core.int buildCounterLinearBuckets = 0;
api.LinearBuckets buildLinearBuckets() {
  var o = api.LinearBuckets();
  buildCounterLinearBuckets++;
  if (buildCounterLinearBuckets < 3) {
    o.numFiniteBuckets = 42;
    o.offset = 42.0;
    o.width = 42.0;
  }
  buildCounterLinearBuckets--;
  return o;
}

void checkLinearBuckets(api.LinearBuckets o) {
  buildCounterLinearBuckets++;
  if (buildCounterLinearBuckets < 3) {
    unittest.expect(o.numFiniteBuckets, unittest.equals(42));
    unittest.expect(o.offset, unittest.equals(42.0));
    unittest.expect(o.width, unittest.equals(42.0));
  }
  buildCounterLinearBuckets--;
}

core.List<api.Hub> buildUnnamed7086() {
  var o = <api.Hub>[];
  o.add(buildHub());
  o.add(buildHub());
  return o;
}

void checkUnnamed7086(core.List<api.Hub> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHub(o[0] as api.Hub);
  checkHub(o[1] as api.Hub);
}

core.List<core.String> buildUnnamed7087() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7087(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListHubsResponse = 0;
api.ListHubsResponse buildListHubsResponse() {
  var o = api.ListHubsResponse();
  buildCounterListHubsResponse++;
  if (buildCounterListHubsResponse < 3) {
    o.hubs = buildUnnamed7086();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed7087();
  }
  buildCounterListHubsResponse--;
  return o;
}

void checkListHubsResponse(api.ListHubsResponse o) {
  buildCounterListHubsResponse++;
  if (buildCounterListHubsResponse < 3) {
    checkUnnamed7086(o.hubs);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed7087(o.unreachable);
  }
  buildCounterListHubsResponse--;
}

core.List<api.Location> buildUnnamed7088() {
  var o = <api.Location>[];
  o.add(buildLocation());
  o.add(buildLocation());
  return o;
}

void checkUnnamed7088(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0] as api.Location);
  checkLocation(o[1] as api.Location);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  var o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed7088();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed7088(o.locations);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListLocationsResponse--;
}

core.List<api.Spoke> buildUnnamed7089() {
  var o = <api.Spoke>[];
  o.add(buildSpoke());
  o.add(buildSpoke());
  return o;
}

void checkUnnamed7089(core.List<api.Spoke> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSpoke(o[0] as api.Spoke);
  checkSpoke(o[1] as api.Spoke);
}

core.List<core.String> buildUnnamed7090() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7090(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListSpokesResponse = 0;
api.ListSpokesResponse buildListSpokesResponse() {
  var o = api.ListSpokesResponse();
  buildCounterListSpokesResponse++;
  if (buildCounterListSpokesResponse < 3) {
    o.nextPageToken = 'foo';
    o.spokes = buildUnnamed7089();
    o.unreachable = buildUnnamed7090();
  }
  buildCounterListSpokesResponse--;
  return o;
}

void checkListSpokesResponse(api.ListSpokesResponse o) {
  buildCounterListSpokesResponse++;
  if (buildCounterListSpokesResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed7089(o.spokes);
    checkUnnamed7090(o.unreachable);
  }
  buildCounterListSpokesResponse--;
}

core.Map<core.String, core.String> buildUnnamed7091() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed7091(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.Map<core.String, core.Object> buildUnnamed7092() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed7092(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted9 = (o['x']) as core.Map;
  unittest.expect(casted9, unittest.hasLength(3));
  unittest.expect(casted9['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted9['bool'], unittest.equals(true));
  unittest.expect(casted9['string'], unittest.equals('foo'));
  var casted10 = (o['y']) as core.Map;
  unittest.expect(casted10, unittest.hasLength(3));
  unittest.expect(casted10['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted10['bool'], unittest.equals(true));
  unittest.expect(casted10['string'], unittest.equals('foo'));
}

core.int buildCounterLocation = 0;
api.Location buildLocation() {
  var o = api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.displayName = 'foo';
    o.labels = buildUnnamed7091();
    o.locationId = 'foo';
    o.metadata = buildUnnamed7092();
    o.name = 'foo';
  }
  buildCounterLocation--;
  return o;
}

void checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed7091(o.labels);
    unittest.expect(o.locationId, unittest.equals('foo'));
    checkUnnamed7092(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterLocation--;
}

core.Map<core.String, core.String> buildUnnamed7093() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed7093(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.Map<core.String, core.Object> buildUnnamed7094() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed7094(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted11 = (o['x']) as core.Map;
  unittest.expect(casted11, unittest.hasLength(3));
  unittest.expect(casted11['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted11['bool'], unittest.equals(true));
  unittest.expect(casted11['string'], unittest.equals('foo'));
  var casted12 = (o['y']) as core.Map;
  unittest.expect(casted12, unittest.hasLength(3));
  unittest.expect(casted12['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted12['bool'], unittest.equals(true));
  unittest.expect(casted12['string'], unittest.equals('foo'));
}

core.Map<core.String, core.Object> buildUnnamed7095() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed7095(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted13 = (o['x']) as core.Map;
  unittest.expect(casted13, unittest.hasLength(3));
  unittest.expect(casted13['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted13['bool'], unittest.equals(true));
  unittest.expect(casted13['string'], unittest.equals('foo'));
  var casted14 = (o['y']) as core.Map;
  unittest.expect(casted14, unittest.hasLength(3));
  unittest.expect(casted14['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted14['bool'], unittest.equals(true));
  unittest.expect(casted14['string'], unittest.equals('foo'));
}

core.int buildCounterLogEntry = 0;
api.LogEntry buildLogEntry() {
  var o = api.LogEntry();
  buildCounterLogEntry++;
  if (buildCounterLogEntry < 3) {
    o.httpRequest = buildHttpRequest();
    o.insertId = 'foo';
    o.labels = buildUnnamed7093();
    o.name = 'foo';
    o.operation = buildLogEntryOperation();
    o.protoPayload = buildUnnamed7094();
    o.severity = 'foo';
    o.sourceLocation = buildLogEntrySourceLocation();
    o.structPayload = buildUnnamed7095();
    o.textPayload = 'foo';
    o.timestamp = 'foo';
    o.trace = 'foo';
  }
  buildCounterLogEntry--;
  return o;
}

void checkLogEntry(api.LogEntry o) {
  buildCounterLogEntry++;
  if (buildCounterLogEntry < 3) {
    checkHttpRequest(o.httpRequest as api.HttpRequest);
    unittest.expect(o.insertId, unittest.equals('foo'));
    checkUnnamed7093(o.labels);
    unittest.expect(o.name, unittest.equals('foo'));
    checkLogEntryOperation(o.operation as api.LogEntryOperation);
    checkUnnamed7094(o.protoPayload);
    unittest.expect(o.severity, unittest.equals('foo'));
    checkLogEntrySourceLocation(o.sourceLocation as api.LogEntrySourceLocation);
    checkUnnamed7095(o.structPayload);
    unittest.expect(o.textPayload, unittest.equals('foo'));
    unittest.expect(o.timestamp, unittest.equals('foo'));
    unittest.expect(o.trace, unittest.equals('foo'));
  }
  buildCounterLogEntry--;
}

core.int buildCounterLogEntryOperation = 0;
api.LogEntryOperation buildLogEntryOperation() {
  var o = api.LogEntryOperation();
  buildCounterLogEntryOperation++;
  if (buildCounterLogEntryOperation < 3) {
    o.first = true;
    o.id = 'foo';
    o.last = true;
    o.producer = 'foo';
  }
  buildCounterLogEntryOperation--;
  return o;
}

void checkLogEntryOperation(api.LogEntryOperation o) {
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
api.LogEntrySourceLocation buildLogEntrySourceLocation() {
  var o = api.LogEntrySourceLocation();
  buildCounterLogEntrySourceLocation++;
  if (buildCounterLogEntrySourceLocation < 3) {
    o.file = 'foo';
    o.function = 'foo';
    o.line = 'foo';
  }
  buildCounterLogEntrySourceLocation--;
  return o;
}

void checkLogEntrySourceLocation(api.LogEntrySourceLocation o) {
  buildCounterLogEntrySourceLocation++;
  if (buildCounterLogEntrySourceLocation < 3) {
    unittest.expect(o.file, unittest.equals('foo'));
    unittest.expect(o.function, unittest.equals('foo'));
    unittest.expect(o.line, unittest.equals('foo'));
  }
  buildCounterLogEntrySourceLocation--;
}

core.Map<core.String, core.String> buildUnnamed7096() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed7096(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterMetricValue = 0;
api.MetricValue buildMetricValue() {
  var o = api.MetricValue();
  buildCounterMetricValue++;
  if (buildCounterMetricValue < 3) {
    o.boolValue = true;
    o.distributionValue = buildDistribution();
    o.doubleValue = 42.0;
    o.endTime = 'foo';
    o.int64Value = 'foo';
    o.labels = buildUnnamed7096();
    o.moneyValue = buildMoney();
    o.startTime = 'foo';
    o.stringValue = 'foo';
  }
  buildCounterMetricValue--;
  return o;
}

void checkMetricValue(api.MetricValue o) {
  buildCounterMetricValue++;
  if (buildCounterMetricValue < 3) {
    unittest.expect(o.boolValue, unittest.isTrue);
    checkDistribution(o.distributionValue as api.Distribution);
    unittest.expect(o.doubleValue, unittest.equals(42.0));
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.int64Value, unittest.equals('foo'));
    checkUnnamed7096(o.labels);
    checkMoney(o.moneyValue as api.Money);
    unittest.expect(o.startTime, unittest.equals('foo'));
    unittest.expect(o.stringValue, unittest.equals('foo'));
  }
  buildCounterMetricValue--;
}

core.List<api.MetricValue> buildUnnamed7097() {
  var o = <api.MetricValue>[];
  o.add(buildMetricValue());
  o.add(buildMetricValue());
  return o;
}

void checkUnnamed7097(core.List<api.MetricValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetricValue(o[0] as api.MetricValue);
  checkMetricValue(o[1] as api.MetricValue);
}

core.int buildCounterMetricValueSet = 0;
api.MetricValueSet buildMetricValueSet() {
  var o = api.MetricValueSet();
  buildCounterMetricValueSet++;
  if (buildCounterMetricValueSet < 3) {
    o.metricName = 'foo';
    o.metricValues = buildUnnamed7097();
  }
  buildCounterMetricValueSet--;
  return o;
}

void checkMetricValueSet(api.MetricValueSet o) {
  buildCounterMetricValueSet++;
  if (buildCounterMetricValueSet < 3) {
    unittest.expect(o.metricName, unittest.equals('foo'));
    checkUnnamed7097(o.metricValues);
  }
  buildCounterMetricValueSet--;
}

core.int buildCounterMoney = 0;
api.Money buildMoney() {
  var o = api.Money();
  buildCounterMoney++;
  if (buildCounterMoney < 3) {
    o.currencyCode = 'foo';
    o.nanos = 42;
    o.units = 'foo';
  }
  buildCounterMoney--;
  return o;
}

void checkMoney(api.Money o) {
  buildCounterMoney++;
  if (buildCounterMoney < 3) {
    unittest.expect(o.currencyCode, unittest.equals('foo'));
    unittest.expect(o.nanos, unittest.equals(42));
    unittest.expect(o.units, unittest.equals('foo'));
  }
  buildCounterMoney--;
}

core.Map<core.String, core.Object> buildUnnamed7098() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed7098(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted15 = (o['x']) as core.Map;
  unittest.expect(casted15, unittest.hasLength(3));
  unittest.expect(casted15['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted15['bool'], unittest.equals(true));
  unittest.expect(casted15['string'], unittest.equals('foo'));
  var casted16 = (o['y']) as core.Map;
  unittest.expect(casted16, unittest.hasLength(3));
  unittest.expect(casted16['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted16['bool'], unittest.equals(true));
  unittest.expect(casted16['string'], unittest.equals('foo'));
}

core.List<core.Map<core.String, core.Object>> buildUnnamed7099() {
  var o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed7098());
  o.add(buildUnnamed7098());
  return o;
}

void checkUnnamed7099(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed7098(o[0]);
  checkUnnamed7098(o[1]);
}

core.Map<core.String, core.String> buildUnnamed7100() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed7100(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.List<api.LogEntry> buildUnnamed7101() {
  var o = <api.LogEntry>[];
  o.add(buildLogEntry());
  o.add(buildLogEntry());
  return o;
}

void checkUnnamed7101(core.List<api.LogEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLogEntry(o[0] as api.LogEntry);
  checkLogEntry(o[1] as api.LogEntry);
}

core.List<api.MetricValueSet> buildUnnamed7102() {
  var o = <api.MetricValueSet>[];
  o.add(buildMetricValueSet());
  o.add(buildMetricValueSet());
  return o;
}

void checkUnnamed7102(core.List<api.MetricValueSet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetricValueSet(o[0] as api.MetricValueSet);
  checkMetricValueSet(o[1] as api.MetricValueSet);
}

core.List<api.ResourceInfo> buildUnnamed7103() {
  var o = <api.ResourceInfo>[];
  o.add(buildResourceInfo());
  o.add(buildResourceInfo());
  return o;
}

void checkUnnamed7103(core.List<api.ResourceInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResourceInfo(o[0] as api.ResourceInfo);
  checkResourceInfo(o[1] as api.ResourceInfo);
}

core.List<api.TraceSpan> buildUnnamed7104() {
  var o = <api.TraceSpan>[];
  o.add(buildTraceSpan());
  o.add(buildTraceSpan());
  return o;
}

void checkUnnamed7104(core.List<api.TraceSpan> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTraceSpan(o[0] as api.TraceSpan);
  checkTraceSpan(o[1] as api.TraceSpan);
}

core.Map<core.String, core.String> buildUnnamed7105() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed7105(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  var o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.consumerId = 'foo';
    o.endTime = 'foo';
    o.extensions = buildUnnamed7099();
    o.importance = 'foo';
    o.labels = buildUnnamed7100();
    o.logEntries = buildUnnamed7101();
    o.metricValueSets = buildUnnamed7102();
    o.operationId = 'foo';
    o.operationName = 'foo';
    o.quotaProperties = buildQuotaProperties();
    o.resources = buildUnnamed7103();
    o.startTime = 'foo';
    o.traceSpans = buildUnnamed7104();
    o.userLabels = buildUnnamed7105();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.consumerId, unittest.equals('foo'));
    unittest.expect(o.endTime, unittest.equals('foo'));
    checkUnnamed7099(o.extensions);
    unittest.expect(o.importance, unittest.equals('foo'));
    checkUnnamed7100(o.labels);
    checkUnnamed7101(o.logEntries);
    checkUnnamed7102(o.metricValueSets);
    unittest.expect(o.operationId, unittest.equals('foo'));
    unittest.expect(o.operationName, unittest.equals('foo'));
    checkQuotaProperties(o.quotaProperties as api.QuotaProperties);
    checkUnnamed7103(o.resources);
    unittest.expect(o.startTime, unittest.equals('foo'));
    checkUnnamed7104(o.traceSpans);
    checkUnnamed7105(o.userLabels);
  }
  buildCounterOperation--;
}

core.int buildCounterOperationMetadata = 0;
api.OperationMetadata buildOperationMetadata() {
  var o = api.OperationMetadata();
  buildCounterOperationMetadata++;
  if (buildCounterOperationMetadata < 3) {
    o.apiVersion = 'foo';
    o.createTime = 'foo';
    o.endTime = 'foo';
    o.requestedCancellation = true;
    o.statusMessage = 'foo';
    o.target = 'foo';
    o.verb = 'foo';
  }
  buildCounterOperationMetadata--;
  return o;
}

void checkOperationMetadata(api.OperationMetadata o) {
  buildCounterOperationMetadata++;
  if (buildCounterOperationMetadata < 3) {
    unittest.expect(o.apiVersion, unittest.equals('foo'));
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.requestedCancellation, unittest.isTrue);
    unittest.expect(o.statusMessage, unittest.equals('foo'));
    unittest.expect(o.target, unittest.equals('foo'));
    unittest.expect(o.verb, unittest.equals('foo'));
  }
  buildCounterOperationMetadata--;
}

core.List<api.AuditConfig> buildUnnamed7106() {
  var o = <api.AuditConfig>[];
  o.add(buildAuditConfig());
  o.add(buildAuditConfig());
  return o;
}

void checkUnnamed7106(core.List<api.AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditConfig(o[0] as api.AuditConfig);
  checkAuditConfig(o[1] as api.AuditConfig);
}

core.List<api.Binding> buildUnnamed7107() {
  var o = <api.Binding>[];
  o.add(buildBinding());
  o.add(buildBinding());
  return o;
}

void checkUnnamed7107(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0] as api.Binding);
  checkBinding(o[1] as api.Binding);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  var o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.auditConfigs = buildUnnamed7106();
    o.bindings = buildUnnamed7107();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed7106(o.auditConfigs);
    checkUnnamed7107(o.bindings);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals(42));
  }
  buildCounterPolicy--;
}

core.int buildCounterQuotaProperties = 0;
api.QuotaProperties buildQuotaProperties() {
  var o = api.QuotaProperties();
  buildCounterQuotaProperties++;
  if (buildCounterQuotaProperties < 3) {
    o.quotaMode = 'foo';
  }
  buildCounterQuotaProperties--;
  return o;
}

void checkQuotaProperties(api.QuotaProperties o) {
  buildCounterQuotaProperties++;
  if (buildCounterQuotaProperties < 3) {
    unittest.expect(o.quotaMode, unittest.equals('foo'));
  }
  buildCounterQuotaProperties--;
}

core.List<api.Operation> buildUnnamed7108() {
  var o = <api.Operation>[];
  o.add(buildOperation());
  o.add(buildOperation());
  return o;
}

void checkUnnamed7108(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0] as api.Operation);
  checkOperation(o[1] as api.Operation);
}

core.int buildCounterReportRequest = 0;
api.ReportRequest buildReportRequest() {
  var o = api.ReportRequest();
  buildCounterReportRequest++;
  if (buildCounterReportRequest < 3) {
    o.operations = buildUnnamed7108();
    o.serviceConfigId = 'foo';
    o.serviceName = 'foo';
  }
  buildCounterReportRequest--;
  return o;
}

void checkReportRequest(api.ReportRequest o) {
  buildCounterReportRequest++;
  if (buildCounterReportRequest < 3) {
    checkUnnamed7108(o.operations);
    unittest.expect(o.serviceConfigId, unittest.equals('foo'));
    unittest.expect(o.serviceName, unittest.equals('foo'));
  }
  buildCounterReportRequest--;
}

core.int buildCounterResourceInfo = 0;
api.ResourceInfo buildResourceInfo() {
  var o = api.ResourceInfo();
  buildCounterResourceInfo++;
  if (buildCounterResourceInfo < 3) {
    o.resourceContainer = 'foo';
    o.resourceLocation = 'foo';
    o.resourceName = 'foo';
  }
  buildCounterResourceInfo--;
  return o;
}

void checkResourceInfo(api.ResourceInfo o) {
  buildCounterResourceInfo++;
  if (buildCounterResourceInfo < 3) {
    unittest.expect(o.resourceContainer, unittest.equals('foo'));
    unittest.expect(o.resourceLocation, unittest.equals('foo'));
    unittest.expect(o.resourceName, unittest.equals('foo'));
  }
  buildCounterResourceInfo--;
}

core.int buildCounterRouterApplianceInstance = 0;
api.RouterApplianceInstance buildRouterApplianceInstance() {
  var o = api.RouterApplianceInstance();
  buildCounterRouterApplianceInstance++;
  if (buildCounterRouterApplianceInstance < 3) {
    o.ipAddress = 'foo';
    o.networkInterface = 'foo';
    o.virtualMachine = 'foo';
  }
  buildCounterRouterApplianceInstance--;
  return o;
}

void checkRouterApplianceInstance(api.RouterApplianceInstance o) {
  buildCounterRouterApplianceInstance++;
  if (buildCounterRouterApplianceInstance < 3) {
    unittest.expect(o.ipAddress, unittest.equals('foo'));
    unittest.expect(o.networkInterface, unittest.equals('foo'));
    unittest.expect(o.virtualMachine, unittest.equals('foo'));
  }
  buildCounterRouterApplianceInstance--;
}

core.int buildCounterSetIamPolicyRequest = 0;
api.SetIamPolicyRequest buildSetIamPolicyRequest() {
  var o = api.SetIamPolicyRequest();
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    o.policy = buildPolicy();
    o.updateMask = 'foo';
  }
  buildCounterSetIamPolicyRequest--;
  return o;
}

void checkSetIamPolicyRequest(api.SetIamPolicyRequest o) {
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    checkPolicy(o.policy as api.Policy);
    unittest.expect(o.updateMask, unittest.equals('foo'));
  }
  buildCounterSetIamPolicyRequest--;
}

core.Map<core.String, core.String> buildUnnamed7109() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed7109(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed7110() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7110(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.RouterApplianceInstance> buildUnnamed7111() {
  var o = <api.RouterApplianceInstance>[];
  o.add(buildRouterApplianceInstance());
  o.add(buildRouterApplianceInstance());
  return o;
}

void checkUnnamed7111(core.List<api.RouterApplianceInstance> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRouterApplianceInstance(o[0] as api.RouterApplianceInstance);
  checkRouterApplianceInstance(o[1] as api.RouterApplianceInstance);
}

core.List<core.String> buildUnnamed7112() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7112(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSpoke = 0;
api.Spoke buildSpoke() {
  var o = api.Spoke();
  buildCounterSpoke++;
  if (buildCounterSpoke < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.hub = 'foo';
    o.labels = buildUnnamed7109();
    o.linkedInterconnectAttachments = buildUnnamed7110();
    o.linkedRouterApplianceInstances = buildUnnamed7111();
    o.linkedVpnTunnels = buildUnnamed7112();
    o.name = 'foo';
    o.state = 'foo';
    o.uniqueId = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterSpoke--;
  return o;
}

void checkSpoke(api.Spoke o) {
  buildCounterSpoke++;
  if (buildCounterSpoke < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.hub, unittest.equals('foo'));
    checkUnnamed7109(o.labels);
    checkUnnamed7110(o.linkedInterconnectAttachments);
    checkUnnamed7111(o.linkedRouterApplianceInstances);
    checkUnnamed7112(o.linkedVpnTunnels);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.uniqueId, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterSpoke--;
}

core.List<core.String> buildUnnamed7113() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7113(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsRequest = 0;
api.TestIamPermissionsRequest buildTestIamPermissionsRequest() {
  var o = api.TestIamPermissionsRequest();
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed7113();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

void checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed7113(o.permissions);
  }
  buildCounterTestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed7114() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7114(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsResponse = 0;
api.TestIamPermissionsResponse buildTestIamPermissionsResponse() {
  var o = api.TestIamPermissionsResponse();
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed7114();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed7114(o.permissions);
  }
  buildCounterTestIamPermissionsResponse--;
}

core.int buildCounterTraceSpan = 0;
api.TraceSpan buildTraceSpan() {
  var o = api.TraceSpan();
  buildCounterTraceSpan++;
  if (buildCounterTraceSpan < 3) {
    o.attributes = buildAttributes();
    o.childSpanCount = 42;
    o.displayName = buildTruncatableString();
    o.endTime = 'foo';
    o.name = 'foo';
    o.parentSpanId = 'foo';
    o.sameProcessAsParentSpan = true;
    o.spanId = 'foo';
    o.spanKind = 'foo';
    o.startTime = 'foo';
    o.status = buildGoogleRpcStatus();
  }
  buildCounterTraceSpan--;
  return o;
}

void checkTraceSpan(api.TraceSpan o) {
  buildCounterTraceSpan++;
  if (buildCounterTraceSpan < 3) {
    checkAttributes(o.attributes as api.Attributes);
    unittest.expect(o.childSpanCount, unittest.equals(42));
    checkTruncatableString(o.displayName as api.TruncatableString);
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.parentSpanId, unittest.equals('foo'));
    unittest.expect(o.sameProcessAsParentSpan, unittest.isTrue);
    unittest.expect(o.spanId, unittest.equals('foo'));
    unittest.expect(o.spanKind, unittest.equals('foo'));
    unittest.expect(o.startTime, unittest.equals('foo'));
    checkGoogleRpcStatus(o.status as api.GoogleRpcStatus);
  }
  buildCounterTraceSpan--;
}

core.int buildCounterTruncatableString = 0;
api.TruncatableString buildTruncatableString() {
  var o = api.TruncatableString();
  buildCounterTruncatableString++;
  if (buildCounterTruncatableString < 3) {
    o.truncatedByteCount = 42;
    o.value = 'foo';
  }
  buildCounterTruncatableString--;
  return o;
}

void checkTruncatableString(api.TruncatableString o) {
  buildCounterTruncatableString++;
  if (buildCounterTruncatableString < 3) {
    unittest.expect(o.truncatedByteCount, unittest.equals(42));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterTruncatableString--;
}

void main() {
  unittest.group('obj-schema-AttributeValue', () {
    unittest.test('to-json--from-json', () {
      var o = buildAttributeValue();
      var od = api.AttributeValue.fromJson(o.toJson());
      checkAttributeValue(od as api.AttributeValue);
    });
  });

  unittest.group('obj-schema-Attributes', () {
    unittest.test('to-json--from-json', () {
      var o = buildAttributes();
      var od = api.Attributes.fromJson(o.toJson());
      checkAttributes(od as api.Attributes);
    });
  });

  unittest.group('obj-schema-AuditConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildAuditConfig();
      var od = api.AuditConfig.fromJson(o.toJson());
      checkAuditConfig(od as api.AuditConfig);
    });
  });

  unittest.group('obj-schema-AuditLogConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildAuditLogConfig();
      var od = api.AuditLogConfig.fromJson(o.toJson());
      checkAuditLogConfig(od as api.AuditLogConfig);
    });
  });

  unittest.group('obj-schema-BillingView', () {
    unittest.test('to-json--from-json', () {
      var o = buildBillingView();
      var od = api.BillingView.fromJson(o.toJson());
      checkBillingView(od as api.BillingView);
    });
  });

  unittest.group('obj-schema-Binding', () {
    unittest.test('to-json--from-json', () {
      var o = buildBinding();
      var od = api.Binding.fromJson(o.toJson());
      checkBinding(od as api.Binding);
    });
  });

  unittest.group('obj-schema-Distribution', () {
    unittest.test('to-json--from-json', () {
      var o = buildDistribution();
      var od = api.Distribution.fromJson(o.toJson());
      checkDistribution(od as api.Distribution);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () {
      var o = buildEmpty();
      var od = api.Empty.fromJson(o.toJson());
      checkEmpty(od as api.Empty);
    });
  });

  unittest.group('obj-schema-Exemplar', () {
    unittest.test('to-json--from-json', () {
      var o = buildExemplar();
      var od = api.Exemplar.fromJson(o.toJson());
      checkExemplar(od as api.Exemplar);
    });
  });

  unittest.group('obj-schema-ExplicitBuckets', () {
    unittest.test('to-json--from-json', () {
      var o = buildExplicitBuckets();
      var od = api.ExplicitBuckets.fromJson(o.toJson());
      checkExplicitBuckets(od as api.ExplicitBuckets);
    });
  });

  unittest.group('obj-schema-ExponentialBuckets', () {
    unittest.test('to-json--from-json', () {
      var o = buildExponentialBuckets();
      var od = api.ExponentialBuckets.fromJson(o.toJson());
      checkExponentialBuckets(od as api.ExponentialBuckets);
    });
  });

  unittest.group('obj-schema-Expr', () {
    unittest.test('to-json--from-json', () {
      var o = buildExpr();
      var od = api.Expr.fromJson(o.toJson());
      checkExpr(od as api.Expr);
    });
  });

  unittest.group('obj-schema-GoogleLongrunningCancelOperationRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleLongrunningCancelOperationRequest();
      var od = api.GoogleLongrunningCancelOperationRequest.fromJson(o.toJson());
      checkGoogleLongrunningCancelOperationRequest(
          od as api.GoogleLongrunningCancelOperationRequest);
    });
  });

  unittest.group('obj-schema-GoogleLongrunningListOperationsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleLongrunningListOperationsResponse();
      var od = api.GoogleLongrunningListOperationsResponse.fromJson(o.toJson());
      checkGoogleLongrunningListOperationsResponse(
          od as api.GoogleLongrunningListOperationsResponse);
    });
  });

  unittest.group('obj-schema-GoogleLongrunningOperation', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleLongrunningOperation();
      var od = api.GoogleLongrunningOperation.fromJson(o.toJson());
      checkGoogleLongrunningOperation(od as api.GoogleLongrunningOperation);
    });
  });

  unittest.group('obj-schema-GoogleRpcStatus', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleRpcStatus();
      var od = api.GoogleRpcStatus.fromJson(o.toJson());
      checkGoogleRpcStatus(od as api.GoogleRpcStatus);
    });
  });

  unittest.group('obj-schema-HttpRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildHttpRequest();
      var od = api.HttpRequest.fromJson(o.toJson());
      checkHttpRequest(od as api.HttpRequest);
    });
  });

  unittest.group('obj-schema-Hub', () {
    unittest.test('to-json--from-json', () {
      var o = buildHub();
      var od = api.Hub.fromJson(o.toJson());
      checkHub(od as api.Hub);
    });
  });

  unittest.group('obj-schema-LinearBuckets', () {
    unittest.test('to-json--from-json', () {
      var o = buildLinearBuckets();
      var od = api.LinearBuckets.fromJson(o.toJson());
      checkLinearBuckets(od as api.LinearBuckets);
    });
  });

  unittest.group('obj-schema-ListHubsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListHubsResponse();
      var od = api.ListHubsResponse.fromJson(o.toJson());
      checkListHubsResponse(od as api.ListHubsResponse);
    });
  });

  unittest.group('obj-schema-ListLocationsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListLocationsResponse();
      var od = api.ListLocationsResponse.fromJson(o.toJson());
      checkListLocationsResponse(od as api.ListLocationsResponse);
    });
  });

  unittest.group('obj-schema-ListSpokesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListSpokesResponse();
      var od = api.ListSpokesResponse.fromJson(o.toJson());
      checkListSpokesResponse(od as api.ListSpokesResponse);
    });
  });

  unittest.group('obj-schema-Location', () {
    unittest.test('to-json--from-json', () {
      var o = buildLocation();
      var od = api.Location.fromJson(o.toJson());
      checkLocation(od as api.Location);
    });
  });

  unittest.group('obj-schema-LogEntry', () {
    unittest.test('to-json--from-json', () {
      var o = buildLogEntry();
      var od = api.LogEntry.fromJson(o.toJson());
      checkLogEntry(od as api.LogEntry);
    });
  });

  unittest.group('obj-schema-LogEntryOperation', () {
    unittest.test('to-json--from-json', () {
      var o = buildLogEntryOperation();
      var od = api.LogEntryOperation.fromJson(o.toJson());
      checkLogEntryOperation(od as api.LogEntryOperation);
    });
  });

  unittest.group('obj-schema-LogEntrySourceLocation', () {
    unittest.test('to-json--from-json', () {
      var o = buildLogEntrySourceLocation();
      var od = api.LogEntrySourceLocation.fromJson(o.toJson());
      checkLogEntrySourceLocation(od as api.LogEntrySourceLocation);
    });
  });

  unittest.group('obj-schema-MetricValue', () {
    unittest.test('to-json--from-json', () {
      var o = buildMetricValue();
      var od = api.MetricValue.fromJson(o.toJson());
      checkMetricValue(od as api.MetricValue);
    });
  });

  unittest.group('obj-schema-MetricValueSet', () {
    unittest.test('to-json--from-json', () {
      var o = buildMetricValueSet();
      var od = api.MetricValueSet.fromJson(o.toJson());
      checkMetricValueSet(od as api.MetricValueSet);
    });
  });

  unittest.group('obj-schema-Money', () {
    unittest.test('to-json--from-json', () {
      var o = buildMoney();
      var od = api.Money.fromJson(o.toJson());
      checkMoney(od as api.Money);
    });
  });

  unittest.group('obj-schema-Operation', () {
    unittest.test('to-json--from-json', () {
      var o = buildOperation();
      var od = api.Operation.fromJson(o.toJson());
      checkOperation(od as api.Operation);
    });
  });

  unittest.group('obj-schema-OperationMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildOperationMetadata();
      var od = api.OperationMetadata.fromJson(o.toJson());
      checkOperationMetadata(od as api.OperationMetadata);
    });
  });

  unittest.group('obj-schema-Policy', () {
    unittest.test('to-json--from-json', () {
      var o = buildPolicy();
      var od = api.Policy.fromJson(o.toJson());
      checkPolicy(od as api.Policy);
    });
  });

  unittest.group('obj-schema-QuotaProperties', () {
    unittest.test('to-json--from-json', () {
      var o = buildQuotaProperties();
      var od = api.QuotaProperties.fromJson(o.toJson());
      checkQuotaProperties(od as api.QuotaProperties);
    });
  });

  unittest.group('obj-schema-ReportRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildReportRequest();
      var od = api.ReportRequest.fromJson(o.toJson());
      checkReportRequest(od as api.ReportRequest);
    });
  });

  unittest.group('obj-schema-ResourceInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildResourceInfo();
      var od = api.ResourceInfo.fromJson(o.toJson());
      checkResourceInfo(od as api.ResourceInfo);
    });
  });

  unittest.group('obj-schema-RouterApplianceInstance', () {
    unittest.test('to-json--from-json', () {
      var o = buildRouterApplianceInstance();
      var od = api.RouterApplianceInstance.fromJson(o.toJson());
      checkRouterApplianceInstance(od as api.RouterApplianceInstance);
    });
  });

  unittest.group('obj-schema-SetIamPolicyRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildSetIamPolicyRequest();
      var od = api.SetIamPolicyRequest.fromJson(o.toJson());
      checkSetIamPolicyRequest(od as api.SetIamPolicyRequest);
    });
  });

  unittest.group('obj-schema-Spoke', () {
    unittest.test('to-json--from-json', () {
      var o = buildSpoke();
      var od = api.Spoke.fromJson(o.toJson());
      checkSpoke(od as api.Spoke);
    });
  });

  unittest.group('obj-schema-TestIamPermissionsRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildTestIamPermissionsRequest();
      var od = api.TestIamPermissionsRequest.fromJson(o.toJson());
      checkTestIamPermissionsRequest(od as api.TestIamPermissionsRequest);
    });
  });

  unittest.group('obj-schema-TestIamPermissionsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildTestIamPermissionsResponse();
      var od = api.TestIamPermissionsResponse.fromJson(o.toJson());
      checkTestIamPermissionsResponse(od as api.TestIamPermissionsResponse);
    });
  });

  unittest.group('obj-schema-TraceSpan', () {
    unittest.test('to-json--from-json', () {
      var o = buildTraceSpan();
      var od = api.TraceSpan.fromJson(o.toJson());
      checkTraceSpan(od as api.TraceSpan);
    });
  });

  unittest.group('obj-schema-TruncatableString', () {
    unittest.test('to-json--from-json', () {
      var o = buildTruncatableString();
      var od = api.TruncatableString.fromJson(o.toJson());
      checkTruncatableString(od as api.TruncatableString);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.NetworkconnectivityApi(mock).projects.locations;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildLocation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLocation(response as api.Location);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.NetworkconnectivityApi(mock).projects.locations;
      var arg_name = 'foo';
      var arg_filter = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListLocationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              filter: arg_filter,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListLocationsResponse(response as api.ListLocationsResponse);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsGlobalHubsResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.NetworkconnectivityApi(mock).projects.locations.global.hubs;
      var arg_request = buildHub();
      var arg_parent = 'foo';
      var arg_hubId = 'foo';
      var arg_requestId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Hub.fromJson(json as core.Map<core.String, core.dynamic>);
        checkHub(obj as api.Hub);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["hubId"].first, unittest.equals(arg_hubId));
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              hubId: arg_hubId, requestId: arg_requestId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(
            response as api.GoogleLongrunningOperation);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.NetworkconnectivityApi(mock).projects.locations.global.hubs;
      var arg_name = 'foo';
      var arg_requestId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, requestId: arg_requestId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(
            response as api.GoogleLongrunningOperation);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.NetworkconnectivityApi(mock).projects.locations.global.hubs;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildHub());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkHub(response as api.Hub);
      })));
    });

    unittest.test('method--getIamPolicy', () {
      var mock = HttpServerMock();
      var res = api.NetworkconnectivityApi(mock).projects.locations.global.hubs;
      var arg_resource = 'foo';
      var arg_options_requestedPolicyVersion = 42;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            core.int.parse(queryMap["options.requestedPolicyVersion"].first),
            unittest.equals(arg_options_requestedPolicyVersion));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getIamPolicy(arg_resource,
              options_requestedPolicyVersion:
                  arg_options_requestedPolicyVersion,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response as api.Policy);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.NetworkconnectivityApi(mock).projects.locations.global.hubs;
      var arg_parent = 'foo';
      var arg_filter = 'foo';
      var arg_orderBy = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListHubsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              filter: arg_filter,
              orderBy: arg_orderBy,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListHubsResponse(response as api.ListHubsResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.NetworkconnectivityApi(mock).projects.locations.global.hubs;
      var arg_request = buildHub();
      var arg_name = 'foo';
      var arg_requestId = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Hub.fromJson(json as core.Map<core.String, core.dynamic>);
        checkHub(obj as api.Hub);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              requestId: arg_requestId,
              updateMask: arg_updateMask,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(
            response as api.GoogleLongrunningOperation);
      })));
    });

    unittest.test('method--setIamPolicy', () {
      var mock = HttpServerMock();
      var res = api.NetworkconnectivityApi(mock).projects.locations.global.hubs;
      var arg_request = buildSetIamPolicyRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetIamPolicyRequest(obj as api.SetIamPolicyRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response as api.Policy);
      })));
    });

    unittest.test('method--testIamPermissions', () {
      var mock = HttpServerMock();
      var res = api.NetworkconnectivityApi(mock).projects.locations.global.hubs;
      var arg_request = buildTestIamPermissionsRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTestIamPermissionsRequest(obj as api.TestIamPermissionsRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildTestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .testIamPermissions(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTestIamPermissionsResponse(
            response as api.TestIamPermissionsResponse);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--cancel', () {
      var mock = HttpServerMock();
      var res = api.NetworkconnectivityApi(mock).projects.locations.operations;
      var arg_request = buildGoogleLongrunningCancelOperationRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleLongrunningCancelOperationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleLongrunningCancelOperationRequest(
            obj as api.GoogleLongrunningCancelOperationRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .cancel(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response as api.Empty);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.NetworkconnectivityApi(mock).projects.locations.operations;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response as api.Empty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.NetworkconnectivityApi(mock).projects.locations.operations;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(
            response as api.GoogleLongrunningOperation);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.NetworkconnectivityApi(mock).projects.locations.operations;
      var arg_name = 'foo';
      var arg_filter = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleLongrunningListOperationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              filter: arg_filter,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningListOperationsResponse(
            response as api.GoogleLongrunningListOperationsResponse);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsPolicyBasedRoutesResource', () {
    unittest.test('method--getIamPolicy', () {
      var mock = HttpServerMock();
      var res =
          api.NetworkconnectivityApi(mock).projects.locations.policyBasedRoutes;
      var arg_resource = 'foo';
      var arg_options_requestedPolicyVersion = 42;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            core.int.parse(queryMap["options.requestedPolicyVersion"].first),
            unittest.equals(arg_options_requestedPolicyVersion));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getIamPolicy(arg_resource,
              options_requestedPolicyVersion:
                  arg_options_requestedPolicyVersion,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response as api.Policy);
      })));
    });

    unittest.test('method--setIamPolicy', () {
      var mock = HttpServerMock();
      var res =
          api.NetworkconnectivityApi(mock).projects.locations.policyBasedRoutes;
      var arg_request = buildSetIamPolicyRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetIamPolicyRequest(obj as api.SetIamPolicyRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response as api.Policy);
      })));
    });

    unittest.test('method--testIamPermissions', () {
      var mock = HttpServerMock();
      var res =
          api.NetworkconnectivityApi(mock).projects.locations.policyBasedRoutes;
      var arg_request = buildTestIamPermissionsRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTestIamPermissionsRequest(obj as api.TestIamPermissionsRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildTestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .testIamPermissions(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTestIamPermissionsResponse(
            response as api.TestIamPermissionsResponse);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsPrivateRangesResource', () {
    unittest.test('method--getIamPolicy', () {
      var mock = HttpServerMock();
      var res =
          api.NetworkconnectivityApi(mock).projects.locations.privateRanges;
      var arg_resource = 'foo';
      var arg_options_requestedPolicyVersion = 42;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            core.int.parse(queryMap["options.requestedPolicyVersion"].first),
            unittest.equals(arg_options_requestedPolicyVersion));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getIamPolicy(arg_resource,
              options_requestedPolicyVersion:
                  arg_options_requestedPolicyVersion,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response as api.Policy);
      })));
    });

    unittest.test('method--setIamPolicy', () {
      var mock = HttpServerMock();
      var res =
          api.NetworkconnectivityApi(mock).projects.locations.privateRanges;
      var arg_request = buildSetIamPolicyRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetIamPolicyRequest(obj as api.SetIamPolicyRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response as api.Policy);
      })));
    });

    unittest.test('method--testIamPermissions', () {
      var mock = HttpServerMock();
      var res =
          api.NetworkconnectivityApi(mock).projects.locations.privateRanges;
      var arg_request = buildTestIamPermissionsRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTestIamPermissionsRequest(obj as api.TestIamPermissionsRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildTestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .testIamPermissions(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTestIamPermissionsResponse(
            response as api.TestIamPermissionsResponse);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsSpokesResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.NetworkconnectivityApi(mock).projects.locations.spokes;
      var arg_request = buildSpoke();
      var arg_parent = 'foo';
      var arg_requestId = 'foo';
      var arg_spokeId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Spoke.fromJson(json as core.Map<core.String, core.dynamic>);
        checkSpoke(obj as api.Spoke);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));
        unittest.expect(
            queryMap["spokeId"].first, unittest.equals(arg_spokeId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              requestId: arg_requestId,
              spokeId: arg_spokeId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(
            response as api.GoogleLongrunningOperation);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.NetworkconnectivityApi(mock).projects.locations.spokes;
      var arg_name = 'foo';
      var arg_requestId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, requestId: arg_requestId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(
            response as api.GoogleLongrunningOperation);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.NetworkconnectivityApi(mock).projects.locations.spokes;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSpoke());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSpoke(response as api.Spoke);
      })));
    });

    unittest.test('method--getIamPolicy', () {
      var mock = HttpServerMock();
      var res = api.NetworkconnectivityApi(mock).projects.locations.spokes;
      var arg_resource = 'foo';
      var arg_options_requestedPolicyVersion = 42;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            core.int.parse(queryMap["options.requestedPolicyVersion"].first),
            unittest.equals(arg_options_requestedPolicyVersion));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getIamPolicy(arg_resource,
              options_requestedPolicyVersion:
                  arg_options_requestedPolicyVersion,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response as api.Policy);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.NetworkconnectivityApi(mock).projects.locations.spokes;
      var arg_parent = 'foo';
      var arg_filter = 'foo';
      var arg_orderBy = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListSpokesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              filter: arg_filter,
              orderBy: arg_orderBy,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListSpokesResponse(response as api.ListSpokesResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.NetworkconnectivityApi(mock).projects.locations.spokes;
      var arg_request = buildSpoke();
      var arg_name = 'foo';
      var arg_requestId = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Spoke.fromJson(json as core.Map<core.String, core.dynamic>);
        checkSpoke(obj as api.Spoke);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              requestId: arg_requestId,
              updateMask: arg_updateMask,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(
            response as api.GoogleLongrunningOperation);
      })));
    });

    unittest.test('method--setIamPolicy', () {
      var mock = HttpServerMock();
      var res = api.NetworkconnectivityApi(mock).projects.locations.spokes;
      var arg_request = buildSetIamPolicyRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetIamPolicyRequest(obj as api.SetIamPolicyRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response as api.Policy);
      })));
    });

    unittest.test('method--testIamPermissions', () {
      var mock = HttpServerMock();
      var res = api.NetworkconnectivityApi(mock).projects.locations.spokes;
      var arg_request = buildTestIamPermissionsRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTestIamPermissionsRequest(obj as api.TestIamPermissionsRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildTestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .testIamPermissions(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTestIamPermissionsResponse(
            response as api.TestIamPermissionsResponse);
      })));
    });
  });
}
