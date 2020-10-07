library googleapis_beta.gameservices.v1beta.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis_beta/gameservices/v1beta.dart' as api;

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

buildUnnamed6847() {
  var o = new core.List<api.AuditLogConfig>();
  o.add(buildAuditLogConfig());
  o.add(buildAuditLogConfig());
  return o;
}

checkUnnamed6847(core.List<api.AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditLogConfig(o[0]);
  checkAuditLogConfig(o[1]);
}

buildUnnamed6848() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed6848(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAuditConfig = 0;
buildAuditConfig() {
  var o = new api.AuditConfig();
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed6847();
    o.exemptedMembers = buildUnnamed6848();
    o.service = "foo";
  }
  buildCounterAuditConfig--;
  return o;
}

checkAuditConfig(api.AuditConfig o) {
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    checkUnnamed6847(o.auditLogConfigs);
    checkUnnamed6848(o.exemptedMembers);
    unittest.expect(o.service, unittest.equals('foo'));
  }
  buildCounterAuditConfig--;
}

buildUnnamed6849() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed6849(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAuditLogConfig = 0;
buildAuditLogConfig() {
  var o = new api.AuditLogConfig();
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    o.exemptedMembers = buildUnnamed6849();
    o.ignoreChildExemptions = true;
    o.logType = "foo";
  }
  buildCounterAuditLogConfig--;
  return o;
}

checkAuditLogConfig(api.AuditLogConfig o) {
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    checkUnnamed6849(o.exemptedMembers);
    unittest.expect(o.ignoreChildExemptions, unittest.isTrue);
    unittest.expect(o.logType, unittest.equals('foo'));
  }
  buildCounterAuditLogConfig--;
}

core.int buildCounterAuthorizationLoggingOptions = 0;
buildAuthorizationLoggingOptions() {
  var o = new api.AuthorizationLoggingOptions();
  buildCounterAuthorizationLoggingOptions++;
  if (buildCounterAuthorizationLoggingOptions < 3) {
    o.permissionType = "foo";
  }
  buildCounterAuthorizationLoggingOptions--;
  return o;
}

checkAuthorizationLoggingOptions(api.AuthorizationLoggingOptions o) {
  buildCounterAuthorizationLoggingOptions++;
  if (buildCounterAuthorizationLoggingOptions < 3) {
    unittest.expect(o.permissionType, unittest.equals('foo'));
  }
  buildCounterAuthorizationLoggingOptions--;
}

buildUnnamed6850() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed6850(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBinding = 0;
buildBinding() {
  var o = new api.Binding();
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    o.bindingId = "foo";
    o.condition = buildExpr();
    o.members = buildUnnamed6850();
    o.role = "foo";
  }
  buildCounterBinding--;
  return o;
}

checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    unittest.expect(o.bindingId, unittest.equals('foo'));
    checkExpr(o.condition);
    checkUnnamed6850(o.members);
    unittest.expect(o.role, unittest.equals('foo'));
  }
  buildCounterBinding--;
}

core.int buildCounterCancelOperationRequest = 0;
buildCancelOperationRequest() {
  var o = new api.CancelOperationRequest();
  buildCounterCancelOperationRequest++;
  if (buildCounterCancelOperationRequest < 3) {}
  buildCounterCancelOperationRequest--;
  return o;
}

checkCancelOperationRequest(api.CancelOperationRequest o) {
  buildCounterCancelOperationRequest++;
  if (buildCounterCancelOperationRequest < 3) {}
  buildCounterCancelOperationRequest--;
}

core.int buildCounterCloudAuditOptions = 0;
buildCloudAuditOptions() {
  var o = new api.CloudAuditOptions();
  buildCounterCloudAuditOptions++;
  if (buildCounterCloudAuditOptions < 3) {
    o.authorizationLoggingOptions = buildAuthorizationLoggingOptions();
    o.logName = "foo";
  }
  buildCounterCloudAuditOptions--;
  return o;
}

checkCloudAuditOptions(api.CloudAuditOptions o) {
  buildCounterCloudAuditOptions++;
  if (buildCounterCloudAuditOptions < 3) {
    checkAuthorizationLoggingOptions(o.authorizationLoggingOptions);
    unittest.expect(o.logName, unittest.equals('foo'));
  }
  buildCounterCloudAuditOptions--;
}

