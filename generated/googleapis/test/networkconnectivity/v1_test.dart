// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: doc_directive_unknown
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_const_declarations
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unintended_html_in_doc_comment
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unreachable_from_main
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:googleapis/networkconnectivity/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAcceptHubSpokeRequest = 0;
api.AcceptHubSpokeRequest buildAcceptHubSpokeRequest() {
  final o = api.AcceptHubSpokeRequest();
  buildCounterAcceptHubSpokeRequest++;
  if (buildCounterAcceptHubSpokeRequest < 3) {
    o.requestId = 'foo';
    o.spokeUri = 'foo';
  }
  buildCounterAcceptHubSpokeRequest--;
  return o;
}

void checkAcceptHubSpokeRequest(api.AcceptHubSpokeRequest o) {
  buildCounterAcceptHubSpokeRequest++;
  if (buildCounterAcceptHubSpokeRequest < 3) {
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.spokeUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterAcceptHubSpokeRequest--;
}

core.int buildCounterAcceptSpokeUpdateRequest = 0;
api.AcceptSpokeUpdateRequest buildAcceptSpokeUpdateRequest() {
  final o = api.AcceptSpokeUpdateRequest();
  buildCounterAcceptSpokeUpdateRequest++;
  if (buildCounterAcceptSpokeUpdateRequest < 3) {
    o.requestId = 'foo';
    o.spokeEtag = 'foo';
    o.spokeUri = 'foo';
  }
  buildCounterAcceptSpokeUpdateRequest--;
  return o;
}

void checkAcceptSpokeUpdateRequest(api.AcceptSpokeUpdateRequest o) {
  buildCounterAcceptSpokeUpdateRequest++;
  if (buildCounterAcceptSpokeUpdateRequest < 3) {
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.spokeEtag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.spokeUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterAcceptSpokeUpdateRequest--;
}

core.List<api.AuditLogConfig> buildUnnamed0() => [
      buildAuditLogConfig(),
      buildAuditLogConfig(),
    ];

void checkUnnamed0(core.List<api.AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditLogConfig(o[0]);
  checkAuditLogConfig(o[1]);
}

core.int buildCounterAuditConfig = 0;
api.AuditConfig buildAuditConfig() {
  final o = api.AuditConfig();
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed0();
    o.service = 'foo';
  }
  buildCounterAuditConfig--;
  return o;
}

void checkAuditConfig(api.AuditConfig o) {
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    checkUnnamed0(o.auditLogConfigs!);
    unittest.expect(
      o.service!,
      unittest.equals('foo'),
    );
  }
  buildCounterAuditConfig--;
}

core.List<core.String> buildUnnamed1() => [
      'foo',
      'foo',
    ];

void checkUnnamed1(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterAuditLogConfig = 0;
api.AuditLogConfig buildAuditLogConfig() {
  final o = api.AuditLogConfig();
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    o.exemptedMembers = buildUnnamed1();
    o.logType = 'foo';
  }
  buildCounterAuditLogConfig--;
  return o;
}

void checkAuditLogConfig(api.AuditLogConfig o) {
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    checkUnnamed1(o.exemptedMembers!);
    unittest.expect(
      o.logType!,
      unittest.equals('foo'),
    );
  }
  buildCounterAuditLogConfig--;
}

core.List<core.String> buildUnnamed2() => [
      'foo',
      'foo',
    ];

void checkUnnamed2(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterAutoAccept = 0;
api.AutoAccept buildAutoAccept() {
  final o = api.AutoAccept();
  buildCounterAutoAccept++;
  if (buildCounterAutoAccept < 3) {
    o.autoAcceptProjects = buildUnnamed2();
  }
  buildCounterAutoAccept--;
  return o;
}

void checkAutoAccept(api.AutoAccept o) {
  buildCounterAutoAccept++;
  if (buildCounterAutoAccept < 3) {
    checkUnnamed2(o.autoAcceptProjects!);
  }
  buildCounterAutoAccept--;
}

core.List<core.String> buildUnnamed3() => [
      'foo',
      'foo',
    ];

void checkUnnamed3(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterBinding = 0;
api.Binding buildBinding() {
  final o = api.Binding();
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    o.condition = buildExpr();
    o.members = buildUnnamed3();
    o.role = 'foo';
  }
  buildCounterBinding--;
  return o;
}

void checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition!);
    checkUnnamed3(o.members!);
    unittest.expect(
      o.role!,
      unittest.equals('foo'),
    );
  }
  buildCounterBinding--;
}

