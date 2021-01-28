// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: directives_ordering
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: avoid_returning_null
// ignore_for_file: cascade_invocations
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unused_local_variable

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis_beta/gameservices/v1beta.dart' as api;

class HttpServerMock extends http.BaseClient {
  core.Future<http.StreamedResponse> Function(http.BaseRequest, core.Object)
      _callback;
  core.bool _expectJson;

  void register(
    core.Future<http.StreamedResponse> Function(
      http.BaseRequest bob,
      core.Object foo,
    )
        callback,
    core.bool expectJson,
  ) {
    _callback = callback;
    _expectJson = expectJson;
  }

  @core.override
  async.Future<http.StreamedResponse> send(http.BaseRequest request) async {
    if (_expectJson) {
      final jsonString =
          await request.finalize().transform(convert.utf8.decoder).join('');
      if (jsonString.isEmpty) {
        return _callback(request, null);
      } else {
        return _callback(request, convert.json.decode(jsonString));
      }
    } else {
      var stream = request.finalize();
      if (stream == null) {
        return _callback(request, []);
      } else {
        final data = await stream.toBytes();
        return _callback(request, data);
      }
    }
  }
}

http.StreamedResponse stringResponse(core.int status,
    core.Map<core.String, core.String> headers, core.String body) {
  var stream = async.Stream.fromIterable([convert.utf8.encode(body)]);
  return http.StreamedResponse(stream, status, headers: headers);
}

core.List<api.AuditLogConfig> buildUnnamed6206() {
  var o = <api.AuditLogConfig>[];
  o.add(buildAuditLogConfig());
  o.add(buildAuditLogConfig());
  return o;
}

void checkUnnamed6206(core.List<api.AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditLogConfig(o[0] as api.AuditLogConfig);
  checkAuditLogConfig(o[1] as api.AuditLogConfig);
}

core.List<core.String> buildUnnamed6207() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6207(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAuditConfig = 0;
api.AuditConfig buildAuditConfig() {
  var o = api.AuditConfig();
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed6206();
    o.exemptedMembers = buildUnnamed6207();
    o.service = 'foo';
  }
  buildCounterAuditConfig--;
  return o;
}

void checkAuditConfig(api.AuditConfig o) {
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    checkUnnamed6206(o.auditLogConfigs);
    checkUnnamed6207(o.exemptedMembers);
    unittest.expect(o.service, unittest.equals('foo'));
  }
  buildCounterAuditConfig--;
}

core.List<core.String> buildUnnamed6208() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6208(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAuditLogConfig = 0;
api.AuditLogConfig buildAuditLogConfig() {
  var o = api.AuditLogConfig();
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    o.exemptedMembers = buildUnnamed6208();
    o.ignoreChildExemptions = true;
    o.logType = 'foo';
  }
  buildCounterAuditLogConfig--;
  return o;
}

void checkAuditLogConfig(api.AuditLogConfig o) {
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    checkUnnamed6208(o.exemptedMembers);
    unittest.expect(o.ignoreChildExemptions, unittest.isTrue);
    unittest.expect(o.logType, unittest.equals('foo'));
  }
  buildCounterAuditLogConfig--;
}

core.int buildCounterAuthorizationLoggingOptions = 0;
api.AuthorizationLoggingOptions buildAuthorizationLoggingOptions() {
  var o = api.AuthorizationLoggingOptions();
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
    unittest.expect(o.permissionType, unittest.equals('foo'));
  }
  buildCounterAuthorizationLoggingOptions--;
}

core.List<core.String> buildUnnamed6209() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6209(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBinding = 0;
api.Binding buildBinding() {
  var o = api.Binding();
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    o.bindingId = 'foo';
    o.condition = buildExpr();
    o.members = buildUnnamed6209();
    o.role = 'foo';
  }
  buildCounterBinding--;
  return o;
}

void checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    unittest.expect(o.bindingId, unittest.equals('foo'));
    checkExpr(o.condition as api.Expr);
    checkUnnamed6209(o.members);
    unittest.expect(o.role, unittest.equals('foo'));
  }
  buildCounterBinding--;
}

core.int buildCounterCancelOperationRequest = 0;
api.CancelOperationRequest buildCancelOperationRequest() {
  var o = api.CancelOperationRequest();
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
  var o = api.CloudAuditOptions();
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
    checkAuthorizationLoggingOptions(
        o.authorizationLoggingOptions as api.AuthorizationLoggingOptions);
    unittest.expect(o.logName, unittest.equals('foo'));
  }
  buildCounterCloudAuditOptions--;
}

core.List<core.String> buildUnnamed6210() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6210(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCondition = 0;
api.Condition buildCondition() {
  var o = api.Condition();
  buildCounterCondition++;
  if (buildCounterCondition < 3) {
    o.iam = 'foo';
    o.op = 'foo';
    o.svc = 'foo';
    o.sys = 'foo';
    o.values = buildUnnamed6210();
  }
  buildCounterCondition--;
  return o;
}

void checkCondition(api.Condition o) {
  buildCounterCondition++;
  if (buildCounterCondition < 3) {
    unittest.expect(o.iam, unittest.equals('foo'));
    unittest.expect(o.op, unittest.equals('foo'));
    unittest.expect(o.svc, unittest.equals('foo'));
    unittest.expect(o.sys, unittest.equals('foo'));
    checkUnnamed6210(o.values);
  }
  buildCounterCondition--;
}

core.List<api.CustomField> buildUnnamed6211() {
  var o = <api.CustomField>[];
  o.add(buildCustomField());
  o.add(buildCustomField());
  return o;
}

void checkUnnamed6211(core.List<api.CustomField> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomField(o[0] as api.CustomField);
  checkCustomField(o[1] as api.CustomField);
}

core.int buildCounterCounterOptions = 0;
api.CounterOptions buildCounterOptions() {
  var o = api.CounterOptions();
  buildCounterCounterOptions++;
  if (buildCounterCounterOptions < 3) {
    o.customFields = buildUnnamed6211();
    o.field = 'foo';
    o.metric = 'foo';
  }
  buildCounterCounterOptions--;
  return o;
}

void checkCounterOptions(api.CounterOptions o) {
  buildCounterCounterOptions++;
  if (buildCounterCounterOptions < 3) {
    checkUnnamed6211(o.customFields);
    unittest.expect(o.field, unittest.equals('foo'));
    unittest.expect(o.metric, unittest.equals('foo'));
  }
  buildCounterCounterOptions--;
}

core.int buildCounterCustomField = 0;
api.CustomField buildCustomField() {
  var o = api.CustomField();
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
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterCustomField--;
}

core.int buildCounterDataAccessOptions = 0;
api.DataAccessOptions buildDataAccessOptions() {
  var o = api.DataAccessOptions();
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
    unittest.expect(o.logMode, unittest.equals('foo'));
  }
  buildCounterDataAccessOptions--;
}

core.List<api.DeployedFleetDetails> buildUnnamed6212() {
  var o = <api.DeployedFleetDetails>[];
  o.add(buildDeployedFleetDetails());
  o.add(buildDeployedFleetDetails());
  return o;
}

void checkUnnamed6212(core.List<api.DeployedFleetDetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeployedFleetDetails(o[0] as api.DeployedFleetDetails);
  checkDeployedFleetDetails(o[1] as api.DeployedFleetDetails);
}

core.int buildCounterDeployedClusterState = 0;
api.DeployedClusterState buildDeployedClusterState() {
  var o = api.DeployedClusterState();
  buildCounterDeployedClusterState++;
  if (buildCounterDeployedClusterState < 3) {
    o.cluster = 'foo';
    o.fleetDetails = buildUnnamed6212();
  }
  buildCounterDeployedClusterState--;
  return o;
}

void checkDeployedClusterState(api.DeployedClusterState o) {
  buildCounterDeployedClusterState++;
  if (buildCounterDeployedClusterState < 3) {
    unittest.expect(o.cluster, unittest.equals('foo'));
    checkUnnamed6212(o.fleetDetails);
  }
  buildCounterDeployedClusterState--;
}

core.int buildCounterDeployedFleet = 0;
api.DeployedFleet buildDeployedFleet() {
  var o = api.DeployedFleet();
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
    unittest.expect(o.fleet, unittest.equals('foo'));
    unittest.expect(o.fleetSpec, unittest.equals('foo'));
    checkSpecSource(o.specSource as api.SpecSource);
    checkDeployedFleetStatus(o.status as api.DeployedFleetStatus);
  }
  buildCounterDeployedFleet--;
}

