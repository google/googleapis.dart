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
import 'package:googleapis/servicecontrol/v2.dart' as api;

import '../test_shared.dart';

core.int buildCounterApi = 0;
api.Api buildApi() {
  var o = api.Api();
  buildCounterApi++;
  if (buildCounterApi < 3) {
    o.operation = 'foo';
    o.protocol = 'foo';
    o.service = 'foo';
    o.version = 'foo';
  }
  buildCounterApi--;
  return o;
}

void checkApi(api.Api o) {
  buildCounterApi++;
  if (buildCounterApi < 3) {
    unittest.expect(o.operation, unittest.equals('foo'));
    unittest.expect(o.protocol, unittest.equals('foo'));
    unittest.expect(o.service, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterApi--;
}

core.Map<core.String, core.Object> buildUnnamed4094() {
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

void checkUnnamed4094(core.Map<core.String, core.Object> o) {
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

core.List<core.Map<core.String, core.Object>> buildUnnamed4095() {
  var o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed4094());
  o.add(buildUnnamed4094());
  return o;
}

void checkUnnamed4095(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed4094(o[0]);
  checkUnnamed4094(o[1]);
}

core.int buildCounterAttributeContext = 0;
api.AttributeContext buildAttributeContext() {
  var o = api.AttributeContext();
  buildCounterAttributeContext++;
  if (buildCounterAttributeContext < 3) {
    o.api = buildApi();
    o.destination = buildPeer();
    o.extensions = buildUnnamed4095();
    o.origin = buildPeer();
    o.request = buildRequest();
    o.resource = buildResource();
    o.response = buildResponse();
    o.source = buildPeer();
  }
  buildCounterAttributeContext--;
  return o;
}

void checkAttributeContext(api.AttributeContext o) {
  buildCounterAttributeContext++;
  if (buildCounterAttributeContext < 3) {
    checkApi(o.api as api.Api);
    checkPeer(o.destination as api.Peer);
    checkUnnamed4095(o.extensions);
    checkPeer(o.origin as api.Peer);
    checkRequest(o.request as api.Request);
    checkResource(o.resource as api.Resource);
    checkResponse(o.response as api.Response);
    checkPeer(o.source as api.Peer);
  }
  buildCounterAttributeContext--;
}

core.List<api.AuthorizationInfo> buildUnnamed4096() {
  var o = <api.AuthorizationInfo>[];
  o.add(buildAuthorizationInfo());
  o.add(buildAuthorizationInfo());
  return o;
}

void checkUnnamed4096(core.List<api.AuthorizationInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuthorizationInfo(o[0] as api.AuthorizationInfo);
  checkAuthorizationInfo(o[1] as api.AuthorizationInfo);
}

core.Map<core.String, core.Object> buildUnnamed4097() {
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

void checkUnnamed4097(core.Map<core.String, core.Object> o) {
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

core.Map<core.String, core.Object> buildUnnamed4098() {
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

void checkUnnamed4098(core.Map<core.String, core.Object> o) {
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

core.Map<core.String, core.Object> buildUnnamed4099() {
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

void checkUnnamed4099(core.Map<core.String, core.Object> o) {
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

core.Map<core.String, core.Object> buildUnnamed4100() {
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

void checkUnnamed4100(core.Map<core.String, core.Object> o) {
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

core.Map<core.String, core.Object> buildUnnamed4101() {
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

void checkUnnamed4101(core.Map<core.String, core.Object> o) {
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

core.int buildCounterAuditLog = 0;
api.AuditLog buildAuditLog() {
  var o = api.AuditLog();
  buildCounterAuditLog++;
  if (buildCounterAuditLog < 3) {
    o.authenticationInfo = buildAuthenticationInfo();
    o.authorizationInfo = buildUnnamed4096();
    o.metadata = buildUnnamed4097();
    o.methodName = 'foo';
    o.numResponseItems = 'foo';
    o.request = buildUnnamed4098();
    o.requestMetadata = buildRequestMetadata();
    o.resourceLocation = buildResourceLocation();
    o.resourceName = 'foo';
    o.resourceOriginalState = buildUnnamed4099();
    o.response = buildUnnamed4100();
    o.serviceData = buildUnnamed4101();
    o.serviceName = 'foo';
    o.status = buildStatus();
  }
  buildCounterAuditLog--;
  return o;
}

void checkAuditLog(api.AuditLog o) {
  buildCounterAuditLog++;
  if (buildCounterAuditLog < 3) {
    checkAuthenticationInfo(o.authenticationInfo as api.AuthenticationInfo);
    checkUnnamed4096(o.authorizationInfo);
    checkUnnamed4097(o.metadata);
    unittest.expect(o.methodName, unittest.equals('foo'));
    unittest.expect(o.numResponseItems, unittest.equals('foo'));
    checkUnnamed4098(o.request);
    checkRequestMetadata(o.requestMetadata as api.RequestMetadata);
    checkResourceLocation(o.resourceLocation as api.ResourceLocation);
    unittest.expect(o.resourceName, unittest.equals('foo'));
    checkUnnamed4099(o.resourceOriginalState);
    checkUnnamed4100(o.response);
    checkUnnamed4101(o.serviceData);
    unittest.expect(o.serviceName, unittest.equals('foo'));
    checkStatus(o.status as api.Status);
  }
  buildCounterAuditLog--;
}

core.List<core.String> buildUnnamed4102() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4102(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4103() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4103(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, core.Object> buildUnnamed4104() {
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

void checkUnnamed4104(core.Map<core.String, core.Object> o) {
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

core.int buildCounterAuth = 0;
api.Auth buildAuth() {
  var o = api.Auth();
  buildCounterAuth++;
  if (buildCounterAuth < 3) {
    o.accessLevels = buildUnnamed4102();
    o.audiences = buildUnnamed4103();
    o.claims = buildUnnamed4104();
    o.presenter = 'foo';
    o.principal = 'foo';
  }
  buildCounterAuth--;
  return o;
}

void checkAuth(api.Auth o) {
  buildCounterAuth++;
  if (buildCounterAuth < 3) {
    checkUnnamed4102(o.accessLevels);
    checkUnnamed4103(o.audiences);
    checkUnnamed4104(o.claims);
    unittest.expect(o.presenter, unittest.equals('foo'));
    unittest.expect(o.principal, unittest.equals('foo'));
  }
  buildCounterAuth--;
}

core.List<api.ServiceAccountDelegationInfo> buildUnnamed4105() {
  var o = <api.ServiceAccountDelegationInfo>[];
  o.add(buildServiceAccountDelegationInfo());
  o.add(buildServiceAccountDelegationInfo());
  return o;
}

void checkUnnamed4105(core.List<api.ServiceAccountDelegationInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkServiceAccountDelegationInfo(o[0] as api.ServiceAccountDelegationInfo);
  checkServiceAccountDelegationInfo(o[1] as api.ServiceAccountDelegationInfo);
}

core.Map<core.String, core.Object> buildUnnamed4106() {
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

void checkUnnamed4106(core.Map<core.String, core.Object> o) {
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

core.int buildCounterAuthenticationInfo = 0;
api.AuthenticationInfo buildAuthenticationInfo() {
  var o = api.AuthenticationInfo();
  buildCounterAuthenticationInfo++;
  if (buildCounterAuthenticationInfo < 3) {
    o.authoritySelector = 'foo';
    o.principalEmail = 'foo';
    o.principalSubject = 'foo';
    o.serviceAccountDelegationInfo = buildUnnamed4105();
    o.serviceAccountKeyName = 'foo';
    o.thirdPartyPrincipal = buildUnnamed4106();
  }
  buildCounterAuthenticationInfo--;
  return o;
}

void checkAuthenticationInfo(api.AuthenticationInfo o) {
  buildCounterAuthenticationInfo++;
  if (buildCounterAuthenticationInfo < 3) {
    unittest.expect(o.authoritySelector, unittest.equals('foo'));
    unittest.expect(o.principalEmail, unittest.equals('foo'));
    unittest.expect(o.principalSubject, unittest.equals('foo'));
    checkUnnamed4105(o.serviceAccountDelegationInfo);
    unittest.expect(o.serviceAccountKeyName, unittest.equals('foo'));
    checkUnnamed4106(o.thirdPartyPrincipal);
  }
  buildCounterAuthenticationInfo--;
}

core.int buildCounterAuthorizationInfo = 0;
api.AuthorizationInfo buildAuthorizationInfo() {
  var o = api.AuthorizationInfo();
  buildCounterAuthorizationInfo++;
  if (buildCounterAuthorizationInfo < 3) {
    o.granted = true;
    o.permission = 'foo';
    o.resource = 'foo';
    o.resourceAttributes = buildResource();
  }
  buildCounterAuthorizationInfo--;
  return o;
}

void checkAuthorizationInfo(api.AuthorizationInfo o) {
  buildCounterAuthorizationInfo++;
  if (buildCounterAuthorizationInfo < 3) {
    unittest.expect(o.granted, unittest.isTrue);
    unittest.expect(o.permission, unittest.equals('foo'));
    unittest.expect(o.resource, unittest.equals('foo'));
    checkResource(o.resourceAttributes as api.Resource);
  }
  buildCounterAuthorizationInfo--;
}

core.List<api.ResourceInfo> buildUnnamed4107() {
  var o = <api.ResourceInfo>[];
  o.add(buildResourceInfo());
  o.add(buildResourceInfo());
  return o;
}

void checkUnnamed4107(core.List<api.ResourceInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResourceInfo(o[0] as api.ResourceInfo);
  checkResourceInfo(o[1] as api.ResourceInfo);
}

core.int buildCounterCheckRequest = 0;
api.CheckRequest buildCheckRequest() {
  var o = api.CheckRequest();
  buildCounterCheckRequest++;
  if (buildCounterCheckRequest < 3) {
    o.attributes = buildAttributeContext();
    o.flags = 'foo';
    o.resources = buildUnnamed4107();
    o.serviceConfigId = 'foo';
  }
  buildCounterCheckRequest--;
  return o;
}

void checkCheckRequest(api.CheckRequest o) {
  buildCounterCheckRequest++;
  if (buildCounterCheckRequest < 3) {
    checkAttributeContext(o.attributes as api.AttributeContext);
    unittest.expect(o.flags, unittest.equals('foo'));
    checkUnnamed4107(o.resources);
    unittest.expect(o.serviceConfigId, unittest.equals('foo'));
  }
  buildCounterCheckRequest--;
}

core.Map<core.String, core.String> buildUnnamed4108() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed4108(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterCheckResponse = 0;
api.CheckResponse buildCheckResponse() {
  var o = api.CheckResponse();
  buildCounterCheckResponse++;
  if (buildCounterCheckResponse < 3) {
    o.headers = buildUnnamed4108();
    o.status = buildStatus();
  }
  buildCounterCheckResponse--;
  return o;
}

void checkCheckResponse(api.CheckResponse o) {
  buildCounterCheckResponse++;
  if (buildCounterCheckResponse < 3) {
    checkUnnamed4108(o.headers);
    checkStatus(o.status as api.Status);
  }
  buildCounterCheckResponse--;
}

core.Map<core.String, core.Object> buildUnnamed4109() {
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

void checkUnnamed4109(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted17 = (o['x']) as core.Map;
  unittest.expect(casted17, unittest.hasLength(3));
  unittest.expect(casted17['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted17['bool'], unittest.equals(true));
  unittest.expect(casted17['string'], unittest.equals('foo'));
  var casted18 = (o['y']) as core.Map;
  unittest.expect(casted18, unittest.hasLength(3));
  unittest.expect(casted18['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted18['bool'], unittest.equals(true));
  unittest.expect(casted18['string'], unittest.equals('foo'));
}

core.int buildCounterFirstPartyPrincipal = 0;
api.FirstPartyPrincipal buildFirstPartyPrincipal() {
  var o = api.FirstPartyPrincipal();
  buildCounterFirstPartyPrincipal++;
  if (buildCounterFirstPartyPrincipal < 3) {
    o.principalEmail = 'foo';
    o.serviceMetadata = buildUnnamed4109();
  }
  buildCounterFirstPartyPrincipal--;
  return o;
}

void checkFirstPartyPrincipal(api.FirstPartyPrincipal o) {
  buildCounterFirstPartyPrincipal++;
  if (buildCounterFirstPartyPrincipal < 3) {
    unittest.expect(o.principalEmail, unittest.equals('foo'));
    checkUnnamed4109(o.serviceMetadata);
  }
  buildCounterFirstPartyPrincipal--;
}

core.Map<core.String, core.String> buildUnnamed4110() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed4110(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterPeer = 0;
api.Peer buildPeer() {
  var o = api.Peer();
  buildCounterPeer++;
  if (buildCounterPeer < 3) {
    o.ip = 'foo';
    o.labels = buildUnnamed4110();
    o.port = 'foo';
    o.principal = 'foo';
    o.regionCode = 'foo';
  }
  buildCounterPeer--;
  return o;
}

void checkPeer(api.Peer o) {
  buildCounterPeer++;
  if (buildCounterPeer < 3) {
    unittest.expect(o.ip, unittest.equals('foo'));
    checkUnnamed4110(o.labels);
    unittest.expect(o.port, unittest.equals('foo'));
    unittest.expect(o.principal, unittest.equals('foo'));
    unittest.expect(o.regionCode, unittest.equals('foo'));
  }
  buildCounterPeer--;
}

core.List<api.AttributeContext> buildUnnamed4111() {
  var o = <api.AttributeContext>[];
  o.add(buildAttributeContext());
  o.add(buildAttributeContext());
  return o;
}

void checkUnnamed4111(core.List<api.AttributeContext> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAttributeContext(o[0] as api.AttributeContext);
  checkAttributeContext(o[1] as api.AttributeContext);
}

core.int buildCounterReportRequest = 0;
api.ReportRequest buildReportRequest() {
  var o = api.ReportRequest();
  buildCounterReportRequest++;
  if (buildCounterReportRequest < 3) {
    o.operations = buildUnnamed4111();
    o.serviceConfigId = 'foo';
  }
  buildCounterReportRequest--;
  return o;
}

void checkReportRequest(api.ReportRequest o) {
  buildCounterReportRequest++;
  if (buildCounterReportRequest < 3) {
    checkUnnamed4111(o.operations);
    unittest.expect(o.serviceConfigId, unittest.equals('foo'));
  }
  buildCounterReportRequest--;
}

core.int buildCounterReportResponse = 0;
api.ReportResponse buildReportResponse() {
  var o = api.ReportResponse();
  buildCounterReportResponse++;
  if (buildCounterReportResponse < 3) {}
  buildCounterReportResponse--;
  return o;
}

void checkReportResponse(api.ReportResponse o) {
  buildCounterReportResponse++;
  if (buildCounterReportResponse < 3) {}
  buildCounterReportResponse--;
}

core.Map<core.String, core.String> buildUnnamed4112() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed4112(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterRequest = 0;
api.Request buildRequest() {
  var o = api.Request();
  buildCounterRequest++;
  if (buildCounterRequest < 3) {
    o.auth = buildAuth();
    o.headers = buildUnnamed4112();
    o.host = 'foo';
    o.id = 'foo';
    o.method = 'foo';
    o.path = 'foo';
    o.protocol = 'foo';
    o.query = 'foo';
    o.reason = 'foo';
    o.scheme = 'foo';
    o.size = 'foo';
    o.time = 'foo';
  }
  buildCounterRequest--;
  return o;
}

void checkRequest(api.Request o) {
  buildCounterRequest++;
  if (buildCounterRequest < 3) {
    checkAuth(o.auth as api.Auth);
    checkUnnamed4112(o.headers);
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
api.RequestMetadata buildRequestMetadata() {
  var o = api.RequestMetadata();
  buildCounterRequestMetadata++;
  if (buildCounterRequestMetadata < 3) {
    o.callerIp = 'foo';
    o.callerNetwork = 'foo';
    o.callerSuppliedUserAgent = 'foo';
    o.destinationAttributes = buildPeer();
    o.requestAttributes = buildRequest();
  }
  buildCounterRequestMetadata--;
  return o;
}

void checkRequestMetadata(api.RequestMetadata o) {
  buildCounterRequestMetadata++;
  if (buildCounterRequestMetadata < 3) {
    unittest.expect(o.callerIp, unittest.equals('foo'));
    unittest.expect(o.callerNetwork, unittest.equals('foo'));
    unittest.expect(o.callerSuppliedUserAgent, unittest.equals('foo'));
    checkPeer(o.destinationAttributes as api.Peer);
    checkRequest(o.requestAttributes as api.Request);
  }
  buildCounterRequestMetadata--;
}

core.Map<core.String, core.String> buildUnnamed4113() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed4113(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed4114() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed4114(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterResource = 0;
api.Resource buildResource() {
  var o = api.Resource();
  buildCounterResource++;
  if (buildCounterResource < 3) {
    o.annotations = buildUnnamed4113();
    o.createTime = 'foo';
    o.deleteTime = 'foo';
    o.displayName = 'foo';
    o.etag = 'foo';
    o.labels = buildUnnamed4114();
    o.location = 'foo';
    o.name = 'foo';
    o.service = 'foo';
    o.type = 'foo';
    o.uid = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterResource--;
  return o;
}

void checkResource(api.Resource o) {
  buildCounterResource++;
  if (buildCounterResource < 3) {
    checkUnnamed4113(o.annotations);
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.deleteTime, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed4114(o.labels);
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.service, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.uid, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterResource--;
}

core.int buildCounterResourceInfo = 0;
api.ResourceInfo buildResourceInfo() {
  var o = api.ResourceInfo();
  buildCounterResourceInfo++;
  if (buildCounterResourceInfo < 3) {
    o.name = 'foo';
    o.permission = 'foo';
    o.type = 'foo';
  }
  buildCounterResourceInfo--;
  return o;
}

void checkResourceInfo(api.ResourceInfo o) {
  buildCounterResourceInfo++;
  if (buildCounterResourceInfo < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.permission, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterResourceInfo--;
}

core.List<core.String> buildUnnamed4115() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4115(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4116() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4116(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterResourceLocation = 0;
api.ResourceLocation buildResourceLocation() {
  var o = api.ResourceLocation();
  buildCounterResourceLocation++;
  if (buildCounterResourceLocation < 3) {
    o.currentLocations = buildUnnamed4115();
    o.originalLocations = buildUnnamed4116();
  }
  buildCounterResourceLocation--;
  return o;
}

void checkResourceLocation(api.ResourceLocation o) {
  buildCounterResourceLocation++;
  if (buildCounterResourceLocation < 3) {
    checkUnnamed4115(o.currentLocations);
    checkUnnamed4116(o.originalLocations);
  }
  buildCounterResourceLocation--;
}

core.Map<core.String, core.String> buildUnnamed4117() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed4117(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterResponse = 0;
api.Response buildResponse() {
  var o = api.Response();
  buildCounterResponse++;
  if (buildCounterResponse < 3) {
    o.backendLatency = 'foo';
    o.code = 'foo';
    o.headers = buildUnnamed4117();
    o.size = 'foo';
    o.time = 'foo';
  }
  buildCounterResponse--;
  return o;
}

void checkResponse(api.Response o) {
  buildCounterResponse++;
  if (buildCounterResponse < 3) {
    unittest.expect(o.backendLatency, unittest.equals('foo'));
    unittest.expect(o.code, unittest.equals('foo'));
    checkUnnamed4117(o.headers);
    unittest.expect(o.size, unittest.equals('foo'));
    unittest.expect(o.time, unittest.equals('foo'));
  }
  buildCounterResponse--;
}

core.int buildCounterServiceAccountDelegationInfo = 0;
api.ServiceAccountDelegationInfo buildServiceAccountDelegationInfo() {
  var o = api.ServiceAccountDelegationInfo();
  buildCounterServiceAccountDelegationInfo++;
  if (buildCounterServiceAccountDelegationInfo < 3) {
    o.firstPartyPrincipal = buildFirstPartyPrincipal();
    o.principalSubject = 'foo';
    o.thirdPartyPrincipal = buildThirdPartyPrincipal();
  }
  buildCounterServiceAccountDelegationInfo--;
  return o;
}

void checkServiceAccountDelegationInfo(api.ServiceAccountDelegationInfo o) {
  buildCounterServiceAccountDelegationInfo++;
  if (buildCounterServiceAccountDelegationInfo < 3) {
    checkFirstPartyPrincipal(o.firstPartyPrincipal as api.FirstPartyPrincipal);
    unittest.expect(o.principalSubject, unittest.equals('foo'));
    checkThirdPartyPrincipal(o.thirdPartyPrincipal as api.ThirdPartyPrincipal);
  }
  buildCounterServiceAccountDelegationInfo--;
}

core.int buildCounterSpanContext = 0;
api.SpanContext buildSpanContext() {
  var o = api.SpanContext();
  buildCounterSpanContext++;
  if (buildCounterSpanContext < 3) {
    o.spanName = 'foo';
  }
  buildCounterSpanContext--;
  return o;
}

void checkSpanContext(api.SpanContext o) {
  buildCounterSpanContext++;
  if (buildCounterSpanContext < 3) {
    unittest.expect(o.spanName, unittest.equals('foo'));
  }
  buildCounterSpanContext--;
}

core.Map<core.String, core.Object> buildUnnamed4118() {
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

void checkUnnamed4118(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted19 = (o['x']) as core.Map;
  unittest.expect(casted19, unittest.hasLength(3));
  unittest.expect(casted19['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted19['bool'], unittest.equals(true));
  unittest.expect(casted19['string'], unittest.equals('foo'));
  var casted20 = (o['y']) as core.Map;
  unittest.expect(casted20, unittest.hasLength(3));
  unittest.expect(casted20['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted20['bool'], unittest.equals(true));
  unittest.expect(casted20['string'], unittest.equals('foo'));
}

core.List<core.Map<core.String, core.Object>> buildUnnamed4119() {
  var o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed4118());
  o.add(buildUnnamed4118());
  return o;
}

void checkUnnamed4119(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed4118(o[0]);
  checkUnnamed4118(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  var o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed4119();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed4119(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.Map<core.String, core.Object> buildUnnamed4120() {
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

void checkUnnamed4120(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted21 = (o['x']) as core.Map;
  unittest.expect(casted21, unittest.hasLength(3));
  unittest.expect(casted21['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted21['bool'], unittest.equals(true));
  unittest.expect(casted21['string'], unittest.equals('foo'));
  var casted22 = (o['y']) as core.Map;
  unittest.expect(casted22, unittest.hasLength(3));
  unittest.expect(casted22['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted22['bool'], unittest.equals(true));
  unittest.expect(casted22['string'], unittest.equals('foo'));
}

core.int buildCounterThirdPartyPrincipal = 0;
api.ThirdPartyPrincipal buildThirdPartyPrincipal() {
  var o = api.ThirdPartyPrincipal();
  buildCounterThirdPartyPrincipal++;
  if (buildCounterThirdPartyPrincipal < 3) {
    o.thirdPartyClaims = buildUnnamed4120();
  }
  buildCounterThirdPartyPrincipal--;
  return o;
}

void checkThirdPartyPrincipal(api.ThirdPartyPrincipal o) {
  buildCounterThirdPartyPrincipal++;
  if (buildCounterThirdPartyPrincipal < 3) {
    checkUnnamed4120(o.thirdPartyClaims);
  }
  buildCounterThirdPartyPrincipal--;
}

void main() {
  unittest.group('obj-schema-Api', () {
    unittest.test('to-json--from-json', () {
      var o = buildApi();
      var od = api.Api.fromJson(o.toJson());
      checkApi(od as api.Api);
    });
  });

  unittest.group('obj-schema-AttributeContext', () {
    unittest.test('to-json--from-json', () {
      var o = buildAttributeContext();
      var od = api.AttributeContext.fromJson(o.toJson());
      checkAttributeContext(od as api.AttributeContext);
    });
  });

  unittest.group('obj-schema-AuditLog', () {
    unittest.test('to-json--from-json', () {
      var o = buildAuditLog();
      var od = api.AuditLog.fromJson(o.toJson());
      checkAuditLog(od as api.AuditLog);
    });
  });

  unittest.group('obj-schema-Auth', () {
    unittest.test('to-json--from-json', () {
      var o = buildAuth();
      var od = api.Auth.fromJson(o.toJson());
      checkAuth(od as api.Auth);
    });
  });

  unittest.group('obj-schema-AuthenticationInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildAuthenticationInfo();
      var od = api.AuthenticationInfo.fromJson(o.toJson());
      checkAuthenticationInfo(od as api.AuthenticationInfo);
    });
  });

  unittest.group('obj-schema-AuthorizationInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildAuthorizationInfo();
      var od = api.AuthorizationInfo.fromJson(o.toJson());
      checkAuthorizationInfo(od as api.AuthorizationInfo);
    });
  });

  unittest.group('obj-schema-CheckRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildCheckRequest();
      var od = api.CheckRequest.fromJson(o.toJson());
      checkCheckRequest(od as api.CheckRequest);
    });
  });

  unittest.group('obj-schema-CheckResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildCheckResponse();
      var od = api.CheckResponse.fromJson(o.toJson());
      checkCheckResponse(od as api.CheckResponse);
    });
  });

  unittest.group('obj-schema-FirstPartyPrincipal', () {
    unittest.test('to-json--from-json', () {
      var o = buildFirstPartyPrincipal();
      var od = api.FirstPartyPrincipal.fromJson(o.toJson());
      checkFirstPartyPrincipal(od as api.FirstPartyPrincipal);
    });
  });

  unittest.group('obj-schema-Peer', () {
    unittest.test('to-json--from-json', () {
      var o = buildPeer();
      var od = api.Peer.fromJson(o.toJson());
      checkPeer(od as api.Peer);
    });
  });

  unittest.group('obj-schema-ReportRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildReportRequest();
      var od = api.ReportRequest.fromJson(o.toJson());
      checkReportRequest(od as api.ReportRequest);
    });
  });

  unittest.group('obj-schema-ReportResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildReportResponse();
      var od = api.ReportResponse.fromJson(o.toJson());
      checkReportResponse(od as api.ReportResponse);
    });
  });

  unittest.group('obj-schema-Request', () {
    unittest.test('to-json--from-json', () {
      var o = buildRequest();
      var od = api.Request.fromJson(o.toJson());
      checkRequest(od as api.Request);
    });
  });

  unittest.group('obj-schema-RequestMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildRequestMetadata();
      var od = api.RequestMetadata.fromJson(o.toJson());
      checkRequestMetadata(od as api.RequestMetadata);
    });
  });

  unittest.group('obj-schema-Resource', () {
    unittest.test('to-json--from-json', () {
      var o = buildResource();
      var od = api.Resource.fromJson(o.toJson());
      checkResource(od as api.Resource);
    });
  });

  unittest.group('obj-schema-ResourceInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildResourceInfo();
      var od = api.ResourceInfo.fromJson(o.toJson());
      checkResourceInfo(od as api.ResourceInfo);
    });
  });

  unittest.group('obj-schema-ResourceLocation', () {
    unittest.test('to-json--from-json', () {
      var o = buildResourceLocation();
      var od = api.ResourceLocation.fromJson(o.toJson());
      checkResourceLocation(od as api.ResourceLocation);
    });
  });

  unittest.group('obj-schema-Response', () {
    unittest.test('to-json--from-json', () {
      var o = buildResponse();
      var od = api.Response.fromJson(o.toJson());
      checkResponse(od as api.Response);
    });
  });

  unittest.group('obj-schema-ServiceAccountDelegationInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildServiceAccountDelegationInfo();
      var od = api.ServiceAccountDelegationInfo.fromJson(o.toJson());
      checkServiceAccountDelegationInfo(od as api.ServiceAccountDelegationInfo);
    });
  });

  unittest.group('obj-schema-SpanContext', () {
    unittest.test('to-json--from-json', () {
      var o = buildSpanContext();
      var od = api.SpanContext.fromJson(o.toJson());
      checkSpanContext(od as api.SpanContext);
    });
  });

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () {
      var o = buildStatus();
      var od = api.Status.fromJson(o.toJson());
      checkStatus(od as api.Status);
    });
  });

  unittest.group('obj-schema-ThirdPartyPrincipal', () {
    unittest.test('to-json--from-json', () {
      var o = buildThirdPartyPrincipal();
      var od = api.ThirdPartyPrincipal.fromJson(o.toJson());
      checkThirdPartyPrincipal(od as api.ThirdPartyPrincipal);
    });
  });

  unittest.group('resource-ServicesResource', () {
    unittest.test('method--check', () {
      var mock = HttpServerMock();
      var res = api.ServiceControlApi(mock).services;
      var arg_request = buildCheckRequest();
      var arg_serviceName = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CheckRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCheckRequest(obj as api.CheckRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v2/services/"));
        pathOffset += 12;
        index = path.indexOf(':check', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_serviceName'));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals(":check"));
        pathOffset += 6;

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
        var resp = convert.json.encode(buildCheckResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .check(arg_request, arg_serviceName, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCheckResponse(response as api.CheckResponse);
      })));
    });

    unittest.test('method--report', () {
      var mock = HttpServerMock();
      var res = api.ServiceControlApi(mock).services;
      var arg_request = buildReportRequest();
      var arg_serviceName = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ReportRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkReportRequest(obj as api.ReportRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v2/services/"));
        pathOffset += 12;
        index = path.indexOf(':report', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_serviceName'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals(":report"));
        pathOffset += 7;

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
        var resp = convert.json.encode(buildReportResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .report(arg_request, arg_serviceName, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkReportResponse(response as api.ReportResponse);
      })));
    });
  });
}
