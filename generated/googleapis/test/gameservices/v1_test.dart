// ignore_for_file: camel_case_types
// ignore_for_file: cascade_invocations
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_const_declarations
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:googleapis/gameservices/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<api.AuditLogConfig> buildUnnamed112() => [
      buildAuditLogConfig(),
      buildAuditLogConfig(),
    ];

void checkUnnamed112(core.List<api.AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditLogConfig(o[0]);
  checkAuditLogConfig(o[1]);
}

core.List<core.String> buildUnnamed113() => [
      'foo',
      'foo',
    ];

void checkUnnamed113(core.List<core.String> o) {
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

core.int buildCounterAuditConfig = 0;
api.AuditConfig buildAuditConfig() {
  final o = api.AuditConfig();
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed112();
    o.exemptedMembers = buildUnnamed113();
    o.service = 'foo';
  }
  buildCounterAuditConfig--;
  return o;
}

void checkAuditConfig(api.AuditConfig o) {
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    checkUnnamed112(o.auditLogConfigs!);
    checkUnnamed113(o.exemptedMembers!);
    unittest.expect(
      o.service!,
      unittest.equals('foo'),
    );
  }
  buildCounterAuditConfig--;
}

core.List<core.String> buildUnnamed114() => [
      'foo',
      'foo',
    ];

void checkUnnamed114(core.List<core.String> o) {
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
    o.exemptedMembers = buildUnnamed114();
    o.ignoreChildExemptions = true;
    o.logType = 'foo';
  }
  buildCounterAuditLogConfig--;
  return o;
}

void checkAuditLogConfig(api.AuditLogConfig o) {
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    checkUnnamed114(o.exemptedMembers!);
    unittest.expect(o.ignoreChildExemptions!, unittest.isTrue);
    unittest.expect(
      o.logType!,
      unittest.equals('foo'),
    );
  }
  buildCounterAuditLogConfig--;
}

core.int buildCounterAuthorizationLoggingOptions = 0;
api.AuthorizationLoggingOptions buildAuthorizationLoggingOptions() {
  final o = api.AuthorizationLoggingOptions();
  buildCounterAuthorizationLoggingOptions++;
  if (buildCounterAuthorizationLoggingOptions < 3) {
    o.permissionType = 'foo';
  }
  buildCounterAuthorizationLoggingOptions--;
  return o;
}

void checkAuthorizationLoggingOptions(api.AuthorizationLoggingOptions o) {
  buildCounterAuthorizationLoggingOptions++;
  if (buildCounterAuthorizationLoggingOptions < 3) {
    unittest.expect(
      o.permissionType!,
      unittest.equals('foo'),
    );
  }
  buildCounterAuthorizationLoggingOptions--;
}

core.List<core.String> buildUnnamed115() => [
      'foo',
      'foo',
    ];

void checkUnnamed115(core.List<core.String> o) {
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
    o.bindingId = 'foo';
    o.condition = buildExpr();
    o.members = buildUnnamed115();
    o.role = 'foo';
  }
  buildCounterBinding--;
  return o;
}

void checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    unittest.expect(
      o.bindingId!,
      unittest.equals('foo'),
    );
    checkExpr(o.condition!);
    checkUnnamed115(o.members!);
    unittest.expect(
      o.role!,
      unittest.equals('foo'),
    );
  }
  buildCounterBinding--;
}

core.int buildCounterCancelOperationRequest = 0;
api.CancelOperationRequest buildCancelOperationRequest() {
  final o = api.CancelOperationRequest();
  buildCounterCancelOperationRequest++;
  if (buildCounterCancelOperationRequest < 3) {}
  buildCounterCancelOperationRequest--;
  return o;
}

void checkCancelOperationRequest(api.CancelOperationRequest o) {
  buildCounterCancelOperationRequest++;
  if (buildCounterCancelOperationRequest < 3) {}
  buildCounterCancelOperationRequest--;
}

core.int buildCounterCloudAuditOptions = 0;
api.CloudAuditOptions buildCloudAuditOptions() {
  final o = api.CloudAuditOptions();
  buildCounterCloudAuditOptions++;
  if (buildCounterCloudAuditOptions < 3) {
    o.authorizationLoggingOptions = buildAuthorizationLoggingOptions();
    o.logName = 'foo';
  }
  buildCounterCloudAuditOptions--;
  return o;
}

void checkCloudAuditOptions(api.CloudAuditOptions o) {
  buildCounterCloudAuditOptions++;
  if (buildCounterCloudAuditOptions < 3) {
    checkAuthorizationLoggingOptions(o.authorizationLoggingOptions!);
    unittest.expect(
      o.logName!,
      unittest.equals('foo'),
    );
  }
  buildCounterCloudAuditOptions--;
}

core.List<core.String> buildUnnamed116() => [
      'foo',
      'foo',
    ];