core.int buildCounterDeployedFleetAutoscaler = 0;
api.DeployedFleetAutoscaler buildDeployedFleetAutoscaler() {
  var o = api.DeployedFleetAutoscaler();
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
    unittest.expect(o.autoscaler, unittest.equals('foo'));
    unittest.expect(o.fleetAutoscalerSpec, unittest.equals('foo'));
    checkSpecSource(o.specSource as api.SpecSource);
  }
  buildCounterDeployedFleetAutoscaler--;
}

core.int buildCounterDeployedFleetDetails = 0;
api.DeployedFleetDetails buildDeployedFleetDetails() {
  var o = api.DeployedFleetDetails();
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
    checkDeployedFleetAutoscaler(
        o.deployedAutoscaler as api.DeployedFleetAutoscaler);
    checkDeployedFleet(o.deployedFleet as api.DeployedFleet);
  }
  buildCounterDeployedFleetDetails--;
}

core.int buildCounterDeployedFleetStatus = 0;
api.DeployedFleetStatus buildDeployedFleetStatus() {
  var o = api.DeployedFleetStatus();
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
    unittest.expect(o.allocatedReplicas, unittest.equals('foo'));
    unittest.expect(o.readyReplicas, unittest.equals('foo'));
    unittest.expect(o.replicas, unittest.equals('foo'));
    unittest.expect(o.reservedReplicas, unittest.equals('foo'));
  }
  buildCounterDeployedFleetStatus--;
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