buildUnnamed6851() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed6851(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCondition = 0;
buildCondition() {
  var o = new api.Condition();
  buildCounterCondition++;
  if (buildCounterCondition < 3) {
    o.iam = "foo";
    o.op = "foo";
    o.svc = "foo";
    o.sys = "foo";
    o.values = buildUnnamed6851();
  }
  buildCounterCondition--;
  return o;
}

checkCondition(api.Condition o) {
  buildCounterCondition++;
  if (buildCounterCondition < 3) {
    unittest.expect(o.iam, unittest.equals('foo'));
    unittest.expect(o.op, unittest.equals('foo'));
    unittest.expect(o.svc, unittest.equals('foo'));
    unittest.expect(o.sys, unittest.equals('foo'));
    checkUnnamed6851(o.values);
  }
  buildCounterCondition--;
}

buildUnnamed6852() {
  var o = new core.List<api.CustomField>();
  o.add(buildCustomField());
  o.add(buildCustomField());
  return o;
}

checkUnnamed6852(core.List<api.CustomField> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomField(o[0]);
  checkCustomField(o[1]);
}

core.int buildCounterCounterOptions = 0;
buildCounterOptions() {
  var o = new api.CounterOptions();
  buildCounterCounterOptions++;
  if (buildCounterCounterOptions < 3) {
    o.customFields = buildUnnamed6852();
    o.field = "foo";
    o.metric = "foo";
  }
  buildCounterCounterOptions--;
  return o;
}

checkCounterOptions(api.CounterOptions o) {
  buildCounterCounterOptions++;
  if (buildCounterCounterOptions < 3) {
    checkUnnamed6852(o.customFields);
    unittest.expect(o.field, unittest.equals('foo'));
    unittest.expect(o.metric, unittest.equals('foo'));
  }
  buildCounterCounterOptions--;
}

core.int buildCounterCustomField = 0;
buildCustomField() {
  var o = new api.CustomField();
  buildCounterCustomField++;
  if (buildCounterCustomField < 3) {
    o.name = "foo";
    o.value = "foo";
  }
  buildCounterCustomField--;
  return o;
}

checkCustomField(api.CustomField o) {
  buildCounterCustomField++;
  if (buildCounterCustomField < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterCustomField--;
}

core.int buildCounterDataAccessOptions = 0;
buildDataAccessOptions() {
  var o = new api.DataAccessOptions();
  buildCounterDataAccessOptions++;
  if (buildCounterDataAccessOptions < 3) {
    o.logMode = "foo";
  }
  buildCounterDataAccessOptions--;
  return o;
}

checkDataAccessOptions(api.DataAccessOptions o) {
  buildCounterDataAccessOptions++;
  if (buildCounterDataAccessOptions < 3) {
    unittest.expect(o.logMode, unittest.equals('foo'));
  }
  buildCounterDataAccessOptions--;
}

buildUnnamed6853() {
  var o = new core.List<api.DeployedFleetDetails>();
  o.add(buildDeployedFleetDetails());
  o.add(buildDeployedFleetDetails());
  return o;
}

checkUnnamed6853(core.List<api.DeployedFleetDetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeployedFleetDetails(o[0]);
  checkDeployedFleetDetails(o[1]);
}

core.int buildCounterDeployedClusterState = 0;
buildDeployedClusterState() {
  var o = new api.DeployedClusterState();
  buildCounterDeployedClusterState++;
  if (buildCounterDeployedClusterState < 3) {
    o.cluster = "foo";
    o.fleetDetails = buildUnnamed6853();
  }
  buildCounterDeployedClusterState--;
  return o;
}

checkDeployedClusterState(api.DeployedClusterState o) {
  buildCounterDeployedClusterState++;
  if (buildCounterDeployedClusterState < 3) {
    unittest.expect(o.cluster, unittest.equals('foo'));
    checkUnnamed6853(o.fleetDetails);
  }
  buildCounterDeployedClusterState--;
}

core.int buildCounterDeployedFleet = 0;
buildDeployedFleet() {
  var o = new api.DeployedFleet();
  buildCounterDeployedFleet++;
  if (buildCounterDeployedFleet < 3) {
    o.fleet = "foo";
    o.fleetSpec = "foo";
    o.specSource = buildSpecSource();
    o.status = buildDeployedFleetStatus();
  }
  buildCounterDeployedFleet--;
  return o;
}

checkDeployedFleet(api.DeployedFleet o) {
  buildCounterDeployedFleet++;
  if (buildCounterDeployedFleet < 3) {
    unittest.expect(o.fleet, unittest.equals('foo'));
    unittest.expect(o.fleetSpec, unittest.equals('foo'));
    checkSpecSource(o.specSource);
    checkDeployedFleetStatus(o.status);
  }
  buildCounterDeployedFleet--;
}

core.int buildCounterDeployedFleetAutoscaler = 0;
buildDeployedFleetAutoscaler() {
  var o = new api.DeployedFleetAutoscaler();
  buildCounterDeployedFleetAutoscaler++;
  if (buildCounterDeployedFleetAutoscaler < 3) {
    o.autoscaler = "foo";
    o.fleetAutoscalerSpec = "foo";
    o.specSource = buildSpecSource();
  }
  buildCounterDeployedFleetAutoscaler--;
  return o;
}

checkDeployedFleetAutoscaler(api.DeployedFleetAutoscaler o) {
  buildCounterDeployedFleetAutoscaler++;
  if (buildCounterDeployedFleetAutoscaler < 3) {
    unittest.expect(o.autoscaler, unittest.equals('foo'));
    unittest.expect(o.fleetAutoscalerSpec, unittest.equals('foo'));
    checkSpecSource(o.specSource);
  }
  buildCounterDeployedFleetAutoscaler--;
}

core.int buildCounterDeployedFleetDetails = 0;
buildDeployedFleetDetails() {
  var o = new api.DeployedFleetDetails();
  buildCounterDeployedFleetDetails++;
  if (buildCounterDeployedFleetDetails < 3) {
    o.deployedAutoscaler = buildDeployedFleetAutoscaler();
    o.deployedFleet = buildDeployedFleet();
  }
  buildCounterDeployedFleetDetails--;
  return o;
}

checkDeployedFleetDetails(api.DeployedFleetDetails o) {
  buildCounterDeployedFleetDetails++;
  if (buildCounterDeployedFleetDetails < 3) {
    checkDeployedFleetAutoscaler(o.deployedAutoscaler);
    checkDeployedFleet(o.deployedFleet);
  }
  buildCounterDeployedFleetDetails--;
}

core.int buildCounterDeployedFleetStatus = 0;
buildDeployedFleetStatus() {
  var o = new api.DeployedFleetStatus();
  buildCounterDeployedFleetStatus++;
  if (buildCounterDeployedFleetStatus < 3) {
    o.allocatedReplicas = "foo";
    o.readyReplicas = "foo";
    o.replicas = "foo";
    o.reservedReplicas = "foo";
  }
  buildCounterDeployedFleetStatus--;
  return o;
}

checkDeployedFleetStatus(api.DeployedFleetStatus o) {
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

core.int buildCounterFetchDeploymentStateRequest = 0;
buildFetchDeploymentStateRequest() {
  var o = new api.FetchDeploymentStateRequest();
  buildCounterFetchDeploymentStateRequest++;
  if (buildCounterFetchDeploymentStateRequest < 3) {}
  buildCounterFetchDeploymentStateRequest--;
  return o;
}

checkFetchDeploymentStateRequest(api.FetchDeploymentStateRequest o) {
  buildCounterFetchDeploymentStateRequest++;
  if (buildCounterFetchDeploymentStateRequest < 3) {}
  buildCounterFetchDeploymentStateRequest--;
}

buildUnnamed6854() {
  var o = new core.List<api.DeployedClusterState>();
  o.add(buildDeployedClusterState());
  o.add(buildDeployedClusterState());
  return o;
}

checkUnnamed6854(core.List<api.DeployedClusterState> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeployedClusterState(o[0]);
  checkDeployedClusterState(o[1]);
}

buildUnnamed6855() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed6855(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterFetchDeploymentStateResponse = 0;
buildFetchDeploymentStateResponse() {
  var o = new api.FetchDeploymentStateResponse();
  buildCounterFetchDeploymentStateResponse++;
  if (buildCounterFetchDeploymentStateResponse < 3) {
    o.clusterState = buildUnnamed6854();
    o.unavailable = buildUnnamed6855();
  }
  buildCounterFetchDeploymentStateResponse--;
  return o;
}

checkFetchDeploymentStateResponse(api.FetchDeploymentStateResponse o) {
  buildCounterFetchDeploymentStateResponse++;
  if (buildCounterFetchDeploymentStateResponse < 3) {
    checkUnnamed6854(o.clusterState);
    checkUnnamed6855(o.unavailable);
  }
  buildCounterFetchDeploymentStateResponse--;
}

core.int buildCounterFleetConfig = 0;
buildFleetConfig() {
  var o = new api.FleetConfig();
  buildCounterFleetConfig++;
  if (buildCounterFleetConfig < 3) {
    o.fleetSpec = "foo";
    o.name = "foo";
  }
  buildCounterFleetConfig--;
  return o;
}

checkFleetConfig(api.FleetConfig o) {
  buildCounterFleetConfig++;
  if (buildCounterFleetConfig < 3) {
    unittest.expect(o.fleetSpec, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterFleetConfig--;
}

buildUnnamed6856() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed6856(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterGameServerCluster = 0;
buildGameServerCluster() {
  var o = new api.GameServerCluster();
  buildCounterGameServerCluster++;
  if (buildCounterGameServerCluster < 3) {
    o.connectionInfo = buildGameServerClusterConnectionInfo();
    o.createTime = "foo";
    o.description = "foo";
    o.etag = "foo";
    o.labels = buildUnnamed6856();
    o.name = "foo";
    o.updateTime = "foo";
  }
  buildCounterGameServerCluster--;
  return o;
}

checkGameServerCluster(api.GameServerCluster o) {
  buildCounterGameServerCluster++;
  if (buildCounterGameServerCluster < 3) {
    checkGameServerClusterConnectionInfo(o.connectionInfo);
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed6856(o.labels);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterGameServerCluster--;
}

core.int buildCounterGameServerClusterConnectionInfo = 0;
buildGameServerClusterConnectionInfo() {
  var o = new api.GameServerClusterConnectionInfo();
  buildCounterGameServerClusterConnectionInfo++;
  if (buildCounterGameServerClusterConnectionInfo < 3) {
    o.gkeClusterReference = buildGkeClusterReference();
    o.namespace = "foo";
  }
  buildCounterGameServerClusterConnectionInfo--;
  return o;
}

checkGameServerClusterConnectionInfo(api.GameServerClusterConnectionInfo o) {
  buildCounterGameServerClusterConnectionInfo++;
  if (buildCounterGameServerClusterConnectionInfo < 3) {
    checkGkeClusterReference(o.gkeClusterReference);
    unittest.expect(o.namespace, unittest.equals('foo'));
  }
  buildCounterGameServerClusterConnectionInfo--;
}

buildUnnamed6857() {
  var o = new core.List<api.FleetConfig>();
  o.add(buildFleetConfig());
  o.add(buildFleetConfig());
  return o;
}

checkUnnamed6857(core.List<api.FleetConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFleetConfig(o[0]);
  checkFleetConfig(o[1]);
}

buildUnnamed6858() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed6858(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed6859() {
  var o = new core.List<api.ScalingConfig>();
  o.add(buildScalingConfig());
  o.add(buildScalingConfig());
  return o;
}

checkUnnamed6859(core.List<api.ScalingConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkScalingConfig(o[0]);
  checkScalingConfig(o[1]);
}

core.int buildCounterGameServerConfig = 0;
buildGameServerConfig() {
  var o = new api.GameServerConfig();
  buildCounterGameServerConfig++;
  if (buildCounterGameServerConfig < 3) {
    o.createTime = "foo";
    o.description = "foo";
    o.fleetConfigs = buildUnnamed6857();
    o.labels = buildUnnamed6858();
    o.name = "foo";
    o.scalingConfigs = buildUnnamed6859();
    o.updateTime = "foo";
  }
  buildCounterGameServerConfig--;
  return o;
}

checkGameServerConfig(api.GameServerConfig o) {
  buildCounterGameServerConfig++;
  if (buildCounterGameServerConfig < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    checkUnnamed6857(o.fleetConfigs);
    checkUnnamed6858(o.labels);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed6859(o.scalingConfigs);
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterGameServerConfig--;
}

core.int buildCounterGameServerConfigOverride = 0;
buildGameServerConfigOverride() {
  var o = new api.GameServerConfigOverride();
  buildCounterGameServerConfigOverride++;
  if (buildCounterGameServerConfigOverride < 3) {
    o.configVersion = "foo";
    o.realmsSelector = buildRealmSelector();
  }
  buildCounterGameServerConfigOverride--;
  return o;
}

checkGameServerConfigOverride(api.GameServerConfigOverride o) {
  buildCounterGameServerConfigOverride++;
  if (buildCounterGameServerConfigOverride < 3) {
    unittest.expect(o.configVersion, unittest.equals('foo'));
    checkRealmSelector(o.realmsSelector);
  }
  buildCounterGameServerConfigOverride--;
}

buildUnnamed6860() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed6860(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterGameServerDeployment = 0;
buildGameServerDeployment() {
  var o = new api.GameServerDeployment();
  buildCounterGameServerDeployment++;
  if (buildCounterGameServerDeployment < 3) {
    o.createTime = "foo";
    o.description = "foo";
    o.etag = "foo";
    o.labels = buildUnnamed6860();
    o.name = "foo";
    o.updateTime = "foo";
  }
  buildCounterGameServerDeployment--;
  return o;
}

checkGameServerDeployment(api.GameServerDeployment o) {
  buildCounterGameServerDeployment++;
  if (buildCounterGameServerDeployment < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed6860(o.labels);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterGameServerDeployment--;
}

buildUnnamed6861() {
  var o = new core.List<api.GameServerConfigOverride>();
  o.add(buildGameServerConfigOverride());
  o.add(buildGameServerConfigOverride());
  return o;
}

checkUnnamed6861(core.List<api.GameServerConfigOverride> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGameServerConfigOverride(o[0]);
  checkGameServerConfigOverride(o[1]);
}

core.int buildCounterGameServerDeploymentRollout = 0;
buildGameServerDeploymentRollout() {
  var o = new api.GameServerDeploymentRollout();
  buildCounterGameServerDeploymentRollout++;
  if (buildCounterGameServerDeploymentRollout < 3) {
    o.createTime = "foo";
    o.defaultGameServerConfig = "foo";
    o.etag = "foo";
    o.gameServerConfigOverrides = buildUnnamed6861();
    o.name = "foo";
    o.updateTime = "foo";
  }
  buildCounterGameServerDeploymentRollout--;
  return o;
}

checkGameServerDeploymentRollout(api.GameServerDeploymentRollout o) {
  buildCounterGameServerDeploymentRollout++;
  if (buildCounterGameServerDeploymentRollout < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.defaultGameServerConfig, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed6861(o.gameServerConfigOverrides);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterGameServerDeploymentRollout--;
}

core.int buildCounterGkeClusterReference = 0;
buildGkeClusterReference() {
  var o = new api.GkeClusterReference();
  buildCounterGkeClusterReference++;
  if (buildCounterGkeClusterReference < 3) {
    o.cluster = "foo";
  }
  buildCounterGkeClusterReference--;
  return o;
}

checkGkeClusterReference(api.GkeClusterReference o) {
  buildCounterGkeClusterReference++;
  if (buildCounterGkeClusterReference < 3) {
    unittest.expect(o.cluster, unittest.equals('foo'));
  }
  buildCounterGkeClusterReference--;
}

buildUnnamed6862() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed6862(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterLabelSelector = 0;
buildLabelSelector() {
  var o = new api.LabelSelector();
  buildCounterLabelSelector++;
  if (buildCounterLabelSelector < 3) {
    o.labels = buildUnnamed6862();
  }
  buildCounterLabelSelector--;
  return o;
}

checkLabelSelector(api.LabelSelector o) {
  buildCounterLabelSelector++;
  if (buildCounterLabelSelector < 3) {
    checkUnnamed6862(o.labels);
  }
  buildCounterLabelSelector--;
}

buildUnnamed6863() {
  var o = new core.List<api.GameServerCluster>();
  o.add(buildGameServerCluster());
  o.add(buildGameServerCluster());
  return o;
}

checkUnnamed6863(core.List<api.GameServerCluster> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGameServerCluster(o[0]);
  checkGameServerCluster(o[1]);
}

buildUnnamed6864() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed6864(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListGameServerClustersResponse = 0;
buildListGameServerClustersResponse() {
  var o = new api.ListGameServerClustersResponse();
  buildCounterListGameServerClustersResponse++;
  if (buildCounterListGameServerClustersResponse < 3) {
    o.gameServerClusters = buildUnnamed6863();
    o.nextPageToken = "foo";
    o.unreachable = buildUnnamed6864();
  }
  buildCounterListGameServerClustersResponse--;
  return o;
}

checkListGameServerClustersResponse(api.ListGameServerClustersResponse o) {
  buildCounterListGameServerClustersResponse++;
  if (buildCounterListGameServerClustersResponse < 3) {
    checkUnnamed6863(o.gameServerClusters);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed6864(o.unreachable);
  }
  buildCounterListGameServerClustersResponse--;
}

buildUnnamed6865() {
  var o = new core.List<api.GameServerConfig>();
  o.add(buildGameServerConfig());
  o.add(buildGameServerConfig());
  return o;
}

checkUnnamed6865(core.List<api.GameServerConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGameServerConfig(o[0]);
  checkGameServerConfig(o[1]);
}

buildUnnamed6866() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed6866(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListGameServerConfigsResponse = 0;
buildListGameServerConfigsResponse() {
  var o = new api.ListGameServerConfigsResponse();
  buildCounterListGameServerConfigsResponse++;
  if (buildCounterListGameServerConfigsResponse < 3) {
    o.gameServerConfigs = buildUnnamed6865();
    o.nextPageToken = "foo";
    o.unreachable = buildUnnamed6866();
  }
  buildCounterListGameServerConfigsResponse--;
  return o;
}

checkListGameServerConfigsResponse(api.ListGameServerConfigsResponse o) {
  buildCounterListGameServerConfigsResponse++;
  if (buildCounterListGameServerConfigsResponse < 3) {
    checkUnnamed6865(o.gameServerConfigs);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed6866(o.unreachable);
  }
  buildCounterListGameServerConfigsResponse--;
}

buildUnnamed6867() {
  var o = new core.List<api.GameServerDeployment>();
  o.add(buildGameServerDeployment());
  o.add(buildGameServerDeployment());
  return o;
}

checkUnnamed6867(core.List<api.GameServerDeployment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGameServerDeployment(o[0]);
  checkGameServerDeployment(o[1]);
}

buildUnnamed6868() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed6868(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListGameServerDeploymentsResponse = 0;
buildListGameServerDeploymentsResponse() {
  var o = new api.ListGameServerDeploymentsResponse();
  buildCounterListGameServerDeploymentsResponse++;
  if (buildCounterListGameServerDeploymentsResponse < 3) {
    o.gameServerDeployments = buildUnnamed6867();
    o.nextPageToken = "foo";
    o.unreachable = buildUnnamed6868();
  }
  buildCounterListGameServerDeploymentsResponse--;
  return o;
}

checkListGameServerDeploymentsResponse(
    api.ListGameServerDeploymentsResponse o) {
  buildCounterListGameServerDeploymentsResponse++;
  if (buildCounterListGameServerDeploymentsResponse < 3) {
    checkUnnamed6867(o.gameServerDeployments);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed6868(o.unreachable);
  }
  buildCounterListGameServerDeploymentsResponse--;
}

buildUnnamed6869() {
  var o = new core.List<api.Location>();
  o.add(buildLocation());
  o.add(buildLocation());
  return o;
}

checkUnnamed6869(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
buildListLocationsResponse() {
  var o = new api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed6869();
    o.nextPageToken = "foo";
  }
  buildCounterListLocationsResponse--;
  return o;
}

checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed6869(o.locations);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListLocationsResponse--;
}

buildUnnamed6870() {
  var o = new core.List<api.Operation>();
  o.add(buildOperation());
  o.add(buildOperation());
  return o;
}

checkUnnamed6870(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0]);
  checkOperation(o[1]);
}

core.int buildCounterListOperationsResponse = 0;
buildListOperationsResponse() {
  var o = new api.ListOperationsResponse();
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    o.nextPageToken = "foo";
    o.operations = buildUnnamed6870();
  }
  buildCounterListOperationsResponse--;
  return o;
}

checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed6870(o.operations);
  }
  buildCounterListOperationsResponse--;
}

buildUnnamed6871() {
  var o = new core.List<api.Realm>();
  o.add(buildRealm());
  o.add(buildRealm());
  return o;
}

checkUnnamed6871(core.List<api.Realm> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRealm(o[0]);
  checkRealm(o[1]);
}

buildUnnamed6872() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed6872(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListRealmsResponse = 0;
buildListRealmsResponse() {
  var o = new api.ListRealmsResponse();
  buildCounterListRealmsResponse++;
  if (buildCounterListRealmsResponse < 3) {
    o.nextPageToken = "foo";
    o.realms = buildUnnamed6871();
    o.unreachable = buildUnnamed6872();
  }
  buildCounterListRealmsResponse--;
  return o;
}

checkListRealmsResponse(api.ListRealmsResponse o) {
  buildCounterListRealmsResponse++;
  if (buildCounterListRealmsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed6871(o.realms);
    checkUnnamed6872(o.unreachable);
  }
  buildCounterListRealmsResponse--;
}

buildUnnamed6873() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed6873(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed6874() {
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

checkUnnamed6874(core.Map<core.String, core.Object> o) {
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
    o.labels = buildUnnamed6873();
    o.locationId = "foo";
    o.metadata = buildUnnamed6874();
    o.name = "foo";
  }
  buildCounterLocation--;
  return o;
}

checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed6873(o.labels);
    unittest.expect(o.locationId, unittest.equals('foo'));
    checkUnnamed6874(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterLocation--;
}

core.int buildCounterLogConfig = 0;
buildLogConfig() {
  var o = new api.LogConfig();
  buildCounterLogConfig++;
  if (buildCounterLogConfig < 3) {
    o.cloudAudit = buildCloudAuditOptions();
    o.counter = buildCounterOptions();
    o.dataAccess = buildDataAccessOptions();
  }
  buildCounterLogConfig--;
  return o;
}

checkLogConfig(api.LogConfig o) {
  buildCounterLogConfig++;
  if (buildCounterLogConfig < 3) {
    checkCloudAuditOptions(o.cloudAudit);
    checkCounterOptions(o.counter);
    checkDataAccessOptions(o.dataAccess);
  }
  buildCounterLogConfig--;
}

buildUnnamed6875() {
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

checkUnnamed6875(core.Map<core.String, core.Object> o) {
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

buildUnnamed6876() {
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

checkUnnamed6876(core.Map<core.String, core.Object> o) {
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

core.int buildCounterOperation = 0;
buildOperation() {
  var o = new api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed6875();
    o.name = "foo";
    o.response = buildUnnamed6876();
  }
  buildCounterOperation--;
  return o;
}

checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkStatus(o.error);
    checkUnnamed6875(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed6876(o.response);
  }
  buildCounterOperation--;
}

buildUnnamed6877() {
  var o = new core.Map<core.String, api.OperationStatus>();
  o["x"] = buildOperationStatus();
  o["y"] = buildOperationStatus();
  return o;
}

checkUnnamed6877(core.Map<core.String, api.OperationStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperationStatus(o["x"]);
  checkOperationStatus(o["y"]);
}

buildUnnamed6878() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed6878(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterOperationMetadata = 0;
buildOperationMetadata() {
  var o = new api.OperationMetadata();
  buildCounterOperationMetadata++;
  if (buildCounterOperationMetadata < 3) {
    o.apiVersion = "foo";
    o.createTime = "foo";
    o.endTime = "foo";
    o.operationStatus = buildUnnamed6877();
    o.requestedCancellation = true;
    o.statusMessage = "foo";
    o.target = "foo";
    o.unreachable = buildUnnamed6878();
    o.verb = "foo";
  }
  buildCounterOperationMetadata--;
  return o;
}

checkOperationMetadata(api.OperationMetadata o) {
  buildCounterOperationMetadata++;
  if (buildCounterOperationMetadata < 3) {
    unittest.expect(o.apiVersion, unittest.equals('foo'));
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.endTime, unittest.equals('foo'));
    checkUnnamed6877(o.operationStatus);
    unittest.expect(o.requestedCancellation, unittest.isTrue);
    unittest.expect(o.statusMessage, unittest.equals('foo'));
    unittest.expect(o.target, unittest.equals('foo'));
    checkUnnamed6878(o.unreachable);
    unittest.expect(o.verb, unittest.equals('foo'));
  }
  buildCounterOperationMetadata--;
}

core.int buildCounterOperationStatus = 0;
buildOperationStatus() {
  var o = new api.OperationStatus();
  buildCounterOperationStatus++;
  if (buildCounterOperationStatus < 3) {
    o.done = true;
    o.errorCode = "foo";
    o.errorMessage = "foo";
  }
  buildCounterOperationStatus--;
  return o;
}

checkOperationStatus(api.OperationStatus o) {
  buildCounterOperationStatus++;
  if (buildCounterOperationStatus < 3) {
    unittest.expect(o.done, unittest.isTrue);
    unittest.expect(o.errorCode, unittest.equals('foo'));
    unittest.expect(o.errorMessage, unittest.equals('foo'));
  }
  buildCounterOperationStatus--;
}

buildUnnamed6879() {
  var o = new core.List<api.AuditConfig>();
  o.add(buildAuditConfig());
  o.add(buildAuditConfig());
  return o;
}

checkUnnamed6879(core.List<api.AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditConfig(o[0]);
  checkAuditConfig(o[1]);
}

buildUnnamed6880() {
  var o = new core.List<api.Binding>();
  o.add(buildBinding());
  o.add(buildBinding());
  return o;
}

checkUnnamed6880(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

buildUnnamed6881() {
  var o = new core.List<api.Rule>();
  o.add(buildRule());
  o.add(buildRule());
  return o;
}

checkUnnamed6881(core.List<api.Rule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRule(o[0]);
  checkRule(o[1]);
}

core.int buildCounterPolicy = 0;
buildPolicy() {
  var o = new api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.auditConfigs = buildUnnamed6879();
    o.bindings = buildUnnamed6880();
    o.etag = "foo";
    o.iamOwned = true;
    o.rules = buildUnnamed6881();
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed6879(o.auditConfigs);
    checkUnnamed6880(o.bindings);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.iamOwned, unittest.isTrue);
    checkUnnamed6881(o.rules);
    unittest.expect(o.version, unittest.equals(42));
  }
  buildCounterPolicy--;
}

core.int buildCounterPreviewCreateGameServerClusterResponse = 0;
buildPreviewCreateGameServerClusterResponse() {
  var o = new api.PreviewCreateGameServerClusterResponse();
  buildCounterPreviewCreateGameServerClusterResponse++;
  if (buildCounterPreviewCreateGameServerClusterResponse < 3) {
    o.etag = "foo";
    o.targetState = buildTargetState();
  }
  buildCounterPreviewCreateGameServerClusterResponse--;
  return o;
}

checkPreviewCreateGameServerClusterResponse(
    api.PreviewCreateGameServerClusterResponse o) {
  buildCounterPreviewCreateGameServerClusterResponse++;
  if (buildCounterPreviewCreateGameServerClusterResponse < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    checkTargetState(o.targetState);
  }
  buildCounterPreviewCreateGameServerClusterResponse--;
}

core.int buildCounterPreviewDeleteGameServerClusterResponse = 0;
buildPreviewDeleteGameServerClusterResponse() {
  var o = new api.PreviewDeleteGameServerClusterResponse();
  buildCounterPreviewDeleteGameServerClusterResponse++;
  if (buildCounterPreviewDeleteGameServerClusterResponse < 3) {
    o.etag = "foo";
    o.targetState = buildTargetState();
  }
  buildCounterPreviewDeleteGameServerClusterResponse--;
  return o;
}

checkPreviewDeleteGameServerClusterResponse(
    api.PreviewDeleteGameServerClusterResponse o) {
  buildCounterPreviewDeleteGameServerClusterResponse++;
  if (buildCounterPreviewDeleteGameServerClusterResponse < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    checkTargetState(o.targetState);
  }
  buildCounterPreviewDeleteGameServerClusterResponse--;
}

buildUnnamed6882() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed6882(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPreviewGameServerDeploymentRolloutResponse = 0;
buildPreviewGameServerDeploymentRolloutResponse() {
  var o = new api.PreviewGameServerDeploymentRolloutResponse();
  buildCounterPreviewGameServerDeploymentRolloutResponse++;
  if (buildCounterPreviewGameServerDeploymentRolloutResponse < 3) {
    o.etag = "foo";
    o.targetState = buildTargetState();
    o.unavailable = buildUnnamed6882();
  }
  buildCounterPreviewGameServerDeploymentRolloutResponse--;
  return o;
}

checkPreviewGameServerDeploymentRolloutResponse(
    api.PreviewGameServerDeploymentRolloutResponse o) {
  buildCounterPreviewGameServerDeploymentRolloutResponse++;
  if (buildCounterPreviewGameServerDeploymentRolloutResponse < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    checkTargetState(o.targetState);
    checkUnnamed6882(o.unavailable);
  }
  buildCounterPreviewGameServerDeploymentRolloutResponse--;
}

core.int buildCounterPreviewRealmUpdateResponse = 0;
buildPreviewRealmUpdateResponse() {
  var o = new api.PreviewRealmUpdateResponse();
  buildCounterPreviewRealmUpdateResponse++;
  if (buildCounterPreviewRealmUpdateResponse < 3) {
    o.etag = "foo";
    o.targetState = buildTargetState();
  }
  buildCounterPreviewRealmUpdateResponse--;
  return o;
}

checkPreviewRealmUpdateResponse(api.PreviewRealmUpdateResponse o) {
  buildCounterPreviewRealmUpdateResponse++;
  if (buildCounterPreviewRealmUpdateResponse < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    checkTargetState(o.targetState);
  }
  buildCounterPreviewRealmUpdateResponse--;
}

core.int buildCounterPreviewUpdateGameServerClusterResponse = 0;
buildPreviewUpdateGameServerClusterResponse() {
  var o = new api.PreviewUpdateGameServerClusterResponse();
  buildCounterPreviewUpdateGameServerClusterResponse++;
  if (buildCounterPreviewUpdateGameServerClusterResponse < 3) {
    o.etag = "foo";
    o.targetState = buildTargetState();
  }
  buildCounterPreviewUpdateGameServerClusterResponse--;
  return o;
}

checkPreviewUpdateGameServerClusterResponse(
    api.PreviewUpdateGameServerClusterResponse o) {
  buildCounterPreviewUpdateGameServerClusterResponse++;
  if (buildCounterPreviewUpdateGameServerClusterResponse < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    checkTargetState(o.targetState);
  }
  buildCounterPreviewUpdateGameServerClusterResponse--;
}

buildUnnamed6883() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed6883(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterRealm = 0;
buildRealm() {
  var o = new api.Realm();
  buildCounterRealm++;
  if (buildCounterRealm < 3) {
    o.createTime = "foo";
    o.description = "foo";
    o.etag = "foo";
    o.labels = buildUnnamed6883();
    o.name = "foo";
    o.timeZone = "foo";
    o.updateTime = "foo";
  }
  buildCounterRealm--;
  return o;
}

checkRealm(api.Realm o) {
  buildCounterRealm++;
  if (buildCounterRealm < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed6883(o.labels);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.timeZone, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterRealm--;
}

buildUnnamed6884() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed6884(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterRealmSelector = 0;
buildRealmSelector() {
  var o = new api.RealmSelector();
  buildCounterRealmSelector++;
  if (buildCounterRealmSelector < 3) {
    o.realms = buildUnnamed6884();
  }
  buildCounterRealmSelector--;
  return o;
}

checkRealmSelector(api.RealmSelector o) {
  buildCounterRealmSelector++;
  if (buildCounterRealmSelector < 3) {
    checkUnnamed6884(o.realms);
  }
  buildCounterRealmSelector--;
}

buildUnnamed6885() {
  var o = new core.List<api.Condition>();
  o.add(buildCondition());
  o.add(buildCondition());
  return o;
}

checkUnnamed6885(core.List<api.Condition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCondition(o[0]);
  checkCondition(o[1]);
}

buildUnnamed6886() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed6886(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed6887() {
  var o = new core.List<api.LogConfig>();
  o.add(buildLogConfig());
  o.add(buildLogConfig());
  return o;
}

checkUnnamed6887(core.List<api.LogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLogConfig(o[0]);
  checkLogConfig(o[1]);
}

buildUnnamed6888() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed6888(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed6889() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed6889(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterRule = 0;
buildRule() {
  var o = new api.Rule();
  buildCounterRule++;
  if (buildCounterRule < 3) {
    o.action = "foo";
    o.conditions = buildUnnamed6885();
    o.description = "foo";
    o.in_ = buildUnnamed6886();
    o.logConfig = buildUnnamed6887();
    o.notIn = buildUnnamed6888();
    o.permissions = buildUnnamed6889();
  }
  buildCounterRule--;
  return o;
}

checkRule(api.Rule o) {
  buildCounterRule++;
  if (buildCounterRule < 3) {
    unittest.expect(o.action, unittest.equals('foo'));
    checkUnnamed6885(o.conditions);
    unittest.expect(o.description, unittest.equals('foo'));
    checkUnnamed6886(o.in_);
    checkUnnamed6887(o.logConfig);
    checkUnnamed6888(o.notIn);
    checkUnnamed6889(o.permissions);
  }
  buildCounterRule--;
}

buildUnnamed6890() {
  var o = new core.List<api.Schedule>();
  o.add(buildSchedule());
  o.add(buildSchedule());
  return o;
}

checkUnnamed6890(core.List<api.Schedule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSchedule(o[0]);
  checkSchedule(o[1]);
}

buildUnnamed6891() {
  var o = new core.List<api.LabelSelector>();
  o.add(buildLabelSelector());
  o.add(buildLabelSelector());
  return o;
}

checkUnnamed6891(core.List<api.LabelSelector> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLabelSelector(o[0]);
  checkLabelSelector(o[1]);
}

core.int buildCounterScalingConfig = 0;
buildScalingConfig() {
  var o = new api.ScalingConfig();
  buildCounterScalingConfig++;
  if (buildCounterScalingConfig < 3) {
    o.fleetAutoscalerSpec = "foo";
    o.name = "foo";
    o.schedules = buildUnnamed6890();
    o.selectors = buildUnnamed6891();
  }
  buildCounterScalingConfig--;
  return o;
}

checkScalingConfig(api.ScalingConfig o) {
  buildCounterScalingConfig++;
  if (buildCounterScalingConfig < 3) {
    unittest.expect(o.fleetAutoscalerSpec, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed6890(o.schedules);
    checkUnnamed6891(o.selectors);
  }
  buildCounterScalingConfig--;
}

core.int buildCounterSchedule = 0;
buildSchedule() {
  var o = new api.Schedule();
  buildCounterSchedule++;
  if (buildCounterSchedule < 3) {
    o.cronJobDuration = "foo";
    o.cronSpec = "foo";
    o.endTime = "foo";
    o.startTime = "foo";
  }
  buildCounterSchedule--;
  return o;
}

checkSchedule(api.Schedule o) {
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
buildSetIamPolicyRequest() {
  var o = new api.SetIamPolicyRequest();
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    o.policy = buildPolicy();
    o.updateMask = "foo";
  }
  buildCounterSetIamPolicyRequest--;
  return o;
}

checkSetIamPolicyRequest(api.SetIamPolicyRequest o) {
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    checkPolicy(o.policy);
    unittest.expect(o.updateMask, unittest.equals('foo'));
  }
  buildCounterSetIamPolicyRequest--;
}

core.int buildCounterSpecSource = 0;
buildSpecSource() {
  var o = new api.SpecSource();
  buildCounterSpecSource++;
  if (buildCounterSpecSource < 3) {
    o.gameServerConfigName = "foo";
    o.name = "foo";
  }
  buildCounterSpecSource--;
  return o;
}

checkSpecSource(api.SpecSource o) {
  buildCounterSpecSource++;
  if (buildCounterSpecSource < 3) {
    unittest.expect(o.gameServerConfigName, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterSpecSource--;
}

buildUnnamed6892() {
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

checkUnnamed6892(core.Map<core.String, core.Object> o) {
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

buildUnnamed6893() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed6892());
  o.add(buildUnnamed6892());
  return o;
}

checkUnnamed6893(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed6892(o[0]);
  checkUnnamed6892(o[1]);
}

core.int buildCounterStatus = 0;
buildStatus() {
  var o = new api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed6893();
    o.message = "foo";
  }
  buildCounterStatus--;
  return o;
}

checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed6893(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

buildUnnamed6894() {
  var o = new core.List<api.TargetFleetDetails>();
  o.add(buildTargetFleetDetails());
  o.add(buildTargetFleetDetails());
  return o;
}

checkUnnamed6894(core.List<api.TargetFleetDetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTargetFleetDetails(o[0]);
  checkTargetFleetDetails(o[1]);
}

core.int buildCounterTargetDetails = 0;
buildTargetDetails() {
  var o = new api.TargetDetails();
  buildCounterTargetDetails++;
  if (buildCounterTargetDetails < 3) {
    o.fleetDetails = buildUnnamed6894();
    o.gameServerClusterName = "foo";
    o.gameServerDeploymentName = "foo";
  }
  buildCounterTargetDetails--;
  return o;
}

checkTargetDetails(api.TargetDetails o) {
  buildCounterTargetDetails++;
  if (buildCounterTargetDetails < 3) {
    checkUnnamed6894(o.fleetDetails);
    unittest.expect(o.gameServerClusterName, unittest.equals('foo'));
    unittest.expect(o.gameServerDeploymentName, unittest.equals('foo'));
  }
  buildCounterTargetDetails--;
}

core.int buildCounterTargetFleet = 0;
buildTargetFleet() {
  var o = new api.TargetFleet();
  buildCounterTargetFleet++;
  if (buildCounterTargetFleet < 3) {
    o.name = "foo";
    o.specSource = buildSpecSource();
  }
  buildCounterTargetFleet--;
  return o;
}

checkTargetFleet(api.TargetFleet o) {
  buildCounterTargetFleet++;
  if (buildCounterTargetFleet < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    checkSpecSource(o.specSource);
  }
  buildCounterTargetFleet--;
}

core.int buildCounterTargetFleetAutoscaler = 0;
buildTargetFleetAutoscaler() {
  var o = new api.TargetFleetAutoscaler();
  buildCounterTargetFleetAutoscaler++;
  if (buildCounterTargetFleetAutoscaler < 3) {
    o.name = "foo";
    o.specSource = buildSpecSource();
  }
  buildCounterTargetFleetAutoscaler--;
  return o;
}

checkTargetFleetAutoscaler(api.TargetFleetAutoscaler o) {
  buildCounterTargetFleetAutoscaler++;
  if (buildCounterTargetFleetAutoscaler < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    checkSpecSource(o.specSource);
  }
  buildCounterTargetFleetAutoscaler--;
}

core.int buildCounterTargetFleetDetails = 0;
buildTargetFleetDetails() {
  var o = new api.TargetFleetDetails();
  buildCounterTargetFleetDetails++;
  if (buildCounterTargetFleetDetails < 3) {
    o.autoscaler = buildTargetFleetAutoscaler();
    o.fleet = buildTargetFleet();
  }
  buildCounterTargetFleetDetails--;
  return o;
}

checkTargetFleetDetails(api.TargetFleetDetails o) {
  buildCounterTargetFleetDetails++;
  if (buildCounterTargetFleetDetails < 3) {
    checkTargetFleetAutoscaler(o.autoscaler);
    checkTargetFleet(o.fleet);
  }
  buildCounterTargetFleetDetails--;
}

buildUnnamed6895() {
  var o = new core.List<api.TargetDetails>();
  o.add(buildTargetDetails());
  o.add(buildTargetDetails());
  return o;
}

checkUnnamed6895(core.List<api.TargetDetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTargetDetails(o[0]);
  checkTargetDetails(o[1]);
}

core.int buildCounterTargetState = 0;
buildTargetState() {
  var o = new api.TargetState();
  buildCounterTargetState++;
  if (buildCounterTargetState < 3) {
    o.details = buildUnnamed6895();
  }
  buildCounterTargetState--;
  return o;
}

checkTargetState(api.TargetState o) {
  buildCounterTargetState++;
  if (buildCounterTargetState < 3) {
    checkUnnamed6895(o.details);
  }
  buildCounterTargetState--;
}

buildUnnamed6896() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed6896(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsRequest = 0;
buildTestIamPermissionsRequest() {
  var o = new api.TestIamPermissionsRequest();
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed6896();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed6896(o.permissions);
  }
  buildCounterTestIamPermissionsRequest--;
}

buildUnnamed6897() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed6897(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsResponse = 0;
buildTestIamPermissionsResponse() {
  var o = new api.TestIamPermissionsResponse();
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed6897();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed6897(o.permissions);
  }
  buildCounterTestIamPermissionsResponse--;
}

main() {
  unittest.group("obj-schema-AuditConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildAuditConfig();
      var od = new api.AuditConfig.fromJson(o.toJson());
      checkAuditConfig(od);
    });
  });

  unittest.group("obj-schema-AuditLogConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildAuditLogConfig();
      var od = new api.AuditLogConfig.fromJson(o.toJson());
      checkAuditLogConfig(od);
    });
  });

  unittest.group("obj-schema-AuthorizationLoggingOptions", () {
    unittest.test("to-json--from-json", () {
      var o = buildAuthorizationLoggingOptions();
      var od = new api.AuthorizationLoggingOptions.fromJson(o.toJson());
      checkAuthorizationLoggingOptions(od);
    });
  });

  unittest.group("obj-schema-Binding", () {
    unittest.test("to-json--from-json", () {
      var o = buildBinding();
      var od = new api.Binding.fromJson(o.toJson());
      checkBinding(od);
    });
  });

  unittest.group("obj-schema-CancelOperationRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildCancelOperationRequest();
      var od = new api.CancelOperationRequest.fromJson(o.toJson());
      checkCancelOperationRequest(od);
    });
  });

  unittest.group("obj-schema-CloudAuditOptions", () {
    unittest.test("to-json--from-json", () {
      var o = buildCloudAuditOptions();
      var od = new api.CloudAuditOptions.fromJson(o.toJson());
      checkCloudAuditOptions(od);
    });
  });

  unittest.group("obj-schema-Condition", () {
    unittest.test("to-json--from-json", () {
      var o = buildCondition();
      var od = new api.Condition.fromJson(o.toJson());
      checkCondition(od);
    });
  });

  unittest.group("obj-schema-CounterOptions", () {
    unittest.test("to-json--from-json", () {
      var o = buildCounterOptions();
      var od = new api.CounterOptions.fromJson(o.toJson());
      checkCounterOptions(od);
    });
  });

  unittest.group("obj-schema-CustomField", () {
    unittest.test("to-json--from-json", () {
      var o = buildCustomField();
      var od = new api.CustomField.fromJson(o.toJson());
      checkCustomField(od);
    });
  });

  unittest.group("obj-schema-DataAccessOptions", () {
    unittest.test("to-json--from-json", () {
      var o = buildDataAccessOptions();
      var od = new api.DataAccessOptions.fromJson(o.toJson());
      checkDataAccessOptions(od);
    });
  });

  unittest.group("obj-schema-DeployedClusterState", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeployedClusterState();
      var od = new api.DeployedClusterState.fromJson(o.toJson());
      checkDeployedClusterState(od);
    });
  });

  unittest.group("obj-schema-DeployedFleet", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeployedFleet();
      var od = new api.DeployedFleet.fromJson(o.toJson());
      checkDeployedFleet(od);
    });
  });

  unittest.group("obj-schema-DeployedFleetAutoscaler", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeployedFleetAutoscaler();
      var od = new api.DeployedFleetAutoscaler.fromJson(o.toJson());
      checkDeployedFleetAutoscaler(od);
    });
  });

  unittest.group("obj-schema-DeployedFleetDetails", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeployedFleetDetails();
      var od = new api.DeployedFleetDetails.fromJson(o.toJson());
      checkDeployedFleetDetails(od);
    });
  });

  unittest.group("obj-schema-DeployedFleetStatus", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeployedFleetStatus();
      var od = new api.DeployedFleetStatus.fromJson(o.toJson());
      checkDeployedFleetStatus(od);
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

  unittest.group("obj-schema-FetchDeploymentStateRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildFetchDeploymentStateRequest();
      var od = new api.FetchDeploymentStateRequest.fromJson(o.toJson());
      checkFetchDeploymentStateRequest(od);
    });
  });

  unittest.group("obj-schema-FetchDeploymentStateResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildFetchDeploymentStateResponse();
      var od = new api.FetchDeploymentStateResponse.fromJson(o.toJson());
      checkFetchDeploymentStateResponse(od);
    });
  });

  unittest.group("obj-schema-FleetConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildFleetConfig();
      var od = new api.FleetConfig.fromJson(o.toJson());
      checkFleetConfig(od);
    });
  });

  unittest.group("obj-schema-GameServerCluster", () {
    unittest.test("to-json--from-json", () {
      var o = buildGameServerCluster();
      var od = new api.GameServerCluster.fromJson(o.toJson());
      checkGameServerCluster(od);
    });
  });

  unittest.group("obj-schema-GameServerClusterConnectionInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildGameServerClusterConnectionInfo();
      var od = new api.GameServerClusterConnectionInfo.fromJson(o.toJson());
      checkGameServerClusterConnectionInfo(od);
    });
  });

  unittest.group("obj-schema-GameServerConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGameServerConfig();
      var od = new api.GameServerConfig.fromJson(o.toJson());
      checkGameServerConfig(od);
    });
  });

  unittest.group("obj-schema-GameServerConfigOverride", () {
    unittest.test("to-json--from-json", () {
      var o = buildGameServerConfigOverride();
      var od = new api.GameServerConfigOverride.fromJson(o.toJson());
      checkGameServerConfigOverride(od);
    });
  });

  unittest.group("obj-schema-GameServerDeployment", () {
    unittest.test("to-json--from-json", () {
      var o = buildGameServerDeployment();
      var od = new api.GameServerDeployment.fromJson(o.toJson());
      checkGameServerDeployment(od);
    });
  });

  unittest.group("obj-schema-GameServerDeploymentRollout", () {
    unittest.test("to-json--from-json", () {
      var o = buildGameServerDeploymentRollout();
      var od = new api.GameServerDeploymentRollout.fromJson(o.toJson());
      checkGameServerDeploymentRollout(od);
    });
  });

  unittest.group("obj-schema-GkeClusterReference", () {
    unittest.test("to-json--from-json", () {
      var o = buildGkeClusterReference();
      var od = new api.GkeClusterReference.fromJson(o.toJson());
      checkGkeClusterReference(od);
    });
  });

  unittest.group("obj-schema-LabelSelector", () {
    unittest.test("to-json--from-json", () {
      var o = buildLabelSelector();
      var od = new api.LabelSelector.fromJson(o.toJson());
      checkLabelSelector(od);
    });
  });

  unittest.group("obj-schema-ListGameServerClustersResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListGameServerClustersResponse();
      var od = new api.ListGameServerClustersResponse.fromJson(o.toJson());
      checkListGameServerClustersResponse(od);
    });
  });

  unittest.group("obj-schema-ListGameServerConfigsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListGameServerConfigsResponse();
      var od = new api.ListGameServerConfigsResponse.fromJson(o.toJson());
      checkListGameServerConfigsResponse(od);
    });
  });

  unittest.group("obj-schema-ListGameServerDeploymentsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListGameServerDeploymentsResponse();
      var od = new api.ListGameServerDeploymentsResponse.fromJson(o.toJson());
      checkListGameServerDeploymentsResponse(od);
    });
  });

  unittest.group("obj-schema-ListLocationsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListLocationsResponse();
      var od = new api.ListLocationsResponse.fromJson(o.toJson());
      checkListLocationsResponse(od);
    });
  });

  unittest.group("obj-schema-ListOperationsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListOperationsResponse();
      var od = new api.ListOperationsResponse.fromJson(o.toJson());
      checkListOperationsResponse(od);
    });
  });

  unittest.group("obj-schema-ListRealmsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListRealmsResponse();
      var od = new api.ListRealmsResponse.fromJson(o.toJson());
      checkListRealmsResponse(od);
    });
  });

  unittest.group("obj-schema-Location", () {
    unittest.test("to-json--from-json", () {
      var o = buildLocation();
      var od = new api.Location.fromJson(o.toJson());
      checkLocation(od);
    });
  });

  unittest.group("obj-schema-LogConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildLogConfig();
      var od = new api.LogConfig.fromJson(o.toJson());
      checkLogConfig(od);
    });
  });

  unittest.group("obj-schema-Operation", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperation();
      var od = new api.Operation.fromJson(o.toJson());
      checkOperation(od);
    });
  });

  unittest.group("obj-schema-OperationMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperationMetadata();
      var od = new api.OperationMetadata.fromJson(o.toJson());
      checkOperationMetadata(od);
    });
  });

  unittest.group("obj-schema-OperationStatus", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperationStatus();
      var od = new api.OperationStatus.fromJson(o.toJson());
      checkOperationStatus(od);
    });
  });

  unittest.group("obj-schema-Policy", () {
    unittest.test("to-json--from-json", () {
      var o = buildPolicy();
      var od = new api.Policy.fromJson(o.toJson());
      checkPolicy(od);
    });
  });

  unittest.group("obj-schema-PreviewCreateGameServerClusterResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildPreviewCreateGameServerClusterResponse();
      var od =
          new api.PreviewCreateGameServerClusterResponse.fromJson(o.toJson());
      checkPreviewCreateGameServerClusterResponse(od);
    });
  });

  unittest.group("obj-schema-PreviewDeleteGameServerClusterResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildPreviewDeleteGameServerClusterResponse();
      var od =
          new api.PreviewDeleteGameServerClusterResponse.fromJson(o.toJson());
      checkPreviewDeleteGameServerClusterResponse(od);
    });
  });

  unittest.group("obj-schema-PreviewGameServerDeploymentRolloutResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildPreviewGameServerDeploymentRolloutResponse();
      var od = new api.PreviewGameServerDeploymentRolloutResponse.fromJson(
          o.toJson());
      checkPreviewGameServerDeploymentRolloutResponse(od);
    });
  });

  unittest.group("obj-schema-PreviewRealmUpdateResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildPreviewRealmUpdateResponse();
      var od = new api.PreviewRealmUpdateResponse.fromJson(o.toJson());
      checkPreviewRealmUpdateResponse(od);
    });
  });

  unittest.group("obj-schema-PreviewUpdateGameServerClusterResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildPreviewUpdateGameServerClusterResponse();
      var od =
          new api.PreviewUpdateGameServerClusterResponse.fromJson(o.toJson());
      checkPreviewUpdateGameServerClusterResponse(od);
    });
  });

  unittest.group("obj-schema-Realm", () {
    unittest.test("to-json--from-json", () {
      var o = buildRealm();
      var od = new api.Realm.fromJson(o.toJson());
      checkRealm(od);
    });
  });

  unittest.group("obj-schema-RealmSelector", () {
    unittest.test("to-json--from-json", () {
      var o = buildRealmSelector();
      var od = new api.RealmSelector.fromJson(o.toJson());
      checkRealmSelector(od);
    });
  });

  unittest.group("obj-schema-Rule", () {
    unittest.test("to-json--from-json", () {
      var o = buildRule();
      var od = new api.Rule.fromJson(o.toJson());
      checkRule(od);
    });
  });

  unittest.group("obj-schema-ScalingConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildScalingConfig();
      var od = new api.ScalingConfig.fromJson(o.toJson());
      checkScalingConfig(od);
    });
  });

  unittest.group("obj-schema-Schedule", () {
    unittest.test("to-json--from-json", () {
      var o = buildSchedule();
      var od = new api.Schedule.fromJson(o.toJson());
      checkSchedule(od);
    });
  });

  unittest.group("obj-schema-SetIamPolicyRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSetIamPolicyRequest();
      var od = new api.SetIamPolicyRequest.fromJson(o.toJson());
      checkSetIamPolicyRequest(od);
    });
  });

  unittest.group("obj-schema-SpecSource", () {
    unittest.test("to-json--from-json", () {
      var o = buildSpecSource();
      var od = new api.SpecSource.fromJson(o.toJson());
      checkSpecSource(od);
    });
  });

  unittest.group("obj-schema-Status", () {
    unittest.test("to-json--from-json", () {
      var o = buildStatus();
      var od = new api.Status.fromJson(o.toJson());
      checkStatus(od);
    });
  });

  unittest.group("obj-schema-TargetDetails", () {
    unittest.test("to-json--from-json", () {
      var o = buildTargetDetails();
      var od = new api.TargetDetails.fromJson(o.toJson());
      checkTargetDetails(od);
    });
  });

  unittest.group("obj-schema-TargetFleet", () {
    unittest.test("to-json--from-json", () {
      var o = buildTargetFleet();
      var od = new api.TargetFleet.fromJson(o.toJson());
      checkTargetFleet(od);
    });
  });

  unittest.group("obj-schema-TargetFleetAutoscaler", () {
    unittest.test("to-json--from-json", () {
      var o = buildTargetFleetAutoscaler();
      var od = new api.TargetFleetAutoscaler.fromJson(o.toJson());
      checkTargetFleetAutoscaler(od);
    });
  });

  unittest.group("obj-schema-TargetFleetDetails", () {
    unittest.test("to-json--from-json", () {
      var o = buildTargetFleetDetails();
      var od = new api.TargetFleetDetails.fromJson(o.toJson());
      checkTargetFleetDetails(od);
    });
  });

  unittest.group("obj-schema-TargetState", () {
    unittest.test("to-json--from-json", () {
      var o = buildTargetState();
      var od = new api.TargetState.fromJson(o.toJson());
      checkTargetState(od);
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
          new api.GameservicesApi(mock).projects.locations;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("v1beta/"));
        pathOffset += 7;
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
          new api.GameservicesApi(mock).projects.locations;
      var arg_name = "foo";
      var arg_filter = "foo";
      var arg_pageSize = 42;
      var arg_includeUnrevealedLocations = true;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("v1beta/"));
        pathOffset += 7;
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
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["includeUnrevealedLocations"].first,
            unittest.equals("$arg_includeUnrevealedLocations"));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListLocationsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              filter: arg_filter,
              pageSize: arg_pageSize,
              includeUnrevealedLocations: arg_includeUnrevealedLocations,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListLocationsResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsLocationsGameServerDeploymentsResourceApi",
      () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsGameServerDeploymentsResourceApi res =
          new api.GameservicesApi(mock)
              .projects
              .locations
              .gameServerDeployments;
      var arg_request = buildGameServerDeployment();
      var arg_parent = "foo";
      var arg_deploymentId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GameServerDeployment.fromJson(json);
        checkGameServerDeployment(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
            queryMap["deploymentId"].first, unittest.equals(arg_deploymentId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              deploymentId: arg_deploymentId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsGameServerDeploymentsResourceApi res =
          new api.GameservicesApi(mock)
              .projects
              .locations
              .gameServerDeployments;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("v1beta/"));
        pathOffset += 7;
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
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--fetchDeploymentState", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsGameServerDeploymentsResourceApi res =
          new api.GameservicesApi(mock)
              .projects
              .locations
              .gameServerDeployments;
      var arg_request = buildFetchDeploymentStateRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.FetchDeploymentStateRequest.fromJson(json);
        checkFetchDeploymentStateRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        var resp = convert.json.encode(buildFetchDeploymentStateResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .fetchDeploymentState(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkFetchDeploymentStateResponse(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsGameServerDeploymentsResourceApi res =
          new api.GameservicesApi(mock)
              .projects
              .locations
              .gameServerDeployments;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("v1beta/"));
        pathOffset += 7;
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
        var resp = convert.json.encode(buildGameServerDeployment());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGameServerDeployment(response);
      })));
    });

    unittest.test("method--getIamPolicy", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsGameServerDeploymentsResourceApi res =
          new api.GameservicesApi(mock)
              .projects
              .locations
              .gameServerDeployments;
      var arg_resource = "foo";
      var arg_options_requestedPolicyVersion = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
            core.int.parse(queryMap["options.requestedPolicyVersion"].first),
            unittest.equals(arg_options_requestedPolicyVersion));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getIamPolicy(arg_resource,
              options_requestedPolicyVersion:
                  arg_options_requestedPolicyVersion,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test("method--getRollout", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsGameServerDeploymentsResourceApi res =
          new api.GameservicesApi(mock)
              .projects
              .locations
              .gameServerDeployments;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("v1beta/"));
        pathOffset += 7;
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
        var resp = convert.json.encode(buildGameServerDeploymentRollout());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getRollout(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGameServerDeploymentRollout(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsGameServerDeploymentsResourceApi res =
          new api.GameservicesApi(mock)
              .projects
              .locations
              .gameServerDeployments;
      var arg_parent = "foo";
      var arg_filter = "foo";
      var arg_pageSize = 42;
      var arg_orderBy = "foo";
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
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("v1beta/"));
        pathOffset += 7;
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
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildListGameServerDeploymentsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              filter: arg_filter,
              pageSize: arg_pageSize,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListGameServerDeploymentsResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsGameServerDeploymentsResourceApi res =
          new api.GameservicesApi(mock)
              .projects
              .locations
              .gameServerDeployments;
      var arg_request = buildGameServerDeployment();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GameServerDeployment.fromJson(json);
        checkGameServerDeployment(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--previewRollout", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsGameServerDeploymentsResourceApi res =
          new api.GameservicesApi(mock)
              .projects
              .locations
              .gameServerDeployments;
      var arg_request = buildGameServerDeploymentRollout();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_previewTime = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GameServerDeploymentRollout.fromJson(json);
        checkGameServerDeploymentRollout(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        unittest.expect(
            queryMap["previewTime"].first, unittest.equals(arg_previewTime));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json
            .encode(buildPreviewGameServerDeploymentRolloutResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .previewRollout(arg_request, arg_name,
              updateMask: arg_updateMask,
              previewTime: arg_previewTime,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPreviewGameServerDeploymentRolloutResponse(response);
      })));
    });

    unittest.test("method--setIamPolicy", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsGameServerDeploymentsResourceApi res =
          new api.GameservicesApi(mock)
              .projects
              .locations
              .gameServerDeployments;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("v1beta/"));
        pathOffset += 7;
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
      api.ProjectsLocationsGameServerDeploymentsResourceApi res =
          new api.GameservicesApi(mock)
              .projects
              .locations
              .gameServerDeployments;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("v1beta/"));
        pathOffset += 7;
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

    unittest.test("method--updateRollout", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsGameServerDeploymentsResourceApi res =
          new api.GameservicesApi(mock)
              .projects
              .locations
              .gameServerDeployments;
      var arg_request = buildGameServerDeploymentRollout();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GameServerDeploymentRollout.fromJson(json);
        checkGameServerDeploymentRollout(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updateRollout(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });
  });

  unittest.group(
      "resource-ProjectsLocationsGameServerDeploymentsConfigsResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsGameServerDeploymentsConfigsResourceApi res =
          new api.GameservicesApi(mock)
              .projects
              .locations
              .gameServerDeployments
              .configs;
      var arg_request = buildGameServerConfig();
      var arg_parent = "foo";
      var arg_configId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GameServerConfig.fromJson(json);
        checkGameServerConfig(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
            queryMap["configId"].first, unittest.equals(arg_configId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              configId: arg_configId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsGameServerDeploymentsConfigsResourceApi res =
          new api.GameservicesApi(mock)
              .projects
              .locations
              .gameServerDeployments
              .configs;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("v1beta/"));
        pathOffset += 7;
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
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsGameServerDeploymentsConfigsResourceApi res =
          new api.GameservicesApi(mock)
              .projects
              .locations
              .gameServerDeployments
              .configs;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("v1beta/"));
        pathOffset += 7;
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
        var resp = convert.json.encode(buildGameServerConfig());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGameServerConfig(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsGameServerDeploymentsConfigsResourceApi res =
          new api.GameservicesApi(mock)
              .projects
              .locations
              .gameServerDeployments
              .configs;
      var arg_parent = "foo";
      var arg_filter = "foo";
      var arg_pageSize = 42;
      var arg_orderBy = "foo";
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
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("v1beta/"));
        pathOffset += 7;
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
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListGameServerConfigsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              filter: arg_filter,
              pageSize: arg_pageSize,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListGameServerConfigsResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsLocationsOperationsResourceApi", () {
    unittest.test("method--cancel", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsOperationsResourceApi res =
          new api.GameservicesApi(mock).projects.locations.operations;
      var arg_request = buildCancelOperationRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.CancelOperationRequest.fromJson(json);
        checkCancelOperationRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
          .cancel(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsOperationsResourceApi res =
          new api.GameservicesApi(mock).projects.locations.operations;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("v1beta/"));
        pathOffset += 7;
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
      api.ProjectsLocationsOperationsResourceApi res =
          new api.GameservicesApi(mock).projects.locations.operations;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("v1beta/"));
        pathOffset += 7;
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
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsOperationsResourceApi res =
          new api.GameservicesApi(mock).projects.locations.operations;
      var arg_name = "foo";
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
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("v1beta/"));
        pathOffset += 7;
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
        var resp = convert.json.encode(buildListOperationsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              pageSize: arg_pageSize,
              filter: arg_filter,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListOperationsResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsLocationsRealmsResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsRealmsResourceApi res =
          new api.GameservicesApi(mock).projects.locations.realms;
      var arg_request = buildRealm();
      var arg_parent = "foo";
      var arg_realmId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Realm.fromJson(json);
        checkRealm(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
            queryMap["realmId"].first, unittest.equals(arg_realmId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              realmId: arg_realmId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsRealmsResourceApi res =
          new api.GameservicesApi(mock).projects.locations.realms;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("v1beta/"));
        pathOffset += 7;
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
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsRealmsResourceApi res =
          new api.GameservicesApi(mock).projects.locations.realms;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("v1beta/"));
        pathOffset += 7;
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
        var resp = convert.json.encode(buildRealm());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRealm(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsRealmsResourceApi res =
          new api.GameservicesApi(mock).projects.locations.realms;
      var arg_parent = "foo";
      var arg_filter = "foo";
      var arg_pageSize = 42;
      var arg_orderBy = "foo";
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
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("v1beta/"));
        pathOffset += 7;
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
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListRealmsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              filter: arg_filter,
              pageSize: arg_pageSize,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListRealmsResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsRealmsResourceApi res =
          new api.GameservicesApi(mock).projects.locations.realms;
      var arg_request = buildRealm();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Realm.fromJson(json);
        checkRealm(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--previewUpdate", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsRealmsResourceApi res =
          new api.GameservicesApi(mock).projects.locations.realms;
      var arg_request = buildRealm();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_previewTime = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Realm.fromJson(json);
        checkRealm(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        unittest.expect(
            queryMap["previewTime"].first, unittest.equals(arg_previewTime));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPreviewRealmUpdateResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .previewUpdate(arg_request, arg_name,
              updateMask: arg_updateMask,
              previewTime: arg_previewTime,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPreviewRealmUpdateResponse(response);
      })));
    });
  });

  unittest.group(
      "resource-ProjectsLocationsRealmsGameServerClustersResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsRealmsGameServerClustersResourceApi res =
          new api.GameservicesApi(mock)
              .projects
              .locations
              .realms
              .gameServerClusters;
      var arg_request = buildGameServerCluster();
      var arg_parent = "foo";
      var arg_gameServerClusterId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GameServerCluster.fromJson(json);
        checkGameServerCluster(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        unittest.expect(queryMap["gameServerClusterId"].first,
            unittest.equals(arg_gameServerClusterId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              gameServerClusterId: arg_gameServerClusterId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsRealmsGameServerClustersResourceApi res =
          new api.GameservicesApi(mock)
              .projects
              .locations
              .realms
              .gameServerClusters;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("v1beta/"));
        pathOffset += 7;
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
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsRealmsGameServerClustersResourceApi res =
          new api.GameservicesApi(mock)
              .projects
              .locations
              .realms
              .gameServerClusters;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("v1beta/"));
        pathOffset += 7;
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
        var resp = convert.json.encode(buildGameServerCluster());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGameServerCluster(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsRealmsGameServerClustersResourceApi res =
          new api.GameservicesApi(mock)
              .projects
              .locations
              .realms
              .gameServerClusters;
      var arg_parent = "foo";
      var arg_pageSize = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
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
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("v1beta/"));
        pathOffset += 7;
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
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListGameServerClustersResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken,
              filter: arg_filter,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListGameServerClustersResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsRealmsGameServerClustersResourceApi res =
          new api.GameservicesApi(mock)
              .projects
              .locations
              .realms
              .gameServerClusters;
      var arg_request = buildGameServerCluster();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GameServerCluster.fromJson(json);
        checkGameServerCluster(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--previewCreate", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsRealmsGameServerClustersResourceApi res =
          new api.GameservicesApi(mock)
              .projects
              .locations
              .realms
              .gameServerClusters;
      var arg_request = buildGameServerCluster();
      var arg_parent = "foo";
      var arg_gameServerClusterId = "foo";
      var arg_previewTime = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GameServerCluster.fromJson(json);
        checkGameServerCluster(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        unittest.expect(queryMap["gameServerClusterId"].first,
            unittest.equals(arg_gameServerClusterId));
        unittest.expect(
            queryMap["previewTime"].first, unittest.equals(arg_previewTime));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildPreviewCreateGameServerClusterResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .previewCreate(arg_request, arg_parent,
              gameServerClusterId: arg_gameServerClusterId,
              previewTime: arg_previewTime,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPreviewCreateGameServerClusterResponse(response);
      })));
    });

    unittest.test("method--previewDelete", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsRealmsGameServerClustersResourceApi res =
          new api.GameservicesApi(mock)
              .projects
              .locations
              .realms
              .gameServerClusters;
      var arg_name = "foo";
      var arg_previewTime = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
            queryMap["previewTime"].first, unittest.equals(arg_previewTime));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildPreviewDeleteGameServerClusterResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .previewDelete(arg_name,
              previewTime: arg_previewTime, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPreviewDeleteGameServerClusterResponse(response);
      })));
    });

    unittest.test("method--previewUpdate", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsRealmsGameServerClustersResourceApi res =
          new api.GameservicesApi(mock)
              .projects
              .locations
              .realms
              .gameServerClusters;
      var arg_request = buildGameServerCluster();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_previewTime = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GameServerCluster.fromJson(json);
        checkGameServerCluster(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        unittest.expect(
            queryMap["previewTime"].first, unittest.equals(arg_previewTime));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildPreviewUpdateGameServerClusterResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .previewUpdate(arg_request, arg_name,
              updateMask: arg_updateMask,
              previewTime: arg_previewTime,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPreviewUpdateGameServerClusterResponse(response);
      })));
    });
  });
}