void checkUnnamed116(core.List<core.String> o) {
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

core.int buildCounterCondition = 0;
api.Condition buildCondition() {
  final o = api.Condition();
  buildCounterCondition++;
  if (buildCounterCondition < 3) {
    o.iam = 'foo';
    o.op = 'foo';
    o.svc = 'foo';
    o.sys = 'foo';
    o.values = buildUnnamed116();
  }
  buildCounterCondition--;
  return o;
}

void checkCondition(api.Condition o) {
  buildCounterCondition++;
  if (buildCounterCondition < 3) {
    unittest.expect(
      o.iam!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.op!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.svc!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sys!,
      unittest.equals('foo'),
    );
    checkUnnamed116(o.values!);
  }
  buildCounterCondition--;
}

core.List<api.CustomField> buildUnnamed117() => [
      buildCustomField(),
      buildCustomField(),
    ];

void checkUnnamed117(core.List<api.CustomField> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomField(o[0]);
  checkCustomField(o[1]);
}

core.int buildCounterCounterOptions = 0;
api.CounterOptions buildCounterOptions() {
  final o = api.CounterOptions();
  buildCounterCounterOptions++;
  if (buildCounterCounterOptions < 3) {
    o.customFields = buildUnnamed117();
    o.field = 'foo';
    o.metric = 'foo';
  }
  buildCounterCounterOptions--;
  return o;
}

void checkCounterOptions(api.CounterOptions o) {
  buildCounterCounterOptions++;
  if (buildCounterCounterOptions < 3) {
    checkUnnamed117(o.customFields!);
    unittest.expect(
      o.field!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.metric!,
      unittest.equals('foo'),
    );
  }
  buildCounterCounterOptions--;
}

core.int buildCounterCustomField = 0;
api.CustomField buildCustomField() {
  final o = api.CustomField();
  buildCounterCustomField++;
  if (buildCounterCustomField < 3) {
    o.name = 'foo';
    o.value = 'foo';
  }
  buildCounterCustomField--;
  return o;
}

void checkCustomField(api.CustomField o) {
  buildCounterCustomField++;
  if (buildCounterCustomField < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterCustomField--;
}

core.int buildCounterDataAccessOptions = 0;
api.DataAccessOptions buildDataAccessOptions() {
  final o = api.DataAccessOptions();
  buildCounterDataAccessOptions++;
  if (buildCounterDataAccessOptions < 3) {
    o.logMode = 'foo';
  }
  buildCounterDataAccessOptions--;
  return o;
}

void checkDataAccessOptions(api.DataAccessOptions o) {
  buildCounterDataAccessOptions++;
  if (buildCounterDataAccessOptions < 3) {
    unittest.expect(
      o.logMode!,
      unittest.equals('foo'),
    );
  }
  buildCounterDataAccessOptions--;
}

core.List<api.DeployedFleetDetails> buildUnnamed118() => [
      buildDeployedFleetDetails(),
      buildDeployedFleetDetails(),
    ];

void checkUnnamed118(core.List<api.DeployedFleetDetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeployedFleetDetails(o[0]);
  checkDeployedFleetDetails(o[1]);
}

core.int buildCounterDeployedClusterState = 0;
api.DeployedClusterState buildDeployedClusterState() {
  final o = api.DeployedClusterState();
  buildCounterDeployedClusterState++;
  if (buildCounterDeployedClusterState < 3) {
    o.cluster = 'foo';
    o.fleetDetails = buildUnnamed118();
  }
  buildCounterDeployedClusterState--;
  return o;
}

void checkDeployedClusterState(api.DeployedClusterState o) {
  buildCounterDeployedClusterState++;
  if (buildCounterDeployedClusterState < 3) {
    unittest.expect(
      o.cluster!,
      unittest.equals('foo'),
    );
    checkUnnamed118(o.fleetDetails!);
  }
  buildCounterDeployedClusterState--;
}

core.int buildCounterDeployedFleet = 0;
api.DeployedFleet buildDeployedFleet() {
  final o = api.DeployedFleet();
  buildCounterDeployedFleet++;
  if (buildCounterDeployedFleet < 3) {
    o.fleet = 'foo';
    o.fleetSpec = 'foo';
    o.specSource = buildSpecSource();
    o.status = buildDeployedFleetStatus();
  }
  buildCounterDeployedFleet--;
  return o;
}

void checkDeployedFleet(api.DeployedFleet o) {
  buildCounterDeployedFleet++;
  if (buildCounterDeployedFleet < 3) {
    unittest.expect(
      o.fleet!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fleetSpec!,
      unittest.equals('foo'),
    );
    checkSpecSource(o.specSource!);
    checkDeployedFleetStatus(o.status!);
  }
  buildCounterDeployedFleet--;
}

core.int buildCounterDeployedFleetAutoscaler = 0;
api.DeployedFleetAutoscaler buildDeployedFleetAutoscaler() {
  final o = api.DeployedFleetAutoscaler();
  buildCounterDeployedFleetAutoscaler++;
  if (buildCounterDeployedFleetAutoscaler < 3) {
    o.autoscaler = 'foo';
    o.fleetAutoscalerSpec = 'foo';
    o.specSource = buildSpecSource();
  }
  buildCounterDeployedFleetAutoscaler--;
  return o;
}

void checkDeployedFleetAutoscaler(api.DeployedFleetAutoscaler o) {
  buildCounterDeployedFleetAutoscaler++;
  if (buildCounterDeployedFleetAutoscaler < 3) {
    unittest.expect(
      o.autoscaler!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fleetAutoscalerSpec!,
      unittest.equals('foo'),
    );
    checkSpecSource(o.specSource!);
  }
  buildCounterDeployedFleetAutoscaler--;
}

core.int buildCounterDeployedFleetDetails = 0;
api.DeployedFleetDetails buildDeployedFleetDetails() {
  final o = api.DeployedFleetDetails();
  buildCounterDeployedFleetDetails++;
  if (buildCounterDeployedFleetDetails < 3) {
    o.deployedAutoscaler = buildDeployedFleetAutoscaler();
    o.deployedFleet = buildDeployedFleet();
  }
  buildCounterDeployedFleetDetails--;
  return o;
}

void checkDeployedFleetDetails(api.DeployedFleetDetails o) {
  buildCounterDeployedFleetDetails++;
  if (buildCounterDeployedFleetDetails < 3) {
    checkDeployedFleetAutoscaler(o.deployedAutoscaler!);
    checkDeployedFleet(o.deployedFleet!);
  }
  buildCounterDeployedFleetDetails--;
}

core.int buildCounterDeployedFleetStatus = 0;
api.DeployedFleetStatus buildDeployedFleetStatus() {
  final o = api.DeployedFleetStatus();
  buildCounterDeployedFleetStatus++;
  if (buildCounterDeployedFleetStatus < 3) {
    o.allocatedReplicas = 'foo';
    o.readyReplicas = 'foo';
    o.replicas = 'foo';
    o.reservedReplicas = 'foo';
  }
  buildCounterDeployedFleetStatus--;
  return o;
}

void checkDeployedFleetStatus(api.DeployedFleetStatus o) {
  buildCounterDeployedFleetStatus++;
  if (buildCounterDeployedFleetStatus < 3) {
    unittest.expect(
      o.allocatedReplicas!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.readyReplicas!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.replicas!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reservedReplicas!,
      unittest.equals('foo'),
    );
  }
  buildCounterDeployedFleetStatus--;
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

core.int buildCounterFetchDeploymentStateRequest = 0;
api.FetchDeploymentStateRequest buildFetchDeploymentStateRequest() {
  final o = api.FetchDeploymentStateRequest();
  buildCounterFetchDeploymentStateRequest++;
  if (buildCounterFetchDeploymentStateRequest < 3) {}
  buildCounterFetchDeploymentStateRequest--;
  return o;
}

void checkFetchDeploymentStateRequest(api.FetchDeploymentStateRequest o) {
  buildCounterFetchDeploymentStateRequest++;
  if (buildCounterFetchDeploymentStateRequest < 3) {}
  buildCounterFetchDeploymentStateRequest--;
}

core.List<api.DeployedClusterState> buildUnnamed119() => [
      buildDeployedClusterState(),
      buildDeployedClusterState(),
    ];

void checkUnnamed119(core.List<api.DeployedClusterState> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeployedClusterState(o[0]);
  checkDeployedClusterState(o[1]);
}

core.List<core.String> buildUnnamed120() => [
      'foo',
      'foo',
    ];

void checkUnnamed120(core.List<core.String> o) {
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

core.int buildCounterFetchDeploymentStateResponse = 0;
api.FetchDeploymentStateResponse buildFetchDeploymentStateResponse() {
  final o = api.FetchDeploymentStateResponse();
  buildCounterFetchDeploymentStateResponse++;
  if (buildCounterFetchDeploymentStateResponse < 3) {
    o.clusterState = buildUnnamed119();
    o.unavailable = buildUnnamed120();
  }
  buildCounterFetchDeploymentStateResponse--;
  return o;
}

void checkFetchDeploymentStateResponse(api.FetchDeploymentStateResponse o) {
  buildCounterFetchDeploymentStateResponse++;
  if (buildCounterFetchDeploymentStateResponse < 3) {
    checkUnnamed119(o.clusterState!);
    checkUnnamed120(o.unavailable!);
  }
  buildCounterFetchDeploymentStateResponse--;
}

core.int buildCounterFleetConfig = 0;
api.FleetConfig buildFleetConfig() {
  final o = api.FleetConfig();
  buildCounterFleetConfig++;
  if (buildCounterFleetConfig < 3) {
    o.fleetSpec = 'foo';
    o.name = 'foo';
  }
  buildCounterFleetConfig--;
  return o;
}

void checkFleetConfig(api.FleetConfig o) {
  buildCounterFleetConfig++;
  if (buildCounterFleetConfig < 3) {
    unittest.expect(
      o.fleetSpec!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterFleetConfig--;
}

core.Map<core.String, core.String> buildUnnamed121() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed121(core.Map<core.String, core.String> o) {
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

core.int buildCounterGameServerCluster = 0;
api.GameServerCluster buildGameServerCluster() {
  final o = api.GameServerCluster();
  buildCounterGameServerCluster++;
  if (buildCounterGameServerCluster < 3) {
    o.clusterState = buildKubernetesClusterState();
    o.connectionInfo = buildGameServerClusterConnectionInfo();
    o.createTime = 'foo';
    o.description = 'foo';
    o.etag = 'foo';
    o.labels = buildUnnamed121();
    o.name = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGameServerCluster--;
  return o;
}

void checkGameServerCluster(api.GameServerCluster o) {
  buildCounterGameServerCluster++;
  if (buildCounterGameServerCluster < 3) {
    checkKubernetesClusterState(o.clusterState!);
    checkGameServerClusterConnectionInfo(o.connectionInfo!);
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
    checkUnnamed121(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGameServerCluster--;
}

core.int buildCounterGameServerClusterConnectionInfo = 0;
api.GameServerClusterConnectionInfo buildGameServerClusterConnectionInfo() {
  final o = api.GameServerClusterConnectionInfo();
  buildCounterGameServerClusterConnectionInfo++;
  if (buildCounterGameServerClusterConnectionInfo < 3) {
    o.gkeClusterReference = buildGkeClusterReference();
    o.namespace = 'foo';
  }
  buildCounterGameServerClusterConnectionInfo--;
  return o;
}

void checkGameServerClusterConnectionInfo(
    api.GameServerClusterConnectionInfo o) {
  buildCounterGameServerClusterConnectionInfo++;
  if (buildCounterGameServerClusterConnectionInfo < 3) {
    checkGkeClusterReference(o.gkeClusterReference!);
    unittest.expect(
      o.namespace!,
      unittest.equals('foo'),
    );
  }
  buildCounterGameServerClusterConnectionInfo--;
}

core.List<api.FleetConfig> buildUnnamed122() => [
      buildFleetConfig(),
      buildFleetConfig(),
    ];

void checkUnnamed122(core.List<api.FleetConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFleetConfig(o[0]);
  checkFleetConfig(o[1]);
}

core.Map<core.String, core.String> buildUnnamed123() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed123(core.Map<core.String, core.String> o) {
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

core.List<api.ScalingConfig> buildUnnamed124() => [
      buildScalingConfig(),
      buildScalingConfig(),
    ];

void checkUnnamed124(core.List<api.ScalingConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkScalingConfig(o[0]);
  checkScalingConfig(o[1]);
}

core.int buildCounterGameServerConfig = 0;
api.GameServerConfig buildGameServerConfig() {
  final o = api.GameServerConfig();
  buildCounterGameServerConfig++;
  if (buildCounterGameServerConfig < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.fleetConfigs = buildUnnamed122();
    o.labels = buildUnnamed123();
    o.name = 'foo';
    o.scalingConfigs = buildUnnamed124();
    o.updateTime = 'foo';
  }
  buildCounterGameServerConfig--;
  return o;
}

void checkGameServerConfig(api.GameServerConfig o) {
  buildCounterGameServerConfig++;
  if (buildCounterGameServerConfig < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkUnnamed122(o.fleetConfigs!);
    checkUnnamed123(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed124(o.scalingConfigs!);
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGameServerConfig--;
}

core.int buildCounterGameServerConfigOverride = 0;
api.GameServerConfigOverride buildGameServerConfigOverride() {
  final o = api.GameServerConfigOverride();
  buildCounterGameServerConfigOverride++;
  if (buildCounterGameServerConfigOverride < 3) {
    o.configVersion = 'foo';
    o.realmsSelector = buildRealmSelector();
  }
  buildCounterGameServerConfigOverride--;
  return o;
}

void checkGameServerConfigOverride(api.GameServerConfigOverride o) {
  buildCounterGameServerConfigOverride++;
  if (buildCounterGameServerConfigOverride < 3) {
    unittest.expect(
      o.configVersion!,
      unittest.equals('foo'),
    );
    checkRealmSelector(o.realmsSelector!);
  }
  buildCounterGameServerConfigOverride--;
}

core.Map<core.String, core.String> buildUnnamed125() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed125(core.Map<core.String, core.String> o) {
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

core.int buildCounterGameServerDeployment = 0;
api.GameServerDeployment buildGameServerDeployment() {
  final o = api.GameServerDeployment();
  buildCounterGameServerDeployment++;
  if (buildCounterGameServerDeployment < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.etag = 'foo';
    o.labels = buildUnnamed125();
    o.name = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGameServerDeployment--;
  return o;
}

void checkGameServerDeployment(api.GameServerDeployment o) {
  buildCounterGameServerDeployment++;
  if (buildCounterGameServerDeployment < 3) {
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
    checkUnnamed125(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGameServerDeployment--;
}

core.List<api.GameServerConfigOverride> buildUnnamed126() => [
      buildGameServerConfigOverride(),
      buildGameServerConfigOverride(),
    ];

void checkUnnamed126(core.List<api.GameServerConfigOverride> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGameServerConfigOverride(o[0]);
  checkGameServerConfigOverride(o[1]);
}

core.int buildCounterGameServerDeploymentRollout = 0;
api.GameServerDeploymentRollout buildGameServerDeploymentRollout() {
  final o = api.GameServerDeploymentRollout();
  buildCounterGameServerDeploymentRollout++;
  if (buildCounterGameServerDeploymentRollout < 3) {
    o.createTime = 'foo';
    o.defaultGameServerConfig = 'foo';
    o.etag = 'foo';
    o.gameServerConfigOverrides = buildUnnamed126();
    o.name = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGameServerDeploymentRollout--;
  return o;
}

void checkGameServerDeploymentRollout(api.GameServerDeploymentRollout o) {
  buildCounterGameServerDeploymentRollout++;
  if (buildCounterGameServerDeploymentRollout < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.defaultGameServerConfig!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    checkUnnamed126(o.gameServerConfigOverrides!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGameServerDeploymentRollout--;
}

core.int buildCounterGkeClusterReference = 0;
api.GkeClusterReference buildGkeClusterReference() {
  final o = api.GkeClusterReference();
  buildCounterGkeClusterReference++;
  if (buildCounterGkeClusterReference < 3) {
    o.cluster = 'foo';
  }
  buildCounterGkeClusterReference--;
  return o;
}

void checkGkeClusterReference(api.GkeClusterReference o) {
  buildCounterGkeClusterReference++;
  if (buildCounterGkeClusterReference < 3) {
    unittest.expect(
      o.cluster!,
      unittest.equals('foo'),
    );
  }
  buildCounterGkeClusterReference--;
}

core.int buildCounterKubernetesClusterState = 0;
api.KubernetesClusterState buildKubernetesClusterState() {
  final o = api.KubernetesClusterState();
  buildCounterKubernetesClusterState++;
  if (buildCounterKubernetesClusterState < 3) {
    o.agonesVersionInstalled = 'foo';
    o.agonesVersionTargeted = 'foo';
    o.installationState = 'foo';
    o.kubernetesVersionInstalled = 'foo';
    o.provider = 'foo';
    o.versionInstalledErrorMessage = 'foo';
  }
  buildCounterKubernetesClusterState--;
  return o;
}

void checkKubernetesClusterState(api.KubernetesClusterState o) {
  buildCounterKubernetesClusterState++;
  if (buildCounterKubernetesClusterState < 3) {
    unittest.expect(
      o.agonesVersionInstalled!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.agonesVersionTargeted!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.installationState!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kubernetesVersionInstalled!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.provider!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.versionInstalledErrorMessage!,
      unittest.equals('foo'),
    );
  }
  buildCounterKubernetesClusterState--;
}

core.Map<core.String, core.String> buildUnnamed127() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed127(core.Map<core.String, core.String> o) {
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

core.int buildCounterLabelSelector = 0;
api.LabelSelector buildLabelSelector() {
  final o = api.LabelSelector();
  buildCounterLabelSelector++;
  if (buildCounterLabelSelector < 3) {
    o.labels = buildUnnamed127();
  }
  buildCounterLabelSelector--;
  return o;
}

void checkLabelSelector(api.LabelSelector o) {
  buildCounterLabelSelector++;
  if (buildCounterLabelSelector < 3) {
    checkUnnamed127(o.labels!);
  }
  buildCounterLabelSelector--;
}

core.List<api.GameServerCluster> buildUnnamed128() => [
      buildGameServerCluster(),
      buildGameServerCluster(),
    ];

void checkUnnamed128(core.List<api.GameServerCluster> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGameServerCluster(o[0]);
  checkGameServerCluster(o[1]);
}

core.List<core.String> buildUnnamed129() => [
      'foo',
      'foo',
    ];

void checkUnnamed129(core.List<core.String> o) {
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

core.int buildCounterListGameServerClustersResponse = 0;
api.ListGameServerClustersResponse buildListGameServerClustersResponse() {
  final o = api.ListGameServerClustersResponse();
  buildCounterListGameServerClustersResponse++;
  if (buildCounterListGameServerClustersResponse < 3) {
    o.gameServerClusters = buildUnnamed128();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed129();
  }
  buildCounterListGameServerClustersResponse--;
  return o;
}

void checkListGameServerClustersResponse(api.ListGameServerClustersResponse o) {
  buildCounterListGameServerClustersResponse++;
  if (buildCounterListGameServerClustersResponse < 3) {
    checkUnnamed128(o.gameServerClusters!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed129(o.unreachable!);
  }
  buildCounterListGameServerClustersResponse--;
}

core.List<api.GameServerConfig> buildUnnamed130() => [
      buildGameServerConfig(),
      buildGameServerConfig(),
    ];

void checkUnnamed130(core.List<api.GameServerConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGameServerConfig(o[0]);
  checkGameServerConfig(o[1]);
}

core.List<core.String> buildUnnamed131() => [
      'foo',
      'foo',
    ];

void checkUnnamed131(core.List<core.String> o) {
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

core.int buildCounterListGameServerConfigsResponse = 0;
api.ListGameServerConfigsResponse buildListGameServerConfigsResponse() {
  final o = api.ListGameServerConfigsResponse();
  buildCounterListGameServerConfigsResponse++;
  if (buildCounterListGameServerConfigsResponse < 3) {
    o.gameServerConfigs = buildUnnamed130();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed131();
  }
  buildCounterListGameServerConfigsResponse--;
  return o;
}

void checkListGameServerConfigsResponse(api.ListGameServerConfigsResponse o) {
  buildCounterListGameServerConfigsResponse++;
  if (buildCounterListGameServerConfigsResponse < 3) {
    checkUnnamed130(o.gameServerConfigs!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed131(o.unreachable!);
  }
  buildCounterListGameServerConfigsResponse--;
}

core.List<api.GameServerDeployment> buildUnnamed132() => [
      buildGameServerDeployment(),
      buildGameServerDeployment(),
    ];

void checkUnnamed132(core.List<api.GameServerDeployment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGameServerDeployment(o[0]);
  checkGameServerDeployment(o[1]);
}

core.List<core.String> buildUnnamed133() => [
      'foo',
      'foo',
    ];

void checkUnnamed133(core.List<core.String> o) {
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

core.int buildCounterListGameServerDeploymentsResponse = 0;
api.ListGameServerDeploymentsResponse buildListGameServerDeploymentsResponse() {
  final o = api.ListGameServerDeploymentsResponse();
  buildCounterListGameServerDeploymentsResponse++;
  if (buildCounterListGameServerDeploymentsResponse < 3) {
    o.gameServerDeployments = buildUnnamed132();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed133();
  }
  buildCounterListGameServerDeploymentsResponse--;
  return o;
}

void checkListGameServerDeploymentsResponse(
    api.ListGameServerDeploymentsResponse o) {
  buildCounterListGameServerDeploymentsResponse++;
  if (buildCounterListGameServerDeploymentsResponse < 3) {
    checkUnnamed132(o.gameServerDeployments!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed133(o.unreachable!);
  }
  buildCounterListGameServerDeploymentsResponse--;
}

core.List<api.Location> buildUnnamed134() => [
      buildLocation(),
      buildLocation(),
    ];

void checkUnnamed134(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  final o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed134();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed134(o.locations!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListLocationsResponse--;
}

core.List<api.Operation> buildUnnamed135() => [
      buildOperation(),
      buildOperation(),
    ];

void checkUnnamed135(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0]);
  checkOperation(o[1]);
}

core.int buildCounterListOperationsResponse = 0;
api.ListOperationsResponse buildListOperationsResponse() {
  final o = api.ListOperationsResponse();
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.operations = buildUnnamed135();
  }
  buildCounterListOperationsResponse--;
  return o;
}

void checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed135(o.operations!);
  }
  buildCounterListOperationsResponse--;
}

core.List<api.Realm> buildUnnamed136() => [
      buildRealm(),
      buildRealm(),
    ];

void checkUnnamed136(core.List<api.Realm> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRealm(o[0]);
  checkRealm(o[1]);
}

core.List<core.String> buildUnnamed137() => [
      'foo',
      'foo',
    ];

void checkUnnamed137(core.List<core.String> o) {
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

core.int buildCounterListRealmsResponse = 0;
api.ListRealmsResponse buildListRealmsResponse() {
  final o = api.ListRealmsResponse();
  buildCounterListRealmsResponse++;
  if (buildCounterListRealmsResponse < 3) {
    o.nextPageToken = 'foo';
    o.realms = buildUnnamed136();
    o.unreachable = buildUnnamed137();
  }
  buildCounterListRealmsResponse--;
  return o;
}

void checkListRealmsResponse(api.ListRealmsResponse o) {
  buildCounterListRealmsResponse++;
  if (buildCounterListRealmsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed136(o.realms!);
    checkUnnamed137(o.unreachable!);
  }
  buildCounterListRealmsResponse--;
}

core.Map<core.String, core.String> buildUnnamed138() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed138(core.Map<core.String, core.String> o) {
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

core.Map<core.String, core.Object> buildUnnamed139() => {
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

void checkUnnamed139(core.Map<core.String, core.Object> o) {
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

core.int buildCounterLocation = 0;
api.Location buildLocation() {
  final o = api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.displayName = 'foo';
    o.labels = buildUnnamed138();
    o.locationId = 'foo';
    o.metadata = buildUnnamed139();
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
    checkUnnamed138(o.labels!);
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
    checkUnnamed139(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterLocation--;
}

core.int buildCounterLogConfig = 0;
api.LogConfig buildLogConfig() {
  final o = api.LogConfig();
  buildCounterLogConfig++;
  if (buildCounterLogConfig < 3) {
    o.cloudAudit = buildCloudAuditOptions();
    o.counter = buildCounterOptions();
    o.dataAccess = buildDataAccessOptions();
  }
  buildCounterLogConfig--;
  return o;
}

void checkLogConfig(api.LogConfig o) {
  buildCounterLogConfig++;
  if (buildCounterLogConfig < 3) {
    checkCloudAuditOptions(o.cloudAudit!);
    checkCounterOptions(o.counter!);
    checkDataAccessOptions(o.dataAccess!);
  }
  buildCounterLogConfig--;
}

core.Map<core.String, core.Object> buildUnnamed140() => {
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

void checkUnnamed140(core.Map<core.String, core.Object> o) {
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

core.Map<core.String, core.Object> buildUnnamed141() => {
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

void checkUnnamed141(core.Map<core.String, core.Object> o) {
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

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  final o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed140();
    o.name = 'foo';
    o.response = buildUnnamed141();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed140(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed141(o.response!);
  }
  buildCounterOperation--;
}

core.Map<core.String, api.OperationStatus> buildUnnamed142() => {
      'x': buildOperationStatus(),
      'y': buildOperationStatus(),
    };

void checkUnnamed142(core.Map<core.String, api.OperationStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperationStatus(o['x']!);
  checkOperationStatus(o['y']!);
}

core.List<core.String> buildUnnamed143() => [
      'foo',
      'foo',
    ];

void checkUnnamed143(core.List<core.String> o) {
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

core.int buildCounterOperationMetadata = 0;
api.OperationMetadata buildOperationMetadata() {
  final o = api.OperationMetadata();
  buildCounterOperationMetadata++;
  if (buildCounterOperationMetadata < 3) {
    o.apiVersion = 'foo';
    o.createTime = 'foo';
    o.endTime = 'foo';
    o.operationStatus = buildUnnamed142();
    o.requestedCancellation = true;
    o.statusMessage = 'foo';
    o.target = 'foo';
    o.unreachable = buildUnnamed143();
    o.verb = 'foo';
  }
  buildCounterOperationMetadata--;
  return o;
}

void checkOperationMetadata(api.OperationMetadata o) {
  buildCounterOperationMetadata++;
  if (buildCounterOperationMetadata < 3) {
    unittest.expect(
      o.apiVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    checkUnnamed142(o.operationStatus!);
    unittest.expect(o.requestedCancellation!, unittest.isTrue);
    unittest.expect(
      o.statusMessage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.target!,
      unittest.equals('foo'),
    );
    checkUnnamed143(o.unreachable!);
    unittest.expect(
      o.verb!,
      unittest.equals('foo'),
    );
  }
  buildCounterOperationMetadata--;
}

core.int buildCounterOperationStatus = 0;
api.OperationStatus buildOperationStatus() {
  final o = api.OperationStatus();
  buildCounterOperationStatus++;
  if (buildCounterOperationStatus < 3) {
    o.done = true;
    o.errorCode = 'foo';
    o.errorMessage = 'foo';
  }
  buildCounterOperationStatus--;
  return o;
}

void checkOperationStatus(api.OperationStatus o) {
  buildCounterOperationStatus++;
  if (buildCounterOperationStatus < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    unittest.expect(
      o.errorCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.errorMessage!,
      unittest.equals('foo'),
    );
  }
  buildCounterOperationStatus--;
}

core.List<api.AuditConfig> buildUnnamed144() => [
      buildAuditConfig(),
      buildAuditConfig(),
    ];

void checkUnnamed144(core.List<api.AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditConfig(o[0]);
  checkAuditConfig(o[1]);
}

core.List<api.Binding> buildUnnamed145() => [
      buildBinding(),
      buildBinding(),
    ];

void checkUnnamed145(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.List<api.Rule> buildUnnamed146() => [
      buildRule(),
      buildRule(),
    ];

void checkUnnamed146(core.List<api.Rule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRule(o[0]);
  checkRule(o[1]);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  final o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.auditConfigs = buildUnnamed144();
    o.bindings = buildUnnamed145();
    o.etag = 'foo';
    o.iamOwned = true;
    o.rules = buildUnnamed146();
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed144(o.auditConfigs!);
    checkUnnamed145(o.bindings!);
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(o.iamOwned!, unittest.isTrue);
    checkUnnamed146(o.rules!);
    unittest.expect(
      o.version!,
      unittest.equals(42),
    );
  }
  buildCounterPolicy--;
}

core.int buildCounterPreviewCreateGameServerClusterResponse = 0;
api.PreviewCreateGameServerClusterResponse
    buildPreviewCreateGameServerClusterResponse() {
  final o = api.PreviewCreateGameServerClusterResponse();
  buildCounterPreviewCreateGameServerClusterResponse++;
  if (buildCounterPreviewCreateGameServerClusterResponse < 3) {
    o.clusterState = buildKubernetesClusterState();
    o.etag = 'foo';
    o.targetState = buildTargetState();
  }
  buildCounterPreviewCreateGameServerClusterResponse--;
  return o;
}

void checkPreviewCreateGameServerClusterResponse(
    api.PreviewCreateGameServerClusterResponse o) {
  buildCounterPreviewCreateGameServerClusterResponse++;
  if (buildCounterPreviewCreateGameServerClusterResponse < 3) {
    checkKubernetesClusterState(o.clusterState!);
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    checkTargetState(o.targetState!);
  }
  buildCounterPreviewCreateGameServerClusterResponse--;
}

core.int buildCounterPreviewDeleteGameServerClusterResponse = 0;
api.PreviewDeleteGameServerClusterResponse
    buildPreviewDeleteGameServerClusterResponse() {
  final o = api.PreviewDeleteGameServerClusterResponse();
  buildCounterPreviewDeleteGameServerClusterResponse++;
  if (buildCounterPreviewDeleteGameServerClusterResponse < 3) {
    o.etag = 'foo';
    o.targetState = buildTargetState();
  }
  buildCounterPreviewDeleteGameServerClusterResponse--;
  return o;
}

void checkPreviewDeleteGameServerClusterResponse(
    api.PreviewDeleteGameServerClusterResponse o) {
  buildCounterPreviewDeleteGameServerClusterResponse++;
  if (buildCounterPreviewDeleteGameServerClusterResponse < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    checkTargetState(o.targetState!);
  }
  buildCounterPreviewDeleteGameServerClusterResponse--;
}

core.List<core.String> buildUnnamed147() => [
      'foo',
      'foo',
    ];

void checkUnnamed147(core.List<core.String> o) {
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

core.int buildCounterPreviewGameServerDeploymentRolloutResponse = 0;
api.PreviewGameServerDeploymentRolloutResponse
    buildPreviewGameServerDeploymentRolloutResponse() {
  final o = api.PreviewGameServerDeploymentRolloutResponse();
  buildCounterPreviewGameServerDeploymentRolloutResponse++;
  if (buildCounterPreviewGameServerDeploymentRolloutResponse < 3) {
    o.etag = 'foo';
    o.targetState = buildTargetState();
    o.unavailable = buildUnnamed147();
  }
  buildCounterPreviewGameServerDeploymentRolloutResponse--;
  return o;
}

void checkPreviewGameServerDeploymentRolloutResponse(
    api.PreviewGameServerDeploymentRolloutResponse o) {
  buildCounterPreviewGameServerDeploymentRolloutResponse++;
  if (buildCounterPreviewGameServerDeploymentRolloutResponse < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    checkTargetState(o.targetState!);
    checkUnnamed147(o.unavailable!);
  }
  buildCounterPreviewGameServerDeploymentRolloutResponse--;
}

core.int buildCounterPreviewRealmUpdateResponse = 0;
api.PreviewRealmUpdateResponse buildPreviewRealmUpdateResponse() {
  final o = api.PreviewRealmUpdateResponse();
  buildCounterPreviewRealmUpdateResponse++;
  if (buildCounterPreviewRealmUpdateResponse < 3) {
    o.etag = 'foo';
    o.targetState = buildTargetState();
  }
  buildCounterPreviewRealmUpdateResponse--;
  return o;
}

void checkPreviewRealmUpdateResponse(api.PreviewRealmUpdateResponse o) {
  buildCounterPreviewRealmUpdateResponse++;
  if (buildCounterPreviewRealmUpdateResponse < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    checkTargetState(o.targetState!);
  }
  buildCounterPreviewRealmUpdateResponse--;
}

core.int buildCounterPreviewUpdateGameServerClusterResponse = 0;
api.PreviewUpdateGameServerClusterResponse
    buildPreviewUpdateGameServerClusterResponse() {
  final o = api.PreviewUpdateGameServerClusterResponse();
  buildCounterPreviewUpdateGameServerClusterResponse++;
  if (buildCounterPreviewUpdateGameServerClusterResponse < 3) {
    o.etag = 'foo';
    o.targetState = buildTargetState();
  }
  buildCounterPreviewUpdateGameServerClusterResponse--;
  return o;
}

void checkPreviewUpdateGameServerClusterResponse(
    api.PreviewUpdateGameServerClusterResponse o) {
  buildCounterPreviewUpdateGameServerClusterResponse++;
  if (buildCounterPreviewUpdateGameServerClusterResponse < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    checkTargetState(o.targetState!);
  }
  buildCounterPreviewUpdateGameServerClusterResponse--;
}

core.Map<core.String, core.String> buildUnnamed148() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed148(core.Map<core.String, core.String> o) {
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

core.int buildCounterRealm = 0;
api.Realm buildRealm() {
  final o = api.Realm();
  buildCounterRealm++;
  if (buildCounterRealm < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.etag = 'foo';
    o.labels = buildUnnamed148();
    o.name = 'foo';
    o.timeZone = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterRealm--;
  return o;
}

void checkRealm(api.Realm o) {
  buildCounterRealm++;
  if (buildCounterRealm < 3) {
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
    checkUnnamed148(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.timeZone!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterRealm--;
}

core.List<core.String> buildUnnamed149() => [
      'foo',
      'foo',
    ];

void checkUnnamed149(core.List<core.String> o) {
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

core.int buildCounterRealmSelector = 0;
api.RealmSelector buildRealmSelector() {
  final o = api.RealmSelector();
  buildCounterRealmSelector++;
  if (buildCounterRealmSelector < 3) {
    o.realms = buildUnnamed149();
  }
  buildCounterRealmSelector--;
  return o;
}

void checkRealmSelector(api.RealmSelector o) {
  buildCounterRealmSelector++;
  if (buildCounterRealmSelector < 3) {
    checkUnnamed149(o.realms!);
  }
  buildCounterRealmSelector--;
}

core.List<api.Condition> buildUnnamed150() => [
      buildCondition(),
      buildCondition(),
    ];

void checkUnnamed150(core.List<api.Condition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCondition(o[0]);
  checkCondition(o[1]);
}

core.List<core.String> buildUnnamed151() => [
      'foo',
      'foo',
    ];

void checkUnnamed151(core.List<core.String> o) {
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

core.List<api.LogConfig> buildUnnamed152() => [
      buildLogConfig(),
      buildLogConfig(),
    ];

void checkUnnamed152(core.List<api.LogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLogConfig(o[0]);
  checkLogConfig(o[1]);
}

core.List<core.String> buildUnnamed153() => [
      'foo',
      'foo',
    ];

void checkUnnamed153(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed154() => [
      'foo',
      'foo',
    ];

void checkUnnamed154(core.List<core.String> o) {
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

core.int buildCounterRule = 0;
api.Rule buildRule() {
  final o = api.Rule();
  buildCounterRule++;
  if (buildCounterRule < 3) {
    o.action = 'foo';
    o.conditions = buildUnnamed150();
    o.description = 'foo';
    o.in_ = buildUnnamed151();
    o.logConfig = buildUnnamed152();
    o.notIn = buildUnnamed153();
    o.permissions = buildUnnamed154();
  }
  buildCounterRule--;
  return o;
}

void checkRule(api.Rule o) {
  buildCounterRule++;
  if (buildCounterRule < 3) {
    unittest.expect(
      o.action!,
      unittest.equals('foo'),
    );
    checkUnnamed150(o.conditions!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkUnnamed151(o.in_!);
    checkUnnamed152(o.logConfig!);
    checkUnnamed153(o.notIn!);
    checkUnnamed154(o.permissions!);
  }
  buildCounterRule--;
}

core.List<api.Schedule> buildUnnamed155() => [
      buildSchedule(),
      buildSchedule(),
    ];

void checkUnnamed155(core.List<api.Schedule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSchedule(o[0]);
  checkSchedule(o[1]);
}

core.List<api.LabelSelector> buildUnnamed156() => [
      buildLabelSelector(),
      buildLabelSelector(),
    ];

void checkUnnamed156(core.List<api.LabelSelector> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLabelSelector(o[0]);
  checkLabelSelector(o[1]);
}

core.int buildCounterScalingConfig = 0;
api.ScalingConfig buildScalingConfig() {
  final o = api.ScalingConfig();
  buildCounterScalingConfig++;
  if (buildCounterScalingConfig < 3) {
    o.fleetAutoscalerSpec = 'foo';
    o.name = 'foo';
    o.schedules = buildUnnamed155();
    o.selectors = buildUnnamed156();
  }
  buildCounterScalingConfig--;
  return o;
}

void checkScalingConfig(api.ScalingConfig o) {
  buildCounterScalingConfig++;
  if (buildCounterScalingConfig < 3) {
    unittest.expect(
      o.fleetAutoscalerSpec!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed155(o.schedules!);
    checkUnnamed156(o.selectors!);
  }
  buildCounterScalingConfig--;
}

core.int buildCounterSchedule = 0;
api.Schedule buildSchedule() {
  final o = api.Schedule();
  buildCounterSchedule++;
  if (buildCounterSchedule < 3) {
    o.cronJobDuration = 'foo';
    o.cronSpec = 'foo';
    o.endTime = 'foo';
    o.startTime = 'foo';
  }
  buildCounterSchedule--;
  return o;
}

void checkSchedule(api.Schedule o) {
  buildCounterSchedule++;
  if (buildCounterSchedule < 3) {
    unittest.expect(
      o.cronJobDuration!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.cronSpec!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterSchedule--;
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

core.int buildCounterSpecSource = 0;
api.SpecSource buildSpecSource() {
  final o = api.SpecSource();
  buildCounterSpecSource++;
  if (buildCounterSpecSource < 3) {
    o.gameServerConfigName = 'foo';
    o.name = 'foo';
  }
  buildCounterSpecSource--;
  return o;
}

void checkSpecSource(api.SpecSource o) {
  buildCounterSpecSource++;
  if (buildCounterSpecSource < 3) {
    unittest.expect(
      o.gameServerConfigName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterSpecSource--;
}

core.Map<core.String, core.Object> buildUnnamed157() => {
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

void checkUnnamed157(core.Map<core.String, core.Object> o) {
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

core.List<core.Map<core.String, core.Object>> buildUnnamed158() => [
      buildUnnamed157(),
      buildUnnamed157(),
    ];

void checkUnnamed158(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed157(o[0]);
  checkUnnamed157(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed158();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(
      o.code!,
      unittest.equals(42),
    );
    checkUnnamed158(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.List<api.TargetFleetDetails> buildUnnamed159() => [
      buildTargetFleetDetails(),
      buildTargetFleetDetails(),
    ];

void checkUnnamed159(core.List<api.TargetFleetDetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTargetFleetDetails(o[0]);
  checkTargetFleetDetails(o[1]);
}

core.int buildCounterTargetDetails = 0;
api.TargetDetails buildTargetDetails() {
  final o = api.TargetDetails();
  buildCounterTargetDetails++;
  if (buildCounterTargetDetails < 3) {
    o.fleetDetails = buildUnnamed159();
    o.gameServerClusterName = 'foo';
    o.gameServerDeploymentName = 'foo';
  }
  buildCounterTargetDetails--;
  return o;
}

void checkTargetDetails(api.TargetDetails o) {
  buildCounterTargetDetails++;
  if (buildCounterTargetDetails < 3) {
    checkUnnamed159(o.fleetDetails!);
    unittest.expect(
      o.gameServerClusterName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.gameServerDeploymentName!,
      unittest.equals('foo'),
    );
  }
  buildCounterTargetDetails--;
}

core.int buildCounterTargetFleet = 0;
api.TargetFleet buildTargetFleet() {
  final o = api.TargetFleet();
  buildCounterTargetFleet++;
  if (buildCounterTargetFleet < 3) {
    o.name = 'foo';
    o.specSource = buildSpecSource();
  }
  buildCounterTargetFleet--;
  return o;
}

void checkTargetFleet(api.TargetFleet o) {
  buildCounterTargetFleet++;
  if (buildCounterTargetFleet < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkSpecSource(o.specSource!);
  }
  buildCounterTargetFleet--;
}

core.int buildCounterTargetFleetAutoscaler = 0;
api.TargetFleetAutoscaler buildTargetFleetAutoscaler() {
  final o = api.TargetFleetAutoscaler();
  buildCounterTargetFleetAutoscaler++;
  if (buildCounterTargetFleetAutoscaler < 3) {
    o.name = 'foo';
    o.specSource = buildSpecSource();
  }
  buildCounterTargetFleetAutoscaler--;
  return o;
}

void checkTargetFleetAutoscaler(api.TargetFleetAutoscaler o) {
  buildCounterTargetFleetAutoscaler++;
  if (buildCounterTargetFleetAutoscaler < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkSpecSource(o.specSource!);
  }
  buildCounterTargetFleetAutoscaler--;
}

core.int buildCounterTargetFleetDetails = 0;
api.TargetFleetDetails buildTargetFleetDetails() {
  final o = api.TargetFleetDetails();
  buildCounterTargetFleetDetails++;
  if (buildCounterTargetFleetDetails < 3) {
    o.autoscaler = buildTargetFleetAutoscaler();
    o.fleet = buildTargetFleet();
  }
  buildCounterTargetFleetDetails--;
  return o;
}

void checkTargetFleetDetails(api.TargetFleetDetails o) {
  buildCounterTargetFleetDetails++;
  if (buildCounterTargetFleetDetails < 3) {
    checkTargetFleetAutoscaler(o.autoscaler!);
    checkTargetFleet(o.fleet!);
  }
  buildCounterTargetFleetDetails--;
}

core.List<api.TargetDetails> buildUnnamed160() => [
      buildTargetDetails(),
      buildTargetDetails(),
    ];

void checkUnnamed160(core.List<api.TargetDetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTargetDetails(o[0]);
  checkTargetDetails(o[1]);
}

core.int buildCounterTargetState = 0;
api.TargetState buildTargetState() {
  final o = api.TargetState();
  buildCounterTargetState++;
  if (buildCounterTargetState < 3) {
    o.details = buildUnnamed160();
  }
  buildCounterTargetState--;
  return o;
}

void checkTargetState(api.TargetState o) {
  buildCounterTargetState++;
  if (buildCounterTargetState < 3) {
    checkUnnamed160(o.details!);
  }
  buildCounterTargetState--;
}

core.List<core.String> buildUnnamed161() => [
      'foo',
      'foo',
    ];

void checkUnnamed161(core.List<core.String> o) {
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
    o.permissions = buildUnnamed161();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

void checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed161(o.permissions!);
  }
  buildCounterTestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed162() => [
      'foo',
      'foo',
    ];

void checkUnnamed162(core.List<core.String> o) {
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
    o.permissions = buildUnnamed162();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed162(o.permissions!);
  }
  buildCounterTestIamPermissionsResponse--;
}

void main() {
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

  unittest.group('obj-schema-AuthorizationLoggingOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuthorizationLoggingOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuthorizationLoggingOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAuthorizationLoggingOptions(od);
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

  unittest.group('obj-schema-CancelOperationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCancelOperationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CancelOperationRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCancelOperationRequest(od);
    });
  });

  unittest.group('obj-schema-CloudAuditOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCloudAuditOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CloudAuditOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCloudAuditOptions(od);
    });
  });

  unittest.group('obj-schema-Condition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCondition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Condition.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCondition(od);
    });
  });

  unittest.group('obj-schema-CounterOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCounterOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CounterOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCounterOptions(od);
    });
  });

  unittest.group('obj-schema-CustomField', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomField();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomField.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCustomField(od);
    });
  });

  unittest.group('obj-schema-DataAccessOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataAccessOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DataAccessOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDataAccessOptions(od);
    });
  });

  unittest.group('obj-schema-DeployedClusterState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeployedClusterState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeployedClusterState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeployedClusterState(od);
    });
  });

  unittest.group('obj-schema-DeployedFleet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeployedFleet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeployedFleet.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeployedFleet(od);
    });
  });

  unittest.group('obj-schema-DeployedFleetAutoscaler', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeployedFleetAutoscaler();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeployedFleetAutoscaler.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeployedFleetAutoscaler(od);
    });
  });

  unittest.group('obj-schema-DeployedFleetDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeployedFleetDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeployedFleetDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeployedFleetDetails(od);
    });
  });

  unittest.group('obj-schema-DeployedFleetStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeployedFleetStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeployedFleetStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeployedFleetStatus(od);
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

  unittest.group('obj-schema-FetchDeploymentStateRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFetchDeploymentStateRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FetchDeploymentStateRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFetchDeploymentStateRequest(od);
    });
  });

  unittest.group('obj-schema-FetchDeploymentStateResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFetchDeploymentStateResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FetchDeploymentStateResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFetchDeploymentStateResponse(od);
    });
  });

  unittest.group('obj-schema-FleetConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFleetConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FleetConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFleetConfig(od);
    });
  });

  unittest.group('obj-schema-GameServerCluster', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGameServerCluster();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GameServerCluster.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGameServerCluster(od);
    });
  });

  unittest.group('obj-schema-GameServerClusterConnectionInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGameServerClusterConnectionInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GameServerClusterConnectionInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGameServerClusterConnectionInfo(od);
    });
  });

  unittest.group('obj-schema-GameServerConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGameServerConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GameServerConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGameServerConfig(od);
    });
  });

  unittest.group('obj-schema-GameServerConfigOverride', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGameServerConfigOverride();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GameServerConfigOverride.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGameServerConfigOverride(od);
    });
  });

  unittest.group('obj-schema-GameServerDeployment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGameServerDeployment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GameServerDeployment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGameServerDeployment(od);
    });
  });

  unittest.group('obj-schema-GameServerDeploymentRollout', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGameServerDeploymentRollout();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GameServerDeploymentRollout.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGameServerDeploymentRollout(od);
    });
  });

  unittest.group('obj-schema-GkeClusterReference', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGkeClusterReference();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GkeClusterReference.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGkeClusterReference(od);
    });
  });

  unittest.group('obj-schema-KubernetesClusterState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildKubernetesClusterState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.KubernetesClusterState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkKubernetesClusterState(od);
    });
  });

  unittest.group('obj-schema-LabelSelector', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLabelSelector();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LabelSelector.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLabelSelector(od);
    });
  });

  unittest.group('obj-schema-ListGameServerClustersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListGameServerClustersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListGameServerClustersResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListGameServerClustersResponse(od);
    });
  });

  unittest.group('obj-schema-ListGameServerConfigsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListGameServerConfigsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListGameServerConfigsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListGameServerConfigsResponse(od);
    });
  });

  unittest.group('obj-schema-ListGameServerDeploymentsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListGameServerDeploymentsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListGameServerDeploymentsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListGameServerDeploymentsResponse(od);
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

  unittest.group('obj-schema-ListOperationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListOperationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListOperationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListOperationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListRealmsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListRealmsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListRealmsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListRealmsResponse(od);
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

  unittest.group('obj-schema-LogConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLogConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.LogConfig.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLogConfig(od);
    });
  });

  unittest.group('obj-schema-Operation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOperation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Operation.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOperation(od);
    });
  });

  unittest.group('obj-schema-OperationMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOperationMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OperationMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOperationMetadata(od);
    });
  });

  unittest.group('obj-schema-OperationStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOperationStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OperationStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOperationStatus(od);
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

  unittest.group('obj-schema-PreviewCreateGameServerClusterResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPreviewCreateGameServerClusterResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PreviewCreateGameServerClusterResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPreviewCreateGameServerClusterResponse(od);
    });
  });

  unittest.group('obj-schema-PreviewDeleteGameServerClusterResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPreviewDeleteGameServerClusterResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PreviewDeleteGameServerClusterResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPreviewDeleteGameServerClusterResponse(od);
    });
  });

  unittest.group('obj-schema-PreviewGameServerDeploymentRolloutResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPreviewGameServerDeploymentRolloutResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PreviewGameServerDeploymentRolloutResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPreviewGameServerDeploymentRolloutResponse(od);
    });
  });

  unittest.group('obj-schema-PreviewRealmUpdateResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPreviewRealmUpdateResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PreviewRealmUpdateResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPreviewRealmUpdateResponse(od);
    });
  });

  unittest.group('obj-schema-PreviewUpdateGameServerClusterResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPreviewUpdateGameServerClusterResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PreviewUpdateGameServerClusterResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPreviewUpdateGameServerClusterResponse(od);
    });
  });

  unittest.group('obj-schema-Realm', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRealm();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Realm.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkRealm(od);
    });
  });

  unittest.group('obj-schema-RealmSelector', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRealmSelector();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RealmSelector.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRealmSelector(od);
    });
  });

  unittest.group('obj-schema-Rule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Rule.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkRule(od);
    });
  });

  unittest.group('obj-schema-ScalingConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildScalingConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ScalingConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkScalingConfig(od);
    });
  });

  unittest.group('obj-schema-Schedule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSchedule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Schedule.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSchedule(od);
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

  unittest.group('obj-schema-SpecSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSpecSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.SpecSource.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSpecSource(od);
    });
  });

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Status.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkStatus(od);
    });
  });

  unittest.group('obj-schema-TargetDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTargetDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TargetDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTargetDetails(od);
    });
  });

  unittest.group('obj-schema-TargetFleet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTargetFleet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TargetFleet.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTargetFleet(od);
    });
  });

  unittest.group('obj-schema-TargetFleetAutoscaler', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTargetFleetAutoscaler();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TargetFleetAutoscaler.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTargetFleetAutoscaler(od);
    });
  });

  unittest.group('obj-schema-TargetFleetDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTargetFleetDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TargetFleetDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTargetFleetDetails(od);
    });
  });

  unittest.group('obj-schema-TargetState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTargetState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TargetState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTargetState(od);
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

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.GameServicesApi(mock).projects.locations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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

        final query = (req.url).query;
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
      final res = api.GameServicesApi(mock).projects.locations;
      final arg_name = 'foo';
      final arg_filter = 'foo';
      final arg_includeUnrevealedLocations = true;
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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

        final query = (req.url).query;
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
          queryMap['includeUnrevealedLocations']!.first,
          unittest.equals('$arg_includeUnrevealedLocations'),
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
          includeUnrevealedLocations: arg_includeUnrevealedLocations,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListLocationsResponse(response as api.ListLocationsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsGameServerDeploymentsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.GameServicesApi(mock).projects.locations.gameServerDeployments;
      final arg_request = buildGameServerDeployment();
      final arg_parent = 'foo';
      final arg_deploymentId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GameServerDeployment.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGameServerDeployment(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
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
          queryMap['deploymentId']!.first,
          unittest.equals(arg_deploymentId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          deploymentId: arg_deploymentId, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.GameServicesApi(mock).projects.locations.gameServerDeployments;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--fetchDeploymentState', () async {
      final mock = HttpServerMock();
      final res =
          api.GameServicesApi(mock).projects.locations.gameServerDeployments;
      final arg_request = buildFetchDeploymentStateRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.FetchDeploymentStateRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkFetchDeploymentStateRequest(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildFetchDeploymentStateResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.fetchDeploymentState(arg_request, arg_name,
          $fields: arg_$fields);
      checkFetchDeploymentStateResponse(
          response as api.FetchDeploymentStateResponse);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.GameServicesApi(mock).projects.locations.gameServerDeployments;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildGameServerDeployment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGameServerDeployment(response as api.GameServerDeployment);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res =
          api.GameServicesApi(mock).projects.locations.gameServerDeployments;
      final arg_resource = 'foo';
      final arg_options_requestedPolicyVersion = 42;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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

        final query = (req.url).query;
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

    unittest.test('method--getRollout', () async {
      final mock = HttpServerMock();
      final res =
          api.GameServicesApi(mock).projects.locations.gameServerDeployments;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildGameServerDeploymentRollout());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getRollout(arg_name, $fields: arg_$fields);
      checkGameServerDeploymentRollout(
          response as api.GameServerDeploymentRollout);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.GameServicesApi(mock).projects.locations.gameServerDeployments;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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

        final query = (req.url).query;
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
            convert.json.encode(buildListGameServerDeploymentsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListGameServerDeploymentsResponse(
          response as api.ListGameServerDeploymentsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.GameServicesApi(mock).projects.locations.gameServerDeployments;
      final arg_request = buildGameServerDeployment();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GameServerDeployment.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGameServerDeployment(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--previewRollout', () async {
      final mock = HttpServerMock();
      final res =
          api.GameServicesApi(mock).projects.locations.gameServerDeployments;
      final arg_request = buildGameServerDeploymentRollout();
      final arg_name = 'foo';
      final arg_previewTime = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GameServerDeploymentRollout.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGameServerDeploymentRollout(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
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
          queryMap['previewTime']!.first,
          unittest.equals(arg_previewTime),
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
        final resp = convert.json
            .encode(buildPreviewGameServerDeploymentRolloutResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.previewRollout(arg_request, arg_name,
          previewTime: arg_previewTime,
          updateMask: arg_updateMask,
          $fields: arg_$fields);
      checkPreviewGameServerDeploymentRolloutResponse(
          response as api.PreviewGameServerDeploymentRolloutResponse);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res =
          api.GameServicesApi(mock).projects.locations.gameServerDeployments;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetIamPolicyRequest(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
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
          api.GameServicesApi(mock).projects.locations.gameServerDeployments;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTestIamPermissionsRequest(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
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

    unittest.test('method--updateRollout', () async {
      final mock = HttpServerMock();
      final res =
          api.GameServicesApi(mock).projects.locations.gameServerDeployments;
      final arg_request = buildGameServerDeploymentRollout();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GameServerDeploymentRollout.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGameServerDeploymentRollout(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.updateRollout(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsGameServerDeploymentsConfigsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.GameServicesApi(mock)
          .projects
          .locations
          .gameServerDeployments
          .configs;
      final arg_request = buildGameServerConfig();
      final arg_parent = 'foo';
      final arg_configId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GameServerConfig.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGameServerConfig(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
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
          queryMap['configId']!.first,
          unittest.equals(arg_configId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          configId: arg_configId, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.GameServicesApi(mock)
          .projects
          .locations
          .gameServerDeployments
          .configs;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.GameServicesApi(mock)
          .projects
          .locations
          .gameServerDeployments
          .configs;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildGameServerConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGameServerConfig(response as api.GameServerConfig);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.GameServicesApi(mock)
          .projects
          .locations
          .gameServerDeployments
          .configs;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildListGameServerConfigsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListGameServerConfigsResponse(
          response as api.ListGameServerConfigsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.GameServicesApi(mock).projects.locations.operations;
      final arg_request = buildCancelOperationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CancelOperationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCancelOperationRequest(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
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
      final res = api.GameServicesApi(mock).projects.locations.operations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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

        final query = (req.url).query;
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
      final res = api.GameServicesApi(mock).projects.locations.operations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.GameServicesApi(mock).projects.locations.operations;
      final arg_name = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildListOperationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_name,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListOperationsResponse(response as api.ListOperationsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsRealmsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.GameServicesApi(mock).projects.locations.realms;
      final arg_request = buildRealm();
      final arg_parent = 'foo';
      final arg_realmId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Realm.fromJson(json as core.Map<core.String, core.dynamic>);
        checkRealm(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
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
          queryMap['realmId']!.first,
          unittest.equals(arg_realmId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          realmId: arg_realmId, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.GameServicesApi(mock).projects.locations.realms;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.GameServicesApi(mock).projects.locations.realms;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildRealm());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkRealm(response as api.Realm);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.GameServicesApi(mock).projects.locations.realms;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildListRealmsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListRealmsResponse(response as api.ListRealmsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.GameServicesApi(mock).projects.locations.realms;
      final arg_request = buildRealm();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Realm.fromJson(json as core.Map<core.String, core.dynamic>);
        checkRealm(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--previewUpdate', () async {
      final mock = HttpServerMock();
      final res = api.GameServicesApi(mock).projects.locations.realms;
      final arg_request = buildRealm();
      final arg_name = 'foo';
      final arg_previewTime = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Realm.fromJson(json as core.Map<core.String, core.dynamic>);
        checkRealm(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
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
          queryMap['previewTime']!.first,
          unittest.equals(arg_previewTime),
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
        final resp = convert.json.encode(buildPreviewRealmUpdateResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.previewUpdate(arg_request, arg_name,
          previewTime: arg_previewTime,
          updateMask: arg_updateMask,
          $fields: arg_$fields);
      checkPreviewRealmUpdateResponse(
          response as api.PreviewRealmUpdateResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsRealmsGameServerClustersResource',
      () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.GameServicesApi(mock)
          .projects
          .locations
          .realms
          .gameServerClusters;
      final arg_request = buildGameServerCluster();
      final arg_parent = 'foo';
      final arg_gameServerClusterId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GameServerCluster.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGameServerCluster(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
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
          queryMap['gameServerClusterId']!.first,
          unittest.equals(arg_gameServerClusterId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          gameServerClusterId: arg_gameServerClusterId, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.GameServicesApi(mock)
          .projects
          .locations
          .realms
          .gameServerClusters;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.GameServicesApi(mock)
          .projects
          .locations
          .realms
          .gameServerClusters;
      final arg_name = 'foo';
      final arg_view = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildGameServerCluster());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_name, view: arg_view, $fields: arg_$fields);
      checkGameServerCluster(response as api.GameServerCluster);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.GameServicesApi(mock)
          .projects
          .locations
          .realms
          .gameServerClusters;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_view = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildListGameServerClustersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          view: arg_view,
          $fields: arg_$fields);
      checkListGameServerClustersResponse(
          response as api.ListGameServerClustersResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.GameServicesApi(mock)
          .projects
          .locations
          .realms
          .gameServerClusters;
      final arg_request = buildGameServerCluster();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GameServerCluster.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGameServerCluster(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--previewCreate', () async {
      final mock = HttpServerMock();
      final res = api.GameServicesApi(mock)
          .projects
          .locations
          .realms
          .gameServerClusters;
      final arg_request = buildGameServerCluster();
      final arg_parent = 'foo';
      final arg_gameServerClusterId = 'foo';
      final arg_previewTime = 'foo';
      final arg_view = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GameServerCluster.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGameServerCluster(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
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
          queryMap['gameServerClusterId']!.first,
          unittest.equals(arg_gameServerClusterId),
        );
        unittest.expect(
          queryMap['previewTime']!.first,
          unittest.equals(arg_previewTime),
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
        final resp =
            convert.json.encode(buildPreviewCreateGameServerClusterResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.previewCreate(arg_request, arg_parent,
          gameServerClusterId: arg_gameServerClusterId,
          previewTime: arg_previewTime,
          view: arg_view,
          $fields: arg_$fields);
      checkPreviewCreateGameServerClusterResponse(
          response as api.PreviewCreateGameServerClusterResponse);
    });

    unittest.test('method--previewDelete', () async {
      final mock = HttpServerMock();
      final res = api.GameServicesApi(mock)
          .projects
          .locations
          .realms
          .gameServerClusters;
      final arg_name = 'foo';
      final arg_previewTime = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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

        final query = (req.url).query;
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
          queryMap['previewTime']!.first,
          unittest.equals(arg_previewTime),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildPreviewDeleteGameServerClusterResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.previewDelete(arg_name,
          previewTime: arg_previewTime, $fields: arg_$fields);
      checkPreviewDeleteGameServerClusterResponse(
          response as api.PreviewDeleteGameServerClusterResponse);
    });

    unittest.test('method--previewUpdate', () async {
      final mock = HttpServerMock();
      final res = api.GameServicesApi(mock)
          .projects
          .locations
          .realms
          .gameServerClusters;
      final arg_request = buildGameServerCluster();
      final arg_name = 'foo';
      final arg_previewTime = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GameServerCluster.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGameServerCluster(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
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
          queryMap['previewTime']!.first,
          unittest.equals(arg_previewTime),
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
        final resp =
            convert.json.encode(buildPreviewUpdateGameServerClusterResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.previewUpdate(arg_request, arg_name,
          previewTime: arg_previewTime,
          updateMask: arg_updateMask,
          $fields: arg_$fields);
      checkPreviewUpdateGameServerClusterResponse(
          response as api.PreviewUpdateGameServerClusterResponse);
    });
  });
}