core.int buildCounterFetchDeploymentStateRequest = 0;
api.FetchDeploymentStateRequest buildFetchDeploymentStateRequest() {
  var o = api.FetchDeploymentStateRequest();
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

core.List<api.DeployedClusterState> buildUnnamed6213() {
  var o = <api.DeployedClusterState>[];
  o.add(buildDeployedClusterState());
  o.add(buildDeployedClusterState());
  return o;
}

void checkUnnamed6213(core.List<api.DeployedClusterState> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeployedClusterState(o[0] as api.DeployedClusterState);
  checkDeployedClusterState(o[1] as api.DeployedClusterState);
}

core.List<core.String> buildUnnamed6214() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6214(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterFetchDeploymentStateResponse = 0;
api.FetchDeploymentStateResponse buildFetchDeploymentStateResponse() {
  var o = api.FetchDeploymentStateResponse();
  buildCounterFetchDeploymentStateResponse++;
  if (buildCounterFetchDeploymentStateResponse < 3) {
    o.clusterState = buildUnnamed6213();
    o.unavailable = buildUnnamed6214();
  }
  buildCounterFetchDeploymentStateResponse--;
  return o;
}

void checkFetchDeploymentStateResponse(api.FetchDeploymentStateResponse o) {
  buildCounterFetchDeploymentStateResponse++;
  if (buildCounterFetchDeploymentStateResponse < 3) {
    checkUnnamed6213(o.clusterState);
    checkUnnamed6214(o.unavailable);
  }
  buildCounterFetchDeploymentStateResponse--;
}

core.int buildCounterFleetConfig = 0;
api.FleetConfig buildFleetConfig() {
  var o = api.FleetConfig();
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
    unittest.expect(o.fleetSpec, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterFleetConfig--;
}

core.Map<core.String, core.String> buildUnnamed6215() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed6215(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterGameServerCluster = 0;
api.GameServerCluster buildGameServerCluster() {
  var o = api.GameServerCluster();
  buildCounterGameServerCluster++;
  if (buildCounterGameServerCluster < 3) {
    o.connectionInfo = buildGameServerClusterConnectionInfo();
    o.createTime = 'foo';
    o.description = 'foo';
    o.etag = 'foo';
    o.labels = buildUnnamed6215();
    o.name = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGameServerCluster--;
  return o;
}

void checkGameServerCluster(api.GameServerCluster o) {
  buildCounterGameServerCluster++;
  if (buildCounterGameServerCluster < 3) {
    checkGameServerClusterConnectionInfo(
        o.connectionInfo as api.GameServerClusterConnectionInfo);
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed6215(o.labels);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterGameServerCluster--;
}

core.int buildCounterGameServerClusterConnectionInfo = 0;
api.GameServerClusterConnectionInfo buildGameServerClusterConnectionInfo() {
  var o = api.GameServerClusterConnectionInfo();
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
    checkGkeClusterReference(o.gkeClusterReference as api.GkeClusterReference);
    unittest.expect(o.namespace, unittest.equals('foo'));
  }
  buildCounterGameServerClusterConnectionInfo--;
}

core.List<api.FleetConfig> buildUnnamed6216() {
  var o = <api.FleetConfig>[];
  o.add(buildFleetConfig());
  o.add(buildFleetConfig());
  return o;
}

void checkUnnamed6216(core.List<api.FleetConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFleetConfig(o[0] as api.FleetConfig);
  checkFleetConfig(o[1] as api.FleetConfig);
}

core.Map<core.String, core.String> buildUnnamed6217() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed6217(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.List<api.ScalingConfig> buildUnnamed6218() {
  var o = <api.ScalingConfig>[];
  o.add(buildScalingConfig());
  o.add(buildScalingConfig());
  return o;
}

void checkUnnamed6218(core.List<api.ScalingConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkScalingConfig(o[0] as api.ScalingConfig);
  checkScalingConfig(o[1] as api.ScalingConfig);
}

core.int buildCounterGameServerConfig = 0;
api.GameServerConfig buildGameServerConfig() {
  var o = api.GameServerConfig();
  buildCounterGameServerConfig++;
  if (buildCounterGameServerConfig < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.fleetConfigs = buildUnnamed6216();
    o.labels = buildUnnamed6217();
    o.name = 'foo';
    o.scalingConfigs = buildUnnamed6218();
    o.updateTime = 'foo';
  }
  buildCounterGameServerConfig--;
  return o;
}

void checkGameServerConfig(api.GameServerConfig o) {
  buildCounterGameServerConfig++;
  if (buildCounterGameServerConfig < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    checkUnnamed6216(o.fleetConfigs);
    checkUnnamed6217(o.labels);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed6218(o.scalingConfigs);
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterGameServerConfig--;
}

core.int buildCounterGameServerConfigOverride = 0;
api.GameServerConfigOverride buildGameServerConfigOverride() {
  var o = api.GameServerConfigOverride();
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
    unittest.expect(o.configVersion, unittest.equals('foo'));
    checkRealmSelector(o.realmsSelector as api.RealmSelector);
  }
  buildCounterGameServerConfigOverride--;
}

core.Map<core.String, core.String> buildUnnamed6219() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed6219(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterGameServerDeployment = 0;
api.GameServerDeployment buildGameServerDeployment() {
  var o = api.GameServerDeployment();
  buildCounterGameServerDeployment++;
  if (buildCounterGameServerDeployment < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.etag = 'foo';
    o.labels = buildUnnamed6219();
    o.name = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGameServerDeployment--;
  return o;
}

void checkGameServerDeployment(api.GameServerDeployment o) {
  buildCounterGameServerDeployment++;
  if (buildCounterGameServerDeployment < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed6219(o.labels);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterGameServerDeployment--;
}

core.List<api.GameServerConfigOverride> buildUnnamed6220() {
  var o = <api.GameServerConfigOverride>[];
  o.add(buildGameServerConfigOverride());
  o.add(buildGameServerConfigOverride());
  return o;
}

void checkUnnamed6220(core.List<api.GameServerConfigOverride> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGameServerConfigOverride(o[0] as api.GameServerConfigOverride);
  checkGameServerConfigOverride(o[1] as api.GameServerConfigOverride);
}

core.int buildCounterGameServerDeploymentRollout = 0;
api.GameServerDeploymentRollout buildGameServerDeploymentRollout() {
  var o = api.GameServerDeploymentRollout();
  buildCounterGameServerDeploymentRollout++;
  if (buildCounterGameServerDeploymentRollout < 3) {
    o.createTime = 'foo';
    o.defaultGameServerConfig = 'foo';
    o.etag = 'foo';
    o.gameServerConfigOverrides = buildUnnamed6220();
    o.name = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGameServerDeploymentRollout--;
  return o;
}

void checkGameServerDeploymentRollout(api.GameServerDeploymentRollout o) {
  buildCounterGameServerDeploymentRollout++;
  if (buildCounterGameServerDeploymentRollout < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.defaultGameServerConfig, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed6220(o.gameServerConfigOverrides);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterGameServerDeploymentRollout--;
}

core.int buildCounterGkeClusterReference = 0;
api.GkeClusterReference buildGkeClusterReference() {
  var o = api.GkeClusterReference();
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
    unittest.expect(o.cluster, unittest.equals('foo'));
  }
  buildCounterGkeClusterReference--;
}

core.Map<core.String, core.String> buildUnnamed6221() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed6221(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterLabelSelector = 0;
api.LabelSelector buildLabelSelector() {
  var o = api.LabelSelector();
  buildCounterLabelSelector++;
  if (buildCounterLabelSelector < 3) {
    o.labels = buildUnnamed6221();
  }
  buildCounterLabelSelector--;
  return o;
}

void checkLabelSelector(api.LabelSelector o) {
  buildCounterLabelSelector++;
  if (buildCounterLabelSelector < 3) {
    checkUnnamed6221(o.labels);
  }
  buildCounterLabelSelector--;
}

core.List<api.GameServerCluster> buildUnnamed6222() {
  var o = <api.GameServerCluster>[];
  o.add(buildGameServerCluster());
  o.add(buildGameServerCluster());
  return o;
}

void checkUnnamed6222(core.List<api.GameServerCluster> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGameServerCluster(o[0] as api.GameServerCluster);
  checkGameServerCluster(o[1] as api.GameServerCluster);
}

core.List<core.String> buildUnnamed6223() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6223(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListGameServerClustersResponse = 0;
api.ListGameServerClustersResponse buildListGameServerClustersResponse() {
  var o = api.ListGameServerClustersResponse();
  buildCounterListGameServerClustersResponse++;
  if (buildCounterListGameServerClustersResponse < 3) {
    o.gameServerClusters = buildUnnamed6222();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed6223();
  }
  buildCounterListGameServerClustersResponse--;
  return o;
}

void checkListGameServerClustersResponse(api.ListGameServerClustersResponse o) {
  buildCounterListGameServerClustersResponse++;
  if (buildCounterListGameServerClustersResponse < 3) {
    checkUnnamed6222(o.gameServerClusters);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed6223(o.unreachable);
  }
  buildCounterListGameServerClustersResponse--;
}

core.List<api.GameServerConfig> buildUnnamed6224() {
  var o = <api.GameServerConfig>[];
  o.add(buildGameServerConfig());
  o.add(buildGameServerConfig());
  return o;
}

void checkUnnamed6224(core.List<api.GameServerConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGameServerConfig(o[0] as api.GameServerConfig);
  checkGameServerConfig(o[1] as api.GameServerConfig);
}

core.List<core.String> buildUnnamed6225() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6225(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListGameServerConfigsResponse = 0;
api.ListGameServerConfigsResponse buildListGameServerConfigsResponse() {
  var o = api.ListGameServerConfigsResponse();
  buildCounterListGameServerConfigsResponse++;
  if (buildCounterListGameServerConfigsResponse < 3) {
    o.gameServerConfigs = buildUnnamed6224();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed6225();
  }
  buildCounterListGameServerConfigsResponse--;
  return o;
}

void checkListGameServerConfigsResponse(api.ListGameServerConfigsResponse o) {
  buildCounterListGameServerConfigsResponse++;
  if (buildCounterListGameServerConfigsResponse < 3) {
    checkUnnamed6224(o.gameServerConfigs);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed6225(o.unreachable);
  }
  buildCounterListGameServerConfigsResponse--;
}

core.List<api.GameServerDeployment> buildUnnamed6226() {
  var o = <api.GameServerDeployment>[];
  o.add(buildGameServerDeployment());
  o.add(buildGameServerDeployment());
  return o;
}

void checkUnnamed6226(core.List<api.GameServerDeployment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGameServerDeployment(o[0] as api.GameServerDeployment);
  checkGameServerDeployment(o[1] as api.GameServerDeployment);
}

core.List<core.String> buildUnnamed6227() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6227(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListGameServerDeploymentsResponse = 0;
api.ListGameServerDeploymentsResponse buildListGameServerDeploymentsResponse() {
  var o = api.ListGameServerDeploymentsResponse();
  buildCounterListGameServerDeploymentsResponse++;
  if (buildCounterListGameServerDeploymentsResponse < 3) {
    o.gameServerDeployments = buildUnnamed6226();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed6227();
  }
  buildCounterListGameServerDeploymentsResponse--;
  return o;
}

void checkListGameServerDeploymentsResponse(
    api.ListGameServerDeploymentsResponse o) {
  buildCounterListGameServerDeploymentsResponse++;
  if (buildCounterListGameServerDeploymentsResponse < 3) {
    checkUnnamed6226(o.gameServerDeployments);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed6227(o.unreachable);
  }
  buildCounterListGameServerDeploymentsResponse--;
}

core.List<api.Location> buildUnnamed6228() {
  var o = <api.Location>[];
  o.add(buildLocation());
  o.add(buildLocation());
  return o;
}

void checkUnnamed6228(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0] as api.Location);
  checkLocation(o[1] as api.Location);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  var o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed6228();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed6228(o.locations);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListLocationsResponse--;
}

core.List<api.Operation> buildUnnamed6229() {
  var o = <api.Operation>[];
  o.add(buildOperation());
  o.add(buildOperation());
  return o;
}

void checkUnnamed6229(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0] as api.Operation);
  checkOperation(o[1] as api.Operation);
}

core.int buildCounterListOperationsResponse = 0;
api.ListOperationsResponse buildListOperationsResponse() {
  var o = api.ListOperationsResponse();
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.operations = buildUnnamed6229();
  }
  buildCounterListOperationsResponse--;
  return o;
}

void checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed6229(o.operations);
  }
  buildCounterListOperationsResponse--;
}

core.List<api.Realm> buildUnnamed6230() {
  var o = <api.Realm>[];
  o.add(buildRealm());
  o.add(buildRealm());
  return o;
}

void checkUnnamed6230(core.List<api.Realm> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRealm(o[0] as api.Realm);
  checkRealm(o[1] as api.Realm);
}

core.List<core.String> buildUnnamed6231() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6231(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListRealmsResponse = 0;
api.ListRealmsResponse buildListRealmsResponse() {
  var o = api.ListRealmsResponse();
  buildCounterListRealmsResponse++;
  if (buildCounterListRealmsResponse < 3) {
    o.nextPageToken = 'foo';
    o.realms = buildUnnamed6230();
    o.unreachable = buildUnnamed6231();
  }
  buildCounterListRealmsResponse--;
  return o;
}

void checkListRealmsResponse(api.ListRealmsResponse o) {
  buildCounterListRealmsResponse++;
  if (buildCounterListRealmsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed6230(o.realms);
    checkUnnamed6231(o.unreachable);
  }
  buildCounterListRealmsResponse--;
}

core.Map<core.String, core.String> buildUnnamed6232() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed6232(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.Map<core.String, core.Object> buildUnnamed6233() {
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

void checkUnnamed6233(core.Map<core.String, core.Object> o) {
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

core.int buildCounterLocation = 0;
api.Location buildLocation() {
  var o = api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.displayName = 'foo';
    o.labels = buildUnnamed6232();
    o.locationId = 'foo';
    o.metadata = buildUnnamed6233();
    o.name = 'foo';
  }
  buildCounterLocation--;
  return o;
}

void checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed6232(o.labels);
    unittest.expect(o.locationId, unittest.equals('foo'));
    checkUnnamed6233(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterLocation--;
}

core.int buildCounterLogConfig = 0;
api.LogConfig buildLogConfig() {
  var o = api.LogConfig();
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
    checkCloudAuditOptions(o.cloudAudit as api.CloudAuditOptions);
    checkCounterOptions(o.counter as api.CounterOptions);
    checkDataAccessOptions(o.dataAccess as api.DataAccessOptions);
  }
  buildCounterLogConfig--;
}

core.Map<core.String, core.Object> buildUnnamed6234() {
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

void checkUnnamed6234(core.Map<core.String, core.Object> o) {
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

core.Map<core.String, core.Object> buildUnnamed6235() {
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

void checkUnnamed6235(core.Map<core.String, core.Object> o) {
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

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  var o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed6234();
    o.name = 'foo';
    o.response = buildUnnamed6235();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkStatus(o.error as api.Status);
    checkUnnamed6234(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed6235(o.response);
  }
  buildCounterOperation--;
}

core.Map<core.String, api.OperationStatus> buildUnnamed6236() {
  var o = <core.String, api.OperationStatus>{};
  o['x'] = buildOperationStatus();
  o['y'] = buildOperationStatus();
  return o;
}

void checkUnnamed6236(core.Map<core.String, api.OperationStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperationStatus(o['x'] as api.OperationStatus);
  checkOperationStatus(o['y'] as api.OperationStatus);
}

core.List<core.String> buildUnnamed6237() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6237(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterOperationMetadata = 0;
api.OperationMetadata buildOperationMetadata() {
  var o = api.OperationMetadata();
  buildCounterOperationMetadata++;
  if (buildCounterOperationMetadata < 3) {
    o.apiVersion = 'foo';
    o.createTime = 'foo';
    o.endTime = 'foo';
    o.operationStatus = buildUnnamed6236();
    o.requestedCancellation = true;
    o.statusMessage = 'foo';
    o.target = 'foo';
    o.unreachable = buildUnnamed6237();
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
    checkUnnamed6236(o.operationStatus);
    unittest.expect(o.requestedCancellation, unittest.isTrue);
    unittest.expect(o.statusMessage, unittest.equals('foo'));
    unittest.expect(o.target, unittest.equals('foo'));
    checkUnnamed6237(o.unreachable);
    unittest.expect(o.verb, unittest.equals('foo'));
  }
  buildCounterOperationMetadata--;
}

core.int buildCounterOperationStatus = 0;
api.OperationStatus buildOperationStatus() {
  var o = api.OperationStatus();
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
    unittest.expect(o.done, unittest.isTrue);
    unittest.expect(o.errorCode, unittest.equals('foo'));
    unittest.expect(o.errorMessage, unittest.equals('foo'));
  }
  buildCounterOperationStatus--;
}

core.List<api.AuditConfig> buildUnnamed6238() {
  var o = <api.AuditConfig>[];
  o.add(buildAuditConfig());
  o.add(buildAuditConfig());
  return o;
}

void checkUnnamed6238(core.List<api.AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditConfig(o[0] as api.AuditConfig);
  checkAuditConfig(o[1] as api.AuditConfig);
}

core.List<api.Binding> buildUnnamed6239() {
  var o = <api.Binding>[];
  o.add(buildBinding());
  o.add(buildBinding());
  return o;
}

void checkUnnamed6239(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0] as api.Binding);
  checkBinding(o[1] as api.Binding);
}

core.List<api.Rule> buildUnnamed6240() {
  var o = <api.Rule>[];
  o.add(buildRule());
  o.add(buildRule());
  return o;
}

void checkUnnamed6240(core.List<api.Rule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRule(o[0] as api.Rule);
  checkRule(o[1] as api.Rule);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  var o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.auditConfigs = buildUnnamed6238();
    o.bindings = buildUnnamed6239();
    o.etag = 'foo';
    o.iamOwned = true;
    o.rules = buildUnnamed6240();
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed6238(o.auditConfigs);
    checkUnnamed6239(o.bindings);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.iamOwned, unittest.isTrue);
    checkUnnamed6240(o.rules);
    unittest.expect(o.version, unittest.equals(42));
  }
  buildCounterPolicy--;
}

core.int buildCounterPreviewCreateGameServerClusterResponse = 0;
api.PreviewCreateGameServerClusterResponse
    buildPreviewCreateGameServerClusterResponse() {
  var o = api.PreviewCreateGameServerClusterResponse();
  buildCounterPreviewCreateGameServerClusterResponse++;
  if (buildCounterPreviewCreateGameServerClusterResponse < 3) {
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
    unittest.expect(o.etag, unittest.equals('foo'));
    checkTargetState(o.targetState as api.TargetState);
  }
  buildCounterPreviewCreateGameServerClusterResponse--;
}

core.int buildCounterPreviewDeleteGameServerClusterResponse = 0;
api.PreviewDeleteGameServerClusterResponse
    buildPreviewDeleteGameServerClusterResponse() {
  var o = api.PreviewDeleteGameServerClusterResponse();
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
    unittest.expect(o.etag, unittest.equals('foo'));
    checkTargetState(o.targetState as api.TargetState);
  }
  buildCounterPreviewDeleteGameServerClusterResponse--;
}

core.List<core.String> buildUnnamed6241() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6241(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPreviewGameServerDeploymentRolloutResponse = 0;
api.PreviewGameServerDeploymentRolloutResponse
    buildPreviewGameServerDeploymentRolloutResponse() {
  var o = api.PreviewGameServerDeploymentRolloutResponse();
  buildCounterPreviewGameServerDeploymentRolloutResponse++;
  if (buildCounterPreviewGameServerDeploymentRolloutResponse < 3) {
    o.etag = 'foo';
    o.targetState = buildTargetState();
    o.unavailable = buildUnnamed6241();
  }
  buildCounterPreviewGameServerDeploymentRolloutResponse--;
  return o;
}

void checkPreviewGameServerDeploymentRolloutResponse(
    api.PreviewGameServerDeploymentRolloutResponse o) {
  buildCounterPreviewGameServerDeploymentRolloutResponse++;
  if (buildCounterPreviewGameServerDeploymentRolloutResponse < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    checkTargetState(o.targetState as api.TargetState);
    checkUnnamed6241(o.unavailable);
  }
  buildCounterPreviewGameServerDeploymentRolloutResponse--;
}

core.int buildCounterPreviewRealmUpdateResponse = 0;
api.PreviewRealmUpdateResponse buildPreviewRealmUpdateResponse() {
  var o = api.PreviewRealmUpdateResponse();
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
    unittest.expect(o.etag, unittest.equals('foo'));
    checkTargetState(o.targetState as api.TargetState);
  }
  buildCounterPreviewRealmUpdateResponse--;
}

core.int buildCounterPreviewUpdateGameServerClusterResponse = 0;
api.PreviewUpdateGameServerClusterResponse
    buildPreviewUpdateGameServerClusterResponse() {
  var o = api.PreviewUpdateGameServerClusterResponse();
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
    unittest.expect(o.etag, unittest.equals('foo'));
    checkTargetState(o.targetState as api.TargetState);
  }
  buildCounterPreviewUpdateGameServerClusterResponse--;
}

core.Map<core.String, core.String> buildUnnamed6242() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed6242(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterRealm = 0;
api.Realm buildRealm() {
  var o = api.Realm();
  buildCounterRealm++;
  if (buildCounterRealm < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.etag = 'foo';
    o.labels = buildUnnamed6242();
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
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed6242(o.labels);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.timeZone, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterRealm--;
}

core.List<core.String> buildUnnamed6243() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6243(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterRealmSelector = 0;
api.RealmSelector buildRealmSelector() {
  var o = api.RealmSelector();
  buildCounterRealmSelector++;
  if (buildCounterRealmSelector < 3) {
    o.realms = buildUnnamed6243();
  }
  buildCounterRealmSelector--;
  return o;
}

void checkRealmSelector(api.RealmSelector o) {
  buildCounterRealmSelector++;
  if (buildCounterRealmSelector < 3) {
    checkUnnamed6243(o.realms);
  }
  buildCounterRealmSelector--;
}

core.List<api.Condition> buildUnnamed6244() {
  var o = <api.Condition>[];
  o.add(buildCondition());
  o.add(buildCondition());
  return o;
}

void checkUnnamed6244(core.List<api.Condition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCondition(o[0] as api.Condition);
  checkCondition(o[1] as api.Condition);
}

core.List<core.String> buildUnnamed6245() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6245(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.LogConfig> buildUnnamed6246() {
  var o = <api.LogConfig>[];
  o.add(buildLogConfig());
  o.add(buildLogConfig());
  return o;
}

void checkUnnamed6246(core.List<api.LogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLogConfig(o[0] as api.LogConfig);
  checkLogConfig(o[1] as api.LogConfig);
}

core.List<core.String> buildUnnamed6247() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6247(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed6248() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6248(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterRule = 0;
api.Rule buildRule() {
  var o = api.Rule();
  buildCounterRule++;
  if (buildCounterRule < 3) {
    o.action = 'foo';
    o.conditions = buildUnnamed6244();
    o.description = 'foo';
    o.in_ = buildUnnamed6245();
    o.logConfig = buildUnnamed6246();
    o.notIn = buildUnnamed6247();
    o.permissions = buildUnnamed6248();
  }
  buildCounterRule--;
  return o;
}

void checkRule(api.Rule o) {
  buildCounterRule++;
  if (buildCounterRule < 3) {
    unittest.expect(o.action, unittest.equals('foo'));
    checkUnnamed6244(o.conditions);
    unittest.expect(o.description, unittest.equals('foo'));
    checkUnnamed6245(o.in_);
    checkUnnamed6246(o.logConfig);
    checkUnnamed6247(o.notIn);
    checkUnnamed6248(o.permissions);
  }
  buildCounterRule--;
}

core.List<api.Schedule> buildUnnamed6249() {
  var o = <api.Schedule>[];
  o.add(buildSchedule());
  o.add(buildSchedule());
  return o;
}

void checkUnnamed6249(core.List<api.Schedule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSchedule(o[0] as api.Schedule);
  checkSchedule(o[1] as api.Schedule);
}

core.List<api.LabelSelector> buildUnnamed6250() {
  var o = <api.LabelSelector>[];
  o.add(buildLabelSelector());
  o.add(buildLabelSelector());
  return o;
}

void checkUnnamed6250(core.List<api.LabelSelector> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLabelSelector(o[0] as api.LabelSelector);
  checkLabelSelector(o[1] as api.LabelSelector);
}

core.int buildCounterScalingConfig = 0;
api.ScalingConfig buildScalingConfig() {
  var o = api.ScalingConfig();
  buildCounterScalingConfig++;
  if (buildCounterScalingConfig < 3) {
    o.fleetAutoscalerSpec = 'foo';
    o.name = 'foo';
    o.schedules = buildUnnamed6249();
    o.selectors = buildUnnamed6250();
  }
  buildCounterScalingConfig--;
  return o;
}

void checkScalingConfig(api.ScalingConfig o) {
  buildCounterScalingConfig++;
  if (buildCounterScalingConfig < 3) {
    unittest.expect(o.fleetAutoscalerSpec, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed6249(o.schedules);
    checkUnnamed6250(o.selectors);
  }
  buildCounterScalingConfig--;
}

core.int buildCounterSchedule = 0;
api.Schedule buildSchedule() {
  var o = api.Schedule();
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
    unittest.expect(o.cronJobDuration, unittest.equals('foo'));
    unittest.expect(o.cronSpec, unittest.equals('foo'));
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.startTime, unittest.equals('foo'));
  }
  buildCounterSchedule--;
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

core.int buildCounterSpecSource = 0;
api.SpecSource buildSpecSource() {
  var o = api.SpecSource();
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
    unittest.expect(o.gameServerConfigName, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterSpecSource--;
}

core.Map<core.String, core.Object> buildUnnamed6251() {
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

void checkUnnamed6251(core.Map<core.String, core.Object> o) {
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

core.List<core.Map<core.String, core.Object>> buildUnnamed6252() {
  var o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed6251());
  o.add(buildUnnamed6251());
  return o;
}

void checkUnnamed6252(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed6251(o[0]);
  checkUnnamed6251(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  var o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed6252();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed6252(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.List<api.TargetFleetDetails> buildUnnamed6253() {
  var o = <api.TargetFleetDetails>[];
  o.add(buildTargetFleetDetails());
  o.add(buildTargetFleetDetails());
  return o;
}

void checkUnnamed6253(core.List<api.TargetFleetDetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTargetFleetDetails(o[0] as api.TargetFleetDetails);
  checkTargetFleetDetails(o[1] as api.TargetFleetDetails);
}

core.int buildCounterTargetDetails = 0;
api.TargetDetails buildTargetDetails() {
  var o = api.TargetDetails();
  buildCounterTargetDetails++;
  if (buildCounterTargetDetails < 3) {
    o.fleetDetails = buildUnnamed6253();
    o.gameServerClusterName = 'foo';
    o.gameServerDeploymentName = 'foo';
  }
  buildCounterTargetDetails--;
  return o;
}

void checkTargetDetails(api.TargetDetails o) {
  buildCounterTargetDetails++;
  if (buildCounterTargetDetails < 3) {
    checkUnnamed6253(o.fleetDetails);
    unittest.expect(o.gameServerClusterName, unittest.equals('foo'));
    unittest.expect(o.gameServerDeploymentName, unittest.equals('foo'));
  }
  buildCounterTargetDetails--;
}

core.int buildCounterTargetFleet = 0;
api.TargetFleet buildTargetFleet() {
  var o = api.TargetFleet();
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
    unittest.expect(o.name, unittest.equals('foo'));
    checkSpecSource(o.specSource as api.SpecSource);
  }
  buildCounterTargetFleet--;
}

core.int buildCounterTargetFleetAutoscaler = 0;
api.TargetFleetAutoscaler buildTargetFleetAutoscaler() {
  var o = api.TargetFleetAutoscaler();
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
    unittest.expect(o.name, unittest.equals('foo'));
    checkSpecSource(o.specSource as api.SpecSource);
  }
  buildCounterTargetFleetAutoscaler--;
}

core.int buildCounterTargetFleetDetails = 0;
api.TargetFleetDetails buildTargetFleetDetails() {
  var o = api.TargetFleetDetails();
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
    checkTargetFleetAutoscaler(o.autoscaler as api.TargetFleetAutoscaler);
    checkTargetFleet(o.fleet as api.TargetFleet);
  }
  buildCounterTargetFleetDetails--;
}

core.List<api.TargetDetails> buildUnnamed6254() {
  var o = <api.TargetDetails>[];
  o.add(buildTargetDetails());
  o.add(buildTargetDetails());
  return o;
}

void checkUnnamed6254(core.List<api.TargetDetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTargetDetails(o[0] as api.TargetDetails);
  checkTargetDetails(o[1] as api.TargetDetails);
}

core.int buildCounterTargetState = 0;
api.TargetState buildTargetState() {
  var o = api.TargetState();
  buildCounterTargetState++;
  if (buildCounterTargetState < 3) {
    o.details = buildUnnamed6254();
  }
  buildCounterTargetState--;
  return o;
}

void checkTargetState(api.TargetState o) {
  buildCounterTargetState++;
  if (buildCounterTargetState < 3) {
    checkUnnamed6254(o.details);
  }
  buildCounterTargetState--;
}

core.List<core.String> buildUnnamed6255() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6255(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsRequest = 0;
api.TestIamPermissionsRequest buildTestIamPermissionsRequest() {
  var o = api.TestIamPermissionsRequest();
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed6255();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

void checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed6255(o.permissions);
  }
  buildCounterTestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed6256() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6256(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsResponse = 0;
api.TestIamPermissionsResponse buildTestIamPermissionsResponse() {
  var o = api.TestIamPermissionsResponse();
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed6256();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed6256(o.permissions);
  }
  buildCounterTestIamPermissionsResponse--;
}

void main() {
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

  unittest.group('obj-schema-AuthorizationLoggingOptions', () {
    unittest.test('to-json--from-json', () {
      var o = buildAuthorizationLoggingOptions();
      var od = api.AuthorizationLoggingOptions.fromJson(o.toJson());
      checkAuthorizationLoggingOptions(od as api.AuthorizationLoggingOptions);
    });
  });

  unittest.group('obj-schema-Binding', () {
    unittest.test('to-json--from-json', () {
      var o = buildBinding();
      var od = api.Binding.fromJson(o.toJson());
      checkBinding(od as api.Binding);
    });
  });

  unittest.group('obj-schema-CancelOperationRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildCancelOperationRequest();
      var od = api.CancelOperationRequest.fromJson(o.toJson());
      checkCancelOperationRequest(od as api.CancelOperationRequest);
    });
  });

  unittest.group('obj-schema-CloudAuditOptions', () {
    unittest.test('to-json--from-json', () {
      var o = buildCloudAuditOptions();
      var od = api.CloudAuditOptions.fromJson(o.toJson());
      checkCloudAuditOptions(od as api.CloudAuditOptions);
    });
  });

  unittest.group('obj-schema-Condition', () {
    unittest.test('to-json--from-json', () {
      var o = buildCondition();
      var od = api.Condition.fromJson(o.toJson());
      checkCondition(od as api.Condition);
    });
  });

  unittest.group('obj-schema-CounterOptions', () {
    unittest.test('to-json--from-json', () {
      var o = buildCounterOptions();
      var od = api.CounterOptions.fromJson(o.toJson());
      checkCounterOptions(od as api.CounterOptions);
    });
  });

  unittest.group('obj-schema-CustomField', () {
    unittest.test('to-json--from-json', () {
      var o = buildCustomField();
      var od = api.CustomField.fromJson(o.toJson());
      checkCustomField(od as api.CustomField);
    });
  });

  unittest.group('obj-schema-DataAccessOptions', () {
    unittest.test('to-json--from-json', () {
      var o = buildDataAccessOptions();
      var od = api.DataAccessOptions.fromJson(o.toJson());
      checkDataAccessOptions(od as api.DataAccessOptions);
    });
  });

  unittest.group('obj-schema-DeployedClusterState', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeployedClusterState();
      var od = api.DeployedClusterState.fromJson(o.toJson());
      checkDeployedClusterState(od as api.DeployedClusterState);
    });
  });

  unittest.group('obj-schema-DeployedFleet', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeployedFleet();
      var od = api.DeployedFleet.fromJson(o.toJson());
      checkDeployedFleet(od as api.DeployedFleet);
    });
  });

  unittest.group('obj-schema-DeployedFleetAutoscaler', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeployedFleetAutoscaler();
      var od = api.DeployedFleetAutoscaler.fromJson(o.toJson());
      checkDeployedFleetAutoscaler(od as api.DeployedFleetAutoscaler);
    });
  });

  unittest.group('obj-schema-DeployedFleetDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeployedFleetDetails();
      var od = api.DeployedFleetDetails.fromJson(o.toJson());
      checkDeployedFleetDetails(od as api.DeployedFleetDetails);
    });
  });

  unittest.group('obj-schema-DeployedFleetStatus', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeployedFleetStatus();
      var od = api.DeployedFleetStatus.fromJson(o.toJson());
      checkDeployedFleetStatus(od as api.DeployedFleetStatus);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () {
      var o = buildEmpty();
      var od = api.Empty.fromJson(o.toJson());
      checkEmpty(od as api.Empty);
    });
  });

  unittest.group('obj-schema-Expr', () {
    unittest.test('to-json--from-json', () {
      var o = buildExpr();
      var od = api.Expr.fromJson(o.toJson());
      checkExpr(od as api.Expr);
    });
  });

  unittest.group('obj-schema-FetchDeploymentStateRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildFetchDeploymentStateRequest();
      var od = api.FetchDeploymentStateRequest.fromJson(o.toJson());
      checkFetchDeploymentStateRequest(od as api.FetchDeploymentStateRequest);
    });
  });

  unittest.group('obj-schema-FetchDeploymentStateResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildFetchDeploymentStateResponse();
      var od = api.FetchDeploymentStateResponse.fromJson(o.toJson());
      checkFetchDeploymentStateResponse(od as api.FetchDeploymentStateResponse);
    });
  });

  unittest.group('obj-schema-FleetConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildFleetConfig();
      var od = api.FleetConfig.fromJson(o.toJson());
      checkFleetConfig(od as api.FleetConfig);
    });
  });

  unittest.group('obj-schema-GameServerCluster', () {
    unittest.test('to-json--from-json', () {
      var o = buildGameServerCluster();
      var od = api.GameServerCluster.fromJson(o.toJson());
      checkGameServerCluster(od as api.GameServerCluster);
    });
  });

  unittest.group('obj-schema-GameServerClusterConnectionInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildGameServerClusterConnectionInfo();
      var od = api.GameServerClusterConnectionInfo.fromJson(o.toJson());
      checkGameServerClusterConnectionInfo(
          od as api.GameServerClusterConnectionInfo);
    });
  });

  unittest.group('obj-schema-GameServerConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildGameServerConfig();
      var od = api.GameServerConfig.fromJson(o.toJson());
      checkGameServerConfig(od as api.GameServerConfig);
    });
  });

  unittest.group('obj-schema-GameServerConfigOverride', () {
    unittest.test('to-json--from-json', () {
      var o = buildGameServerConfigOverride();
      var od = api.GameServerConfigOverride.fromJson(o.toJson());
      checkGameServerConfigOverride(od as api.GameServerConfigOverride);
    });
  });

  unittest.group('obj-schema-GameServerDeployment', () {
    unittest.test('to-json--from-json', () {
      var o = buildGameServerDeployment();
      var od = api.GameServerDeployment.fromJson(o.toJson());
      checkGameServerDeployment(od as api.GameServerDeployment);
    });
  });

  unittest.group('obj-schema-GameServerDeploymentRollout', () {
    unittest.test('to-json--from-json', () {
      var o = buildGameServerDeploymentRollout();
      var od = api.GameServerDeploymentRollout.fromJson(o.toJson());
      checkGameServerDeploymentRollout(od as api.GameServerDeploymentRollout);
    });
  });

  unittest.group('obj-schema-GkeClusterReference', () {
    unittest.test('to-json--from-json', () {
      var o = buildGkeClusterReference();
      var od = api.GkeClusterReference.fromJson(o.toJson());
      checkGkeClusterReference(od as api.GkeClusterReference);
    });
  });

  unittest.group('obj-schema-LabelSelector', () {
    unittest.test('to-json--from-json', () {
      var o = buildLabelSelector();
      var od = api.LabelSelector.fromJson(o.toJson());
      checkLabelSelector(od as api.LabelSelector);
    });
  });

  unittest.group('obj-schema-ListGameServerClustersResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListGameServerClustersResponse();
      var od = api.ListGameServerClustersResponse.fromJson(o.toJson());
      checkListGameServerClustersResponse(
          od as api.ListGameServerClustersResponse);
    });
  });

  unittest.group('obj-schema-ListGameServerConfigsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListGameServerConfigsResponse();
      var od = api.ListGameServerConfigsResponse.fromJson(o.toJson());
      checkListGameServerConfigsResponse(
          od as api.ListGameServerConfigsResponse);
    });
  });

  unittest.group('obj-schema-ListGameServerDeploymentsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListGameServerDeploymentsResponse();
      var od = api.ListGameServerDeploymentsResponse.fromJson(o.toJson());
      checkListGameServerDeploymentsResponse(
          od as api.ListGameServerDeploymentsResponse);
    });
  });

  unittest.group('obj-schema-ListLocationsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListLocationsResponse();
      var od = api.ListLocationsResponse.fromJson(o.toJson());
      checkListLocationsResponse(od as api.ListLocationsResponse);
    });
  });

  unittest.group('obj-schema-ListOperationsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListOperationsResponse();
      var od = api.ListOperationsResponse.fromJson(o.toJson());
      checkListOperationsResponse(od as api.ListOperationsResponse);
    });
  });

  unittest.group('obj-schema-ListRealmsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListRealmsResponse();
      var od = api.ListRealmsResponse.fromJson(o.toJson());
      checkListRealmsResponse(od as api.ListRealmsResponse);
    });
  });

  unittest.group('obj-schema-Location', () {
    unittest.test('to-json--from-json', () {
      var o = buildLocation();
      var od = api.Location.fromJson(o.toJson());
      checkLocation(od as api.Location);
    });
  });

  unittest.group('obj-schema-LogConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildLogConfig();
      var od = api.LogConfig.fromJson(o.toJson());
      checkLogConfig(od as api.LogConfig);
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

  unittest.group('obj-schema-OperationStatus', () {
    unittest.test('to-json--from-json', () {
      var o = buildOperationStatus();
      var od = api.OperationStatus.fromJson(o.toJson());
      checkOperationStatus(od as api.OperationStatus);
    });
  });

  unittest.group('obj-schema-Policy', () {
    unittest.test('to-json--from-json', () {
      var o = buildPolicy();
      var od = api.Policy.fromJson(o.toJson());
      checkPolicy(od as api.Policy);
    });
  });

  unittest.group('obj-schema-PreviewCreateGameServerClusterResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildPreviewCreateGameServerClusterResponse();
      var od = api.PreviewCreateGameServerClusterResponse.fromJson(o.toJson());
      checkPreviewCreateGameServerClusterResponse(
          od as api.PreviewCreateGameServerClusterResponse);
    });
  });

  unittest.group('obj-schema-PreviewDeleteGameServerClusterResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildPreviewDeleteGameServerClusterResponse();
      var od = api.PreviewDeleteGameServerClusterResponse.fromJson(o.toJson());
      checkPreviewDeleteGameServerClusterResponse(
          od as api.PreviewDeleteGameServerClusterResponse);
    });
  });

  unittest.group('obj-schema-PreviewGameServerDeploymentRolloutResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildPreviewGameServerDeploymentRolloutResponse();
      var od =
          api.PreviewGameServerDeploymentRolloutResponse.fromJson(o.toJson());
      checkPreviewGameServerDeploymentRolloutResponse(
          od as api.PreviewGameServerDeploymentRolloutResponse);
    });
  });

  unittest.group('obj-schema-PreviewRealmUpdateResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildPreviewRealmUpdateResponse();
      var od = api.PreviewRealmUpdateResponse.fromJson(o.toJson());
      checkPreviewRealmUpdateResponse(od as api.PreviewRealmUpdateResponse);
    });
  });

  unittest.group('obj-schema-PreviewUpdateGameServerClusterResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildPreviewUpdateGameServerClusterResponse();
      var od = api.PreviewUpdateGameServerClusterResponse.fromJson(o.toJson());
      checkPreviewUpdateGameServerClusterResponse(
          od as api.PreviewUpdateGameServerClusterResponse);
    });
  });

  unittest.group('obj-schema-Realm', () {
    unittest.test('to-json--from-json', () {
      var o = buildRealm();
      var od = api.Realm.fromJson(o.toJson());
      checkRealm(od as api.Realm);
    });
  });

  unittest.group('obj-schema-RealmSelector', () {
    unittest.test('to-json--from-json', () {
      var o = buildRealmSelector();
      var od = api.RealmSelector.fromJson(o.toJson());
      checkRealmSelector(od as api.RealmSelector);
    });
  });

  unittest.group('obj-schema-Rule', () {
    unittest.test('to-json--from-json', () {
      var o = buildRule();
      var od = api.Rule.fromJson(o.toJson());
      checkRule(od as api.Rule);
    });
  });

  unittest.group('obj-schema-ScalingConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildScalingConfig();
      var od = api.ScalingConfig.fromJson(o.toJson());
      checkScalingConfig(od as api.ScalingConfig);
    });
  });

  unittest.group('obj-schema-Schedule', () {
    unittest.test('to-json--from-json', () {
      var o = buildSchedule();
      var od = api.Schedule.fromJson(o.toJson());
      checkSchedule(od as api.Schedule);
    });
  });

  unittest.group('obj-schema-SetIamPolicyRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildSetIamPolicyRequest();
      var od = api.SetIamPolicyRequest.fromJson(o.toJson());
      checkSetIamPolicyRequest(od as api.SetIamPolicyRequest);
    });
  });

  unittest.group('obj-schema-SpecSource', () {
    unittest.test('to-json--from-json', () {
      var o = buildSpecSource();
      var od = api.SpecSource.fromJson(o.toJson());
      checkSpecSource(od as api.SpecSource);
    });
  });

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () {
      var o = buildStatus();
      var od = api.Status.fromJson(o.toJson());
      checkStatus(od as api.Status);
    });
  });

  unittest.group('obj-schema-TargetDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildTargetDetails();
      var od = api.TargetDetails.fromJson(o.toJson());
      checkTargetDetails(od as api.TargetDetails);
    });
  });

  unittest.group('obj-schema-TargetFleet', () {
    unittest.test('to-json--from-json', () {
      var o = buildTargetFleet();
      var od = api.TargetFleet.fromJson(o.toJson());
      checkTargetFleet(od as api.TargetFleet);
    });
  });

  unittest.group('obj-schema-TargetFleetAutoscaler', () {
    unittest.test('to-json--from-json', () {
      var o = buildTargetFleetAutoscaler();
      var od = api.TargetFleetAutoscaler.fromJson(o.toJson());
      checkTargetFleetAutoscaler(od as api.TargetFleetAutoscaler);
    });
  });

  unittest.group('obj-schema-TargetFleetDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildTargetFleetDetails();
      var od = api.TargetFleetDetails.fromJson(o.toJson());
      checkTargetFleetDetails(od as api.TargetFleetDetails);
    });
  });

  unittest.group('obj-schema-TargetState', () {
    unittest.test('to-json--from-json', () {
      var o = buildTargetState();
      var od = api.TargetState.fromJson(o.toJson());
      checkTargetState(od as api.TargetState);
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

  unittest.group('resource-ProjectsLocationsResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.GameservicesApi(mock).projects.locations;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("v1beta/"));
        pathOffset += 7;
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
      var res = api.GameservicesApi(mock).projects.locations;
      var arg_name = 'foo';
      var arg_filter = 'foo';
      var arg_includeUnrevealedLocations = true;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("v1beta/"));
        pathOffset += 7;
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
        unittest.expect(queryMap["includeUnrevealedLocations"].first,
            unittest.equals("$arg_includeUnrevealedLocations"));
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
              includeUnrevealedLocations: arg_includeUnrevealedLocations,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListLocationsResponse(response as api.ListLocationsResponse);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsGameServerDeploymentsResourceApi',
      () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res =
          api.GameservicesApi(mock).projects.locations.gameServerDeployments;
      var arg_request = buildGameServerDeployment();
      var arg_parent = 'foo';
      var arg_deploymentId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GameServerDeployment.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGameServerDeployment(obj as api.GameServerDeployment);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("v1beta/"));
        pathOffset += 7;
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
            queryMap["deploymentId"].first, unittest.equals(arg_deploymentId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              deploymentId: arg_deploymentId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res =
          api.GameservicesApi(mock).projects.locations.gameServerDeployments;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("v1beta/"));
        pathOffset += 7;
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
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--fetchDeploymentState', () {
      var mock = HttpServerMock();
      var res =
          api.GameservicesApi(mock).projects.locations.gameServerDeployments;
      var arg_request = buildFetchDeploymentStateRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.FetchDeploymentStateRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkFetchDeploymentStateRequest(
            obj as api.FetchDeploymentStateRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("v1beta/"));
        pathOffset += 7;
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
        var resp = convert.json.encode(buildFetchDeploymentStateResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .fetchDeploymentState(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkFetchDeploymentStateResponse(
            response as api.FetchDeploymentStateResponse);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res =
          api.GameservicesApi(mock).projects.locations.gameServerDeployments;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("v1beta/"));
        pathOffset += 7;
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
        var resp = convert.json.encode(buildGameServerDeployment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGameServerDeployment(response as api.GameServerDeployment);
      })));
    });

    unittest.test('method--getIamPolicy', () {
      var mock = HttpServerMock();
      var res =
          api.GameservicesApi(mock).projects.locations.gameServerDeployments;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("v1beta/"));
        pathOffset += 7;
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

    unittest.test('method--getRollout', () {
      var mock = HttpServerMock();
      var res =
          api.GameservicesApi(mock).projects.locations.gameServerDeployments;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("v1beta/"));
        pathOffset += 7;
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
        var resp = convert.json.encode(buildGameServerDeploymentRollout());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getRollout(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGameServerDeploymentRollout(
            response as api.GameServerDeploymentRollout);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res =
          api.GameservicesApi(mock).projects.locations.gameServerDeployments;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("v1beta/"));
        pathOffset += 7;
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
        var resp =
            convert.json.encode(buildListGameServerDeploymentsResponse());
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
        checkListGameServerDeploymentsResponse(
            response as api.ListGameServerDeploymentsResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res =
          api.GameservicesApi(mock).projects.locations.gameServerDeployments;
      var arg_request = buildGameServerDeployment();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GameServerDeployment.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGameServerDeployment(obj as api.GameServerDeployment);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("v1beta/"));
        pathOffset += 7;
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
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--previewRollout', () {
      var mock = HttpServerMock();
      var res =
          api.GameservicesApi(mock).projects.locations.gameServerDeployments;
      var arg_request = buildGameServerDeploymentRollout();
      var arg_name = 'foo';
      var arg_previewTime = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GameServerDeploymentRollout.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGameServerDeploymentRollout(
            obj as api.GameServerDeploymentRollout);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("v1beta/"));
        pathOffset += 7;
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
            queryMap["previewTime"].first, unittest.equals(arg_previewTime));
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildPreviewGameServerDeploymentRolloutResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .previewRollout(arg_request, arg_name,
              previewTime: arg_previewTime,
              updateMask: arg_updateMask,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPreviewGameServerDeploymentRolloutResponse(
            response as api.PreviewGameServerDeploymentRolloutResponse);
      })));
    });

    unittest.test('method--setIamPolicy', () {
      var mock = HttpServerMock();
      var res =
          api.GameservicesApi(mock).projects.locations.gameServerDeployments;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("v1beta/"));
        pathOffset += 7;
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
          api.GameservicesApi(mock).projects.locations.gameServerDeployments;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("v1beta/"));
        pathOffset += 7;
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

    unittest.test('method--updateRollout', () {
      var mock = HttpServerMock();
      var res =
          api.GameservicesApi(mock).projects.locations.gameServerDeployments;
      var arg_request = buildGameServerDeploymentRollout();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GameServerDeploymentRollout.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGameServerDeploymentRollout(
            obj as api.GameServerDeploymentRollout);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("v1beta/"));
        pathOffset += 7;
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
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updateRollout(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });
  });

  unittest.group(
      'resource-ProjectsLocationsGameServerDeploymentsConfigsResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.GameservicesApi(mock)
          .projects
          .locations
          .gameServerDeployments
          .configs;
      var arg_request = buildGameServerConfig();
      var arg_parent = 'foo';
      var arg_configId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GameServerConfig.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGameServerConfig(obj as api.GameServerConfig);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("v1beta/"));
        pathOffset += 7;
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
            queryMap["configId"].first, unittest.equals(arg_configId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              configId: arg_configId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.GameservicesApi(mock)
          .projects
          .locations
          .gameServerDeployments
          .configs;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("v1beta/"));
        pathOffset += 7;
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
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.GameservicesApi(mock)
          .projects
          .locations
          .gameServerDeployments
          .configs;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("v1beta/"));
        pathOffset += 7;
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
        var resp = convert.json.encode(buildGameServerConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGameServerConfig(response as api.GameServerConfig);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.GameservicesApi(mock)
          .projects
          .locations
          .gameServerDeployments
          .configs;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("v1beta/"));
        pathOffset += 7;
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
        var resp = convert.json.encode(buildListGameServerConfigsResponse());
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
        checkListGameServerConfigsResponse(
            response as api.ListGameServerConfigsResponse);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsOperationsResourceApi', () {
    unittest.test('method--cancel', () {
      var mock = HttpServerMock();
      var res = api.GameservicesApi(mock).projects.locations.operations;
      var arg_request = buildCancelOperationRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CancelOperationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCancelOperationRequest(obj as api.CancelOperationRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("v1beta/"));
        pathOffset += 7;
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
      var res = api.GameservicesApi(mock).projects.locations.operations;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("v1beta/"));
        pathOffset += 7;
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
      var res = api.GameservicesApi(mock).projects.locations.operations;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("v1beta/"));
        pathOffset += 7;
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
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.GameservicesApi(mock).projects.locations.operations;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("v1beta/"));
        pathOffset += 7;
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
        var resp = convert.json.encode(buildListOperationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              filter: arg_filter,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListOperationsResponse(response as api.ListOperationsResponse);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsRealmsResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.GameservicesApi(mock).projects.locations.realms;
      var arg_request = buildRealm();
      var arg_parent = 'foo';
      var arg_realmId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Realm.fromJson(json as core.Map<core.String, core.dynamic>);
        checkRealm(obj as api.Realm);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("v1beta/"));
        pathOffset += 7;
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
            queryMap["realmId"].first, unittest.equals(arg_realmId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              realmId: arg_realmId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.GameservicesApi(mock).projects.locations.realms;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("v1beta/"));
        pathOffset += 7;
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
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.GameservicesApi(mock).projects.locations.realms;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("v1beta/"));
        pathOffset += 7;
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
        var resp = convert.json.encode(buildRealm());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRealm(response as api.Realm);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.GameservicesApi(mock).projects.locations.realms;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("v1beta/"));
        pathOffset += 7;
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
        var resp = convert.json.encode(buildListRealmsResponse());
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
        checkListRealmsResponse(response as api.ListRealmsResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.GameservicesApi(mock).projects.locations.realms;
      var arg_request = buildRealm();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Realm.fromJson(json as core.Map<core.String, core.dynamic>);
        checkRealm(obj as api.Realm);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("v1beta/"));
        pathOffset += 7;
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
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--previewUpdate', () {
      var mock = HttpServerMock();
      var res = api.GameservicesApi(mock).projects.locations.realms;
      var arg_request = buildRealm();
      var arg_name = 'foo';
      var arg_previewTime = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Realm.fromJson(json as core.Map<core.String, core.dynamic>);
        checkRealm(obj as api.Realm);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("v1beta/"));
        pathOffset += 7;
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
            queryMap["previewTime"].first, unittest.equals(arg_previewTime));
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPreviewRealmUpdateResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .previewUpdate(arg_request, arg_name,
              previewTime: arg_previewTime,
              updateMask: arg_updateMask,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPreviewRealmUpdateResponse(
            response as api.PreviewRealmUpdateResponse);
      })));
    });
  });

  unittest.group(
      'resource-ProjectsLocationsRealmsGameServerClustersResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.GameservicesApi(mock)
          .projects
          .locations
          .realms
          .gameServerClusters;
      var arg_request = buildGameServerCluster();
      var arg_parent = 'foo';
      var arg_gameServerClusterId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GameServerCluster.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGameServerCluster(obj as api.GameServerCluster);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("v1beta/"));
        pathOffset += 7;
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
        unittest.expect(queryMap["gameServerClusterId"].first,
            unittest.equals(arg_gameServerClusterId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              gameServerClusterId: arg_gameServerClusterId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.GameservicesApi(mock)
          .projects
          .locations
          .realms
          .gameServerClusters;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("v1beta/"));
        pathOffset += 7;
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
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.GameservicesApi(mock)
          .projects
          .locations
          .realms
          .gameServerClusters;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("v1beta/"));
        pathOffset += 7;
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
        var resp = convert.json.encode(buildGameServerCluster());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGameServerCluster(response as api.GameServerCluster);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.GameservicesApi(mock)
          .projects
          .locations
          .realms
          .gameServerClusters;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("v1beta/"));
        pathOffset += 7;
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
        var resp = convert.json.encode(buildListGameServerClustersResponse());
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
        checkListGameServerClustersResponse(
            response as api.ListGameServerClustersResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.GameservicesApi(mock)
          .projects
          .locations
          .realms
          .gameServerClusters;
      var arg_request = buildGameServerCluster();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GameServerCluster.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGameServerCluster(obj as api.GameServerCluster);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("v1beta/"));
        pathOffset += 7;
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
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--previewCreate', () {
      var mock = HttpServerMock();
      var res = api.GameservicesApi(mock)
          .projects
          .locations
          .realms
          .gameServerClusters;
      var arg_request = buildGameServerCluster();
      var arg_parent = 'foo';
      var arg_gameServerClusterId = 'foo';
      var arg_previewTime = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GameServerCluster.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGameServerCluster(obj as api.GameServerCluster);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("v1beta/"));
        pathOffset += 7;
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
        unittest.expect(queryMap["gameServerClusterId"].first,
            unittest.equals(arg_gameServerClusterId));
        unittest.expect(
            queryMap["previewTime"].first, unittest.equals(arg_previewTime));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildPreviewCreateGameServerClusterResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .previewCreate(arg_request, arg_parent,
              gameServerClusterId: arg_gameServerClusterId,
              previewTime: arg_previewTime,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPreviewCreateGameServerClusterResponse(
            response as api.PreviewCreateGameServerClusterResponse);
      })));
    });

    unittest.test('method--previewDelete', () {
      var mock = HttpServerMock();
      var res = api.GameservicesApi(mock)
          .projects
          .locations
          .realms
          .gameServerClusters;
      var arg_name = 'foo';
      var arg_previewTime = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("v1beta/"));
        pathOffset += 7;
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
            queryMap["previewTime"].first, unittest.equals(arg_previewTime));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildPreviewDeleteGameServerClusterResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .previewDelete(arg_name,
              previewTime: arg_previewTime, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPreviewDeleteGameServerClusterResponse(
            response as api.PreviewDeleteGameServerClusterResponse);
      })));
    });

    unittest.test('method--previewUpdate', () {
      var mock = HttpServerMock();
      var res = api.GameservicesApi(mock)
          .projects
          .locations
          .realms
          .gameServerClusters;
      var arg_request = buildGameServerCluster();
      var arg_name = 'foo';
      var arg_previewTime = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GameServerCluster.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGameServerCluster(obj as api.GameServerCluster);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("v1beta/"));
        pathOffset += 7;
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
            queryMap["previewTime"].first, unittest.equals(arg_previewTime));
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildPreviewUpdateGameServerClusterResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .previewUpdate(arg_request, arg_name,
              previewTime: arg_previewTime,
              updateMask: arg_updateMask,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPreviewUpdateGameServerClusterResponse(
            response as api.PreviewUpdateGameServerClusterResponse);
      })));
    });
  });
}