core.Map<core.String, core.String> buildUnnamed4() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed4(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.Map<core.String, core.String> buildUnnamed5() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed5(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.int buildCounterConsumerPscConfig = 0;
api.ConsumerPscConfig buildConsumerPscConfig() {
  final o = api.ConsumerPscConfig();
  buildCounterConsumerPscConfig++;
  if (buildCounterConsumerPscConfig < 3) {
    o.consumerInstanceProject = 'foo';
    o.disableGlobalAccess = true;
    o.ipVersion = 'foo';
    o.network = 'foo';
    o.producerInstanceId = 'foo';
    o.producerInstanceMetadata = buildUnnamed4();
    o.project = 'foo';
    o.serviceAttachmentIpAddressMap = buildUnnamed5();
    o.state = 'foo';
  }
  buildCounterConsumerPscConfig--;
  return o;
}

void checkConsumerPscConfig(api.ConsumerPscConfig o) {
  buildCounterConsumerPscConfig++;
  if (buildCounterConsumerPscConfig < 3) {
    unittest.expect(
      o.consumerInstanceProject!,
      unittest.equals('foo'),
    );
    unittest.expect(o.disableGlobalAccess!, unittest.isTrue);
    unittest.expect(
      o.ipVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.network!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.producerInstanceId!,
      unittest.equals('foo'),
    );
    checkUnnamed4(o.producerInstanceMetadata!);
    unittest.expect(
      o.project!,
      unittest.equals('foo'),
    );
    checkUnnamed5(o.serviceAttachmentIpAddressMap!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterConsumerPscConfig--;
}

core.Map<core.String, core.String> buildUnnamed6() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed6(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.int buildCounterConsumerPscConnection = 0;
api.ConsumerPscConnection buildConsumerPscConnection() {
  final o = api.ConsumerPscConnection();
  buildCounterConsumerPscConnection++;
  if (buildCounterConsumerPscConnection < 3) {
    o.error = buildGoogleRpcStatus();
    o.errorInfo = buildGoogleRpcErrorInfo();
    o.errorType = 'foo';
    o.forwardingRule = 'foo';
    o.gceOperation = 'foo';
    o.ip = 'foo';
    o.ipVersion = 'foo';
    o.network = 'foo';
    o.producerInstanceId = 'foo';
    o.producerInstanceMetadata = buildUnnamed6();
    o.project = 'foo';
    o.pscConnectionId = 'foo';
    o.selectedSubnetwork = 'foo';
    o.serviceAttachmentUri = 'foo';
    o.state = 'foo';
  }
  buildCounterConsumerPscConnection--;
  return o;
}

void checkConsumerPscConnection(api.ConsumerPscConnection o) {
  buildCounterConsumerPscConnection++;
  if (buildCounterConsumerPscConnection < 3) {
    checkGoogleRpcStatus(o.error!);
    checkGoogleRpcErrorInfo(o.errorInfo!);
    unittest.expect(
      o.errorType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.forwardingRule!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.gceOperation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ip!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ipVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.network!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.producerInstanceId!,
      unittest.equals('foo'),
    );
    checkUnnamed6(o.producerInstanceMetadata!);
    unittest.expect(
      o.project!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pscConnectionId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.selectedSubnetwork!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serviceAttachmentUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterConsumerPscConnection--;
}

core.int buildCounterEmpty = 0;
api.Empty buildEmpty() {
  final o = api.Empty();
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

core.int buildCounterExpr = 0;
api.Expr buildExpr() {
  final o = api.Expr();
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
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expression!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterExpr--;
}

core.int buildCounterFilter = 0;
api.Filter buildFilter() {
  final o = api.Filter();
  buildCounterFilter++;
  if (buildCounterFilter < 3) {
    o.destRange = 'foo';
    o.ipProtocol = 'foo';
    o.protocolVersion = 'foo';
    o.srcRange = 'foo';
  }
  buildCounterFilter--;
  return o;
}

void checkFilter(api.Filter o) {
  buildCounterFilter++;
  if (buildCounterFilter < 3) {
    unittest.expect(
      o.destRange!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ipProtocol!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.protocolVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.srcRange!,
      unittest.equals('foo'),
    );
  }
  buildCounterFilter--;
}

core.int buildCounterGoogleLongrunningCancelOperationRequest = 0;
api.GoogleLongrunningCancelOperationRequest
    buildGoogleLongrunningCancelOperationRequest() {
  final o = api.GoogleLongrunningCancelOperationRequest();
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

core.List<api.GoogleLongrunningOperation> buildUnnamed7() => [
      buildGoogleLongrunningOperation(),
      buildGoogleLongrunningOperation(),
    ];

void checkUnnamed7(core.List<api.GoogleLongrunningOperation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleLongrunningOperation(o[0]);
  checkGoogleLongrunningOperation(o[1]);
}

core.int buildCounterGoogleLongrunningListOperationsResponse = 0;
api.GoogleLongrunningListOperationsResponse
    buildGoogleLongrunningListOperationsResponse() {
  final o = api.GoogleLongrunningListOperationsResponse();
  buildCounterGoogleLongrunningListOperationsResponse++;
  if (buildCounterGoogleLongrunningListOperationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.operations = buildUnnamed7();
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
  return o;
}

void checkGoogleLongrunningListOperationsResponse(
    api.GoogleLongrunningListOperationsResponse o) {
  buildCounterGoogleLongrunningListOperationsResponse++;
  if (buildCounterGoogleLongrunningListOperationsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed7(o.operations!);
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
}

core.Map<core.String, core.Object?> buildUnnamed8() => {
      'x': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      'y': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    };

void checkUnnamed8(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o['x']!) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(
    casted1['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted1['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted1['string'],
    unittest.equals('foo'),
  );
  var casted2 = (o['y']!) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(
    casted2['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted2['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted2['string'],
    unittest.equals('foo'),
  );
}

core.Map<core.String, core.Object?> buildUnnamed9() => {
      'x': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      'y': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    };

void checkUnnamed9(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o['x']!) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(
    casted3['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted3['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted3['string'],
    unittest.equals('foo'),
  );
  var casted4 = (o['y']!) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(
    casted4['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted4['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted4['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterGoogleLongrunningOperation = 0;
api.GoogleLongrunningOperation buildGoogleLongrunningOperation() {
  final o = api.GoogleLongrunningOperation();
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    o.done = true;
    o.error = buildGoogleRpcStatus();
    o.metadata = buildUnnamed8();
    o.name = 'foo';
    o.response = buildUnnamed9();
  }
  buildCounterGoogleLongrunningOperation--;
  return o;
}

void checkGoogleLongrunningOperation(api.GoogleLongrunningOperation o) {
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkGoogleRpcStatus(o.error!);
    checkUnnamed8(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed9(o.response!);
  }
  buildCounterGoogleLongrunningOperation--;
}

core.Map<core.String, core.String> buildUnnamed10() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed10(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.int buildCounterGoogleRpcErrorInfo = 0;
api.GoogleRpcErrorInfo buildGoogleRpcErrorInfo() {
  final o = api.GoogleRpcErrorInfo();
  buildCounterGoogleRpcErrorInfo++;
  if (buildCounterGoogleRpcErrorInfo < 3) {
    o.domain = 'foo';
    o.metadata = buildUnnamed10();
    o.reason = 'foo';
  }
  buildCounterGoogleRpcErrorInfo--;
  return o;
}

void checkGoogleRpcErrorInfo(api.GoogleRpcErrorInfo o) {
  buildCounterGoogleRpcErrorInfo++;
  if (buildCounterGoogleRpcErrorInfo < 3) {
    unittest.expect(
      o.domain!,
      unittest.equals('foo'),
    );
    checkUnnamed10(o.metadata!);
    unittest.expect(
      o.reason!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleRpcErrorInfo--;
}

core.Map<core.String, core.Object?> buildUnnamed11() => {
      'x': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      'y': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    };

void checkUnnamed11(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o['x']!) as core.Map;
  unittest.expect(casted5, unittest.hasLength(3));
  unittest.expect(
    casted5['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted5['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted5['string'],
    unittest.equals('foo'),
  );
  var casted6 = (o['y']!) as core.Map;
  unittest.expect(casted6, unittest.hasLength(3));
  unittest.expect(
    casted6['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted6['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted6['string'],
    unittest.equals('foo'),
  );
}

core.List<core.Map<core.String, core.Object?>> buildUnnamed12() => [
      buildUnnamed11(),
      buildUnnamed11(),
    ];

void checkUnnamed12(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed11(o[0]);
  checkUnnamed11(o[1]);
}

core.int buildCounterGoogleRpcStatus = 0;
api.GoogleRpcStatus buildGoogleRpcStatus() {
  final o = api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed12();
    o.message = 'foo';
  }
  buildCounterGoogleRpcStatus--;
  return o;
}

void checkGoogleRpcStatus(api.GoogleRpcStatus o) {
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    unittest.expect(
      o.code!,
      unittest.equals(42),
    );
    checkUnnamed12(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleRpcStatus--;
}

core.Map<core.String, core.String> buildUnnamed13() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed13(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.int buildCounterGroup = 0;
api.Group buildGroup() {
  final o = api.Group();
  buildCounterGroup++;
  if (buildCounterGroup < 3) {
    o.autoAccept = buildAutoAccept();
    o.createTime = 'foo';
    o.description = 'foo';
    o.labels = buildUnnamed13();
    o.name = 'foo';
    o.routeTable = 'foo';
    o.state = 'foo';
    o.uid = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGroup--;
  return o;
}

void checkGroup(api.Group o) {
  buildCounterGroup++;
  if (buildCounterGroup < 3) {
    checkAutoAccept(o.autoAccept!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkUnnamed13(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.routeTable!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uid!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGroup--;
}

core.Map<core.String, core.String> buildUnnamed14() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed14(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.List<core.String> buildUnnamed15() => [
      'foo',
      'foo',
    ];

void checkUnnamed15(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.List<api.RoutingVPC> buildUnnamed16() => [
      buildRoutingVPC(),
      buildRoutingVPC(),
    ];

void checkUnnamed16(core.List<api.RoutingVPC> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRoutingVPC(o[0]);
  checkRoutingVPC(o[1]);
}

core.int buildCounterHub = 0;
api.Hub buildHub() {
  final o = api.Hub();
  buildCounterHub++;
  if (buildCounterHub < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.exportPsc = true;
    o.labels = buildUnnamed14();
    o.name = 'foo';
    o.policyMode = 'foo';
    o.presetTopology = 'foo';
    o.routeTables = buildUnnamed15();
    o.routingVpcs = buildUnnamed16();
    o.spokeSummary = buildSpokeSummary();
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
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(o.exportPsc!, unittest.isTrue);
    checkUnnamed14(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.policyMode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.presetTopology!,
      unittest.equals('foo'),
    );
    checkUnnamed15(o.routeTables!);
    checkUnnamed16(o.routingVpcs!);
    checkSpokeSummary(o.spokeSummary!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uniqueId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterHub--;
}

core.int buildCounterHubStatusEntry = 0;
api.HubStatusEntry buildHubStatusEntry() {
  final o = api.HubStatusEntry();
  buildCounterHubStatusEntry++;
  if (buildCounterHubStatusEntry < 3) {
    o.count = 42;
    o.groupBy = 'foo';
    o.pscPropagationStatus = buildPscPropagationStatus();
  }
  buildCounterHubStatusEntry--;
  return o;
}

void checkHubStatusEntry(api.HubStatusEntry o) {
  buildCounterHubStatusEntry++;
  if (buildCounterHubStatusEntry < 3) {
    unittest.expect(
      o.count!,
      unittest.equals(42),
    );
    unittest.expect(
      o.groupBy!,
      unittest.equals('foo'),
    );
    checkPscPropagationStatus(o.pscPropagationStatus!);
  }
  buildCounterHubStatusEntry--;
}

core.int buildCounterInterconnectAttachment = 0;
api.InterconnectAttachment buildInterconnectAttachment() {
  final o = api.InterconnectAttachment();
  buildCounterInterconnectAttachment++;
  if (buildCounterInterconnectAttachment < 3) {
    o.region = 'foo';
  }
  buildCounterInterconnectAttachment--;
  return o;
}

void checkInterconnectAttachment(api.InterconnectAttachment o) {
  buildCounterInterconnectAttachment++;
  if (buildCounterInterconnectAttachment < 3) {
    unittest.expect(
      o.region!,
      unittest.equals('foo'),
    );
  }
  buildCounterInterconnectAttachment--;
}

core.Map<core.String, core.String> buildUnnamed17() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed17(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.List<core.String> buildUnnamed18() => [
      'foo',
      'foo',
    ];

void checkUnnamed18(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.List<core.String> buildUnnamed19() => [
      'foo',
      'foo',
    ];

void checkUnnamed19(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.List<core.String> buildUnnamed20() => [
      'foo',
      'foo',
    ];

void checkUnnamed20(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterInternalRange = 0;
api.InternalRange buildInternalRange() {
  final o = api.InternalRange();
  buildCounterInternalRange++;
  if (buildCounterInternalRange < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.ipCidrRange = 'foo';
    o.labels = buildUnnamed17();
    o.migration = buildMigration();
    o.name = 'foo';
    o.network = 'foo';
    o.overlaps = buildUnnamed18();
    o.peering = 'foo';
    o.prefixLength = 42;
    o.targetCidrRange = buildUnnamed19();
    o.updateTime = 'foo';
    o.usage = 'foo';
    o.users = buildUnnamed20();
  }
  buildCounterInternalRange--;
  return o;
}

void checkInternalRange(api.InternalRange o) {
  buildCounterInternalRange++;
  if (buildCounterInternalRange < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ipCidrRange!,
      unittest.equals('foo'),
    );
    checkUnnamed17(o.labels!);
    checkMigration(o.migration!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.network!,
      unittest.equals('foo'),
    );
    checkUnnamed18(o.overlaps!);
    unittest.expect(
      o.peering!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.prefixLength!,
      unittest.equals(42),
    );
    checkUnnamed19(o.targetCidrRange!);
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.usage!,
      unittest.equals('foo'),
    );
    checkUnnamed20(o.users!);
  }
  buildCounterInternalRange--;
}

core.List<core.String> buildUnnamed21() => [
      'foo',
      'foo',
    ];

void checkUnnamed21(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.List<core.String> buildUnnamed22() => [
      'foo',
      'foo',
    ];

void checkUnnamed22(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterLinkedInterconnectAttachments = 0;
api.LinkedInterconnectAttachments buildLinkedInterconnectAttachments() {
  final o = api.LinkedInterconnectAttachments();
  buildCounterLinkedInterconnectAttachments++;
  if (buildCounterLinkedInterconnectAttachments < 3) {
    o.includeImportRanges = buildUnnamed21();
    o.siteToSiteDataTransfer = true;
    o.uris = buildUnnamed22();
    o.vpcNetwork = 'foo';
  }
  buildCounterLinkedInterconnectAttachments--;
  return o;
}

void checkLinkedInterconnectAttachments(api.LinkedInterconnectAttachments o) {
  buildCounterLinkedInterconnectAttachments++;
  if (buildCounterLinkedInterconnectAttachments < 3) {
    checkUnnamed21(o.includeImportRanges!);
    unittest.expect(o.siteToSiteDataTransfer!, unittest.isTrue);
    checkUnnamed22(o.uris!);
    unittest.expect(
      o.vpcNetwork!,
      unittest.equals('foo'),
    );
  }
  buildCounterLinkedInterconnectAttachments--;
}

core.List<core.String> buildUnnamed23() => [
      'foo',
      'foo',
    ];

void checkUnnamed23(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.List<core.String> buildUnnamed24() => [
      'foo',
      'foo',
    ];

void checkUnnamed24(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.List<core.String> buildUnnamed25() => [
      'foo',
      'foo',
    ];

void checkUnnamed25(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterLinkedProducerVpcNetwork = 0;
api.LinkedProducerVpcNetwork buildLinkedProducerVpcNetwork() {
  final o = api.LinkedProducerVpcNetwork();
  buildCounterLinkedProducerVpcNetwork++;
  if (buildCounterLinkedProducerVpcNetwork < 3) {
    o.excludeExportRanges = buildUnnamed23();
    o.includeExportRanges = buildUnnamed24();
    o.network = 'foo';
    o.peering = 'foo';
    o.producerNetwork = 'foo';
    o.proposedIncludeExportRanges = buildUnnamed25();
    o.serviceConsumerVpcSpoke = 'foo';
  }
  buildCounterLinkedProducerVpcNetwork--;
  return o;
}

void checkLinkedProducerVpcNetwork(api.LinkedProducerVpcNetwork o) {
  buildCounterLinkedProducerVpcNetwork++;
  if (buildCounterLinkedProducerVpcNetwork < 3) {
    checkUnnamed23(o.excludeExportRanges!);
    checkUnnamed24(o.includeExportRanges!);
    unittest.expect(
      o.network!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.peering!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.producerNetwork!,
      unittest.equals('foo'),
    );
    checkUnnamed25(o.proposedIncludeExportRanges!);
    unittest.expect(
      o.serviceConsumerVpcSpoke!,
      unittest.equals('foo'),
    );
  }
  buildCounterLinkedProducerVpcNetwork--;
}

core.List<core.String> buildUnnamed26() => [
      'foo',
      'foo',
    ];

void checkUnnamed26(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.List<api.RouterApplianceInstance> buildUnnamed27() => [
      buildRouterApplianceInstance(),
      buildRouterApplianceInstance(),
    ];

void checkUnnamed27(core.List<api.RouterApplianceInstance> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRouterApplianceInstance(o[0]);
  checkRouterApplianceInstance(o[1]);
}

core.int buildCounterLinkedRouterApplianceInstances = 0;
api.LinkedRouterApplianceInstances buildLinkedRouterApplianceInstances() {
  final o = api.LinkedRouterApplianceInstances();
  buildCounterLinkedRouterApplianceInstances++;
  if (buildCounterLinkedRouterApplianceInstances < 3) {
    o.includeImportRanges = buildUnnamed26();
    o.instances = buildUnnamed27();
    o.siteToSiteDataTransfer = true;
    o.vpcNetwork = 'foo';
  }
  buildCounterLinkedRouterApplianceInstances--;
  return o;
}

void checkLinkedRouterApplianceInstances(api.LinkedRouterApplianceInstances o) {
  buildCounterLinkedRouterApplianceInstances++;
  if (buildCounterLinkedRouterApplianceInstances < 3) {
    checkUnnamed26(o.includeImportRanges!);
    checkUnnamed27(o.instances!);
    unittest.expect(o.siteToSiteDataTransfer!, unittest.isTrue);
    unittest.expect(
      o.vpcNetwork!,
      unittest.equals('foo'),
    );
  }
  buildCounterLinkedRouterApplianceInstances--;
}

core.List<core.String> buildUnnamed28() => [
      'foo',
      'foo',
    ];

void checkUnnamed28(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.List<core.String> buildUnnamed29() => [
      'foo',
      'foo',
    ];

void checkUnnamed29(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.List<core.String> buildUnnamed30() => [
      'foo',
      'foo',
    ];

void checkUnnamed30(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.List<core.String> buildUnnamed31() => [
      'foo',
      'foo',
    ];

void checkUnnamed31(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterLinkedVpcNetwork = 0;
api.LinkedVpcNetwork buildLinkedVpcNetwork() {
  final o = api.LinkedVpcNetwork();
  buildCounterLinkedVpcNetwork++;
  if (buildCounterLinkedVpcNetwork < 3) {
    o.excludeExportRanges = buildUnnamed28();
    o.includeExportRanges = buildUnnamed29();
    o.producerVpcSpokes = buildUnnamed30();
    o.proposedIncludeExportRanges = buildUnnamed31();
    o.uri = 'foo';
  }
  buildCounterLinkedVpcNetwork--;
  return o;
}

void checkLinkedVpcNetwork(api.LinkedVpcNetwork o) {
  buildCounterLinkedVpcNetwork++;
  if (buildCounterLinkedVpcNetwork < 3) {
    checkUnnamed28(o.excludeExportRanges!);
    checkUnnamed29(o.includeExportRanges!);
    checkUnnamed30(o.producerVpcSpokes!);
    checkUnnamed31(o.proposedIncludeExportRanges!);
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterLinkedVpcNetwork--;
}

core.List<core.String> buildUnnamed32() => [
      'foo',
      'foo',
    ];

void checkUnnamed32(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.List<core.String> buildUnnamed33() => [
      'foo',
      'foo',
    ];

void checkUnnamed33(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterLinkedVpnTunnels = 0;
api.LinkedVpnTunnels buildLinkedVpnTunnels() {
  final o = api.LinkedVpnTunnels();
  buildCounterLinkedVpnTunnels++;
  if (buildCounterLinkedVpnTunnels < 3) {
    o.includeImportRanges = buildUnnamed32();
    o.siteToSiteDataTransfer = true;
    o.uris = buildUnnamed33();
    o.vpcNetwork = 'foo';
  }
  buildCounterLinkedVpnTunnels--;
  return o;
}

void checkLinkedVpnTunnels(api.LinkedVpnTunnels o) {
  buildCounterLinkedVpnTunnels++;
  if (buildCounterLinkedVpnTunnels < 3) {
    checkUnnamed32(o.includeImportRanges!);
    unittest.expect(o.siteToSiteDataTransfer!, unittest.isTrue);
    checkUnnamed33(o.uris!);
    unittest.expect(
      o.vpcNetwork!,
      unittest.equals('foo'),
    );
  }
  buildCounterLinkedVpnTunnels--;
}

core.List<api.Group> buildUnnamed34() => [
      buildGroup(),
      buildGroup(),
    ];

void checkUnnamed34(core.List<api.Group> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGroup(o[0]);
  checkGroup(o[1]);
}

core.List<core.String> buildUnnamed35() => [
      'foo',
      'foo',
    ];

void checkUnnamed35(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterListGroupsResponse = 0;
api.ListGroupsResponse buildListGroupsResponse() {
  final o = api.ListGroupsResponse();
  buildCounterListGroupsResponse++;
  if (buildCounterListGroupsResponse < 3) {
    o.groups = buildUnnamed34();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed35();
  }
  buildCounterListGroupsResponse--;
  return o;
}

void checkListGroupsResponse(api.ListGroupsResponse o) {
  buildCounterListGroupsResponse++;
  if (buildCounterListGroupsResponse < 3) {
    checkUnnamed34(o.groups!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed35(o.unreachable!);
  }
  buildCounterListGroupsResponse--;
}

core.List<api.Spoke> buildUnnamed36() => [
      buildSpoke(),
      buildSpoke(),
    ];

void checkUnnamed36(core.List<api.Spoke> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSpoke(o[0]);
  checkSpoke(o[1]);
}

core.List<core.String> buildUnnamed37() => [
      'foo',
      'foo',
    ];

void checkUnnamed37(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterListHubSpokesResponse = 0;
api.ListHubSpokesResponse buildListHubSpokesResponse() {
  final o = api.ListHubSpokesResponse();
  buildCounterListHubSpokesResponse++;
  if (buildCounterListHubSpokesResponse < 3) {
    o.nextPageToken = 'foo';
    o.spokes = buildUnnamed36();
    o.unreachable = buildUnnamed37();
  }
  buildCounterListHubSpokesResponse--;
  return o;
}

void checkListHubSpokesResponse(api.ListHubSpokesResponse o) {
  buildCounterListHubSpokesResponse++;
  if (buildCounterListHubSpokesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed36(o.spokes!);
    checkUnnamed37(o.unreachable!);
  }
  buildCounterListHubSpokesResponse--;
}

core.List<api.Hub> buildUnnamed38() => [
      buildHub(),
      buildHub(),
    ];

void checkUnnamed38(core.List<api.Hub> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHub(o[0]);
  checkHub(o[1]);
}

core.List<core.String> buildUnnamed39() => [
      'foo',
      'foo',
    ];

void checkUnnamed39(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterListHubsResponse = 0;
api.ListHubsResponse buildListHubsResponse() {
  final o = api.ListHubsResponse();
  buildCounterListHubsResponse++;
  if (buildCounterListHubsResponse < 3) {
    o.hubs = buildUnnamed38();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed39();
  }
  buildCounterListHubsResponse--;
  return o;
}

void checkListHubsResponse(api.ListHubsResponse o) {
  buildCounterListHubsResponse++;
  if (buildCounterListHubsResponse < 3) {
    checkUnnamed38(o.hubs!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed39(o.unreachable!);
  }
  buildCounterListHubsResponse--;
}

core.List<api.InternalRange> buildUnnamed40() => [
      buildInternalRange(),
      buildInternalRange(),
    ];

void checkUnnamed40(core.List<api.InternalRange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInternalRange(o[0]);
  checkInternalRange(o[1]);
}

core.List<core.String> buildUnnamed41() => [
      'foo',
      'foo',
    ];

void checkUnnamed41(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterListInternalRangesResponse = 0;
api.ListInternalRangesResponse buildListInternalRangesResponse() {
  final o = api.ListInternalRangesResponse();
  buildCounterListInternalRangesResponse++;
  if (buildCounterListInternalRangesResponse < 3) {
    o.internalRanges = buildUnnamed40();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed41();
  }
  buildCounterListInternalRangesResponse--;
  return o;
}

void checkListInternalRangesResponse(api.ListInternalRangesResponse o) {
  buildCounterListInternalRangesResponse++;
  if (buildCounterListInternalRangesResponse < 3) {
    checkUnnamed40(o.internalRanges!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed41(o.unreachable!);
  }
  buildCounterListInternalRangesResponse--;
}

core.List<api.Location> buildUnnamed42() => [
      buildLocation(),
      buildLocation(),
    ];

void checkUnnamed42(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  final o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed42();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed42(o.locations!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListLocationsResponse--;
}

core.List<api.PolicyBasedRoute> buildUnnamed43() => [
      buildPolicyBasedRoute(),
      buildPolicyBasedRoute(),
    ];

void checkUnnamed43(core.List<api.PolicyBasedRoute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPolicyBasedRoute(o[0]);
  checkPolicyBasedRoute(o[1]);
}

core.List<core.String> buildUnnamed44() => [
      'foo',
      'foo',
    ];

void checkUnnamed44(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterListPolicyBasedRoutesResponse = 0;
api.ListPolicyBasedRoutesResponse buildListPolicyBasedRoutesResponse() {
  final o = api.ListPolicyBasedRoutesResponse();
  buildCounterListPolicyBasedRoutesResponse++;
  if (buildCounterListPolicyBasedRoutesResponse < 3) {
    o.nextPageToken = 'foo';
    o.policyBasedRoutes = buildUnnamed43();
    o.unreachable = buildUnnamed44();
  }
  buildCounterListPolicyBasedRoutesResponse--;
  return o;
}

void checkListPolicyBasedRoutesResponse(api.ListPolicyBasedRoutesResponse o) {
  buildCounterListPolicyBasedRoutesResponse++;
  if (buildCounterListPolicyBasedRoutesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed43(o.policyBasedRoutes!);
    checkUnnamed44(o.unreachable!);
  }
  buildCounterListPolicyBasedRoutesResponse--;
}

core.List<api.RegionalEndpoint> buildUnnamed45() => [
      buildRegionalEndpoint(),
      buildRegionalEndpoint(),
    ];

void checkUnnamed45(core.List<api.RegionalEndpoint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRegionalEndpoint(o[0]);
  checkRegionalEndpoint(o[1]);
}

core.List<core.String> buildUnnamed46() => [
      'foo',
      'foo',
    ];

void checkUnnamed46(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterListRegionalEndpointsResponse = 0;
api.ListRegionalEndpointsResponse buildListRegionalEndpointsResponse() {
  final o = api.ListRegionalEndpointsResponse();
  buildCounterListRegionalEndpointsResponse++;
  if (buildCounterListRegionalEndpointsResponse < 3) {
    o.nextPageToken = 'foo';
    o.regionalEndpoints = buildUnnamed45();
    o.unreachable = buildUnnamed46();
  }
  buildCounterListRegionalEndpointsResponse--;
  return o;
}

void checkListRegionalEndpointsResponse(api.ListRegionalEndpointsResponse o) {
  buildCounterListRegionalEndpointsResponse++;
  if (buildCounterListRegionalEndpointsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed45(o.regionalEndpoints!);
    checkUnnamed46(o.unreachable!);
  }
  buildCounterListRegionalEndpointsResponse--;
}

core.List<api.RouteTable> buildUnnamed47() => [
      buildRouteTable(),
      buildRouteTable(),
    ];

void checkUnnamed47(core.List<api.RouteTable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRouteTable(o[0]);
  checkRouteTable(o[1]);
}

core.List<core.String> buildUnnamed48() => [
      'foo',
      'foo',
    ];

void checkUnnamed48(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterListRouteTablesResponse = 0;
api.ListRouteTablesResponse buildListRouteTablesResponse() {
  final o = api.ListRouteTablesResponse();
  buildCounterListRouteTablesResponse++;
  if (buildCounterListRouteTablesResponse < 3) {
    o.nextPageToken = 'foo';
    o.routeTables = buildUnnamed47();
    o.unreachable = buildUnnamed48();
  }
  buildCounterListRouteTablesResponse--;
  return o;
}

void checkListRouteTablesResponse(api.ListRouteTablesResponse o) {
  buildCounterListRouteTablesResponse++;
  if (buildCounterListRouteTablesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed47(o.routeTables!);
    checkUnnamed48(o.unreachable!);
  }
  buildCounterListRouteTablesResponse--;
}

core.List<api.Route> buildUnnamed49() => [
      buildRoute(),
      buildRoute(),
    ];

void checkUnnamed49(core.List<api.Route> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRoute(o[0]);
  checkRoute(o[1]);
}

core.List<core.String> buildUnnamed50() => [
      'foo',
      'foo',
    ];

void checkUnnamed50(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterListRoutesResponse = 0;
api.ListRoutesResponse buildListRoutesResponse() {
  final o = api.ListRoutesResponse();
  buildCounterListRoutesResponse++;
  if (buildCounterListRoutesResponse < 3) {
    o.nextPageToken = 'foo';
    o.routes = buildUnnamed49();
    o.unreachable = buildUnnamed50();
  }
  buildCounterListRoutesResponse--;
  return o;
}

void checkListRoutesResponse(api.ListRoutesResponse o) {
  buildCounterListRoutesResponse++;
  if (buildCounterListRoutesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed49(o.routes!);
    checkUnnamed50(o.unreachable!);
  }
  buildCounterListRoutesResponse--;
}

core.List<api.ServiceClass> buildUnnamed51() => [
      buildServiceClass(),
      buildServiceClass(),
    ];

void checkUnnamed51(core.List<api.ServiceClass> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkServiceClass(o[0]);
  checkServiceClass(o[1]);
}

core.List<core.String> buildUnnamed52() => [
      'foo',
      'foo',
    ];

void checkUnnamed52(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterListServiceClassesResponse = 0;
api.ListServiceClassesResponse buildListServiceClassesResponse() {
  final o = api.ListServiceClassesResponse();
  buildCounterListServiceClassesResponse++;
  if (buildCounterListServiceClassesResponse < 3) {
    o.nextPageToken = 'foo';
    o.serviceClasses = buildUnnamed51();
    o.unreachable = buildUnnamed52();
  }
  buildCounterListServiceClassesResponse--;
  return o;
}

void checkListServiceClassesResponse(api.ListServiceClassesResponse o) {
  buildCounterListServiceClassesResponse++;
  if (buildCounterListServiceClassesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed51(o.serviceClasses!);
    checkUnnamed52(o.unreachable!);
  }
  buildCounterListServiceClassesResponse--;
}

core.List<api.ServiceConnectionMap> buildUnnamed53() => [
      buildServiceConnectionMap(),
      buildServiceConnectionMap(),
    ];

void checkUnnamed53(core.List<api.ServiceConnectionMap> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkServiceConnectionMap(o[0]);
  checkServiceConnectionMap(o[1]);
}

core.List<core.String> buildUnnamed54() => [
      'foo',
      'foo',
    ];

void checkUnnamed54(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterListServiceConnectionMapsResponse = 0;
api.ListServiceConnectionMapsResponse buildListServiceConnectionMapsResponse() {
  final o = api.ListServiceConnectionMapsResponse();
  buildCounterListServiceConnectionMapsResponse++;
  if (buildCounterListServiceConnectionMapsResponse < 3) {
    o.nextPageToken = 'foo';
    o.serviceConnectionMaps = buildUnnamed53();
    o.unreachable = buildUnnamed54();
  }
  buildCounterListServiceConnectionMapsResponse--;
  return o;
}

void checkListServiceConnectionMapsResponse(
    api.ListServiceConnectionMapsResponse o) {
  buildCounterListServiceConnectionMapsResponse++;
  if (buildCounterListServiceConnectionMapsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed53(o.serviceConnectionMaps!);
    checkUnnamed54(o.unreachable!);
  }
  buildCounterListServiceConnectionMapsResponse--;
}

core.List<api.ServiceConnectionPolicy> buildUnnamed55() => [
      buildServiceConnectionPolicy(),
      buildServiceConnectionPolicy(),
    ];

void checkUnnamed55(core.List<api.ServiceConnectionPolicy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkServiceConnectionPolicy(o[0]);
  checkServiceConnectionPolicy(o[1]);
}

core.List<core.String> buildUnnamed56() => [
      'foo',
      'foo',
    ];

void checkUnnamed56(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterListServiceConnectionPoliciesResponse = 0;
api.ListServiceConnectionPoliciesResponse
    buildListServiceConnectionPoliciesResponse() {
  final o = api.ListServiceConnectionPoliciesResponse();
  buildCounterListServiceConnectionPoliciesResponse++;
  if (buildCounterListServiceConnectionPoliciesResponse < 3) {
    o.nextPageToken = 'foo';
    o.serviceConnectionPolicies = buildUnnamed55();
    o.unreachable = buildUnnamed56();
  }
  buildCounterListServiceConnectionPoliciesResponse--;
  return o;
}

void checkListServiceConnectionPoliciesResponse(
    api.ListServiceConnectionPoliciesResponse o) {
  buildCounterListServiceConnectionPoliciesResponse++;
  if (buildCounterListServiceConnectionPoliciesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed55(o.serviceConnectionPolicies!);
    checkUnnamed56(o.unreachable!);
  }
  buildCounterListServiceConnectionPoliciesResponse--;
}

core.List<api.ServiceConnectionToken> buildUnnamed57() => [
      buildServiceConnectionToken(),
      buildServiceConnectionToken(),
    ];

void checkUnnamed57(core.List<api.ServiceConnectionToken> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkServiceConnectionToken(o[0]);
  checkServiceConnectionToken(o[1]);
}

core.List<core.String> buildUnnamed58() => [
      'foo',
      'foo',
    ];

void checkUnnamed58(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterListServiceConnectionTokensResponse = 0;
api.ListServiceConnectionTokensResponse
    buildListServiceConnectionTokensResponse() {
  final o = api.ListServiceConnectionTokensResponse();
  buildCounterListServiceConnectionTokensResponse++;
  if (buildCounterListServiceConnectionTokensResponse < 3) {
    o.nextPageToken = 'foo';
    o.serviceConnectionTokens = buildUnnamed57();
    o.unreachable = buildUnnamed58();
  }
  buildCounterListServiceConnectionTokensResponse--;
  return o;
}

void checkListServiceConnectionTokensResponse(
    api.ListServiceConnectionTokensResponse o) {
  buildCounterListServiceConnectionTokensResponse++;
  if (buildCounterListServiceConnectionTokensResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed57(o.serviceConnectionTokens!);
    checkUnnamed58(o.unreachable!);
  }
  buildCounterListServiceConnectionTokensResponse--;
}

core.List<api.Spoke> buildUnnamed59() => [
      buildSpoke(),
      buildSpoke(),
    ];

void checkUnnamed59(core.List<api.Spoke> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSpoke(o[0]);
  checkSpoke(o[1]);
}

core.List<core.String> buildUnnamed60() => [
      'foo',
      'foo',
    ];

void checkUnnamed60(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterListSpokesResponse = 0;
api.ListSpokesResponse buildListSpokesResponse() {
  final o = api.ListSpokesResponse();
  buildCounterListSpokesResponse++;
  if (buildCounterListSpokesResponse < 3) {
    o.nextPageToken = 'foo';
    o.spokes = buildUnnamed59();
    o.unreachable = buildUnnamed60();
  }
  buildCounterListSpokesResponse--;
  return o;
}

void checkListSpokesResponse(api.ListSpokesResponse o) {
  buildCounterListSpokesResponse++;
  if (buildCounterListSpokesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed59(o.spokes!);
    checkUnnamed60(o.unreachable!);
  }
  buildCounterListSpokesResponse--;
}

core.Map<core.String, core.String> buildUnnamed61() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed61(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.Map<core.String, core.Object?> buildUnnamed62() => {
      'x': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      'y': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    };

void checkUnnamed62(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted7 = (o['x']!) as core.Map;
  unittest.expect(casted7, unittest.hasLength(3));
  unittest.expect(
    casted7['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted7['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted7['string'],
    unittest.equals('foo'),
  );
  var casted8 = (o['y']!) as core.Map;
  unittest.expect(casted8, unittest.hasLength(3));
  unittest.expect(
    casted8['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted8['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted8['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterLocation = 0;
api.Location buildLocation() {
  final o = api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.displayName = 'foo';
    o.labels = buildUnnamed61();
    o.locationId = 'foo';
    o.metadata = buildUnnamed62();
    o.name = 'foo';
  }
  buildCounterLocation--;
  return o;
}

void checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkUnnamed61(o.labels!);
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
    checkUnnamed62(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterLocation--;
}

core.int buildCounterMigration = 0;
api.Migration buildMigration() {
  final o = api.Migration();
  buildCounterMigration++;
  if (buildCounterMigration < 3) {
    o.source = 'foo';
    o.target = 'foo';
  }
  buildCounterMigration--;
  return o;
}

void checkMigration(api.Migration o) {
  buildCounterMigration++;
  if (buildCounterMigration < 3) {
    unittest.expect(
      o.source!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.target!,
      unittest.equals('foo'),
    );
  }
  buildCounterMigration--;
}

core.int buildCounterNextHopInterconnectAttachment = 0;
api.NextHopInterconnectAttachment buildNextHopInterconnectAttachment() {
  final o = api.NextHopInterconnectAttachment();
  buildCounterNextHopInterconnectAttachment++;
  if (buildCounterNextHopInterconnectAttachment < 3) {
    o.siteToSiteDataTransfer = true;
    o.uri = 'foo';
    o.vpcNetwork = 'foo';
  }
  buildCounterNextHopInterconnectAttachment--;
  return o;
}

void checkNextHopInterconnectAttachment(api.NextHopInterconnectAttachment o) {
  buildCounterNextHopInterconnectAttachment++;
  if (buildCounterNextHopInterconnectAttachment < 3) {
    unittest.expect(o.siteToSiteDataTransfer!, unittest.isTrue);
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.vpcNetwork!,
      unittest.equals('foo'),
    );
  }
  buildCounterNextHopInterconnectAttachment--;
}

core.int buildCounterNextHopRouterApplianceInstance = 0;
api.NextHopRouterApplianceInstance buildNextHopRouterApplianceInstance() {
  final o = api.NextHopRouterApplianceInstance();
  buildCounterNextHopRouterApplianceInstance++;
  if (buildCounterNextHopRouterApplianceInstance < 3) {
    o.siteToSiteDataTransfer = true;
    o.uri = 'foo';
    o.vpcNetwork = 'foo';
  }
  buildCounterNextHopRouterApplianceInstance--;
  return o;
}

void checkNextHopRouterApplianceInstance(api.NextHopRouterApplianceInstance o) {
  buildCounterNextHopRouterApplianceInstance++;
  if (buildCounterNextHopRouterApplianceInstance < 3) {
    unittest.expect(o.siteToSiteDataTransfer!, unittest.isTrue);
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.vpcNetwork!,
      unittest.equals('foo'),
    );
  }
  buildCounterNextHopRouterApplianceInstance--;
}

core.int buildCounterNextHopVPNTunnel = 0;
api.NextHopVPNTunnel buildNextHopVPNTunnel() {
  final o = api.NextHopVPNTunnel();
  buildCounterNextHopVPNTunnel++;
  if (buildCounterNextHopVPNTunnel < 3) {
    o.siteToSiteDataTransfer = true;
    o.uri = 'foo';
    o.vpcNetwork = 'foo';
  }
  buildCounterNextHopVPNTunnel--;
  return o;
}

void checkNextHopVPNTunnel(api.NextHopVPNTunnel o) {
  buildCounterNextHopVPNTunnel++;
  if (buildCounterNextHopVPNTunnel < 3) {
    unittest.expect(o.siteToSiteDataTransfer!, unittest.isTrue);
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.vpcNetwork!,
      unittest.equals('foo'),
    );
  }
  buildCounterNextHopVPNTunnel--;
}

core.int buildCounterNextHopVpcNetwork = 0;
api.NextHopVpcNetwork buildNextHopVpcNetwork() {
  final o = api.NextHopVpcNetwork();
  buildCounterNextHopVpcNetwork++;
  if (buildCounterNextHopVpcNetwork < 3) {
    o.uri = 'foo';
  }
  buildCounterNextHopVpcNetwork--;
  return o;
}

void checkNextHopVpcNetwork(api.NextHopVpcNetwork o) {
  buildCounterNextHopVpcNetwork++;
  if (buildCounterNextHopVpcNetwork < 3) {
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterNextHopVpcNetwork--;
}

core.List<api.AuditConfig> buildUnnamed63() => [
      buildAuditConfig(),
      buildAuditConfig(),
    ];

void checkUnnamed63(core.List<api.AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditConfig(o[0]);
  checkAuditConfig(o[1]);
}

core.List<api.Binding> buildUnnamed64() => [
      buildBinding(),
      buildBinding(),
    ];

void checkUnnamed64(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  final o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.auditConfigs = buildUnnamed63();
    o.bindings = buildUnnamed64();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed63(o.auditConfigs!);
    checkUnnamed64(o.bindings!);
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals(42),
    );
  }
  buildCounterPolicy--;
}

core.Map<core.String, core.String> buildUnnamed65() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed65(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.List<api.Warnings> buildUnnamed66() => [
      buildWarnings(),
      buildWarnings(),
    ];

void checkUnnamed66(core.List<api.Warnings> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWarnings(o[0]);
  checkWarnings(o[1]);
}

core.int buildCounterPolicyBasedRoute = 0;
api.PolicyBasedRoute buildPolicyBasedRoute() {
  final o = api.PolicyBasedRoute();
  buildCounterPolicyBasedRoute++;
  if (buildCounterPolicyBasedRoute < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.filter = buildFilter();
    o.interconnectAttachment = buildInterconnectAttachment();
    o.kind = 'foo';
    o.labels = buildUnnamed65();
    o.name = 'foo';
    o.network = 'foo';
    o.nextHopIlbIp = 'foo';
    o.nextHopOtherRoutes = 'foo';
    o.priority = 42;
    o.selfLink = 'foo';
    o.updateTime = 'foo';
    o.virtualMachine = buildVirtualMachine();
    o.warnings = buildUnnamed66();
  }
  buildCounterPolicyBasedRoute--;
  return o;
}

void checkPolicyBasedRoute(api.PolicyBasedRoute o) {
  buildCounterPolicyBasedRoute++;
  if (buildCounterPolicyBasedRoute < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkFilter(o.filter!);
    checkInterconnectAttachment(o.interconnectAttachment!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed65(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.network!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextHopIlbIp!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextHopOtherRoutes!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.priority!,
      unittest.equals(42),
    );
    unittest.expect(
      o.selfLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
    checkVirtualMachine(o.virtualMachine!);
    checkUnnamed66(o.warnings!);
  }
  buildCounterPolicyBasedRoute--;
}

core.int buildCounterProducerPscConfig = 0;
api.ProducerPscConfig buildProducerPscConfig() {
  final o = api.ProducerPscConfig();
  buildCounterProducerPscConfig++;
  if (buildCounterProducerPscConfig < 3) {
    o.serviceAttachmentUri = 'foo';
  }
  buildCounterProducerPscConfig--;
  return o;
}

void checkProducerPscConfig(api.ProducerPscConfig o) {
  buildCounterProducerPscConfig++;
  if (buildCounterProducerPscConfig < 3) {
    unittest.expect(
      o.serviceAttachmentUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterProducerPscConfig--;
}

core.List<core.String> buildUnnamed67() => [
      'foo',
      'foo',
    ];

void checkUnnamed67(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.List<core.String> buildUnnamed68() => [
      'foo',
      'foo',
    ];

void checkUnnamed68(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterPscConfig = 0;
api.PscConfig buildPscConfig() {
  final o = api.PscConfig();
  buildCounterPscConfig++;
  if (buildCounterPscConfig < 3) {
    o.allowedGoogleProducersResourceHierarchyLevel = buildUnnamed67();
    o.limit = 'foo';
    o.producerInstanceLocation = 'foo';
    o.subnetworks = buildUnnamed68();
  }
  buildCounterPscConfig--;
  return o;
}

void checkPscConfig(api.PscConfig o) {
  buildCounterPscConfig++;
  if (buildCounterPscConfig < 3) {
    checkUnnamed67(o.allowedGoogleProducersResourceHierarchyLevel!);
    unittest.expect(
      o.limit!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.producerInstanceLocation!,
      unittest.equals('foo'),
    );
    checkUnnamed68(o.subnetworks!);
  }
  buildCounterPscConfig--;
}

core.Map<core.String, core.String> buildUnnamed69() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed69(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.int buildCounterPscConnection = 0;
api.PscConnection buildPscConnection() {
  final o = api.PscConnection();
  buildCounterPscConnection++;
  if (buildCounterPscConnection < 3) {
    o.consumerAddress = 'foo';
    o.consumerForwardingRule = 'foo';
    o.consumerTargetProject = 'foo';
    o.error = buildGoogleRpcStatus();
    o.errorInfo = buildGoogleRpcErrorInfo();
    o.errorType = 'foo';
    o.gceOperation = 'foo';
    o.ipVersion = 'foo';
    o.producerInstanceId = 'foo';
    o.producerInstanceMetadata = buildUnnamed69();
    o.pscConnectionId = 'foo';
    o.selectedSubnetwork = 'foo';
    o.serviceClass = 'foo';
    o.state = 'foo';
  }
  buildCounterPscConnection--;
  return o;
}

void checkPscConnection(api.PscConnection o) {
  buildCounterPscConnection++;
  if (buildCounterPscConnection < 3) {
    unittest.expect(
      o.consumerAddress!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.consumerForwardingRule!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.consumerTargetProject!,
      unittest.equals('foo'),
    );
    checkGoogleRpcStatus(o.error!);
    checkGoogleRpcErrorInfo(o.errorInfo!);
    unittest.expect(
      o.errorType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.gceOperation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ipVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.producerInstanceId!,
      unittest.equals('foo'),
    );
    checkUnnamed69(o.producerInstanceMetadata!);
    unittest.expect(
      o.pscConnectionId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.selectedSubnetwork!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serviceClass!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterPscConnection--;
}

core.int buildCounterPscPropagationStatus = 0;
api.PscPropagationStatus buildPscPropagationStatus() {
  final o = api.PscPropagationStatus();
  buildCounterPscPropagationStatus++;
  if (buildCounterPscPropagationStatus < 3) {
    o.code = 'foo';
    o.message = 'foo';
    o.sourceForwardingRule = 'foo';
    o.sourceGroup = 'foo';
    o.sourceSpoke = 'foo';
    o.targetGroup = 'foo';
    o.targetSpoke = 'foo';
  }
  buildCounterPscPropagationStatus--;
  return o;
}

void checkPscPropagationStatus(api.PscPropagationStatus o) {
  buildCounterPscPropagationStatus++;
  if (buildCounterPscPropagationStatus < 3) {
    unittest.expect(
      o.code!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sourceForwardingRule!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sourceGroup!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sourceSpoke!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.targetGroup!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.targetSpoke!,
      unittest.equals('foo'),
    );
  }
  buildCounterPscPropagationStatus--;
}

core.List<api.HubStatusEntry> buildUnnamed70() => [
      buildHubStatusEntry(),
      buildHubStatusEntry(),
    ];

void checkUnnamed70(core.List<api.HubStatusEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHubStatusEntry(o[0]);
  checkHubStatusEntry(o[1]);
}

core.int buildCounterQueryHubStatusResponse = 0;
api.QueryHubStatusResponse buildQueryHubStatusResponse() {
  final o = api.QueryHubStatusResponse();
  buildCounterQueryHubStatusResponse++;
  if (buildCounterQueryHubStatusResponse < 3) {
    o.hubStatusEntries = buildUnnamed70();
    o.nextPageToken = 'foo';
  }
  buildCounterQueryHubStatusResponse--;
  return o;
}

void checkQueryHubStatusResponse(api.QueryHubStatusResponse o) {
  buildCounterQueryHubStatusResponse++;
  if (buildCounterQueryHubStatusResponse < 3) {
    checkUnnamed70(o.hubStatusEntries!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterQueryHubStatusResponse--;
}

core.Map<core.String, core.String> buildUnnamed71() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed71(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.int buildCounterRegionalEndpoint = 0;
api.RegionalEndpoint buildRegionalEndpoint() {
  final o = api.RegionalEndpoint();
  buildCounterRegionalEndpoint++;
  if (buildCounterRegionalEndpoint < 3) {
    o.accessType = 'foo';
    o.address = 'foo';
    o.createTime = 'foo';
    o.description = 'foo';
    o.ipAddress = 'foo';
    o.labels = buildUnnamed71();
    o.name = 'foo';
    o.network = 'foo';
    o.pscForwardingRule = 'foo';
    o.subnetwork = 'foo';
    o.targetGoogleApi = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterRegionalEndpoint--;
  return o;
}

void checkRegionalEndpoint(api.RegionalEndpoint o) {
  buildCounterRegionalEndpoint++;
  if (buildCounterRegionalEndpoint < 3) {
    unittest.expect(
      o.accessType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.address!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ipAddress!,
      unittest.equals('foo'),
    );
    checkUnnamed71(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.network!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pscForwardingRule!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subnetwork!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.targetGoogleApi!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterRegionalEndpoint--;
}

core.int buildCounterRejectHubSpokeRequest = 0;
api.RejectHubSpokeRequest buildRejectHubSpokeRequest() {
  final o = api.RejectHubSpokeRequest();
  buildCounterRejectHubSpokeRequest++;
  if (buildCounterRejectHubSpokeRequest < 3) {
    o.details = 'foo';
    o.requestId = 'foo';
    o.spokeUri = 'foo';
  }
  buildCounterRejectHubSpokeRequest--;
  return o;
}

void checkRejectHubSpokeRequest(api.RejectHubSpokeRequest o) {
  buildCounterRejectHubSpokeRequest++;
  if (buildCounterRejectHubSpokeRequest < 3) {
    unittest.expect(
      o.details!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.spokeUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterRejectHubSpokeRequest--;
}

core.int buildCounterRejectSpokeUpdateRequest = 0;
api.RejectSpokeUpdateRequest buildRejectSpokeUpdateRequest() {
  final o = api.RejectSpokeUpdateRequest();
  buildCounterRejectSpokeUpdateRequest++;
  if (buildCounterRejectSpokeUpdateRequest < 3) {
    o.details = 'foo';
    o.requestId = 'foo';
    o.spokeEtag = 'foo';
    o.spokeUri = 'foo';
  }
  buildCounterRejectSpokeUpdateRequest--;
  return o;
}

void checkRejectSpokeUpdateRequest(api.RejectSpokeUpdateRequest o) {
  buildCounterRejectSpokeUpdateRequest++;
  if (buildCounterRejectSpokeUpdateRequest < 3) {
    unittest.expect(
      o.details!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.spokeEtag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.spokeUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterRejectSpokeUpdateRequest--;
}

core.Map<core.String, core.String> buildUnnamed72() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed72(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.int buildCounterRoute = 0;
api.Route buildRoute() {
  final o = api.Route();
  buildCounterRoute++;
  if (buildCounterRoute < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.ipCidrRange = 'foo';
    o.labels = buildUnnamed72();
    o.location = 'foo';
    o.name = 'foo';
    o.nextHopInterconnectAttachment = buildNextHopInterconnectAttachment();
    o.nextHopRouterApplianceInstance = buildNextHopRouterApplianceInstance();
    o.nextHopVpcNetwork = buildNextHopVpcNetwork();
    o.nextHopVpnTunnel = buildNextHopVPNTunnel();
    o.priority = 'foo';
    o.spoke = 'foo';
    o.state = 'foo';
    o.type = 'foo';
    o.uid = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterRoute--;
  return o;
}

void checkRoute(api.Route o) {
  buildCounterRoute++;
  if (buildCounterRoute < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ipCidrRange!,
      unittest.equals('foo'),
    );
    checkUnnamed72(o.labels!);
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkNextHopInterconnectAttachment(o.nextHopInterconnectAttachment!);
    checkNextHopRouterApplianceInstance(o.nextHopRouterApplianceInstance!);
    checkNextHopVpcNetwork(o.nextHopVpcNetwork!);
    checkNextHopVPNTunnel(o.nextHopVpnTunnel!);
    unittest.expect(
      o.priority!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.spoke!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uid!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterRoute--;
}

core.Map<core.String, core.String> buildUnnamed73() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed73(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.int buildCounterRouteTable = 0;
api.RouteTable buildRouteTable() {
  final o = api.RouteTable();
  buildCounterRouteTable++;
  if (buildCounterRouteTable < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.labels = buildUnnamed73();
    o.name = 'foo';
    o.state = 'foo';
    o.uid = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterRouteTable--;
  return o;
}

void checkRouteTable(api.RouteTable o) {
  buildCounterRouteTable++;
  if (buildCounterRouteTable < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkUnnamed73(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uid!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterRouteTable--;
}

core.int buildCounterRouterApplianceInstance = 0;
api.RouterApplianceInstance buildRouterApplianceInstance() {
  final o = api.RouterApplianceInstance();
  buildCounterRouterApplianceInstance++;
  if (buildCounterRouterApplianceInstance < 3) {
    o.ipAddress = 'foo';
    o.virtualMachine = 'foo';
  }
  buildCounterRouterApplianceInstance--;
  return o;
}

void checkRouterApplianceInstance(api.RouterApplianceInstance o) {
  buildCounterRouterApplianceInstance++;
  if (buildCounterRouterApplianceInstance < 3) {
    unittest.expect(
      o.ipAddress!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.virtualMachine!,
      unittest.equals('foo'),
    );
  }
  buildCounterRouterApplianceInstance--;
}

core.int buildCounterRoutingVPC = 0;
api.RoutingVPC buildRoutingVPC() {
  final o = api.RoutingVPC();
  buildCounterRoutingVPC++;
  if (buildCounterRoutingVPC < 3) {
    o.requiredForNewSiteToSiteDataTransferSpokes = true;
    o.uri = 'foo';
  }
  buildCounterRoutingVPC--;
  return o;
}

void checkRoutingVPC(api.RoutingVPC o) {
  buildCounterRoutingVPC++;
  if (buildCounterRoutingVPC < 3) {
    unittest.expect(
        o.requiredForNewSiteToSiteDataTransferSpokes!, unittest.isTrue);
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterRoutingVPC--;
}

core.Map<core.String, core.String> buildUnnamed74() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed74(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.int buildCounterServiceClass = 0;
api.ServiceClass buildServiceClass() {
  final o = api.ServiceClass();
  buildCounterServiceClass++;
  if (buildCounterServiceClass < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.etag = 'foo';
    o.labels = buildUnnamed74();
    o.name = 'foo';
    o.serviceClass = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterServiceClass--;
  return o;
}

void checkServiceClass(api.ServiceClass o) {
  buildCounterServiceClass++;
  if (buildCounterServiceClass < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    checkUnnamed74(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serviceClass!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterServiceClass--;
}

core.List<api.ConsumerPscConfig> buildUnnamed75() => [
      buildConsumerPscConfig(),
      buildConsumerPscConfig(),
    ];

void checkUnnamed75(core.List<api.ConsumerPscConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConsumerPscConfig(o[0]);
  checkConsumerPscConfig(o[1]);
}

core.List<api.ConsumerPscConnection> buildUnnamed76() => [
      buildConsumerPscConnection(),
      buildConsumerPscConnection(),
    ];

void checkUnnamed76(core.List<api.ConsumerPscConnection> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConsumerPscConnection(o[0]);
  checkConsumerPscConnection(o[1]);
}

core.Map<core.String, core.String> buildUnnamed77() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed77(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.List<api.ProducerPscConfig> buildUnnamed78() => [
      buildProducerPscConfig(),
      buildProducerPscConfig(),
    ];

void checkUnnamed78(core.List<api.ProducerPscConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProducerPscConfig(o[0]);
  checkProducerPscConfig(o[1]);
}

core.int buildCounterServiceConnectionMap = 0;
api.ServiceConnectionMap buildServiceConnectionMap() {
  final o = api.ServiceConnectionMap();
  buildCounterServiceConnectionMap++;
  if (buildCounterServiceConnectionMap < 3) {
    o.consumerPscConfigs = buildUnnamed75();
    o.consumerPscConnections = buildUnnamed76();
    o.createTime = 'foo';
    o.description = 'foo';
    o.etag = 'foo';
    o.infrastructure = 'foo';
    o.labels = buildUnnamed77();
    o.name = 'foo';
    o.producerPscConfigs = buildUnnamed78();
    o.serviceClass = 'foo';
    o.serviceClassUri = 'foo';
    o.token = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterServiceConnectionMap--;
  return o;
}

void checkServiceConnectionMap(api.ServiceConnectionMap o) {
  buildCounterServiceConnectionMap++;
  if (buildCounterServiceConnectionMap < 3) {
    checkUnnamed75(o.consumerPscConfigs!);
    checkUnnamed76(o.consumerPscConnections!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.infrastructure!,
      unittest.equals('foo'),
    );
    checkUnnamed77(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed78(o.producerPscConfigs!);
    unittest.expect(
      o.serviceClass!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serviceClassUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.token!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterServiceConnectionMap--;
}

core.Map<core.String, core.String> buildUnnamed79() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed79(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.List<api.PscConnection> buildUnnamed80() => [
      buildPscConnection(),
      buildPscConnection(),
    ];

void checkUnnamed80(core.List<api.PscConnection> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPscConnection(o[0]);
  checkPscConnection(o[1]);
}

core.int buildCounterServiceConnectionPolicy = 0;
api.ServiceConnectionPolicy buildServiceConnectionPolicy() {
  final o = api.ServiceConnectionPolicy();
  buildCounterServiceConnectionPolicy++;
  if (buildCounterServiceConnectionPolicy < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.etag = 'foo';
    o.infrastructure = 'foo';
    o.labels = buildUnnamed79();
    o.name = 'foo';
    o.network = 'foo';
    o.pscConfig = buildPscConfig();
    o.pscConnections = buildUnnamed80();
    o.serviceClass = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterServiceConnectionPolicy--;
  return o;
}

void checkServiceConnectionPolicy(api.ServiceConnectionPolicy o) {
  buildCounterServiceConnectionPolicy++;
  if (buildCounterServiceConnectionPolicy < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.infrastructure!,
      unittest.equals('foo'),
    );
    checkUnnamed79(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.network!,
      unittest.equals('foo'),
    );
    checkPscConfig(o.pscConfig!);
    checkUnnamed80(o.pscConnections!);
    unittest.expect(
      o.serviceClass!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterServiceConnectionPolicy--;
}

core.Map<core.String, core.String> buildUnnamed81() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed81(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.int buildCounterServiceConnectionToken = 0;
api.ServiceConnectionToken buildServiceConnectionToken() {
  final o = api.ServiceConnectionToken();
  buildCounterServiceConnectionToken++;
  if (buildCounterServiceConnectionToken < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.etag = 'foo';
    o.expireTime = 'foo';
    o.labels = buildUnnamed81();
    o.name = 'foo';
    o.network = 'foo';
    o.token = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterServiceConnectionToken--;
  return o;
}

void checkServiceConnectionToken(api.ServiceConnectionToken o) {
  buildCounterServiceConnectionToken++;
  if (buildCounterServiceConnectionToken < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expireTime!,
      unittest.equals('foo'),
    );
    checkUnnamed81(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.network!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.token!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterServiceConnectionToken--;
}

core.int buildCounterSetIamPolicyRequest = 0;
api.SetIamPolicyRequest buildSetIamPolicyRequest() {
  final o = api.SetIamPolicyRequest();
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
    checkPolicy(o.policy!);
    unittest.expect(
      o.updateMask!,
      unittest.equals('foo'),
    );
  }
  buildCounterSetIamPolicyRequest--;
}

core.List<core.String> buildUnnamed82() => [
      'foo',
      'foo',
    ];

void checkUnnamed82(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.Map<core.String, core.String> buildUnnamed83() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed83(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.List<api.StateReason> buildUnnamed84() => [
      buildStateReason(),
      buildStateReason(),
    ];

void checkUnnamed84(core.List<api.StateReason> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStateReason(o[0]);
  checkStateReason(o[1]);
}

core.int buildCounterSpoke = 0;
api.Spoke buildSpoke() {
  final o = api.Spoke();
  buildCounterSpoke++;
  if (buildCounterSpoke < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.etag = 'foo';
    o.fieldPathsPendingUpdate = buildUnnamed82();
    o.group = 'foo';
    o.hub = 'foo';
    o.labels = buildUnnamed83();
    o.linkedInterconnectAttachments = buildLinkedInterconnectAttachments();
    o.linkedProducerVpcNetwork = buildLinkedProducerVpcNetwork();
    o.linkedRouterApplianceInstances = buildLinkedRouterApplianceInstances();
    o.linkedVpcNetwork = buildLinkedVpcNetwork();
    o.linkedVpnTunnels = buildLinkedVpnTunnels();
    o.name = 'foo';
    o.reasons = buildUnnamed84();
    o.spokeType = 'foo';
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
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    checkUnnamed82(o.fieldPathsPendingUpdate!);
    unittest.expect(
      o.group!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.hub!,
      unittest.equals('foo'),
    );
    checkUnnamed83(o.labels!);
    checkLinkedInterconnectAttachments(o.linkedInterconnectAttachments!);
    checkLinkedProducerVpcNetwork(o.linkedProducerVpcNetwork!);
    checkLinkedRouterApplianceInstances(o.linkedRouterApplianceInstances!);
    checkLinkedVpcNetwork(o.linkedVpcNetwork!);
    checkLinkedVpnTunnels(o.linkedVpnTunnels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed84(o.reasons!);
    unittest.expect(
      o.spokeType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uniqueId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterSpoke--;
}

core.int buildCounterSpokeStateCount = 0;
api.SpokeStateCount buildSpokeStateCount() {
  final o = api.SpokeStateCount();
  buildCounterSpokeStateCount++;
  if (buildCounterSpokeStateCount < 3) {
    o.count = 'foo';
    o.state = 'foo';
  }
  buildCounterSpokeStateCount--;
  return o;
}

void checkSpokeStateCount(api.SpokeStateCount o) {
  buildCounterSpokeStateCount++;
  if (buildCounterSpokeStateCount < 3) {
    unittest.expect(
      o.count!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterSpokeStateCount--;
}

core.int buildCounterSpokeStateReasonCount = 0;
api.SpokeStateReasonCount buildSpokeStateReasonCount() {
  final o = api.SpokeStateReasonCount();
  buildCounterSpokeStateReasonCount++;
  if (buildCounterSpokeStateReasonCount < 3) {
    o.count = 'foo';
    o.stateReasonCode = 'foo';
  }
  buildCounterSpokeStateReasonCount--;
  return o;
}

void checkSpokeStateReasonCount(api.SpokeStateReasonCount o) {
  buildCounterSpokeStateReasonCount++;
  if (buildCounterSpokeStateReasonCount < 3) {
    unittest.expect(
      o.count!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.stateReasonCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterSpokeStateReasonCount--;
}

core.List<api.SpokeStateCount> buildUnnamed85() => [
      buildSpokeStateCount(),
      buildSpokeStateCount(),
    ];

void checkUnnamed85(core.List<api.SpokeStateCount> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSpokeStateCount(o[0]);
  checkSpokeStateCount(o[1]);
}

core.List<api.SpokeStateReasonCount> buildUnnamed86() => [
      buildSpokeStateReasonCount(),
      buildSpokeStateReasonCount(),
    ];

void checkUnnamed86(core.List<api.SpokeStateReasonCount> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSpokeStateReasonCount(o[0]);
  checkSpokeStateReasonCount(o[1]);
}

core.List<api.SpokeTypeCount> buildUnnamed87() => [
      buildSpokeTypeCount(),
      buildSpokeTypeCount(),
    ];

void checkUnnamed87(core.List<api.SpokeTypeCount> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSpokeTypeCount(o[0]);
  checkSpokeTypeCount(o[1]);
}

core.int buildCounterSpokeSummary = 0;
api.SpokeSummary buildSpokeSummary() {
  final o = api.SpokeSummary();
  buildCounterSpokeSummary++;
  if (buildCounterSpokeSummary < 3) {
    o.spokeStateCounts = buildUnnamed85();
    o.spokeStateReasonCounts = buildUnnamed86();
    o.spokeTypeCounts = buildUnnamed87();
  }
  buildCounterSpokeSummary--;
  return o;
}

void checkSpokeSummary(api.SpokeSummary o) {
  buildCounterSpokeSummary++;
  if (buildCounterSpokeSummary < 3) {
    checkUnnamed85(o.spokeStateCounts!);
    checkUnnamed86(o.spokeStateReasonCounts!);
    checkUnnamed87(o.spokeTypeCounts!);
  }
  buildCounterSpokeSummary--;
}

core.int buildCounterSpokeTypeCount = 0;
api.SpokeTypeCount buildSpokeTypeCount() {
  final o = api.SpokeTypeCount();
  buildCounterSpokeTypeCount++;
  if (buildCounterSpokeTypeCount < 3) {
    o.count = 'foo';
    o.spokeType = 'foo';
  }
  buildCounterSpokeTypeCount--;
  return o;
}

void checkSpokeTypeCount(api.SpokeTypeCount o) {
  buildCounterSpokeTypeCount++;
  if (buildCounterSpokeTypeCount < 3) {
    unittest.expect(
      o.count!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.spokeType!,
      unittest.equals('foo'),
    );
  }
  buildCounterSpokeTypeCount--;
}

core.int buildCounterStateReason = 0;
api.StateReason buildStateReason() {
  final o = api.StateReason();
  buildCounterStateReason++;
  if (buildCounterStateReason < 3) {
    o.code = 'foo';
    o.message = 'foo';
    o.userDetails = 'foo';
  }
  buildCounterStateReason--;
  return o;
}

void checkStateReason(api.StateReason o) {
  buildCounterStateReason++;
  if (buildCounterStateReason < 3) {
    unittest.expect(
      o.code!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userDetails!,
      unittest.equals('foo'),
    );
  }
  buildCounterStateReason--;
}

core.List<core.String> buildUnnamed88() => [
      'foo',
      'foo',
    ];

void checkUnnamed88(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterTestIamPermissionsRequest = 0;
api.TestIamPermissionsRequest buildTestIamPermissionsRequest() {
  final o = api.TestIamPermissionsRequest();
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed88();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

void checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed88(o.permissions!);
  }
  buildCounterTestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed89() => [
      'foo',
      'foo',
    ];

void checkUnnamed89(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterTestIamPermissionsResponse = 0;
api.TestIamPermissionsResponse buildTestIamPermissionsResponse() {
  final o = api.TestIamPermissionsResponse();
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed89();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed89(o.permissions!);
  }
  buildCounterTestIamPermissionsResponse--;
}

core.List<core.String> buildUnnamed90() => [
      'foo',
      'foo',
    ];

void checkUnnamed90(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterVirtualMachine = 0;
api.VirtualMachine buildVirtualMachine() {
  final o = api.VirtualMachine();
  buildCounterVirtualMachine++;
  if (buildCounterVirtualMachine < 3) {
    o.tags = buildUnnamed90();
  }
  buildCounterVirtualMachine--;
  return o;
}

void checkVirtualMachine(api.VirtualMachine o) {
  buildCounterVirtualMachine++;
  if (buildCounterVirtualMachine < 3) {
    checkUnnamed90(o.tags!);
  }
  buildCounterVirtualMachine--;
}

core.Map<core.String, core.String> buildUnnamed91() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed91(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.int buildCounterWarnings = 0;
api.Warnings buildWarnings() {
  final o = api.Warnings();
  buildCounterWarnings++;
  if (buildCounterWarnings < 3) {
    o.code = 'foo';
    o.data = buildUnnamed91();
    o.warningMessage = 'foo';
  }
  buildCounterWarnings--;
  return o;
}

void checkWarnings(api.Warnings o) {
  buildCounterWarnings++;
  if (buildCounterWarnings < 3) {
    unittest.expect(
      o.code!,
      unittest.equals('foo'),
    );
    checkUnnamed91(o.data!);
    unittest.expect(
      o.warningMessage!,
      unittest.equals('foo'),
    );
  }
  buildCounterWarnings--;
}

core.List<core.String> buildUnnamed92() => [
      'foo',
      'foo',
    ];

void checkUnnamed92(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

void main() {
  unittest.group('obj-schema-AcceptHubSpokeRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAcceptHubSpokeRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AcceptHubSpokeRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAcceptHubSpokeRequest(od);
    });
  });

  unittest.group('obj-schema-AcceptSpokeUpdateRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAcceptSpokeUpdateRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AcceptSpokeUpdateRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAcceptSpokeUpdateRequest(od);
    });
  });

  unittest.group('obj-schema-AuditConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuditConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuditConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAuditConfig(od);
    });
  });

  unittest.group('obj-schema-AuditLogConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuditLogConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuditLogConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAuditLogConfig(od);
    });
  });

  unittest.group('obj-schema-AutoAccept', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAutoAccept();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.AutoAccept.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAutoAccept(od);
    });
  });

  unittest.group('obj-schema-Binding', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBinding();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Binding.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkBinding(od);
    });
  });

  unittest.group('obj-schema-ConsumerPscConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConsumerPscConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConsumerPscConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConsumerPscConfig(od);
    });
  });

  unittest.group('obj-schema-ConsumerPscConnection', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConsumerPscConnection();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConsumerPscConnection.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConsumerPscConnection(od);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Empty.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEmpty(od);
    });
  });

  unittest.group('obj-schema-Expr', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExpr();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Expr.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkExpr(od);
    });
  });

  unittest.group('obj-schema-Filter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Filter.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkFilter(od);
    });
  });

  unittest.group('obj-schema-GoogleLongrunningCancelOperationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleLongrunningCancelOperationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleLongrunningCancelOperationRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleLongrunningCancelOperationRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleLongrunningListOperationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleLongrunningListOperationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleLongrunningListOperationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleLongrunningListOperationsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleLongrunningOperation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleLongrunningOperation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleLongrunningOperation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleLongrunningOperation(od);
    });
  });

  unittest.group('obj-schema-GoogleRpcErrorInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleRpcErrorInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleRpcErrorInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleRpcErrorInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleRpcStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleRpcStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleRpcStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleRpcStatus(od);
    });
  });

  unittest.group('obj-schema-Group', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGroup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Group.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGroup(od);
    });
  });

  unittest.group('obj-schema-Hub', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHub();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Hub.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkHub(od);
    });
  });

  unittest.group('obj-schema-HubStatusEntry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHubStatusEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HubStatusEntry.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkHubStatusEntry(od);
    });
  });

  unittest.group('obj-schema-InterconnectAttachment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInterconnectAttachment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InterconnectAttachment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInterconnectAttachment(od);
    });
  });

  unittest.group('obj-schema-InternalRange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInternalRange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InternalRange.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInternalRange(od);
    });
  });

  unittest.group('obj-schema-LinkedInterconnectAttachments', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLinkedInterconnectAttachments();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LinkedInterconnectAttachments.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLinkedInterconnectAttachments(od);
    });
  });

  unittest.group('obj-schema-LinkedProducerVpcNetwork', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLinkedProducerVpcNetwork();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LinkedProducerVpcNetwork.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLinkedProducerVpcNetwork(od);
    });
  });

  unittest.group('obj-schema-LinkedRouterApplianceInstances', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLinkedRouterApplianceInstances();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LinkedRouterApplianceInstances.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLinkedRouterApplianceInstances(od);
    });
  });

  unittest.group('obj-schema-LinkedVpcNetwork', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLinkedVpcNetwork();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LinkedVpcNetwork.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLinkedVpcNetwork(od);
    });
  });

  unittest.group('obj-schema-LinkedVpnTunnels', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLinkedVpnTunnels();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LinkedVpnTunnels.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLinkedVpnTunnels(od);
    });
  });

  unittest.group('obj-schema-ListGroupsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListGroupsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListGroupsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListGroupsResponse(od);
    });
  });

  unittest.group('obj-schema-ListHubSpokesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListHubSpokesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListHubSpokesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListHubSpokesResponse(od);
    });
  });

  unittest.group('obj-schema-ListHubsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListHubsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListHubsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListHubsResponse(od);
    });
  });

  unittest.group('obj-schema-ListInternalRangesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListInternalRangesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListInternalRangesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListInternalRangesResponse(od);
    });
  });

  unittest.group('obj-schema-ListLocationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListLocationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListLocationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListLocationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListPolicyBasedRoutesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListPolicyBasedRoutesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListPolicyBasedRoutesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListPolicyBasedRoutesResponse(od);
    });
  });

  unittest.group('obj-schema-ListRegionalEndpointsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListRegionalEndpointsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListRegionalEndpointsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListRegionalEndpointsResponse(od);
    });
  });

  unittest.group('obj-schema-ListRouteTablesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListRouteTablesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListRouteTablesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListRouteTablesResponse(od);
    });
  });

  unittest.group('obj-schema-ListRoutesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListRoutesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListRoutesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListRoutesResponse(od);
    });
  });

  unittest.group('obj-schema-ListServiceClassesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListServiceClassesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListServiceClassesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListServiceClassesResponse(od);
    });
  });

  unittest.group('obj-schema-ListServiceConnectionMapsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListServiceConnectionMapsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListServiceConnectionMapsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListServiceConnectionMapsResponse(od);
    });
  });

  unittest.group('obj-schema-ListServiceConnectionPoliciesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListServiceConnectionPoliciesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListServiceConnectionPoliciesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListServiceConnectionPoliciesResponse(od);
    });
  });

  unittest.group('obj-schema-ListServiceConnectionTokensResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListServiceConnectionTokensResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListServiceConnectionTokensResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListServiceConnectionTokensResponse(od);
    });
  });

  unittest.group('obj-schema-ListSpokesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListSpokesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListSpokesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListSpokesResponse(od);
    });
  });

  unittest.group('obj-schema-Location', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Location.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLocation(od);
    });
  });

  unittest.group('obj-schema-Migration', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMigration();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Migration.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMigration(od);
    });
  });

  unittest.group('obj-schema-NextHopInterconnectAttachment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNextHopInterconnectAttachment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NextHopInterconnectAttachment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNextHopInterconnectAttachment(od);
    });
  });

  unittest.group('obj-schema-NextHopRouterApplianceInstance', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNextHopRouterApplianceInstance();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NextHopRouterApplianceInstance.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNextHopRouterApplianceInstance(od);
    });
  });

  unittest.group('obj-schema-NextHopVPNTunnel', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNextHopVPNTunnel();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NextHopVPNTunnel.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNextHopVPNTunnel(od);
    });
  });

  unittest.group('obj-schema-NextHopVpcNetwork', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNextHopVpcNetwork();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NextHopVpcNetwork.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNextHopVpcNetwork(od);
    });
  });

  unittest.group('obj-schema-Policy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Policy.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPolicy(od);
    });
  });

  unittest.group('obj-schema-PolicyBasedRoute', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPolicyBasedRoute();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PolicyBasedRoute.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPolicyBasedRoute(od);
    });
  });

  unittest.group('obj-schema-ProducerPscConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProducerPscConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProducerPscConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProducerPscConfig(od);
    });
  });

  unittest.group('obj-schema-PscConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPscConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.PscConfig.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPscConfig(od);
    });
  });

  unittest.group('obj-schema-PscConnection', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPscConnection();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PscConnection.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPscConnection(od);
    });
  });

  unittest.group('obj-schema-PscPropagationStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPscPropagationStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PscPropagationStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPscPropagationStatus(od);
    });
  });

  unittest.group('obj-schema-QueryHubStatusResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQueryHubStatusResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.QueryHubStatusResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkQueryHubStatusResponse(od);
    });
  });

  unittest.group('obj-schema-RegionalEndpoint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRegionalEndpoint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RegionalEndpoint.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRegionalEndpoint(od);
    });
  });

  unittest.group('obj-schema-RejectHubSpokeRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRejectHubSpokeRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RejectHubSpokeRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRejectHubSpokeRequest(od);
    });
  });

  unittest.group('obj-schema-RejectSpokeUpdateRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRejectSpokeUpdateRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RejectSpokeUpdateRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRejectSpokeUpdateRequest(od);
    });
  });

  unittest.group('obj-schema-Route', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRoute();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Route.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkRoute(od);
    });
  });

  unittest.group('obj-schema-RouteTable', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRouteTable();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.RouteTable.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkRouteTable(od);
    });
  });

  unittest.group('obj-schema-RouterApplianceInstance', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRouterApplianceInstance();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RouterApplianceInstance.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRouterApplianceInstance(od);
    });
  });

  unittest.group('obj-schema-RoutingVPC', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRoutingVPC();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.RoutingVPC.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkRoutingVPC(od);
    });
  });

  unittest.group('obj-schema-ServiceClass', () {
    unittest.test('to-json--from-json', () async {
      final o = buildServiceClass();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ServiceClass.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkServiceClass(od);
    });
  });

  unittest.group('obj-schema-ServiceConnectionMap', () {
    unittest.test('to-json--from-json', () async {
      final o = buildServiceConnectionMap();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ServiceConnectionMap.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkServiceConnectionMap(od);
    });
  });

  unittest.group('obj-schema-ServiceConnectionPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildServiceConnectionPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ServiceConnectionPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkServiceConnectionPolicy(od);
    });
  });

  unittest.group('obj-schema-ServiceConnectionToken', () {
    unittest.test('to-json--from-json', () async {
      final o = buildServiceConnectionToken();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ServiceConnectionToken.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkServiceConnectionToken(od);
    });
  });

  unittest.group('obj-schema-SetIamPolicyRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSetIamPolicyRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SetIamPolicyRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSetIamPolicyRequest(od);
    });
  });

  unittest.group('obj-schema-Spoke', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSpoke();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Spoke.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSpoke(od);
    });
  });

  unittest.group('obj-schema-SpokeStateCount', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSpokeStateCount();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SpokeStateCount.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSpokeStateCount(od);
    });
  });

  unittest.group('obj-schema-SpokeStateReasonCount', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSpokeStateReasonCount();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SpokeStateReasonCount.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSpokeStateReasonCount(od);
    });
  });

  unittest.group('obj-schema-SpokeSummary', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSpokeSummary();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SpokeSummary.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSpokeSummary(od);
    });
  });

  unittest.group('obj-schema-SpokeTypeCount', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSpokeTypeCount();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SpokeTypeCount.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSpokeTypeCount(od);
    });
  });

  unittest.group('obj-schema-StateReason', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStateReason();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StateReason.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStateReason(od);
    });
  });

  unittest.group('obj-schema-TestIamPermissionsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTestIamPermissionsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TestIamPermissionsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTestIamPermissionsRequest(od);
    });
  });

  unittest.group('obj-schema-TestIamPermissionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTestIamPermissionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TestIamPermissionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTestIamPermissionsResponse(od);
    });
  });

  unittest.group('obj-schema-VirtualMachine', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVirtualMachine();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VirtualMachine.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVirtualMachine(od);
    });
  });

  unittest.group('obj-schema-Warnings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWarnings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Warnings.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkWarnings(od);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.NetworkconnectivityApi(mock).projects.locations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildLocation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkLocation(response as api.Location);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.NetworkconnectivityApi(mock).projects.locations;
      final arg_name = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['filter']!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListLocationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_name,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListLocationsResponse(response as api.ListLocationsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsGlobalHubsResource', () {
    unittest.test('method--acceptSpoke', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkconnectivityApi(mock).projects.locations.global.hubs;
      final arg_request = buildAcceptHubSpokeRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AcceptHubSpokeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAcceptHubSpokeRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.acceptSpoke(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--acceptSpokeUpdate', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkconnectivityApi(mock).projects.locations.global.hubs;
      final arg_request = buildAcceptSpokeUpdateRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AcceptSpokeUpdateRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAcceptSpokeUpdateRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.acceptSpokeUpdate(arg_request, arg_name,
          $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkconnectivityApi(mock).projects.locations.global.hubs;
      final arg_request = buildHub();
      final arg_parent = 'foo';
      final arg_hubId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Hub.fromJson(json as core.Map<core.String, core.dynamic>);
        checkHub(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['hubId']!.first,
          unittest.equals(arg_hubId),
        );
        unittest.expect(
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          hubId: arg_hubId, requestId: arg_requestId, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkconnectivityApi(mock).projects.locations.global.hubs;
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name,
          requestId: arg_requestId, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkconnectivityApi(mock).projects.locations.global.hubs;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildHub());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkHub(response as api.Hub);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkconnectivityApi(mock).projects.locations.global.hubs;
      final arg_resource = 'foo';
      final arg_options_requestedPolicyVersion = 42;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          core.int.parse(queryMap['options.requestedPolicyVersion']!.first),
          unittest.equals(arg_options_requestedPolicyVersion),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getIamPolicy(arg_resource,
          options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkconnectivityApi(mock).projects.locations.global.hubs;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['filter']!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          queryMap['orderBy']!.first,
          unittest.equals(arg_orderBy),
        );
        unittest.expect(
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListHubsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListHubsResponse(response as api.ListHubsResponse);
    });

    unittest.test('method--listSpokes', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkconnectivityApi(mock).projects.locations.global.hubs;
      final arg_name = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_spokeLocations = buildUnnamed92();
      final arg_view = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['filter']!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          queryMap['orderBy']!.first,
          unittest.equals(arg_orderBy),
        );
        unittest.expect(
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['spokeLocations']!,
          unittest.equals(arg_spokeLocations),
        );
        unittest.expect(
          queryMap['view']!.first,
          unittest.equals(arg_view),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListHubSpokesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.listSpokes(arg_name,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          spokeLocations: arg_spokeLocations,
          view: arg_view,
          $fields: arg_$fields);
      checkListHubSpokesResponse(response as api.ListHubSpokesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkconnectivityApi(mock).projects.locations.global.hubs;
      final arg_request = buildHub();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Hub.fromJson(json as core.Map<core.String, core.dynamic>);
        checkHub(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
        );
        unittest.expect(
          queryMap['updateMask']!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          requestId: arg_requestId,
          updateMask: arg_updateMask,
          $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--queryStatus', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkconnectivityApi(mock).projects.locations.global.hubs;
      final arg_name = 'foo';
      final arg_filter = 'foo';
      final arg_groupBy = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['filter']!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          queryMap['groupBy']!.first,
          unittest.equals(arg_groupBy),
        );
        unittest.expect(
          queryMap['orderBy']!.first,
          unittest.equals(arg_orderBy),
        );
        unittest.expect(
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildQueryHubStatusResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.queryStatus(arg_name,
          filter: arg_filter,
          groupBy: arg_groupBy,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkQueryHubStatusResponse(response as api.QueryHubStatusResponse);
    });

    unittest.test('method--rejectSpoke', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkconnectivityApi(mock).projects.locations.global.hubs;
      final arg_request = buildRejectHubSpokeRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RejectHubSpokeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRejectHubSpokeRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.rejectSpoke(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--rejectSpokeUpdate', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkconnectivityApi(mock).projects.locations.global.hubs;
      final arg_request = buildRejectSpokeUpdateRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RejectSpokeUpdateRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRejectSpokeUpdateRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.rejectSpokeUpdate(arg_request, arg_name,
          $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkconnectivityApi(mock).projects.locations.global.hubs;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetIamPolicyRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.setIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkconnectivityApi(mock).projects.locations.global.hubs;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTestIamPermissionsRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildTestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.testIamPermissions(arg_request, arg_resource,
          $fields: arg_$fields);
      checkTestIamPermissionsResponse(
          response as api.TestIamPermissionsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsGlobalHubsGroupsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.NetworkconnectivityApi(mock)
          .projects
          .locations
          .global
          .hubs
          .groups;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGroup(response as api.Group);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.NetworkconnectivityApi(mock)
          .projects
          .locations
          .global
          .hubs
          .groups;
      final arg_resource = 'foo';
      final arg_options_requestedPolicyVersion = 42;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          core.int.parse(queryMap['options.requestedPolicyVersion']!.first),
          unittest.equals(arg_options_requestedPolicyVersion),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getIamPolicy(arg_resource,
          options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.NetworkconnectivityApi(mock)
          .projects
          .locations
          .global
          .hubs
          .groups;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['filter']!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          queryMap['orderBy']!.first,
          unittest.equals(arg_orderBy),
        );
        unittest.expect(
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListGroupsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListGroupsResponse(response as api.ListGroupsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.NetworkconnectivityApi(mock)
          .projects
          .locations
          .global
          .hubs
          .groups;
      final arg_request = buildGroup();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Group.fromJson(json as core.Map<core.String, core.dynamic>);
        checkGroup(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
        );
        unittest.expect(
          queryMap['updateMask']!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          requestId: arg_requestId,
          updateMask: arg_updateMask,
          $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.NetworkconnectivityApi(mock)
          .projects
          .locations
          .global
          .hubs
          .groups;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetIamPolicyRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.setIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.NetworkconnectivityApi(mock)
          .projects
          .locations
          .global
          .hubs
          .groups;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTestIamPermissionsRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildTestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.testIamPermissions(arg_request, arg_resource,
          $fields: arg_$fields);
      checkTestIamPermissionsResponse(
          response as api.TestIamPermissionsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsGlobalHubsRouteTablesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.NetworkconnectivityApi(mock)
          .projects
          .locations
          .global
          .hubs
          .routeTables;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildRouteTable());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkRouteTable(response as api.RouteTable);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.NetworkconnectivityApi(mock)
          .projects
          .locations
          .global
          .hubs
          .routeTables;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['filter']!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          queryMap['orderBy']!.first,
          unittest.equals(arg_orderBy),
        );
        unittest.expect(
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListRouteTablesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListRouteTablesResponse(response as api.ListRouteTablesResponse);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsGlobalHubsRouteTablesRoutesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.NetworkconnectivityApi(mock)
          .projects
          .locations
          .global
          .hubs
          .routeTables
          .routes;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildRoute());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkRoute(response as api.Route);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.NetworkconnectivityApi(mock)
          .projects
          .locations
          .global
          .hubs
          .routeTables
          .routes;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['filter']!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          queryMap['orderBy']!.first,
          unittest.equals(arg_orderBy),
        );
        unittest.expect(
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListRoutesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListRoutesResponse(response as api.ListRoutesResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsGlobalPolicyBasedRoutesResource',
      () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.NetworkconnectivityApi(mock)
          .projects
          .locations
          .global
          .policyBasedRoutes;
      final arg_request = buildPolicyBasedRoute();
      final arg_parent = 'foo';
      final arg_policyBasedRouteId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.PolicyBasedRoute.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkPolicyBasedRoute(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['policyBasedRouteId']!.first,
          unittest.equals(arg_policyBasedRouteId),
        );
        unittest.expect(
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          policyBasedRouteId: arg_policyBasedRouteId,
          requestId: arg_requestId,
          $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.NetworkconnectivityApi(mock)
          .projects
          .locations
          .global
          .policyBasedRoutes;
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name,
          requestId: arg_requestId, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.NetworkconnectivityApi(mock)
          .projects
          .locations
          .global
          .policyBasedRoutes;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPolicyBasedRoute());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkPolicyBasedRoute(response as api.PolicyBasedRoute);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.NetworkconnectivityApi(mock)
          .projects
          .locations
          .global
          .policyBasedRoutes;
      final arg_resource = 'foo';
      final arg_options_requestedPolicyVersion = 42;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          core.int.parse(queryMap['options.requestedPolicyVersion']!.first),
          unittest.equals(arg_options_requestedPolicyVersion),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getIamPolicy(arg_resource,
          options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.NetworkconnectivityApi(mock)
          .projects
          .locations
          .global
          .policyBasedRoutes;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['filter']!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          queryMap['orderBy']!.first,
          unittest.equals(arg_orderBy),
        );
        unittest.expect(
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListPolicyBasedRoutesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListPolicyBasedRoutesResponse(
          response as api.ListPolicyBasedRoutesResponse);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.NetworkconnectivityApi(mock)
          .projects
          .locations
          .global
          .policyBasedRoutes;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetIamPolicyRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.setIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.NetworkconnectivityApi(mock)
          .projects
          .locations
          .global
          .policyBasedRoutes;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTestIamPermissionsRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildTestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.testIamPermissions(arg_request, arg_resource,
          $fields: arg_$fields);
      checkTestIamPermissionsResponse(
          response as api.TestIamPermissionsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsInternalRangesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkconnectivityApi(mock).projects.locations.internalRanges;
      final arg_request = buildInternalRange();
      final arg_parent = 'foo';
      final arg_internalRangeId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.InternalRange.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkInternalRange(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['internalRangeId']!.first,
          unittest.equals(arg_internalRangeId),
        );
        unittest.expect(
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          internalRangeId: arg_internalRangeId,
          requestId: arg_requestId,
          $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkconnectivityApi(mock).projects.locations.internalRanges;
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name,
          requestId: arg_requestId, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkconnectivityApi(mock).projects.locations.internalRanges;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildInternalRange());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkInternalRange(response as api.InternalRange);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkconnectivityApi(mock).projects.locations.internalRanges;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['filter']!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          queryMap['orderBy']!.first,
          unittest.equals(arg_orderBy),
        );
        unittest.expect(
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListInternalRangesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListInternalRangesResponse(
          response as api.ListInternalRangesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkconnectivityApi(mock).projects.locations.internalRanges;
      final arg_request = buildInternalRange();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.InternalRange.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkInternalRange(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
        );
        unittest.expect(
          queryMap['updateMask']!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          requestId: arg_requestId,
          updateMask: arg_updateMask,
          $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });
  });

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkconnectivityApi(mock).projects.locations.operations;
      final arg_request = buildGoogleLongrunningCancelOperationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleLongrunningCancelOperationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleLongrunningCancelOperationRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.cancel(arg_request, arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkconnectivityApi(mock).projects.locations.operations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkconnectivityApi(mock).projects.locations.operations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkconnectivityApi(mock).projects.locations.operations;
      final arg_name = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['filter']!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleLongrunningListOperationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_name,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleLongrunningListOperationsResponse(
          response as api.GoogleLongrunningListOperationsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsRegionalEndpointsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkconnectivityApi(mock).projects.locations.regionalEndpoints;
      final arg_request = buildRegionalEndpoint();
      final arg_parent = 'foo';
      final arg_regionalEndpointId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RegionalEndpoint.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRegionalEndpoint(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['regionalEndpointId']!.first,
          unittest.equals(arg_regionalEndpointId),
        );
        unittest.expect(
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          regionalEndpointId: arg_regionalEndpointId,
          requestId: arg_requestId,
          $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkconnectivityApi(mock).projects.locations.regionalEndpoints;
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name,
          requestId: arg_requestId, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkconnectivityApi(mock).projects.locations.regionalEndpoints;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildRegionalEndpoint());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkRegionalEndpoint(response as api.RegionalEndpoint);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkconnectivityApi(mock).projects.locations.regionalEndpoints;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['filter']!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          queryMap['orderBy']!.first,
          unittest.equals(arg_orderBy),
        );
        unittest.expect(
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListRegionalEndpointsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListRegionalEndpointsResponse(
          response as api.ListRegionalEndpointsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsServiceClassesResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkconnectivityApi(mock).projects.locations.serviceClasses;
      final arg_name = 'foo';
      final arg_etag = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['etag']!.first,
          unittest.equals(arg_etag),
        );
        unittest.expect(
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name,
          etag: arg_etag, requestId: arg_requestId, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkconnectivityApi(mock).projects.locations.serviceClasses;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildServiceClass());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkServiceClass(response as api.ServiceClass);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkconnectivityApi(mock).projects.locations.serviceClasses;
      final arg_resource = 'foo';
      final arg_options_requestedPolicyVersion = 42;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          core.int.parse(queryMap['options.requestedPolicyVersion']!.first),
          unittest.equals(arg_options_requestedPolicyVersion),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getIamPolicy(arg_resource,
          options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkconnectivityApi(mock).projects.locations.serviceClasses;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['filter']!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          queryMap['orderBy']!.first,
          unittest.equals(arg_orderBy),
        );
        unittest.expect(
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListServiceClassesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListServiceClassesResponse(
          response as api.ListServiceClassesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkconnectivityApi(mock).projects.locations.serviceClasses;
      final arg_request = buildServiceClass();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ServiceClass.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkServiceClass(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
        );
        unittest.expect(
          queryMap['updateMask']!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          requestId: arg_requestId,
          updateMask: arg_updateMask,
          $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkconnectivityApi(mock).projects.locations.serviceClasses;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetIamPolicyRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.setIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res =
          api.NetworkconnectivityApi(mock).projects.locations.serviceClasses;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTestIamPermissionsRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildTestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.testIamPermissions(arg_request, arg_resource,
          $fields: arg_$fields);
      checkTestIamPermissionsResponse(
          response as api.TestIamPermissionsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsServiceConnectionMapsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.NetworkconnectivityApi(mock)
          .projects
          .locations
          .serviceConnectionMaps;
      final arg_request = buildServiceConnectionMap();
      final arg_parent = 'foo';
      final arg_requestId = 'foo';
      final arg_serviceConnectionMapId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ServiceConnectionMap.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkServiceConnectionMap(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
        );
        unittest.expect(
          queryMap['serviceConnectionMapId']!.first,
          unittest.equals(arg_serviceConnectionMapId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          requestId: arg_requestId,
          serviceConnectionMapId: arg_serviceConnectionMapId,
          $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.NetworkconnectivityApi(mock)
          .projects
          .locations
          .serviceConnectionMaps;
      final arg_name = 'foo';
      final arg_etag = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['etag']!.first,
          unittest.equals(arg_etag),
        );
        unittest.expect(
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name,
          etag: arg_etag, requestId: arg_requestId, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.NetworkconnectivityApi(mock)
          .projects
          .locations
          .serviceConnectionMaps;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildServiceConnectionMap());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkServiceConnectionMap(response as api.ServiceConnectionMap);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.NetworkconnectivityApi(mock)
          .projects
          .locations
          .serviceConnectionMaps;
      final arg_resource = 'foo';
      final arg_options_requestedPolicyVersion = 42;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          core.int.parse(queryMap['options.requestedPolicyVersion']!.first),
          unittest.equals(arg_options_requestedPolicyVersion),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getIamPolicy(arg_resource,
          options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.NetworkconnectivityApi(mock)
          .projects
          .locations
          .serviceConnectionMaps;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['filter']!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          queryMap['orderBy']!.first,
          unittest.equals(arg_orderBy),
        );
        unittest.expect(
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildListServiceConnectionMapsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListServiceConnectionMapsResponse(
          response as api.ListServiceConnectionMapsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.NetworkconnectivityApi(mock)
          .projects
          .locations
          .serviceConnectionMaps;
      final arg_request = buildServiceConnectionMap();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ServiceConnectionMap.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkServiceConnectionMap(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
        );
        unittest.expect(
          queryMap['updateMask']!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          requestId: arg_requestId,
          updateMask: arg_updateMask,
          $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.NetworkconnectivityApi(mock)
          .projects
          .locations
          .serviceConnectionMaps;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetIamPolicyRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.setIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.NetworkconnectivityApi(mock)
          .projects
          .locations
          .serviceConnectionMaps;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTestIamPermissionsRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildTestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.testIamPermissions(arg_request, arg_resource,
          $fields: arg_$fields);
      checkTestIamPermissionsResponse(
          response as api.TestIamPermissionsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsServiceConnectionPoliciesResource',
      () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.NetworkconnectivityApi(mock)
          .projects
          .locations
          .serviceConnectionPolicies;
      final arg_request = buildServiceConnectionPolicy();
      final arg_parent = 'foo';
      final arg_requestId = 'foo';
      final arg_serviceConnectionPolicyId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ServiceConnectionPolicy.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkServiceConnectionPolicy(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
        );
        unittest.expect(
          queryMap['serviceConnectionPolicyId']!.first,
          unittest.equals(arg_serviceConnectionPolicyId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          requestId: arg_requestId,
          serviceConnectionPolicyId: arg_serviceConnectionPolicyId,
          $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.NetworkconnectivityApi(mock)
          .projects
          .locations
          .serviceConnectionPolicies;
      final arg_name = 'foo';
      final arg_etag = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['etag']!.first,
          unittest.equals(arg_etag),
        );
        unittest.expect(
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name,
          etag: arg_etag, requestId: arg_requestId, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.NetworkconnectivityApi(mock)
          .projects
          .locations
          .serviceConnectionPolicies;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildServiceConnectionPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkServiceConnectionPolicy(response as api.ServiceConnectionPolicy);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.NetworkconnectivityApi(mock)
          .projects
          .locations
          .serviceConnectionPolicies;
      final arg_resource = 'foo';
      final arg_options_requestedPolicyVersion = 42;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          core.int.parse(queryMap['options.requestedPolicyVersion']!.first),
          unittest.equals(arg_options_requestedPolicyVersion),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getIamPolicy(arg_resource,
          options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.NetworkconnectivityApi(mock)
          .projects
          .locations
          .serviceConnectionPolicies;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['filter']!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          queryMap['orderBy']!.first,
          unittest.equals(arg_orderBy),
        );
        unittest.expect(
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildListServiceConnectionPoliciesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListServiceConnectionPoliciesResponse(
          response as api.ListServiceConnectionPoliciesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.NetworkconnectivityApi(mock)
          .projects
          .locations
          .serviceConnectionPolicies;
      final arg_request = buildServiceConnectionPolicy();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ServiceConnectionPolicy.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkServiceConnectionPolicy(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
        );
        unittest.expect(
          queryMap['updateMask']!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          requestId: arg_requestId,
          updateMask: arg_updateMask,
          $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.NetworkconnectivityApi(mock)
          .projects
          .locations
          .serviceConnectionPolicies;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetIamPolicyRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.setIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.NetworkconnectivityApi(mock)
          .projects
          .locations
          .serviceConnectionPolicies;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTestIamPermissionsRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildTestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.testIamPermissions(arg_request, arg_resource,
          $fields: arg_$fields);
      checkTestIamPermissionsResponse(
          response as api.TestIamPermissionsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsServiceConnectionTokensResource',
      () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.NetworkconnectivityApi(mock)
          .projects
          .locations
          .serviceConnectionTokens;
      final arg_request = buildServiceConnectionToken();
      final arg_parent = 'foo';
      final arg_requestId = 'foo';
      final arg_serviceConnectionTokenId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ServiceConnectionToken.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkServiceConnectionToken(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
        );
        unittest.expect(
          queryMap['serviceConnectionTokenId']!.first,
          unittest.equals(arg_serviceConnectionTokenId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          requestId: arg_requestId,
          serviceConnectionTokenId: arg_serviceConnectionTokenId,
          $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.NetworkconnectivityApi(mock)
          .projects
          .locations
          .serviceConnectionTokens;
      final arg_name = 'foo';
      final arg_etag = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['etag']!.first,
          unittest.equals(arg_etag),
        );
        unittest.expect(
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name,
          etag: arg_etag, requestId: arg_requestId, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.NetworkconnectivityApi(mock)
          .projects
          .locations
          .serviceConnectionTokens;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildServiceConnectionToken());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkServiceConnectionToken(response as api.ServiceConnectionToken);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.NetworkconnectivityApi(mock)
          .projects
          .locations
          .serviceConnectionTokens;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['filter']!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          queryMap['orderBy']!.first,
          unittest.equals(arg_orderBy),
        );
        unittest.expect(
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildListServiceConnectionTokensResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListServiceConnectionTokensResponse(
          response as api.ListServiceConnectionTokensResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsSpokesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.NetworkconnectivityApi(mock).projects.locations.spokes;
      final arg_request = buildSpoke();
      final arg_parent = 'foo';
      final arg_requestId = 'foo';
      final arg_spokeId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Spoke.fromJson(json as core.Map<core.String, core.dynamic>);
        checkSpoke(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
        );
        unittest.expect(
          queryMap['spokeId']!.first,
          unittest.equals(arg_spokeId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          requestId: arg_requestId, spokeId: arg_spokeId, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.NetworkconnectivityApi(mock).projects.locations.spokes;
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name,
          requestId: arg_requestId, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.NetworkconnectivityApi(mock).projects.locations.spokes;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildSpoke());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkSpoke(response as api.Spoke);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.NetworkconnectivityApi(mock).projects.locations.spokes;
      final arg_resource = 'foo';
      final arg_options_requestedPolicyVersion = 42;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          core.int.parse(queryMap['options.requestedPolicyVersion']!.first),
          unittest.equals(arg_options_requestedPolicyVersion),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getIamPolicy(arg_resource,
          options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.NetworkconnectivityApi(mock).projects.locations.spokes;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['filter']!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          queryMap['orderBy']!.first,
          unittest.equals(arg_orderBy),
        );
        unittest.expect(
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListSpokesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListSpokesResponse(response as api.ListSpokesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.NetworkconnectivityApi(mock).projects.locations.spokes;
      final arg_request = buildSpoke();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Spoke.fromJson(json as core.Map<core.String, core.dynamic>);
        checkSpoke(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
        );
        unittest.expect(
          queryMap['updateMask']!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          requestId: arg_requestId,
          updateMask: arg_updateMask,
          $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.NetworkconnectivityApi(mock).projects.locations.spokes;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetIamPolicyRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.setIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.NetworkconnectivityApi(mock).projects.locations.spokes;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTestIamPermissionsRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildTestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.testIamPermissions(arg_request, arg_resource,
          $fields: arg_$fields);
      checkTestIamPermissionsResponse(
          response as api.TestIamPermissionsResponse);
    });
  });
}
