// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: directives_ordering
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: avoid_returning_null
// ignore_for_file: cascade_invocations
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unused_local_variable

library googleapis.dataproc.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/dataproc/v1.dart' as api;

class HttpServerMock extends http.BaseClient {
  core.Function _callback;
  core.bool _expectJson;

  void register(core.Function callback, core.bool expectJson) {
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

core.int buildCounterAcceleratorConfig = 0;
api.AcceleratorConfig buildAcceleratorConfig() {
  var o = api.AcceleratorConfig();
  buildCounterAcceleratorConfig++;
  if (buildCounterAcceleratorConfig < 3) {
    o.acceleratorCount = 42;
    o.acceleratorTypeUri = 'foo';
  }
  buildCounterAcceleratorConfig--;
  return o;
}

void checkAcceleratorConfig(api.AcceleratorConfig o) {
  buildCounterAcceleratorConfig++;
  if (buildCounterAcceleratorConfig < 3) {
    unittest.expect(o.acceleratorCount, unittest.equals(42));
    unittest.expect(o.acceleratorTypeUri, unittest.equals('foo'));
  }
  buildCounterAcceleratorConfig--;
}

core.int buildCounterAutoscalingConfig = 0;
api.AutoscalingConfig buildAutoscalingConfig() {
  var o = api.AutoscalingConfig();
  buildCounterAutoscalingConfig++;
  if (buildCounterAutoscalingConfig < 3) {
    o.policyUri = 'foo';
  }
  buildCounterAutoscalingConfig--;
  return o;
}

void checkAutoscalingConfig(api.AutoscalingConfig o) {
  buildCounterAutoscalingConfig++;
  if (buildCounterAutoscalingConfig < 3) {
    unittest.expect(o.policyUri, unittest.equals('foo'));
  }
  buildCounterAutoscalingConfig--;
}

core.int buildCounterAutoscalingPolicy = 0;
api.AutoscalingPolicy buildAutoscalingPolicy() {
  var o = api.AutoscalingPolicy();
  buildCounterAutoscalingPolicy++;
  if (buildCounterAutoscalingPolicy < 3) {
    o.basicAlgorithm = buildBasicAutoscalingAlgorithm();
    o.id = 'foo';
    o.name = 'foo';
    o.secondaryWorkerConfig = buildInstanceGroupAutoscalingPolicyConfig();
    o.workerConfig = buildInstanceGroupAutoscalingPolicyConfig();
  }
  buildCounterAutoscalingPolicy--;
  return o;
}

void checkAutoscalingPolicy(api.AutoscalingPolicy o) {
  buildCounterAutoscalingPolicy++;
  if (buildCounterAutoscalingPolicy < 3) {
    checkBasicAutoscalingAlgorithm(o.basicAlgorithm);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkInstanceGroupAutoscalingPolicyConfig(o.secondaryWorkerConfig);
    checkInstanceGroupAutoscalingPolicyConfig(o.workerConfig);
  }
  buildCounterAutoscalingPolicy--;
}

core.int buildCounterBasicAutoscalingAlgorithm = 0;
api.BasicAutoscalingAlgorithm buildBasicAutoscalingAlgorithm() {
  var o = api.BasicAutoscalingAlgorithm();
  buildCounterBasicAutoscalingAlgorithm++;
  if (buildCounterBasicAutoscalingAlgorithm < 3) {
    o.cooldownPeriod = 'foo';
    o.yarnConfig = buildBasicYarnAutoscalingConfig();
  }
  buildCounterBasicAutoscalingAlgorithm--;
  return o;
}

void checkBasicAutoscalingAlgorithm(api.BasicAutoscalingAlgorithm o) {
  buildCounterBasicAutoscalingAlgorithm++;
  if (buildCounterBasicAutoscalingAlgorithm < 3) {
    unittest.expect(o.cooldownPeriod, unittest.equals('foo'));
    checkBasicYarnAutoscalingConfig(o.yarnConfig);
  }
  buildCounterBasicAutoscalingAlgorithm--;
}

core.int buildCounterBasicYarnAutoscalingConfig = 0;
api.BasicYarnAutoscalingConfig buildBasicYarnAutoscalingConfig() {
  var o = api.BasicYarnAutoscalingConfig();
  buildCounterBasicYarnAutoscalingConfig++;
  if (buildCounterBasicYarnAutoscalingConfig < 3) {
    o.gracefulDecommissionTimeout = 'foo';
    o.scaleDownFactor = 42.0;
    o.scaleDownMinWorkerFraction = 42.0;
    o.scaleUpFactor = 42.0;
    o.scaleUpMinWorkerFraction = 42.0;
  }
  buildCounterBasicYarnAutoscalingConfig--;
  return o;
}

void checkBasicYarnAutoscalingConfig(api.BasicYarnAutoscalingConfig o) {
  buildCounterBasicYarnAutoscalingConfig++;
  if (buildCounterBasicYarnAutoscalingConfig < 3) {
    unittest.expect(o.gracefulDecommissionTimeout, unittest.equals('foo'));
    unittest.expect(o.scaleDownFactor, unittest.equals(42.0));
    unittest.expect(o.scaleDownMinWorkerFraction, unittest.equals(42.0));
    unittest.expect(o.scaleUpFactor, unittest.equals(42.0));
    unittest.expect(o.scaleUpMinWorkerFraction, unittest.equals(42.0));
  }
  buildCounterBasicYarnAutoscalingConfig--;
}

core.List<core.String> buildUnnamed2517() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2517(core.List<core.String> o) {
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
    o.members = buildUnnamed2517();
    o.role = 'foo';
  }
  buildCounterBinding--;
  return o;
}

void checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    unittest.expect(o.bindingId, unittest.equals('foo'));
    checkExpr(o.condition);
    checkUnnamed2517(o.members);
    unittest.expect(o.role, unittest.equals('foo'));
  }
  buildCounterBinding--;
}

core.int buildCounterCancelJobRequest = 0;
api.CancelJobRequest buildCancelJobRequest() {
  var o = api.CancelJobRequest();
  buildCounterCancelJobRequest++;
  if (buildCounterCancelJobRequest < 3) {}
  buildCounterCancelJobRequest--;
  return o;
}

void checkCancelJobRequest(api.CancelJobRequest o) {
  buildCounterCancelJobRequest++;
  if (buildCounterCancelJobRequest < 3) {}
  buildCounterCancelJobRequest--;
}

core.Map<core.String, core.String> buildUnnamed2518() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed2518(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.List<api.ClusterStatus> buildUnnamed2519() {
  var o = <api.ClusterStatus>[];
  o.add(buildClusterStatus());
  o.add(buildClusterStatus());
  return o;
}

void checkUnnamed2519(core.List<api.ClusterStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkClusterStatus(o[0]);
  checkClusterStatus(o[1]);
}

core.int buildCounterCluster = 0;
api.Cluster buildCluster() {
  var o = api.Cluster();
  buildCounterCluster++;
  if (buildCounterCluster < 3) {
    o.clusterName = 'foo';
    o.clusterUuid = 'foo';
    o.config = buildClusterConfig();
    o.labels = buildUnnamed2518();
    o.metrics = buildClusterMetrics();
    o.projectId = 'foo';
    o.status = buildClusterStatus();
    o.statusHistory = buildUnnamed2519();
  }
  buildCounterCluster--;
  return o;
}

void checkCluster(api.Cluster o) {
  buildCounterCluster++;
  if (buildCounterCluster < 3) {
    unittest.expect(o.clusterName, unittest.equals('foo'));
    unittest.expect(o.clusterUuid, unittest.equals('foo'));
    checkClusterConfig(o.config);
    checkUnnamed2518(o.labels);
    checkClusterMetrics(o.metrics);
    unittest.expect(o.projectId, unittest.equals('foo'));
    checkClusterStatus(o.status);
    checkUnnamed2519(o.statusHistory);
  }
  buildCounterCluster--;
}

core.List<api.NodeInitializationAction> buildUnnamed2520() {
  var o = <api.NodeInitializationAction>[];
  o.add(buildNodeInitializationAction());
  o.add(buildNodeInitializationAction());
  return o;
}

void checkUnnamed2520(core.List<api.NodeInitializationAction> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNodeInitializationAction(o[0]);
  checkNodeInitializationAction(o[1]);
}

core.int buildCounterClusterConfig = 0;
api.ClusterConfig buildClusterConfig() {
  var o = api.ClusterConfig();
  buildCounterClusterConfig++;
  if (buildCounterClusterConfig < 3) {
    o.autoscalingConfig = buildAutoscalingConfig();
    o.configBucket = 'foo';
    o.encryptionConfig = buildEncryptionConfig();
    o.endpointConfig = buildEndpointConfig();
    o.gceClusterConfig = buildGceClusterConfig();
    o.initializationActions = buildUnnamed2520();
    o.lifecycleConfig = buildLifecycleConfig();
    o.masterConfig = buildInstanceGroupConfig();
    o.secondaryWorkerConfig = buildInstanceGroupConfig();
    o.securityConfig = buildSecurityConfig();
    o.softwareConfig = buildSoftwareConfig();
    o.tempBucket = 'foo';
    o.workerConfig = buildInstanceGroupConfig();
  }
  buildCounterClusterConfig--;
  return o;
}

void checkClusterConfig(api.ClusterConfig o) {
  buildCounterClusterConfig++;
  if (buildCounterClusterConfig < 3) {
    checkAutoscalingConfig(o.autoscalingConfig);
    unittest.expect(o.configBucket, unittest.equals('foo'));
    checkEncryptionConfig(o.encryptionConfig);
    checkEndpointConfig(o.endpointConfig);
    checkGceClusterConfig(o.gceClusterConfig);
    checkUnnamed2520(o.initializationActions);
    checkLifecycleConfig(o.lifecycleConfig);
    checkInstanceGroupConfig(o.masterConfig);
    checkInstanceGroupConfig(o.secondaryWorkerConfig);
    checkSecurityConfig(o.securityConfig);
    checkSoftwareConfig(o.softwareConfig);
    unittest.expect(o.tempBucket, unittest.equals('foo'));
    checkInstanceGroupConfig(o.workerConfig);
  }
  buildCounterClusterConfig--;
}

core.Map<core.String, core.String> buildUnnamed2521() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed2521(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed2522() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed2522(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterClusterMetrics = 0;
api.ClusterMetrics buildClusterMetrics() {
  var o = api.ClusterMetrics();
  buildCounterClusterMetrics++;
  if (buildCounterClusterMetrics < 3) {
    o.hdfsMetrics = buildUnnamed2521();
    o.yarnMetrics = buildUnnamed2522();
  }
  buildCounterClusterMetrics--;
  return o;
}

void checkClusterMetrics(api.ClusterMetrics o) {
  buildCounterClusterMetrics++;
  if (buildCounterClusterMetrics < 3) {
    checkUnnamed2521(o.hdfsMetrics);
    checkUnnamed2522(o.yarnMetrics);
  }
  buildCounterClusterMetrics--;
}

core.int buildCounterClusterOperation = 0;
api.ClusterOperation buildClusterOperation() {
  var o = api.ClusterOperation();
  buildCounterClusterOperation++;
  if (buildCounterClusterOperation < 3) {
    o.done = true;
    o.error = 'foo';
    o.operationId = 'foo';
  }
  buildCounterClusterOperation--;
  return o;
}

void checkClusterOperation(api.ClusterOperation o) {
  buildCounterClusterOperation++;
  if (buildCounterClusterOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    unittest.expect(o.error, unittest.equals('foo'));
    unittest.expect(o.operationId, unittest.equals('foo'));
  }
  buildCounterClusterOperation--;
}

core.Map<core.String, core.String> buildUnnamed2523() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed2523(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.List<api.ClusterOperationStatus> buildUnnamed2524() {
  var o = <api.ClusterOperationStatus>[];
  o.add(buildClusterOperationStatus());
  o.add(buildClusterOperationStatus());
  return o;
}

void checkUnnamed2524(core.List<api.ClusterOperationStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkClusterOperationStatus(o[0]);
  checkClusterOperationStatus(o[1]);
}

core.List<core.String> buildUnnamed2525() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2525(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterClusterOperationMetadata = 0;
api.ClusterOperationMetadata buildClusterOperationMetadata() {
  var o = api.ClusterOperationMetadata();
  buildCounterClusterOperationMetadata++;
  if (buildCounterClusterOperationMetadata < 3) {
    o.clusterName = 'foo';
    o.clusterUuid = 'foo';
    o.description = 'foo';
    o.labels = buildUnnamed2523();
    o.operationType = 'foo';
    o.status = buildClusterOperationStatus();
    o.statusHistory = buildUnnamed2524();
    o.warnings = buildUnnamed2525();
  }
  buildCounterClusterOperationMetadata--;
  return o;
}

void checkClusterOperationMetadata(api.ClusterOperationMetadata o) {
  buildCounterClusterOperationMetadata++;
  if (buildCounterClusterOperationMetadata < 3) {
    unittest.expect(o.clusterName, unittest.equals('foo'));
    unittest.expect(o.clusterUuid, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    checkUnnamed2523(o.labels);
    unittest.expect(o.operationType, unittest.equals('foo'));
    checkClusterOperationStatus(o.status);
    checkUnnamed2524(o.statusHistory);
    checkUnnamed2525(o.warnings);
  }
  buildCounterClusterOperationMetadata--;
}

core.int buildCounterClusterOperationStatus = 0;
api.ClusterOperationStatus buildClusterOperationStatus() {
  var o = api.ClusterOperationStatus();
  buildCounterClusterOperationStatus++;
  if (buildCounterClusterOperationStatus < 3) {
    o.details = 'foo';
    o.innerState = 'foo';
    o.state = 'foo';
    o.stateStartTime = 'foo';
  }
  buildCounterClusterOperationStatus--;
  return o;
}

void checkClusterOperationStatus(api.ClusterOperationStatus o) {
  buildCounterClusterOperationStatus++;
  if (buildCounterClusterOperationStatus < 3) {
    unittest.expect(o.details, unittest.equals('foo'));
    unittest.expect(o.innerState, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.stateStartTime, unittest.equals('foo'));
  }
  buildCounterClusterOperationStatus--;
}

core.Map<core.String, core.String> buildUnnamed2526() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed2526(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterClusterSelector = 0;
api.ClusterSelector buildClusterSelector() {
  var o = api.ClusterSelector();
  buildCounterClusterSelector++;
  if (buildCounterClusterSelector < 3) {
    o.clusterLabels = buildUnnamed2526();
    o.zone = 'foo';
  }
  buildCounterClusterSelector--;
  return o;
}

void checkClusterSelector(api.ClusterSelector o) {
  buildCounterClusterSelector++;
  if (buildCounterClusterSelector < 3) {
    checkUnnamed2526(o.clusterLabels);
    unittest.expect(o.zone, unittest.equals('foo'));
  }
  buildCounterClusterSelector--;
}

core.int buildCounterClusterStatus = 0;
api.ClusterStatus buildClusterStatus() {
  var o = api.ClusterStatus();
  buildCounterClusterStatus++;
  if (buildCounterClusterStatus < 3) {
    o.detail = 'foo';
    o.state = 'foo';
    o.stateStartTime = 'foo';
    o.substate = 'foo';
  }
  buildCounterClusterStatus--;
  return o;
}

void checkClusterStatus(api.ClusterStatus o) {
  buildCounterClusterStatus++;
  if (buildCounterClusterStatus < 3) {
    unittest.expect(o.detail, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.stateStartTime, unittest.equals('foo'));
    unittest.expect(o.substate, unittest.equals('foo'));
  }
  buildCounterClusterStatus--;
}

core.int buildCounterDiagnoseClusterRequest = 0;
api.DiagnoseClusterRequest buildDiagnoseClusterRequest() {
  var o = api.DiagnoseClusterRequest();
  buildCounterDiagnoseClusterRequest++;
  if (buildCounterDiagnoseClusterRequest < 3) {}
  buildCounterDiagnoseClusterRequest--;
  return o;
}

void checkDiagnoseClusterRequest(api.DiagnoseClusterRequest o) {
  buildCounterDiagnoseClusterRequest++;
  if (buildCounterDiagnoseClusterRequest < 3) {}
  buildCounterDiagnoseClusterRequest--;
}

core.int buildCounterDiagnoseClusterResults = 0;
api.DiagnoseClusterResults buildDiagnoseClusterResults() {
  var o = api.DiagnoseClusterResults();
  buildCounterDiagnoseClusterResults++;
  if (buildCounterDiagnoseClusterResults < 3) {
    o.outputUri = 'foo';
  }
  buildCounterDiagnoseClusterResults--;
  return o;
}

void checkDiagnoseClusterResults(api.DiagnoseClusterResults o) {
  buildCounterDiagnoseClusterResults++;
  if (buildCounterDiagnoseClusterResults < 3) {
    unittest.expect(o.outputUri, unittest.equals('foo'));
  }
  buildCounterDiagnoseClusterResults--;
}

core.int buildCounterDiskConfig = 0;
api.DiskConfig buildDiskConfig() {
  var o = api.DiskConfig();
  buildCounterDiskConfig++;
  if (buildCounterDiskConfig < 3) {
    o.bootDiskSizeGb = 42;
    o.bootDiskType = 'foo';
    o.numLocalSsds = 42;
  }
  buildCounterDiskConfig--;
  return o;
}

void checkDiskConfig(api.DiskConfig o) {
  buildCounterDiskConfig++;
  if (buildCounterDiskConfig < 3) {
    unittest.expect(o.bootDiskSizeGb, unittest.equals(42));
    unittest.expect(o.bootDiskType, unittest.equals('foo'));
    unittest.expect(o.numLocalSsds, unittest.equals(42));
  }
  buildCounterDiskConfig--;
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

core.int buildCounterEncryptionConfig = 0;
api.EncryptionConfig buildEncryptionConfig() {
  var o = api.EncryptionConfig();
  buildCounterEncryptionConfig++;
  if (buildCounterEncryptionConfig < 3) {
    o.gcePdKmsKeyName = 'foo';
  }
  buildCounterEncryptionConfig--;
  return o;
}

void checkEncryptionConfig(api.EncryptionConfig o) {
  buildCounterEncryptionConfig++;
  if (buildCounterEncryptionConfig < 3) {
    unittest.expect(o.gcePdKmsKeyName, unittest.equals('foo'));
  }
  buildCounterEncryptionConfig--;
}

core.Map<core.String, core.String> buildUnnamed2527() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed2527(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterEndpointConfig = 0;
api.EndpointConfig buildEndpointConfig() {
  var o = api.EndpointConfig();
  buildCounterEndpointConfig++;
  if (buildCounterEndpointConfig < 3) {
    o.enableHttpPortAccess = true;
    o.httpPorts = buildUnnamed2527();
  }
  buildCounterEndpointConfig--;
  return o;
}

void checkEndpointConfig(api.EndpointConfig o) {
  buildCounterEndpointConfig++;
  if (buildCounterEndpointConfig < 3) {
    unittest.expect(o.enableHttpPortAccess, unittest.isTrue);
    checkUnnamed2527(o.httpPorts);
  }
  buildCounterEndpointConfig--;
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

core.Map<core.String, core.String> buildUnnamed2528() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed2528(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2529() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2529(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2530() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2530(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGceClusterConfig = 0;
api.GceClusterConfig buildGceClusterConfig() {
  var o = api.GceClusterConfig();
  buildCounterGceClusterConfig++;
  if (buildCounterGceClusterConfig < 3) {
    o.internalIpOnly = true;
    o.metadata = buildUnnamed2528();
    o.networkUri = 'foo';
    o.nodeGroupAffinity = buildNodeGroupAffinity();
    o.privateIpv6GoogleAccess = 'foo';
    o.reservationAffinity = buildReservationAffinity();
    o.serviceAccount = 'foo';
    o.serviceAccountScopes = buildUnnamed2529();
    o.subnetworkUri = 'foo';
    o.tags = buildUnnamed2530();
    o.zoneUri = 'foo';
  }
  buildCounterGceClusterConfig--;
  return o;
}

void checkGceClusterConfig(api.GceClusterConfig o) {
  buildCounterGceClusterConfig++;
  if (buildCounterGceClusterConfig < 3) {
    unittest.expect(o.internalIpOnly, unittest.isTrue);
    checkUnnamed2528(o.metadata);
    unittest.expect(o.networkUri, unittest.equals('foo'));
    checkNodeGroupAffinity(o.nodeGroupAffinity);
    unittest.expect(o.privateIpv6GoogleAccess, unittest.equals('foo'));
    checkReservationAffinity(o.reservationAffinity);
    unittest.expect(o.serviceAccount, unittest.equals('foo'));
    checkUnnamed2529(o.serviceAccountScopes);
    unittest.expect(o.subnetworkUri, unittest.equals('foo'));
    checkUnnamed2530(o.tags);
    unittest.expect(o.zoneUri, unittest.equals('foo'));
  }
  buildCounterGceClusterConfig--;
}

core.int buildCounterGetIamPolicyRequest = 0;
api.GetIamPolicyRequest buildGetIamPolicyRequest() {
  var o = api.GetIamPolicyRequest();
  buildCounterGetIamPolicyRequest++;
  if (buildCounterGetIamPolicyRequest < 3) {
    o.options = buildGetPolicyOptions();
  }
  buildCounterGetIamPolicyRequest--;
  return o;
}

void checkGetIamPolicyRequest(api.GetIamPolicyRequest o) {
  buildCounterGetIamPolicyRequest++;
  if (buildCounterGetIamPolicyRequest < 3) {
    checkGetPolicyOptions(o.options);
  }
  buildCounterGetIamPolicyRequest--;
}

core.int buildCounterGetPolicyOptions = 0;
api.GetPolicyOptions buildGetPolicyOptions() {
  var o = api.GetPolicyOptions();
  buildCounterGetPolicyOptions++;
  if (buildCounterGetPolicyOptions < 3) {
    o.requestedPolicyVersion = 42;
  }
  buildCounterGetPolicyOptions--;
  return o;
}

void checkGetPolicyOptions(api.GetPolicyOptions o) {
  buildCounterGetPolicyOptions++;
  if (buildCounterGetPolicyOptions < 3) {
    unittest.expect(o.requestedPolicyVersion, unittest.equals(42));
  }
  buildCounterGetPolicyOptions--;
}

core.List<core.String> buildUnnamed2531() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2531(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2532() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2532(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2533() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2533(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2534() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2534(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed2535() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed2535(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterHadoopJob = 0;
api.HadoopJob buildHadoopJob() {
  var o = api.HadoopJob();
  buildCounterHadoopJob++;
  if (buildCounterHadoopJob < 3) {
    o.archiveUris = buildUnnamed2531();
    o.args = buildUnnamed2532();
    o.fileUris = buildUnnamed2533();
    o.jarFileUris = buildUnnamed2534();
    o.loggingConfig = buildLoggingConfig();
    o.mainClass = 'foo';
    o.mainJarFileUri = 'foo';
    o.properties = buildUnnamed2535();
  }
  buildCounterHadoopJob--;
  return o;
}

void checkHadoopJob(api.HadoopJob o) {
  buildCounterHadoopJob++;
  if (buildCounterHadoopJob < 3) {
    checkUnnamed2531(o.archiveUris);
    checkUnnamed2532(o.args);
    checkUnnamed2533(o.fileUris);
    checkUnnamed2534(o.jarFileUris);
    checkLoggingConfig(o.loggingConfig);
    unittest.expect(o.mainClass, unittest.equals('foo'));
    unittest.expect(o.mainJarFileUri, unittest.equals('foo'));
    checkUnnamed2535(o.properties);
  }
  buildCounterHadoopJob--;
}

core.List<core.String> buildUnnamed2536() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2536(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed2537() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed2537(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed2538() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed2538(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterHiveJob = 0;
api.HiveJob buildHiveJob() {
  var o = api.HiveJob();
  buildCounterHiveJob++;
  if (buildCounterHiveJob < 3) {
    o.continueOnFailure = true;
    o.jarFileUris = buildUnnamed2536();
    o.properties = buildUnnamed2537();
    o.queryFileUri = 'foo';
    o.queryList = buildQueryList();
    o.scriptVariables = buildUnnamed2538();
  }
  buildCounterHiveJob--;
  return o;
}

void checkHiveJob(api.HiveJob o) {
  buildCounterHiveJob++;
  if (buildCounterHiveJob < 3) {
    unittest.expect(o.continueOnFailure, unittest.isTrue);
    checkUnnamed2536(o.jarFileUris);
    checkUnnamed2537(o.properties);
    unittest.expect(o.queryFileUri, unittest.equals('foo'));
    checkQueryList(o.queryList);
    checkUnnamed2538(o.scriptVariables);
  }
  buildCounterHiveJob--;
}

core.int buildCounterInstanceGroupAutoscalingPolicyConfig = 0;
api.InstanceGroupAutoscalingPolicyConfig
    buildInstanceGroupAutoscalingPolicyConfig() {
  var o = api.InstanceGroupAutoscalingPolicyConfig();
  buildCounterInstanceGroupAutoscalingPolicyConfig++;
  if (buildCounterInstanceGroupAutoscalingPolicyConfig < 3) {
    o.maxInstances = 42;
    o.minInstances = 42;
    o.weight = 42;
  }
  buildCounterInstanceGroupAutoscalingPolicyConfig--;
  return o;
}

void checkInstanceGroupAutoscalingPolicyConfig(
    api.InstanceGroupAutoscalingPolicyConfig o) {
  buildCounterInstanceGroupAutoscalingPolicyConfig++;
  if (buildCounterInstanceGroupAutoscalingPolicyConfig < 3) {
    unittest.expect(o.maxInstances, unittest.equals(42));
    unittest.expect(o.minInstances, unittest.equals(42));
    unittest.expect(o.weight, unittest.equals(42));
  }
  buildCounterInstanceGroupAutoscalingPolicyConfig--;
}

core.List<api.AcceleratorConfig> buildUnnamed2539() {
  var o = <api.AcceleratorConfig>[];
  o.add(buildAcceleratorConfig());
  o.add(buildAcceleratorConfig());
  return o;
}

void checkUnnamed2539(core.List<api.AcceleratorConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAcceleratorConfig(o[0]);
  checkAcceleratorConfig(o[1]);
}

core.List<core.String> buildUnnamed2540() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2540(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.InstanceReference> buildUnnamed2541() {
  var o = <api.InstanceReference>[];
  o.add(buildInstanceReference());
  o.add(buildInstanceReference());
  return o;
}

void checkUnnamed2541(core.List<api.InstanceReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInstanceReference(o[0]);
  checkInstanceReference(o[1]);
}

core.int buildCounterInstanceGroupConfig = 0;
api.InstanceGroupConfig buildInstanceGroupConfig() {
  var o = api.InstanceGroupConfig();
  buildCounterInstanceGroupConfig++;
  if (buildCounterInstanceGroupConfig < 3) {
    o.accelerators = buildUnnamed2539();
    o.diskConfig = buildDiskConfig();
    o.imageUri = 'foo';
    o.instanceNames = buildUnnamed2540();
    o.instanceReferences = buildUnnamed2541();
    o.isPreemptible = true;
    o.machineTypeUri = 'foo';
    o.managedGroupConfig = buildManagedGroupConfig();
    o.minCpuPlatform = 'foo';
    o.numInstances = 42;
    o.preemptibility = 'foo';
  }
  buildCounterInstanceGroupConfig--;
  return o;
}

void checkInstanceGroupConfig(api.InstanceGroupConfig o) {
  buildCounterInstanceGroupConfig++;
  if (buildCounterInstanceGroupConfig < 3) {
    checkUnnamed2539(o.accelerators);
    checkDiskConfig(o.diskConfig);
    unittest.expect(o.imageUri, unittest.equals('foo'));
    checkUnnamed2540(o.instanceNames);
    checkUnnamed2541(o.instanceReferences);
    unittest.expect(o.isPreemptible, unittest.isTrue);
    unittest.expect(o.machineTypeUri, unittest.equals('foo'));
    checkManagedGroupConfig(o.managedGroupConfig);
    unittest.expect(o.minCpuPlatform, unittest.equals('foo'));
    unittest.expect(o.numInstances, unittest.equals(42));
    unittest.expect(o.preemptibility, unittest.equals('foo'));
  }
  buildCounterInstanceGroupConfig--;
}

core.int buildCounterInstanceReference = 0;
api.InstanceReference buildInstanceReference() {
  var o = api.InstanceReference();
  buildCounterInstanceReference++;
  if (buildCounterInstanceReference < 3) {
    o.instanceId = 'foo';
    o.instanceName = 'foo';
  }
  buildCounterInstanceReference--;
  return o;
}

void checkInstanceReference(api.InstanceReference o) {
  buildCounterInstanceReference++;
  if (buildCounterInstanceReference < 3) {
    unittest.expect(o.instanceId, unittest.equals('foo'));
    unittest.expect(o.instanceName, unittest.equals('foo'));
  }
  buildCounterInstanceReference--;
}

core.Map<core.String, core.String> buildUnnamed2542() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed2542(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterInstantiateWorkflowTemplateRequest = 0;
api.InstantiateWorkflowTemplateRequest
    buildInstantiateWorkflowTemplateRequest() {
  var o = api.InstantiateWorkflowTemplateRequest();
  buildCounterInstantiateWorkflowTemplateRequest++;
  if (buildCounterInstantiateWorkflowTemplateRequest < 3) {
    o.parameters = buildUnnamed2542();
    o.requestId = 'foo';
    o.version = 42;
  }
  buildCounterInstantiateWorkflowTemplateRequest--;
  return o;
}

void checkInstantiateWorkflowTemplateRequest(
    api.InstantiateWorkflowTemplateRequest o) {
  buildCounterInstantiateWorkflowTemplateRequest++;
  if (buildCounterInstantiateWorkflowTemplateRequest < 3) {
    checkUnnamed2542(o.parameters);
    unittest.expect(o.requestId, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals(42));
  }
  buildCounterInstantiateWorkflowTemplateRequest--;
}

core.Map<core.String, core.String> buildUnnamed2543() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed2543(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.List<api.JobStatus> buildUnnamed2544() {
  var o = <api.JobStatus>[];
  o.add(buildJobStatus());
  o.add(buildJobStatus());
  return o;
}

void checkUnnamed2544(core.List<api.JobStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJobStatus(o[0]);
  checkJobStatus(o[1]);
}

core.List<api.YarnApplication> buildUnnamed2545() {
  var o = <api.YarnApplication>[];
  o.add(buildYarnApplication());
  o.add(buildYarnApplication());
  return o;
}

void checkUnnamed2545(core.List<api.YarnApplication> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkYarnApplication(o[0]);
  checkYarnApplication(o[1]);
}

core.int buildCounterJob = 0;
api.Job buildJob() {
  var o = api.Job();
  buildCounterJob++;
  if (buildCounterJob < 3) {
    o.done = true;
    o.driverControlFilesUri = 'foo';
    o.driverOutputResourceUri = 'foo';
    o.hadoopJob = buildHadoopJob();
    o.hiveJob = buildHiveJob();
    o.jobUuid = 'foo';
    o.labels = buildUnnamed2543();
    o.pigJob = buildPigJob();
    o.placement = buildJobPlacement();
    o.prestoJob = buildPrestoJob();
    o.pysparkJob = buildPySparkJob();
    o.reference = buildJobReference();
    o.scheduling = buildJobScheduling();
    o.sparkJob = buildSparkJob();
    o.sparkRJob = buildSparkRJob();
    o.sparkSqlJob = buildSparkSqlJob();
    o.status = buildJobStatus();
    o.statusHistory = buildUnnamed2544();
    o.yarnApplications = buildUnnamed2545();
  }
  buildCounterJob--;
  return o;
}

void checkJob(api.Job o) {
  buildCounterJob++;
  if (buildCounterJob < 3) {
    unittest.expect(o.done, unittest.isTrue);
    unittest.expect(o.driverControlFilesUri, unittest.equals('foo'));
    unittest.expect(o.driverOutputResourceUri, unittest.equals('foo'));
    checkHadoopJob(o.hadoopJob);
    checkHiveJob(o.hiveJob);
    unittest.expect(o.jobUuid, unittest.equals('foo'));
    checkUnnamed2543(o.labels);
    checkPigJob(o.pigJob);
    checkJobPlacement(o.placement);
    checkPrestoJob(o.prestoJob);
    checkPySparkJob(o.pysparkJob);
    checkJobReference(o.reference);
    checkJobScheduling(o.scheduling);
    checkSparkJob(o.sparkJob);
    checkSparkRJob(o.sparkRJob);
    checkSparkSqlJob(o.sparkSqlJob);
    checkJobStatus(o.status);
    checkUnnamed2544(o.statusHistory);
    checkUnnamed2545(o.yarnApplications);
  }
  buildCounterJob--;
}

core.int buildCounterJobMetadata = 0;
api.JobMetadata buildJobMetadata() {
  var o = api.JobMetadata();
  buildCounterJobMetadata++;
  if (buildCounterJobMetadata < 3) {
    o.jobId = 'foo';
    o.operationType = 'foo';
    o.startTime = 'foo';
    o.status = buildJobStatus();
  }
  buildCounterJobMetadata--;
  return o;
}

void checkJobMetadata(api.JobMetadata o) {
  buildCounterJobMetadata++;
  if (buildCounterJobMetadata < 3) {
    unittest.expect(o.jobId, unittest.equals('foo'));
    unittest.expect(o.operationType, unittest.equals('foo'));
    unittest.expect(o.startTime, unittest.equals('foo'));
    checkJobStatus(o.status);
  }
  buildCounterJobMetadata--;
}

core.int buildCounterJobPlacement = 0;
api.JobPlacement buildJobPlacement() {
  var o = api.JobPlacement();
  buildCounterJobPlacement++;
  if (buildCounterJobPlacement < 3) {
    o.clusterName = 'foo';
    o.clusterUuid = 'foo';
  }
  buildCounterJobPlacement--;
  return o;
}

void checkJobPlacement(api.JobPlacement o) {
  buildCounterJobPlacement++;
  if (buildCounterJobPlacement < 3) {
    unittest.expect(o.clusterName, unittest.equals('foo'));
    unittest.expect(o.clusterUuid, unittest.equals('foo'));
  }
  buildCounterJobPlacement--;
}

core.int buildCounterJobReference = 0;
api.JobReference buildJobReference() {
  var o = api.JobReference();
  buildCounterJobReference++;
  if (buildCounterJobReference < 3) {
    o.jobId = 'foo';
    o.projectId = 'foo';
  }
  buildCounterJobReference--;
  return o;
}

void checkJobReference(api.JobReference o) {
  buildCounterJobReference++;
  if (buildCounterJobReference < 3) {
    unittest.expect(o.jobId, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
  }
  buildCounterJobReference--;
}

core.int buildCounterJobScheduling = 0;
api.JobScheduling buildJobScheduling() {
  var o = api.JobScheduling();
  buildCounterJobScheduling++;
  if (buildCounterJobScheduling < 3) {
    o.maxFailuresPerHour = 42;
  }
  buildCounterJobScheduling--;
  return o;
}

void checkJobScheduling(api.JobScheduling o) {
  buildCounterJobScheduling++;
  if (buildCounterJobScheduling < 3) {
    unittest.expect(o.maxFailuresPerHour, unittest.equals(42));
  }
  buildCounterJobScheduling--;
}

core.int buildCounterJobStatus = 0;
api.JobStatus buildJobStatus() {
  var o = api.JobStatus();
  buildCounterJobStatus++;
  if (buildCounterJobStatus < 3) {
    o.details = 'foo';
    o.state = 'foo';
    o.stateStartTime = 'foo';
    o.substate = 'foo';
  }
  buildCounterJobStatus--;
  return o;
}

void checkJobStatus(api.JobStatus o) {
  buildCounterJobStatus++;
  if (buildCounterJobStatus < 3) {
    unittest.expect(o.details, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.stateStartTime, unittest.equals('foo'));
    unittest.expect(o.substate, unittest.equals('foo'));
  }
  buildCounterJobStatus--;
}

core.int buildCounterKerberosConfig = 0;
api.KerberosConfig buildKerberosConfig() {
  var o = api.KerberosConfig();
  buildCounterKerberosConfig++;
  if (buildCounterKerberosConfig < 3) {
    o.crossRealmTrustAdminServer = 'foo';
    o.crossRealmTrustKdc = 'foo';
    o.crossRealmTrustRealm = 'foo';
    o.crossRealmTrustSharedPasswordUri = 'foo';
    o.enableKerberos = true;
    o.kdcDbKeyUri = 'foo';
    o.keyPasswordUri = 'foo';
    o.keystorePasswordUri = 'foo';
    o.keystoreUri = 'foo';
    o.kmsKeyUri = 'foo';
    o.realm = 'foo';
    o.rootPrincipalPasswordUri = 'foo';
    o.tgtLifetimeHours = 42;
    o.truststorePasswordUri = 'foo';
    o.truststoreUri = 'foo';
  }
  buildCounterKerberosConfig--;
  return o;
}

void checkKerberosConfig(api.KerberosConfig o) {
  buildCounterKerberosConfig++;
  if (buildCounterKerberosConfig < 3) {
    unittest.expect(o.crossRealmTrustAdminServer, unittest.equals('foo'));
    unittest.expect(o.crossRealmTrustKdc, unittest.equals('foo'));
    unittest.expect(o.crossRealmTrustRealm, unittest.equals('foo'));
    unittest.expect(o.crossRealmTrustSharedPasswordUri, unittest.equals('foo'));
    unittest.expect(o.enableKerberos, unittest.isTrue);
    unittest.expect(o.kdcDbKeyUri, unittest.equals('foo'));
    unittest.expect(o.keyPasswordUri, unittest.equals('foo'));
    unittest.expect(o.keystorePasswordUri, unittest.equals('foo'));
    unittest.expect(o.keystoreUri, unittest.equals('foo'));
    unittest.expect(o.kmsKeyUri, unittest.equals('foo'));
    unittest.expect(o.realm, unittest.equals('foo'));
    unittest.expect(o.rootPrincipalPasswordUri, unittest.equals('foo'));
    unittest.expect(o.tgtLifetimeHours, unittest.equals(42));
    unittest.expect(o.truststorePasswordUri, unittest.equals('foo'));
    unittest.expect(o.truststoreUri, unittest.equals('foo'));
  }
  buildCounterKerberosConfig--;
}

core.int buildCounterLifecycleConfig = 0;
api.LifecycleConfig buildLifecycleConfig() {
  var o = api.LifecycleConfig();
  buildCounterLifecycleConfig++;
  if (buildCounterLifecycleConfig < 3) {
    o.autoDeleteTime = 'foo';
    o.autoDeleteTtl = 'foo';
    o.idleDeleteTtl = 'foo';
    o.idleStartTime = 'foo';
  }
  buildCounterLifecycleConfig--;
  return o;
}

void checkLifecycleConfig(api.LifecycleConfig o) {
  buildCounterLifecycleConfig++;
  if (buildCounterLifecycleConfig < 3) {
    unittest.expect(o.autoDeleteTime, unittest.equals('foo'));
    unittest.expect(o.autoDeleteTtl, unittest.equals('foo'));
    unittest.expect(o.idleDeleteTtl, unittest.equals('foo'));
    unittest.expect(o.idleStartTime, unittest.equals('foo'));
  }
  buildCounterLifecycleConfig--;
}

core.List<api.AutoscalingPolicy> buildUnnamed2546() {
  var o = <api.AutoscalingPolicy>[];
  o.add(buildAutoscalingPolicy());
  o.add(buildAutoscalingPolicy());
  return o;
}

void checkUnnamed2546(core.List<api.AutoscalingPolicy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAutoscalingPolicy(o[0]);
  checkAutoscalingPolicy(o[1]);
}

core.int buildCounterListAutoscalingPoliciesResponse = 0;
api.ListAutoscalingPoliciesResponse buildListAutoscalingPoliciesResponse() {
  var o = api.ListAutoscalingPoliciesResponse();
  buildCounterListAutoscalingPoliciesResponse++;
  if (buildCounterListAutoscalingPoliciesResponse < 3) {
    o.nextPageToken = 'foo';
    o.policies = buildUnnamed2546();
  }
  buildCounterListAutoscalingPoliciesResponse--;
  return o;
}

void checkListAutoscalingPoliciesResponse(
    api.ListAutoscalingPoliciesResponse o) {
  buildCounterListAutoscalingPoliciesResponse++;
  if (buildCounterListAutoscalingPoliciesResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed2546(o.policies);
  }
  buildCounterListAutoscalingPoliciesResponse--;
}

core.List<api.Cluster> buildUnnamed2547() {
  var o = <api.Cluster>[];
  o.add(buildCluster());
  o.add(buildCluster());
  return o;
}

void checkUnnamed2547(core.List<api.Cluster> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCluster(o[0]);
  checkCluster(o[1]);
}

core.int buildCounterListClustersResponse = 0;
api.ListClustersResponse buildListClustersResponse() {
  var o = api.ListClustersResponse();
  buildCounterListClustersResponse++;
  if (buildCounterListClustersResponse < 3) {
    o.clusters = buildUnnamed2547();
    o.nextPageToken = 'foo';
  }
  buildCounterListClustersResponse--;
  return o;
}

void checkListClustersResponse(api.ListClustersResponse o) {
  buildCounterListClustersResponse++;
  if (buildCounterListClustersResponse < 3) {
    checkUnnamed2547(o.clusters);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListClustersResponse--;
}

core.List<api.Job> buildUnnamed2548() {
  var o = <api.Job>[];
  o.add(buildJob());
  o.add(buildJob());
  return o;
}

void checkUnnamed2548(core.List<api.Job> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJob(o[0]);
  checkJob(o[1]);
}

core.int buildCounterListJobsResponse = 0;
api.ListJobsResponse buildListJobsResponse() {
  var o = api.ListJobsResponse();
  buildCounterListJobsResponse++;
  if (buildCounterListJobsResponse < 3) {
    o.jobs = buildUnnamed2548();
    o.nextPageToken = 'foo';
  }
  buildCounterListJobsResponse--;
  return o;
}

void checkListJobsResponse(api.ListJobsResponse o) {
  buildCounterListJobsResponse++;
  if (buildCounterListJobsResponse < 3) {
    checkUnnamed2548(o.jobs);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListJobsResponse--;
}

core.List<api.Operation> buildUnnamed2549() {
  var o = <api.Operation>[];
  o.add(buildOperation());
  o.add(buildOperation());
  return o;
}

void checkUnnamed2549(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0]);
  checkOperation(o[1]);
}

core.int buildCounterListOperationsResponse = 0;
api.ListOperationsResponse buildListOperationsResponse() {
  var o = api.ListOperationsResponse();
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.operations = buildUnnamed2549();
  }
  buildCounterListOperationsResponse--;
  return o;
}

void checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed2549(o.operations);
  }
  buildCounterListOperationsResponse--;
}

core.List<api.WorkflowTemplate> buildUnnamed2550() {
  var o = <api.WorkflowTemplate>[];
  o.add(buildWorkflowTemplate());
  o.add(buildWorkflowTemplate());
  return o;
}

void checkUnnamed2550(core.List<api.WorkflowTemplate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWorkflowTemplate(o[0]);
  checkWorkflowTemplate(o[1]);
}

core.int buildCounterListWorkflowTemplatesResponse = 0;
api.ListWorkflowTemplatesResponse buildListWorkflowTemplatesResponse() {
  var o = api.ListWorkflowTemplatesResponse();
  buildCounterListWorkflowTemplatesResponse++;
  if (buildCounterListWorkflowTemplatesResponse < 3) {
    o.nextPageToken = 'foo';
    o.templates = buildUnnamed2550();
  }
  buildCounterListWorkflowTemplatesResponse--;
  return o;
}

void checkListWorkflowTemplatesResponse(api.ListWorkflowTemplatesResponse o) {
  buildCounterListWorkflowTemplatesResponse++;
  if (buildCounterListWorkflowTemplatesResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed2550(o.templates);
  }
  buildCounterListWorkflowTemplatesResponse--;
}

core.Map<core.String, core.String> buildUnnamed2551() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed2551(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterLoggingConfig = 0;
api.LoggingConfig buildLoggingConfig() {
  var o = api.LoggingConfig();
  buildCounterLoggingConfig++;
  if (buildCounterLoggingConfig < 3) {
    o.driverLogLevels = buildUnnamed2551();
  }
  buildCounterLoggingConfig--;
  return o;
}

void checkLoggingConfig(api.LoggingConfig o) {
  buildCounterLoggingConfig++;
  if (buildCounterLoggingConfig < 3) {
    checkUnnamed2551(o.driverLogLevels);
  }
  buildCounterLoggingConfig--;
}

core.Map<core.String, core.String> buildUnnamed2552() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed2552(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterManagedCluster = 0;
api.ManagedCluster buildManagedCluster() {
  var o = api.ManagedCluster();
  buildCounterManagedCluster++;
  if (buildCounterManagedCluster < 3) {
    o.clusterName = 'foo';
    o.config = buildClusterConfig();
    o.labels = buildUnnamed2552();
  }
  buildCounterManagedCluster--;
  return o;
}

void checkManagedCluster(api.ManagedCluster o) {
  buildCounterManagedCluster++;
  if (buildCounterManagedCluster < 3) {
    unittest.expect(o.clusterName, unittest.equals('foo'));
    checkClusterConfig(o.config);
    checkUnnamed2552(o.labels);
  }
  buildCounterManagedCluster--;
}

core.int buildCounterManagedGroupConfig = 0;
api.ManagedGroupConfig buildManagedGroupConfig() {
  var o = api.ManagedGroupConfig();
  buildCounterManagedGroupConfig++;
  if (buildCounterManagedGroupConfig < 3) {
    o.instanceGroupManagerName = 'foo';
    o.instanceTemplateName = 'foo';
  }
  buildCounterManagedGroupConfig--;
  return o;
}

void checkManagedGroupConfig(api.ManagedGroupConfig o) {
  buildCounterManagedGroupConfig++;
  if (buildCounterManagedGroupConfig < 3) {
    unittest.expect(o.instanceGroupManagerName, unittest.equals('foo'));
    unittest.expect(o.instanceTemplateName, unittest.equals('foo'));
  }
  buildCounterManagedGroupConfig--;
}

core.int buildCounterNodeGroupAffinity = 0;
api.NodeGroupAffinity buildNodeGroupAffinity() {
  var o = api.NodeGroupAffinity();
  buildCounterNodeGroupAffinity++;
  if (buildCounterNodeGroupAffinity < 3) {
    o.nodeGroupUri = 'foo';
  }
  buildCounterNodeGroupAffinity--;
  return o;
}

void checkNodeGroupAffinity(api.NodeGroupAffinity o) {
  buildCounterNodeGroupAffinity++;
  if (buildCounterNodeGroupAffinity < 3) {
    unittest.expect(o.nodeGroupUri, unittest.equals('foo'));
  }
  buildCounterNodeGroupAffinity--;
}

core.int buildCounterNodeInitializationAction = 0;
api.NodeInitializationAction buildNodeInitializationAction() {
  var o = api.NodeInitializationAction();
  buildCounterNodeInitializationAction++;
  if (buildCounterNodeInitializationAction < 3) {
    o.executableFile = 'foo';
    o.executionTimeout = 'foo';
  }
  buildCounterNodeInitializationAction--;
  return o;
}

void checkNodeInitializationAction(api.NodeInitializationAction o) {
  buildCounterNodeInitializationAction++;
  if (buildCounterNodeInitializationAction < 3) {
    unittest.expect(o.executableFile, unittest.equals('foo'));
    unittest.expect(o.executionTimeout, unittest.equals('foo'));
  }
  buildCounterNodeInitializationAction--;
}

core.Map<core.String, core.Object> buildUnnamed2553() {
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

void checkUnnamed2553(core.Map<core.String, core.Object> o) {
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

core.Map<core.String, core.Object> buildUnnamed2554() {
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

void checkUnnamed2554(core.Map<core.String, core.Object> o) {
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

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  var o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed2553();
    o.name = 'foo';
    o.response = buildUnnamed2554();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkStatus(o.error);
    checkUnnamed2553(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed2554(o.response);
  }
  buildCounterOperation--;
}

core.Map<core.String, core.String> buildUnnamed2555() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed2555(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2556() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2556(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterOrderedJob = 0;
api.OrderedJob buildOrderedJob() {
  var o = api.OrderedJob();
  buildCounterOrderedJob++;
  if (buildCounterOrderedJob < 3) {
    o.hadoopJob = buildHadoopJob();
    o.hiveJob = buildHiveJob();
    o.labels = buildUnnamed2555();
    o.pigJob = buildPigJob();
    o.prerequisiteStepIds = buildUnnamed2556();
    o.prestoJob = buildPrestoJob();
    o.pysparkJob = buildPySparkJob();
    o.scheduling = buildJobScheduling();
    o.sparkJob = buildSparkJob();
    o.sparkRJob = buildSparkRJob();
    o.sparkSqlJob = buildSparkSqlJob();
    o.stepId = 'foo';
  }
  buildCounterOrderedJob--;
  return o;
}

void checkOrderedJob(api.OrderedJob o) {
  buildCounterOrderedJob++;
  if (buildCounterOrderedJob < 3) {
    checkHadoopJob(o.hadoopJob);
    checkHiveJob(o.hiveJob);
    checkUnnamed2555(o.labels);
    checkPigJob(o.pigJob);
    checkUnnamed2556(o.prerequisiteStepIds);
    checkPrestoJob(o.prestoJob);
    checkPySparkJob(o.pysparkJob);
    checkJobScheduling(o.scheduling);
    checkSparkJob(o.sparkJob);
    checkSparkRJob(o.sparkRJob);
    checkSparkSqlJob(o.sparkSqlJob);
    unittest.expect(o.stepId, unittest.equals('foo'));
  }
  buildCounterOrderedJob--;
}

core.int buildCounterParameterValidation = 0;
api.ParameterValidation buildParameterValidation() {
  var o = api.ParameterValidation();
  buildCounterParameterValidation++;
  if (buildCounterParameterValidation < 3) {
    o.regex = buildRegexValidation();
    o.values = buildValueValidation();
  }
  buildCounterParameterValidation--;
  return o;
}

void checkParameterValidation(api.ParameterValidation o) {
  buildCounterParameterValidation++;
  if (buildCounterParameterValidation < 3) {
    checkRegexValidation(o.regex);
    checkValueValidation(o.values);
  }
  buildCounterParameterValidation--;
}

core.List<core.String> buildUnnamed2557() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2557(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed2558() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed2558(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed2559() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed2559(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterPigJob = 0;
api.PigJob buildPigJob() {
  var o = api.PigJob();
  buildCounterPigJob++;
  if (buildCounterPigJob < 3) {
    o.continueOnFailure = true;
    o.jarFileUris = buildUnnamed2557();
    o.loggingConfig = buildLoggingConfig();
    o.properties = buildUnnamed2558();
    o.queryFileUri = 'foo';
    o.queryList = buildQueryList();
    o.scriptVariables = buildUnnamed2559();
  }
  buildCounterPigJob--;
  return o;
}

void checkPigJob(api.PigJob o) {
  buildCounterPigJob++;
  if (buildCounterPigJob < 3) {
    unittest.expect(o.continueOnFailure, unittest.isTrue);
    checkUnnamed2557(o.jarFileUris);
    checkLoggingConfig(o.loggingConfig);
    checkUnnamed2558(o.properties);
    unittest.expect(o.queryFileUri, unittest.equals('foo'));
    checkQueryList(o.queryList);
    checkUnnamed2559(o.scriptVariables);
  }
  buildCounterPigJob--;
}

core.List<api.Binding> buildUnnamed2560() {
  var o = <api.Binding>[];
  o.add(buildBinding());
  o.add(buildBinding());
  return o;
}

void checkUnnamed2560(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  var o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.bindings = buildUnnamed2560();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed2560(o.bindings);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals(42));
  }
  buildCounterPolicy--;
}

core.List<core.String> buildUnnamed2561() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2561(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed2562() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed2562(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterPrestoJob = 0;
api.PrestoJob buildPrestoJob() {
  var o = api.PrestoJob();
  buildCounterPrestoJob++;
  if (buildCounterPrestoJob < 3) {
    o.clientTags = buildUnnamed2561();
    o.continueOnFailure = true;
    o.loggingConfig = buildLoggingConfig();
    o.outputFormat = 'foo';
    o.properties = buildUnnamed2562();
    o.queryFileUri = 'foo';
    o.queryList = buildQueryList();
  }
  buildCounterPrestoJob--;
  return o;
}

void checkPrestoJob(api.PrestoJob o) {
  buildCounterPrestoJob++;
  if (buildCounterPrestoJob < 3) {
    checkUnnamed2561(o.clientTags);
    unittest.expect(o.continueOnFailure, unittest.isTrue);
    checkLoggingConfig(o.loggingConfig);
    unittest.expect(o.outputFormat, unittest.equals('foo'));
    checkUnnamed2562(o.properties);
    unittest.expect(o.queryFileUri, unittest.equals('foo'));
    checkQueryList(o.queryList);
  }
  buildCounterPrestoJob--;
}

core.List<core.String> buildUnnamed2563() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2563(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2564() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2564(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2565() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2565(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2566() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2566(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed2567() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed2567(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2568() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2568(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPySparkJob = 0;
api.PySparkJob buildPySparkJob() {
  var o = api.PySparkJob();
  buildCounterPySparkJob++;
  if (buildCounterPySparkJob < 3) {
    o.archiveUris = buildUnnamed2563();
    o.args = buildUnnamed2564();
    o.fileUris = buildUnnamed2565();
    o.jarFileUris = buildUnnamed2566();
    o.loggingConfig = buildLoggingConfig();
    o.mainPythonFileUri = 'foo';
    o.properties = buildUnnamed2567();
    o.pythonFileUris = buildUnnamed2568();
  }
  buildCounterPySparkJob--;
  return o;
}

void checkPySparkJob(api.PySparkJob o) {
  buildCounterPySparkJob++;
  if (buildCounterPySparkJob < 3) {
    checkUnnamed2563(o.archiveUris);
    checkUnnamed2564(o.args);
    checkUnnamed2565(o.fileUris);
    checkUnnamed2566(o.jarFileUris);
    checkLoggingConfig(o.loggingConfig);
    unittest.expect(o.mainPythonFileUri, unittest.equals('foo'));
    checkUnnamed2567(o.properties);
    checkUnnamed2568(o.pythonFileUris);
  }
  buildCounterPySparkJob--;
}

core.List<core.String> buildUnnamed2569() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2569(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterQueryList = 0;
api.QueryList buildQueryList() {
  var o = api.QueryList();
  buildCounterQueryList++;
  if (buildCounterQueryList < 3) {
    o.queries = buildUnnamed2569();
  }
  buildCounterQueryList--;
  return o;
}

void checkQueryList(api.QueryList o) {
  buildCounterQueryList++;
  if (buildCounterQueryList < 3) {
    checkUnnamed2569(o.queries);
  }
  buildCounterQueryList--;
}

core.List<core.String> buildUnnamed2570() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2570(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterRegexValidation = 0;
api.RegexValidation buildRegexValidation() {
  var o = api.RegexValidation();
  buildCounterRegexValidation++;
  if (buildCounterRegexValidation < 3) {
    o.regexes = buildUnnamed2570();
  }
  buildCounterRegexValidation--;
  return o;
}

void checkRegexValidation(api.RegexValidation o) {
  buildCounterRegexValidation++;
  if (buildCounterRegexValidation < 3) {
    checkUnnamed2570(o.regexes);
  }
  buildCounterRegexValidation--;
}

core.List<core.String> buildUnnamed2571() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2571(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterReservationAffinity = 0;
api.ReservationAffinity buildReservationAffinity() {
  var o = api.ReservationAffinity();
  buildCounterReservationAffinity++;
  if (buildCounterReservationAffinity < 3) {
    o.consumeReservationType = 'foo';
    o.key = 'foo';
    o.values = buildUnnamed2571();
  }
  buildCounterReservationAffinity--;
  return o;
}

void checkReservationAffinity(api.ReservationAffinity o) {
  buildCounterReservationAffinity++;
  if (buildCounterReservationAffinity < 3) {
    unittest.expect(o.consumeReservationType, unittest.equals('foo'));
    unittest.expect(o.key, unittest.equals('foo'));
    checkUnnamed2571(o.values);
  }
  buildCounterReservationAffinity--;
}

core.int buildCounterSecurityConfig = 0;
api.SecurityConfig buildSecurityConfig() {
  var o = api.SecurityConfig();
  buildCounterSecurityConfig++;
  if (buildCounterSecurityConfig < 3) {
    o.kerberosConfig = buildKerberosConfig();
  }
  buildCounterSecurityConfig--;
  return o;
}

void checkSecurityConfig(api.SecurityConfig o) {
  buildCounterSecurityConfig++;
  if (buildCounterSecurityConfig < 3) {
    checkKerberosConfig(o.kerberosConfig);
  }
  buildCounterSecurityConfig--;
}

core.int buildCounterSetIamPolicyRequest = 0;
api.SetIamPolicyRequest buildSetIamPolicyRequest() {
  var o = api.SetIamPolicyRequest();
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    o.policy = buildPolicy();
  }
  buildCounterSetIamPolicyRequest--;
  return o;
}

void checkSetIamPolicyRequest(api.SetIamPolicyRequest o) {
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    checkPolicy(o.policy);
  }
  buildCounterSetIamPolicyRequest--;
}

core.List<core.String> buildUnnamed2572() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2572(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed2573() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed2573(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterSoftwareConfig = 0;
api.SoftwareConfig buildSoftwareConfig() {
  var o = api.SoftwareConfig();
  buildCounterSoftwareConfig++;
  if (buildCounterSoftwareConfig < 3) {
    o.imageVersion = 'foo';
    o.optionalComponents = buildUnnamed2572();
    o.properties = buildUnnamed2573();
  }
  buildCounterSoftwareConfig--;
  return o;
}

void checkSoftwareConfig(api.SoftwareConfig o) {
  buildCounterSoftwareConfig++;
  if (buildCounterSoftwareConfig < 3) {
    unittest.expect(o.imageVersion, unittest.equals('foo'));
    checkUnnamed2572(o.optionalComponents);
    checkUnnamed2573(o.properties);
  }
  buildCounterSoftwareConfig--;
}

core.List<core.String> buildUnnamed2574() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2574(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2575() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2575(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2576() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2576(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2577() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2577(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed2578() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed2578(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterSparkJob = 0;
api.SparkJob buildSparkJob() {
  var o = api.SparkJob();
  buildCounterSparkJob++;
  if (buildCounterSparkJob < 3) {
    o.archiveUris = buildUnnamed2574();
    o.args = buildUnnamed2575();
    o.fileUris = buildUnnamed2576();
    o.jarFileUris = buildUnnamed2577();
    o.loggingConfig = buildLoggingConfig();
    o.mainClass = 'foo';
    o.mainJarFileUri = 'foo';
    o.properties = buildUnnamed2578();
  }
  buildCounterSparkJob--;
  return o;
}

void checkSparkJob(api.SparkJob o) {
  buildCounterSparkJob++;
  if (buildCounterSparkJob < 3) {
    checkUnnamed2574(o.archiveUris);
    checkUnnamed2575(o.args);
    checkUnnamed2576(o.fileUris);
    checkUnnamed2577(o.jarFileUris);
    checkLoggingConfig(o.loggingConfig);
    unittest.expect(o.mainClass, unittest.equals('foo'));
    unittest.expect(o.mainJarFileUri, unittest.equals('foo'));
    checkUnnamed2578(o.properties);
  }
  buildCounterSparkJob--;
}

core.List<core.String> buildUnnamed2579() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2579(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2580() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2580(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2581() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2581(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed2582() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed2582(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterSparkRJob = 0;
api.SparkRJob buildSparkRJob() {
  var o = api.SparkRJob();
  buildCounterSparkRJob++;
  if (buildCounterSparkRJob < 3) {
    o.archiveUris = buildUnnamed2579();
    o.args = buildUnnamed2580();
    o.fileUris = buildUnnamed2581();
    o.loggingConfig = buildLoggingConfig();
    o.mainRFileUri = 'foo';
    o.properties = buildUnnamed2582();
  }
  buildCounterSparkRJob--;
  return o;
}

void checkSparkRJob(api.SparkRJob o) {
  buildCounterSparkRJob++;
  if (buildCounterSparkRJob < 3) {
    checkUnnamed2579(o.archiveUris);
    checkUnnamed2580(o.args);
    checkUnnamed2581(o.fileUris);
    checkLoggingConfig(o.loggingConfig);
    unittest.expect(o.mainRFileUri, unittest.equals('foo'));
    checkUnnamed2582(o.properties);
  }
  buildCounterSparkRJob--;
}

core.List<core.String> buildUnnamed2583() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2583(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed2584() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed2584(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed2585() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed2585(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterSparkSqlJob = 0;
api.SparkSqlJob buildSparkSqlJob() {
  var o = api.SparkSqlJob();
  buildCounterSparkSqlJob++;
  if (buildCounterSparkSqlJob < 3) {
    o.jarFileUris = buildUnnamed2583();
    o.loggingConfig = buildLoggingConfig();
    o.properties = buildUnnamed2584();
    o.queryFileUri = 'foo';
    o.queryList = buildQueryList();
    o.scriptVariables = buildUnnamed2585();
  }
  buildCounterSparkSqlJob--;
  return o;
}

void checkSparkSqlJob(api.SparkSqlJob o) {
  buildCounterSparkSqlJob++;
  if (buildCounterSparkSqlJob < 3) {
    checkUnnamed2583(o.jarFileUris);
    checkLoggingConfig(o.loggingConfig);
    checkUnnamed2584(o.properties);
    unittest.expect(o.queryFileUri, unittest.equals('foo'));
    checkQueryList(o.queryList);
    checkUnnamed2585(o.scriptVariables);
  }
  buildCounterSparkSqlJob--;
}

core.Map<core.String, core.Object> buildUnnamed2586() {
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

void checkUnnamed2586(core.Map<core.String, core.Object> o) {
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

core.List<core.Map<core.String, core.Object>> buildUnnamed2587() {
  var o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed2586());
  o.add(buildUnnamed2586());
  return o;
}

void checkUnnamed2587(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed2586(o[0]);
  checkUnnamed2586(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  var o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed2587();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed2587(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.int buildCounterSubmitJobRequest = 0;
api.SubmitJobRequest buildSubmitJobRequest() {
  var o = api.SubmitJobRequest();
  buildCounterSubmitJobRequest++;
  if (buildCounterSubmitJobRequest < 3) {
    o.job = buildJob();
    o.requestId = 'foo';
  }
  buildCounterSubmitJobRequest--;
  return o;
}

void checkSubmitJobRequest(api.SubmitJobRequest o) {
  buildCounterSubmitJobRequest++;
  if (buildCounterSubmitJobRequest < 3) {
    checkJob(o.job);
    unittest.expect(o.requestId, unittest.equals('foo'));
  }
  buildCounterSubmitJobRequest--;
}

core.List<core.String> buildUnnamed2588() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2588(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTemplateParameter = 0;
api.TemplateParameter buildTemplateParameter() {
  var o = api.TemplateParameter();
  buildCounterTemplateParameter++;
  if (buildCounterTemplateParameter < 3) {
    o.description = 'foo';
    o.fields = buildUnnamed2588();
    o.name = 'foo';
    o.validation = buildParameterValidation();
  }
  buildCounterTemplateParameter--;
  return o;
}

void checkTemplateParameter(api.TemplateParameter o) {
  buildCounterTemplateParameter++;
  if (buildCounterTemplateParameter < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    checkUnnamed2588(o.fields);
    unittest.expect(o.name, unittest.equals('foo'));
    checkParameterValidation(o.validation);
  }
  buildCounterTemplateParameter--;
}

core.List<core.String> buildUnnamed2589() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2589(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsRequest = 0;
api.TestIamPermissionsRequest buildTestIamPermissionsRequest() {
  var o = api.TestIamPermissionsRequest();
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed2589();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

void checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed2589(o.permissions);
  }
  buildCounterTestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed2590() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2590(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsResponse = 0;
api.TestIamPermissionsResponse buildTestIamPermissionsResponse() {
  var o = api.TestIamPermissionsResponse();
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed2590();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed2590(o.permissions);
  }
  buildCounterTestIamPermissionsResponse--;
}

core.List<core.String> buildUnnamed2591() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2591(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterValueValidation = 0;
api.ValueValidation buildValueValidation() {
  var o = api.ValueValidation();
  buildCounterValueValidation++;
  if (buildCounterValueValidation < 3) {
    o.values = buildUnnamed2591();
  }
  buildCounterValueValidation--;
  return o;
}

void checkValueValidation(api.ValueValidation o) {
  buildCounterValueValidation++;
  if (buildCounterValueValidation < 3) {
    checkUnnamed2591(o.values);
  }
  buildCounterValueValidation--;
}

core.List<api.WorkflowNode> buildUnnamed2592() {
  var o = <api.WorkflowNode>[];
  o.add(buildWorkflowNode());
  o.add(buildWorkflowNode());
  return o;
}

void checkUnnamed2592(core.List<api.WorkflowNode> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWorkflowNode(o[0]);
  checkWorkflowNode(o[1]);
}

core.int buildCounterWorkflowGraph = 0;
api.WorkflowGraph buildWorkflowGraph() {
  var o = api.WorkflowGraph();
  buildCounterWorkflowGraph++;
  if (buildCounterWorkflowGraph < 3) {
    o.nodes = buildUnnamed2592();
  }
  buildCounterWorkflowGraph--;
  return o;
}

void checkWorkflowGraph(api.WorkflowGraph o) {
  buildCounterWorkflowGraph++;
  if (buildCounterWorkflowGraph < 3) {
    checkUnnamed2592(o.nodes);
  }
  buildCounterWorkflowGraph--;
}

core.Map<core.String, core.String> buildUnnamed2593() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed2593(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterWorkflowMetadata = 0;
api.WorkflowMetadata buildWorkflowMetadata() {
  var o = api.WorkflowMetadata();
  buildCounterWorkflowMetadata++;
  if (buildCounterWorkflowMetadata < 3) {
    o.clusterName = 'foo';
    o.clusterUuid = 'foo';
    o.createCluster = buildClusterOperation();
    o.deleteCluster = buildClusterOperation();
    o.endTime = 'foo';
    o.graph = buildWorkflowGraph();
    o.parameters = buildUnnamed2593();
    o.startTime = 'foo';
    o.state = 'foo';
    o.template = 'foo';
    o.version = 42;
  }
  buildCounterWorkflowMetadata--;
  return o;
}

void checkWorkflowMetadata(api.WorkflowMetadata o) {
  buildCounterWorkflowMetadata++;
  if (buildCounterWorkflowMetadata < 3) {
    unittest.expect(o.clusterName, unittest.equals('foo'));
    unittest.expect(o.clusterUuid, unittest.equals('foo'));
    checkClusterOperation(o.createCluster);
    checkClusterOperation(o.deleteCluster);
    unittest.expect(o.endTime, unittest.equals('foo'));
    checkWorkflowGraph(o.graph);
    checkUnnamed2593(o.parameters);
    unittest.expect(o.startTime, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.template, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals(42));
  }
  buildCounterWorkflowMetadata--;
}

core.List<core.String> buildUnnamed2594() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2594(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterWorkflowNode = 0;
api.WorkflowNode buildWorkflowNode() {
  var o = api.WorkflowNode();
  buildCounterWorkflowNode++;
  if (buildCounterWorkflowNode < 3) {
    o.error = 'foo';
    o.jobId = 'foo';
    o.prerequisiteStepIds = buildUnnamed2594();
    o.state = 'foo';
    o.stepId = 'foo';
  }
  buildCounterWorkflowNode--;
  return o;
}

void checkWorkflowNode(api.WorkflowNode o) {
  buildCounterWorkflowNode++;
  if (buildCounterWorkflowNode < 3) {
    unittest.expect(o.error, unittest.equals('foo'));
    unittest.expect(o.jobId, unittest.equals('foo'));
    checkUnnamed2594(o.prerequisiteStepIds);
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.stepId, unittest.equals('foo'));
  }
  buildCounterWorkflowNode--;
}

core.List<api.OrderedJob> buildUnnamed2595() {
  var o = <api.OrderedJob>[];
  o.add(buildOrderedJob());
  o.add(buildOrderedJob());
  return o;
}

void checkUnnamed2595(core.List<api.OrderedJob> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderedJob(o[0]);
  checkOrderedJob(o[1]);
}

core.Map<core.String, core.String> buildUnnamed2596() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed2596(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.List<api.TemplateParameter> buildUnnamed2597() {
  var o = <api.TemplateParameter>[];
  o.add(buildTemplateParameter());
  o.add(buildTemplateParameter());
  return o;
}

void checkUnnamed2597(core.List<api.TemplateParameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTemplateParameter(o[0]);
  checkTemplateParameter(o[1]);
}

core.int buildCounterWorkflowTemplate = 0;
api.WorkflowTemplate buildWorkflowTemplate() {
  var o = api.WorkflowTemplate();
  buildCounterWorkflowTemplate++;
  if (buildCounterWorkflowTemplate < 3) {
    o.createTime = 'foo';
    o.id = 'foo';
    o.jobs = buildUnnamed2595();
    o.labels = buildUnnamed2596();
    o.name = 'foo';
    o.parameters = buildUnnamed2597();
    o.placement = buildWorkflowTemplatePlacement();
    o.updateTime = 'foo';
    o.version = 42;
  }
  buildCounterWorkflowTemplate--;
  return o;
}

void checkWorkflowTemplate(api.WorkflowTemplate o) {
  buildCounterWorkflowTemplate++;
  if (buildCounterWorkflowTemplate < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed2595(o.jobs);
    checkUnnamed2596(o.labels);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed2597(o.parameters);
    checkWorkflowTemplatePlacement(o.placement);
    unittest.expect(o.updateTime, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals(42));
  }
  buildCounterWorkflowTemplate--;
}

core.int buildCounterWorkflowTemplatePlacement = 0;
api.WorkflowTemplatePlacement buildWorkflowTemplatePlacement() {
  var o = api.WorkflowTemplatePlacement();
  buildCounterWorkflowTemplatePlacement++;
  if (buildCounterWorkflowTemplatePlacement < 3) {
    o.clusterSelector = buildClusterSelector();
    o.managedCluster = buildManagedCluster();
  }
  buildCounterWorkflowTemplatePlacement--;
  return o;
}

void checkWorkflowTemplatePlacement(api.WorkflowTemplatePlacement o) {
  buildCounterWorkflowTemplatePlacement++;
  if (buildCounterWorkflowTemplatePlacement < 3) {
    checkClusterSelector(o.clusterSelector);
    checkManagedCluster(o.managedCluster);
  }
  buildCounterWorkflowTemplatePlacement--;
}

core.int buildCounterYarnApplication = 0;
api.YarnApplication buildYarnApplication() {
  var o = api.YarnApplication();
  buildCounterYarnApplication++;
  if (buildCounterYarnApplication < 3) {
    o.name = 'foo';
    o.progress = 42.0;
    o.state = 'foo';
    o.trackingUrl = 'foo';
  }
  buildCounterYarnApplication--;
  return o;
}

void checkYarnApplication(api.YarnApplication o) {
  buildCounterYarnApplication++;
  if (buildCounterYarnApplication < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.progress, unittest.equals(42.0));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.trackingUrl, unittest.equals('foo'));
  }
  buildCounterYarnApplication--;
}

void main() {
  unittest.group('obj-schema-AcceleratorConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildAcceleratorConfig();
      var od = api.AcceleratorConfig.fromJson(o.toJson());
      checkAcceleratorConfig(od);
    });
  });

  unittest.group('obj-schema-AutoscalingConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildAutoscalingConfig();
      var od = api.AutoscalingConfig.fromJson(o.toJson());
      checkAutoscalingConfig(od);
    });
  });

  unittest.group('obj-schema-AutoscalingPolicy', () {
    unittest.test('to-json--from-json', () {
      var o = buildAutoscalingPolicy();
      var od = api.AutoscalingPolicy.fromJson(o.toJson());
      checkAutoscalingPolicy(od);
    });
  });

  unittest.group('obj-schema-BasicAutoscalingAlgorithm', () {
    unittest.test('to-json--from-json', () {
      var o = buildBasicAutoscalingAlgorithm();
      var od = api.BasicAutoscalingAlgorithm.fromJson(o.toJson());
      checkBasicAutoscalingAlgorithm(od);
    });
  });

  unittest.group('obj-schema-BasicYarnAutoscalingConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildBasicYarnAutoscalingConfig();
      var od = api.BasicYarnAutoscalingConfig.fromJson(o.toJson());
      checkBasicYarnAutoscalingConfig(od);
    });
  });

  unittest.group('obj-schema-Binding', () {
    unittest.test('to-json--from-json', () {
      var o = buildBinding();
      var od = api.Binding.fromJson(o.toJson());
      checkBinding(od);
    });
  });

  unittest.group('obj-schema-CancelJobRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildCancelJobRequest();
      var od = api.CancelJobRequest.fromJson(o.toJson());
      checkCancelJobRequest(od);
    });
  });

  unittest.group('obj-schema-Cluster', () {
    unittest.test('to-json--from-json', () {
      var o = buildCluster();
      var od = api.Cluster.fromJson(o.toJson());
      checkCluster(od);
    });
  });

  unittest.group('obj-schema-ClusterConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildClusterConfig();
      var od = api.ClusterConfig.fromJson(o.toJson());
      checkClusterConfig(od);
    });
  });

  unittest.group('obj-schema-ClusterMetrics', () {
    unittest.test('to-json--from-json', () {
      var o = buildClusterMetrics();
      var od = api.ClusterMetrics.fromJson(o.toJson());
      checkClusterMetrics(od);
    });
  });

  unittest.group('obj-schema-ClusterOperation', () {
    unittest.test('to-json--from-json', () {
      var o = buildClusterOperation();
      var od = api.ClusterOperation.fromJson(o.toJson());
      checkClusterOperation(od);
    });
  });

  unittest.group('obj-schema-ClusterOperationMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildClusterOperationMetadata();
      var od = api.ClusterOperationMetadata.fromJson(o.toJson());
      checkClusterOperationMetadata(od);
    });
  });

  unittest.group('obj-schema-ClusterOperationStatus', () {
    unittest.test('to-json--from-json', () {
      var o = buildClusterOperationStatus();
      var od = api.ClusterOperationStatus.fromJson(o.toJson());
      checkClusterOperationStatus(od);
    });
  });

  unittest.group('obj-schema-ClusterSelector', () {
    unittest.test('to-json--from-json', () {
      var o = buildClusterSelector();
      var od = api.ClusterSelector.fromJson(o.toJson());
      checkClusterSelector(od);
    });
  });

  unittest.group('obj-schema-ClusterStatus', () {
    unittest.test('to-json--from-json', () {
      var o = buildClusterStatus();
      var od = api.ClusterStatus.fromJson(o.toJson());
      checkClusterStatus(od);
    });
  });

  unittest.group('obj-schema-DiagnoseClusterRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildDiagnoseClusterRequest();
      var od = api.DiagnoseClusterRequest.fromJson(o.toJson());
      checkDiagnoseClusterRequest(od);
    });
  });

  unittest.group('obj-schema-DiagnoseClusterResults', () {
    unittest.test('to-json--from-json', () {
      var o = buildDiagnoseClusterResults();
      var od = api.DiagnoseClusterResults.fromJson(o.toJson());
      checkDiagnoseClusterResults(od);
    });
  });

  unittest.group('obj-schema-DiskConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildDiskConfig();
      var od = api.DiskConfig.fromJson(o.toJson());
      checkDiskConfig(od);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () {
      var o = buildEmpty();
      var od = api.Empty.fromJson(o.toJson());
      checkEmpty(od);
    });
  });

  unittest.group('obj-schema-EncryptionConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildEncryptionConfig();
      var od = api.EncryptionConfig.fromJson(o.toJson());
      checkEncryptionConfig(od);
    });
  });

  unittest.group('obj-schema-EndpointConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildEndpointConfig();
      var od = api.EndpointConfig.fromJson(o.toJson());
      checkEndpointConfig(od);
    });
  });

  unittest.group('obj-schema-Expr', () {
    unittest.test('to-json--from-json', () {
      var o = buildExpr();
      var od = api.Expr.fromJson(o.toJson());
      checkExpr(od);
    });
  });

  unittest.group('obj-schema-GceClusterConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildGceClusterConfig();
      var od = api.GceClusterConfig.fromJson(o.toJson());
      checkGceClusterConfig(od);
    });
  });

  unittest.group('obj-schema-GetIamPolicyRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildGetIamPolicyRequest();
      var od = api.GetIamPolicyRequest.fromJson(o.toJson());
      checkGetIamPolicyRequest(od);
    });
  });

  unittest.group('obj-schema-GetPolicyOptions', () {
    unittest.test('to-json--from-json', () {
      var o = buildGetPolicyOptions();
      var od = api.GetPolicyOptions.fromJson(o.toJson());
      checkGetPolicyOptions(od);
    });
  });

  unittest.group('obj-schema-HadoopJob', () {
    unittest.test('to-json--from-json', () {
      var o = buildHadoopJob();
      var od = api.HadoopJob.fromJson(o.toJson());
      checkHadoopJob(od);
    });
  });

  unittest.group('obj-schema-HiveJob', () {
    unittest.test('to-json--from-json', () {
      var o = buildHiveJob();
      var od = api.HiveJob.fromJson(o.toJson());
      checkHiveJob(od);
    });
  });

  unittest.group('obj-schema-InstanceGroupAutoscalingPolicyConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildInstanceGroupAutoscalingPolicyConfig();
      var od = api.InstanceGroupAutoscalingPolicyConfig.fromJson(o.toJson());
      checkInstanceGroupAutoscalingPolicyConfig(od);
    });
  });

  unittest.group('obj-schema-InstanceGroupConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildInstanceGroupConfig();
      var od = api.InstanceGroupConfig.fromJson(o.toJson());
      checkInstanceGroupConfig(od);
    });
  });

  unittest.group('obj-schema-InstanceReference', () {
    unittest.test('to-json--from-json', () {
      var o = buildInstanceReference();
      var od = api.InstanceReference.fromJson(o.toJson());
      checkInstanceReference(od);
    });
  });

  unittest.group('obj-schema-InstantiateWorkflowTemplateRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildInstantiateWorkflowTemplateRequest();
      var od = api.InstantiateWorkflowTemplateRequest.fromJson(o.toJson());
      checkInstantiateWorkflowTemplateRequest(od);
    });
  });

  unittest.group('obj-schema-Job', () {
    unittest.test('to-json--from-json', () {
      var o = buildJob();
      var od = api.Job.fromJson(o.toJson());
      checkJob(od);
    });
  });

  unittest.group('obj-schema-JobMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildJobMetadata();
      var od = api.JobMetadata.fromJson(o.toJson());
      checkJobMetadata(od);
    });
  });

  unittest.group('obj-schema-JobPlacement', () {
    unittest.test('to-json--from-json', () {
      var o = buildJobPlacement();
      var od = api.JobPlacement.fromJson(o.toJson());
      checkJobPlacement(od);
    });
  });

  unittest.group('obj-schema-JobReference', () {
    unittest.test('to-json--from-json', () {
      var o = buildJobReference();
      var od = api.JobReference.fromJson(o.toJson());
      checkJobReference(od);
    });
  });

  unittest.group('obj-schema-JobScheduling', () {
    unittest.test('to-json--from-json', () {
      var o = buildJobScheduling();
      var od = api.JobScheduling.fromJson(o.toJson());
      checkJobScheduling(od);
    });
  });

  unittest.group('obj-schema-JobStatus', () {
    unittest.test('to-json--from-json', () {
      var o = buildJobStatus();
      var od = api.JobStatus.fromJson(o.toJson());
      checkJobStatus(od);
    });
  });

  unittest.group('obj-schema-KerberosConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildKerberosConfig();
      var od = api.KerberosConfig.fromJson(o.toJson());
      checkKerberosConfig(od);
    });
  });

  unittest.group('obj-schema-LifecycleConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildLifecycleConfig();
      var od = api.LifecycleConfig.fromJson(o.toJson());
      checkLifecycleConfig(od);
    });
  });

  unittest.group('obj-schema-ListAutoscalingPoliciesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListAutoscalingPoliciesResponse();
      var od = api.ListAutoscalingPoliciesResponse.fromJson(o.toJson());
      checkListAutoscalingPoliciesResponse(od);
    });
  });

  unittest.group('obj-schema-ListClustersResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListClustersResponse();
      var od = api.ListClustersResponse.fromJson(o.toJson());
      checkListClustersResponse(od);
    });
  });

  unittest.group('obj-schema-ListJobsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListJobsResponse();
      var od = api.ListJobsResponse.fromJson(o.toJson());
      checkListJobsResponse(od);
    });
  });

  unittest.group('obj-schema-ListOperationsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListOperationsResponse();
      var od = api.ListOperationsResponse.fromJson(o.toJson());
      checkListOperationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListWorkflowTemplatesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListWorkflowTemplatesResponse();
      var od = api.ListWorkflowTemplatesResponse.fromJson(o.toJson());
      checkListWorkflowTemplatesResponse(od);
    });
  });

  unittest.group('obj-schema-LoggingConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildLoggingConfig();
      var od = api.LoggingConfig.fromJson(o.toJson());
      checkLoggingConfig(od);
    });
  });

  unittest.group('obj-schema-ManagedCluster', () {
    unittest.test('to-json--from-json', () {
      var o = buildManagedCluster();
      var od = api.ManagedCluster.fromJson(o.toJson());
      checkManagedCluster(od);
    });
  });

  unittest.group('obj-schema-ManagedGroupConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildManagedGroupConfig();
      var od = api.ManagedGroupConfig.fromJson(o.toJson());
      checkManagedGroupConfig(od);
    });
  });

  unittest.group('obj-schema-NodeGroupAffinity', () {
    unittest.test('to-json--from-json', () {
      var o = buildNodeGroupAffinity();
      var od = api.NodeGroupAffinity.fromJson(o.toJson());
      checkNodeGroupAffinity(od);
    });
  });

  unittest.group('obj-schema-NodeInitializationAction', () {
    unittest.test('to-json--from-json', () {
      var o = buildNodeInitializationAction();
      var od = api.NodeInitializationAction.fromJson(o.toJson());
      checkNodeInitializationAction(od);
    });
  });

  unittest.group('obj-schema-Operation', () {
    unittest.test('to-json--from-json', () {
      var o = buildOperation();
      var od = api.Operation.fromJson(o.toJson());
      checkOperation(od);
    });
  });

  unittest.group('obj-schema-OrderedJob', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderedJob();
      var od = api.OrderedJob.fromJson(o.toJson());
      checkOrderedJob(od);
    });
  });

  unittest.group('obj-schema-ParameterValidation', () {
    unittest.test('to-json--from-json', () {
      var o = buildParameterValidation();
      var od = api.ParameterValidation.fromJson(o.toJson());
      checkParameterValidation(od);
    });
  });

  unittest.group('obj-schema-PigJob', () {
    unittest.test('to-json--from-json', () {
      var o = buildPigJob();
      var od = api.PigJob.fromJson(o.toJson());
      checkPigJob(od);
    });
  });

  unittest.group('obj-schema-Policy', () {
    unittest.test('to-json--from-json', () {
      var o = buildPolicy();
      var od = api.Policy.fromJson(o.toJson());
      checkPolicy(od);
    });
  });

  unittest.group('obj-schema-PrestoJob', () {
    unittest.test('to-json--from-json', () {
      var o = buildPrestoJob();
      var od = api.PrestoJob.fromJson(o.toJson());
      checkPrestoJob(od);
    });
  });

  unittest.group('obj-schema-PySparkJob', () {
    unittest.test('to-json--from-json', () {
      var o = buildPySparkJob();
      var od = api.PySparkJob.fromJson(o.toJson());
      checkPySparkJob(od);
    });
  });

  unittest.group('obj-schema-QueryList', () {
    unittest.test('to-json--from-json', () {
      var o = buildQueryList();
      var od = api.QueryList.fromJson(o.toJson());
      checkQueryList(od);
    });
  });

  unittest.group('obj-schema-RegexValidation', () {
    unittest.test('to-json--from-json', () {
      var o = buildRegexValidation();
      var od = api.RegexValidation.fromJson(o.toJson());
      checkRegexValidation(od);
    });
  });

  unittest.group('obj-schema-ReservationAffinity', () {
    unittest.test('to-json--from-json', () {
      var o = buildReservationAffinity();
      var od = api.ReservationAffinity.fromJson(o.toJson());
      checkReservationAffinity(od);
    });
  });

  unittest.group('obj-schema-SecurityConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildSecurityConfig();
      var od = api.SecurityConfig.fromJson(o.toJson());
      checkSecurityConfig(od);
    });
  });

  unittest.group('obj-schema-SetIamPolicyRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildSetIamPolicyRequest();
      var od = api.SetIamPolicyRequest.fromJson(o.toJson());
      checkSetIamPolicyRequest(od);
    });
  });

  unittest.group('obj-schema-SoftwareConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildSoftwareConfig();
      var od = api.SoftwareConfig.fromJson(o.toJson());
      checkSoftwareConfig(od);
    });
  });

  unittest.group('obj-schema-SparkJob', () {
    unittest.test('to-json--from-json', () {
      var o = buildSparkJob();
      var od = api.SparkJob.fromJson(o.toJson());
      checkSparkJob(od);
    });
  });

  unittest.group('obj-schema-SparkRJob', () {
    unittest.test('to-json--from-json', () {
      var o = buildSparkRJob();
      var od = api.SparkRJob.fromJson(o.toJson());
      checkSparkRJob(od);
    });
  });

  unittest.group('obj-schema-SparkSqlJob', () {
    unittest.test('to-json--from-json', () {
      var o = buildSparkSqlJob();
      var od = api.SparkSqlJob.fromJson(o.toJson());
      checkSparkSqlJob(od);
    });
  });

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () {
      var o = buildStatus();
      var od = api.Status.fromJson(o.toJson());
      checkStatus(od);
    });
  });

  unittest.group('obj-schema-SubmitJobRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildSubmitJobRequest();
      var od = api.SubmitJobRequest.fromJson(o.toJson());
      checkSubmitJobRequest(od);
    });
  });

  unittest.group('obj-schema-TemplateParameter', () {
    unittest.test('to-json--from-json', () {
      var o = buildTemplateParameter();
      var od = api.TemplateParameter.fromJson(o.toJson());
      checkTemplateParameter(od);
    });
  });

  unittest.group('obj-schema-TestIamPermissionsRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildTestIamPermissionsRequest();
      var od = api.TestIamPermissionsRequest.fromJson(o.toJson());
      checkTestIamPermissionsRequest(od);
    });
  });

  unittest.group('obj-schema-TestIamPermissionsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildTestIamPermissionsResponse();
      var od = api.TestIamPermissionsResponse.fromJson(o.toJson());
      checkTestIamPermissionsResponse(od);
    });
  });

  unittest.group('obj-schema-ValueValidation', () {
    unittest.test('to-json--from-json', () {
      var o = buildValueValidation();
      var od = api.ValueValidation.fromJson(o.toJson());
      checkValueValidation(od);
    });
  });

  unittest.group('obj-schema-WorkflowGraph', () {
    unittest.test('to-json--from-json', () {
      var o = buildWorkflowGraph();
      var od = api.WorkflowGraph.fromJson(o.toJson());
      checkWorkflowGraph(od);
    });
  });

  unittest.group('obj-schema-WorkflowMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildWorkflowMetadata();
      var od = api.WorkflowMetadata.fromJson(o.toJson());
      checkWorkflowMetadata(od);
    });
  });

  unittest.group('obj-schema-WorkflowNode', () {
    unittest.test('to-json--from-json', () {
      var o = buildWorkflowNode();
      var od = api.WorkflowNode.fromJson(o.toJson());
      checkWorkflowNode(od);
    });
  });

  unittest.group('obj-schema-WorkflowTemplate', () {
    unittest.test('to-json--from-json', () {
      var o = buildWorkflowTemplate();
      var od = api.WorkflowTemplate.fromJson(o.toJson());
      checkWorkflowTemplate(od);
    });
  });

  unittest.group('obj-schema-WorkflowTemplatePlacement', () {
    unittest.test('to-json--from-json', () {
      var o = buildWorkflowTemplatePlacement();
      var od = api.WorkflowTemplatePlacement.fromJson(o.toJson());
      checkWorkflowTemplatePlacement(od);
    });
  });

  unittest.group('obj-schema-YarnApplication', () {
    unittest.test('to-json--from-json', () {
      var o = buildYarnApplication();
      var od = api.YarnApplication.fromJson(o.toJson());
      checkYarnApplication(od);
    });
  });

  unittest.group('resource-ProjectsLocationsAutoscalingPoliciesResourceApi',
      () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsAutoscalingPoliciesResourceApi res =
          api.DataprocApi(mock).projects.locations.autoscalingPolicies;
      var arg_request = buildAutoscalingPolicy();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.AutoscalingPolicy.fromJson(json);
        checkAutoscalingPolicy(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildAutoscalingPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAutoscalingPolicy(response);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsAutoscalingPoliciesResourceApi res =
          api.DataprocApi(mock).projects.locations.autoscalingPolicies;
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
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkEmpty(response);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsAutoscalingPoliciesResourceApi res =
          api.DataprocApi(mock).projects.locations.autoscalingPolicies;
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
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildAutoscalingPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAutoscalingPolicy(response);
      })));
    });

    unittest.test('method--getIamPolicy', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsAutoscalingPoliciesResourceApi res =
          api.DataprocApi(mock).projects.locations.autoscalingPolicies;
      var arg_request = buildGetIamPolicyRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GetIamPolicyRequest.fromJson(json);
        checkGetIamPolicyRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
          .getIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsAutoscalingPoliciesResourceApi res =
          api.DataprocApi(mock).projects.locations.autoscalingPolicies;
      var arg_parent = 'foo';
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
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListAutoscalingPoliciesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListAutoscalingPoliciesResponse(response);
      })));
    });

    unittest.test('method--setIamPolicy', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsAutoscalingPoliciesResourceApi res =
          api.DataprocApi(mock).projects.locations.autoscalingPolicies;
      var arg_request = buildSetIamPolicyRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SetIamPolicyRequest.fromJson(json);
        checkSetIamPolicyRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkPolicy(response);
      })));
    });

    unittest.test('method--testIamPermissions', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsAutoscalingPoliciesResourceApi res =
          api.DataprocApi(mock).projects.locations.autoscalingPolicies;
      var arg_request = buildTestIamPermissionsRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.TestIamPermissionsRequest.fromJson(json);
        checkTestIamPermissionsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkTestIamPermissionsResponse(response);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsAutoscalingPoliciesResourceApi res =
          api.DataprocApi(mock).projects.locations.autoscalingPolicies;
      var arg_request = buildAutoscalingPolicy();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.AutoscalingPolicy.fromJson(json);
        checkAutoscalingPolicy(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildAutoscalingPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAutoscalingPolicy(response);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsWorkflowTemplatesResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsWorkflowTemplatesResourceApi res =
          api.DataprocApi(mock).projects.locations.workflowTemplates;
      var arg_request = buildWorkflowTemplate();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.WorkflowTemplate.fromJson(json);
        checkWorkflowTemplate(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildWorkflowTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkWorkflowTemplate(response);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsWorkflowTemplatesResourceApi res =
          api.DataprocApi(mock).projects.locations.workflowTemplates;
      var arg_name = 'foo';
      var arg_version = 42;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(core.int.parse(queryMap["version"].first),
            unittest.equals(arg_version));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, version: arg_version, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsWorkflowTemplatesResourceApi res =
          api.DataprocApi(mock).projects.locations.workflowTemplates;
      var arg_name = 'foo';
      var arg_version = 42;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(core.int.parse(queryMap["version"].first),
            unittest.equals(arg_version));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildWorkflowTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, version: arg_version, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkWorkflowTemplate(response);
      })));
    });

    unittest.test('method--getIamPolicy', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsWorkflowTemplatesResourceApi res =
          api.DataprocApi(mock).projects.locations.workflowTemplates;
      var arg_request = buildGetIamPolicyRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GetIamPolicyRequest.fromJson(json);
        checkGetIamPolicyRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
          .getIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test('method--instantiate', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsWorkflowTemplatesResourceApi res =
          api.DataprocApi(mock).projects.locations.workflowTemplates;
      var arg_request = buildInstantiateWorkflowTemplateRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.InstantiateWorkflowTemplateRequest.fromJson(json);
        checkInstantiateWorkflowTemplateRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
          .instantiate(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test('method--instantiateInline', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsWorkflowTemplatesResourceApi res =
          api.DataprocApi(mock).projects.locations.workflowTemplates;
      var arg_request = buildWorkflowTemplate();
      var arg_parent = 'foo';
      var arg_requestId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.WorkflowTemplate.fromJson(json);
        checkWorkflowTemplate(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .instantiateInline(arg_request, arg_parent,
              requestId: arg_requestId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsWorkflowTemplatesResourceApi res =
          api.DataprocApi(mock).projects.locations.workflowTemplates;
      var arg_parent = 'foo';
      var arg_pageToken = 'foo';
      var arg_pageSize = 42;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListWorkflowTemplatesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListWorkflowTemplatesResponse(response);
      })));
    });

    unittest.test('method--setIamPolicy', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsWorkflowTemplatesResourceApi res =
          api.DataprocApi(mock).projects.locations.workflowTemplates;
      var arg_request = buildSetIamPolicyRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SetIamPolicyRequest.fromJson(json);
        checkSetIamPolicyRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkPolicy(response);
      })));
    });

    unittest.test('method--testIamPermissions', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsWorkflowTemplatesResourceApi res =
          api.DataprocApi(mock).projects.locations.workflowTemplates;
      var arg_request = buildTestIamPermissionsRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.TestIamPermissionsRequest.fromJson(json);
        checkTestIamPermissionsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkTestIamPermissionsResponse(response);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsWorkflowTemplatesResourceApi res =
          api.DataprocApi(mock).projects.locations.workflowTemplates;
      var arg_request = buildWorkflowTemplate();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.WorkflowTemplate.fromJson(json);
        checkWorkflowTemplate(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildWorkflowTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkWorkflowTemplate(response);
      })));
    });
  });

  unittest.group('resource-ProjectsRegionsAutoscalingPoliciesResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      api.ProjectsRegionsAutoscalingPoliciesResourceApi res =
          api.DataprocApi(mock).projects.regions.autoscalingPolicies;
      var arg_request = buildAutoscalingPolicy();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.AutoscalingPolicy.fromJson(json);
        checkAutoscalingPolicy(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildAutoscalingPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAutoscalingPolicy(response);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      api.ProjectsRegionsAutoscalingPoliciesResourceApi res =
          api.DataprocApi(mock).projects.regions.autoscalingPolicies;
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
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkEmpty(response);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.ProjectsRegionsAutoscalingPoliciesResourceApi res =
          api.DataprocApi(mock).projects.regions.autoscalingPolicies;
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
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildAutoscalingPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAutoscalingPolicy(response);
      })));
    });

    unittest.test('method--getIamPolicy', () {
      var mock = HttpServerMock();
      api.ProjectsRegionsAutoscalingPoliciesResourceApi res =
          api.DataprocApi(mock).projects.regions.autoscalingPolicies;
      var arg_request = buildGetIamPolicyRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GetIamPolicyRequest.fromJson(json);
        checkGetIamPolicyRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
          .getIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.ProjectsRegionsAutoscalingPoliciesResourceApi res =
          api.DataprocApi(mock).projects.regions.autoscalingPolicies;
      var arg_parent = 'foo';
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
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListAutoscalingPoliciesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListAutoscalingPoliciesResponse(response);
      })));
    });

    unittest.test('method--setIamPolicy', () {
      var mock = HttpServerMock();
      api.ProjectsRegionsAutoscalingPoliciesResourceApi res =
          api.DataprocApi(mock).projects.regions.autoscalingPolicies;
      var arg_request = buildSetIamPolicyRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SetIamPolicyRequest.fromJson(json);
        checkSetIamPolicyRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkPolicy(response);
      })));
    });

    unittest.test('method--testIamPermissions', () {
      var mock = HttpServerMock();
      api.ProjectsRegionsAutoscalingPoliciesResourceApi res =
          api.DataprocApi(mock).projects.regions.autoscalingPolicies;
      var arg_request = buildTestIamPermissionsRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.TestIamPermissionsRequest.fromJson(json);
        checkTestIamPermissionsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkTestIamPermissionsResponse(response);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      api.ProjectsRegionsAutoscalingPoliciesResourceApi res =
          api.DataprocApi(mock).projects.regions.autoscalingPolicies;
      var arg_request = buildAutoscalingPolicy();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.AutoscalingPolicy.fromJson(json);
        checkAutoscalingPolicy(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildAutoscalingPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAutoscalingPolicy(response);
      })));
    });
  });

  unittest.group('resource-ProjectsRegionsClustersResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      api.ProjectsRegionsClustersResourceApi res =
          api.DataprocApi(mock).projects.regions.clusters;
      var arg_request = buildCluster();
      var arg_projectId = 'foo';
      var arg_region = 'foo';
      var arg_requestId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Cluster.fromJson(json);
        checkCluster(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf('/regions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/regions/"));
        pathOffset += 9;
        index = path.indexOf('/clusters', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_region'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/clusters"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_projectId, arg_region,
              requestId: arg_requestId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      api.ProjectsRegionsClustersResourceApi res =
          api.DataprocApi(mock).projects.regions.clusters;
      var arg_projectId = 'foo';
      var arg_region = 'foo';
      var arg_clusterName = 'foo';
      var arg_requestId = 'foo';
      var arg_clusterUuid = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf('/regions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/regions/"));
        pathOffset += 9;
        index = path.indexOf('/clusters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_region'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/clusters/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_clusterName'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
            queryMap["clusterUuid"].first, unittest.equals(arg_clusterUuid));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_projectId, arg_region, arg_clusterName,
              requestId: arg_requestId,
              clusterUuid: arg_clusterUuid,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test('method--diagnose', () {
      var mock = HttpServerMock();
      api.ProjectsRegionsClustersResourceApi res =
          api.DataprocApi(mock).projects.regions.clusters;
      var arg_request = buildDiagnoseClusterRequest();
      var arg_projectId = 'foo';
      var arg_region = 'foo';
      var arg_clusterName = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.DiagnoseClusterRequest.fromJson(json);
        checkDiagnoseClusterRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf('/regions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/regions/"));
        pathOffset += 9;
        index = path.indexOf('/clusters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_region'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/clusters/"));
        pathOffset += 10;
        index = path.indexOf(':diagnose', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_clusterName'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals(":diagnose"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
          .diagnose(arg_request, arg_projectId, arg_region, arg_clusterName,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.ProjectsRegionsClustersResourceApi res =
          api.DataprocApi(mock).projects.regions.clusters;
      var arg_projectId = 'foo';
      var arg_region = 'foo';
      var arg_clusterName = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf('/regions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/regions/"));
        pathOffset += 9;
        index = path.indexOf('/clusters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_region'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/clusters/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_clusterName'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildCluster());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_projectId, arg_region, arg_clusterName, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCluster(response);
      })));
    });

    unittest.test('method--getIamPolicy', () {
      var mock = HttpServerMock();
      api.ProjectsRegionsClustersResourceApi res =
          api.DataprocApi(mock).projects.regions.clusters;
      var arg_request = buildGetIamPolicyRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GetIamPolicyRequest.fromJson(json);
        checkGetIamPolicyRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
          .getIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.ProjectsRegionsClustersResourceApi res =
          api.DataprocApi(mock).projects.regions.clusters;
      var arg_projectId = 'foo';
      var arg_region = 'foo';
      var arg_pageToken = 'foo';
      var arg_pageSize = 42;
      var arg_filter = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf('/regions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/regions/"));
        pathOffset += 9;
        index = path.indexOf('/clusters', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_region'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/clusters"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListClustersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_projectId, arg_region,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              filter: arg_filter,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListClustersResponse(response);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      api.ProjectsRegionsClustersResourceApi res =
          api.DataprocApi(mock).projects.regions.clusters;
      var arg_request = buildCluster();
      var arg_projectId = 'foo';
      var arg_region = 'foo';
      var arg_clusterName = 'foo';
      var arg_requestId = 'foo';
      var arg_gracefulDecommissionTimeout = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Cluster.fromJson(json);
        checkCluster(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf('/regions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/regions/"));
        pathOffset += 9;
        index = path.indexOf('/clusters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_region'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/clusters/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_clusterName'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        unittest.expect(queryMap["gracefulDecommissionTimeout"].first,
            unittest.equals(arg_gracefulDecommissionTimeout));
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
          .patch(arg_request, arg_projectId, arg_region, arg_clusterName,
              requestId: arg_requestId,
              gracefulDecommissionTimeout: arg_gracefulDecommissionTimeout,
              updateMask: arg_updateMask,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test('method--setIamPolicy', () {
      var mock = HttpServerMock();
      api.ProjectsRegionsClustersResourceApi res =
          api.DataprocApi(mock).projects.regions.clusters;
      var arg_request = buildSetIamPolicyRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SetIamPolicyRequest.fromJson(json);
        checkSetIamPolicyRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkPolicy(response);
      })));
    });

    unittest.test('method--testIamPermissions', () {
      var mock = HttpServerMock();
      api.ProjectsRegionsClustersResourceApi res =
          api.DataprocApi(mock).projects.regions.clusters;
      var arg_request = buildTestIamPermissionsRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.TestIamPermissionsRequest.fromJson(json);
        checkTestIamPermissionsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkTestIamPermissionsResponse(response);
      })));
    });
  });

  unittest.group('resource-ProjectsRegionsJobsResourceApi', () {
    unittest.test('method--cancel', () {
      var mock = HttpServerMock();
      api.ProjectsRegionsJobsResourceApi res =
          api.DataprocApi(mock).projects.regions.jobs;
      var arg_request = buildCancelJobRequest();
      var arg_projectId = 'foo';
      var arg_region = 'foo';
      var arg_jobId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CancelJobRequest.fromJson(json);
        checkCancelJobRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf('/regions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/regions/"));
        pathOffset += 9;
        index = path.indexOf('/jobs/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_region'));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/jobs/"));
        pathOffset += 6;
        index = path.indexOf(':cancel', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_jobId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals(":cancel"));
        pathOffset += 7;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .cancel(arg_request, arg_projectId, arg_region, arg_jobId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkJob(response);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      api.ProjectsRegionsJobsResourceApi res =
          api.DataprocApi(mock).projects.regions.jobs;
      var arg_projectId = 'foo';
      var arg_region = 'foo';
      var arg_jobId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf('/regions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/regions/"));
        pathOffset += 9;
        index = path.indexOf('/jobs/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_region'));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/jobs/"));
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_jobId'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
          .delete(arg_projectId, arg_region, arg_jobId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.ProjectsRegionsJobsResourceApi res =
          api.DataprocApi(mock).projects.regions.jobs;
      var arg_projectId = 'foo';
      var arg_region = 'foo';
      var arg_jobId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf('/regions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/regions/"));
        pathOffset += 9;
        index = path.indexOf('/jobs/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_region'));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/jobs/"));
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_jobId'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_projectId, arg_region, arg_jobId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkJob(response);
      })));
    });

    unittest.test('method--getIamPolicy', () {
      var mock = HttpServerMock();
      api.ProjectsRegionsJobsResourceApi res =
          api.DataprocApi(mock).projects.regions.jobs;
      var arg_request = buildGetIamPolicyRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GetIamPolicyRequest.fromJson(json);
        checkGetIamPolicyRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
          .getIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.ProjectsRegionsJobsResourceApi res =
          api.DataprocApi(mock).projects.regions.jobs;
      var arg_projectId = 'foo';
      var arg_region = 'foo';
      var arg_pageToken = 'foo';
      var arg_clusterName = 'foo';
      var arg_jobStateMatcher = 'foo';
      var arg_filter = 'foo';
      var arg_pageSize = 42;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf('/regions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/regions/"));
        pathOffset += 9;
        index = path.indexOf('/jobs', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_region'));
        unittest.expect(path.substring(pathOffset, pathOffset + 5),
            unittest.equals("/jobs"));
        pathOffset += 5;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["clusterName"].first, unittest.equals(arg_clusterName));
        unittest.expect(queryMap["jobStateMatcher"].first,
            unittest.equals(arg_jobStateMatcher));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListJobsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_projectId, arg_region,
              pageToken: arg_pageToken,
              clusterName: arg_clusterName,
              jobStateMatcher: arg_jobStateMatcher,
              filter: arg_filter,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListJobsResponse(response);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      api.ProjectsRegionsJobsResourceApi res =
          api.DataprocApi(mock).projects.regions.jobs;
      var arg_request = buildJob();
      var arg_projectId = 'foo';
      var arg_region = 'foo';
      var arg_jobId = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Job.fromJson(json);
        checkJob(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf('/regions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/regions/"));
        pathOffset += 9;
        index = path.indexOf('/jobs/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_region'));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/jobs/"));
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_jobId'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_projectId, arg_region, arg_jobId,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkJob(response);
      })));
    });

    unittest.test('method--setIamPolicy', () {
      var mock = HttpServerMock();
      api.ProjectsRegionsJobsResourceApi res =
          api.DataprocApi(mock).projects.regions.jobs;
      var arg_request = buildSetIamPolicyRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SetIamPolicyRequest.fromJson(json);
        checkSetIamPolicyRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkPolicy(response);
      })));
    });

    unittest.test('method--submit', () {
      var mock = HttpServerMock();
      api.ProjectsRegionsJobsResourceApi res =
          api.DataprocApi(mock).projects.regions.jobs;
      var arg_request = buildSubmitJobRequest();
      var arg_projectId = 'foo';
      var arg_region = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SubmitJobRequest.fromJson(json);
        checkSubmitJobRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf('/regions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/regions/"));
        pathOffset += 9;
        index = path.indexOf('/jobs:submit', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_region'));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/jobs:submit"));
        pathOffset += 12;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .submit(arg_request, arg_projectId, arg_region, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkJob(response);
      })));
    });

    unittest.test('method--submitAsOperation', () {
      var mock = HttpServerMock();
      api.ProjectsRegionsJobsResourceApi res =
          api.DataprocApi(mock).projects.regions.jobs;
      var arg_request = buildSubmitJobRequest();
      var arg_projectId = 'foo';
      var arg_region = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SubmitJobRequest.fromJson(json);
        checkSubmitJobRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf('/regions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/regions/"));
        pathOffset += 9;
        index = path.indexOf('/jobs:submitAsOperation', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_region'));
        unittest.expect(path.substring(pathOffset, pathOffset + 23),
            unittest.equals("/jobs:submitAsOperation"));
        pathOffset += 23;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
          .submitAsOperation(arg_request, arg_projectId, arg_region,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test('method--testIamPermissions', () {
      var mock = HttpServerMock();
      api.ProjectsRegionsJobsResourceApi res =
          api.DataprocApi(mock).projects.regions.jobs;
      var arg_request = buildTestIamPermissionsRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.TestIamPermissionsRequest.fromJson(json);
        checkTestIamPermissionsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkTestIamPermissionsResponse(response);
      })));
    });
  });

  unittest.group('resource-ProjectsRegionsOperationsResourceApi', () {
    unittest.test('method--cancel', () {
      var mock = HttpServerMock();
      api.ProjectsRegionsOperationsResourceApi res =
          api.DataprocApi(mock).projects.regions.operations;
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
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
          .cancel(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      api.ProjectsRegionsOperationsResourceApi res =
          api.DataprocApi(mock).projects.regions.operations;
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
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkEmpty(response);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.ProjectsRegionsOperationsResourceApi res =
          api.DataprocApi(mock).projects.regions.operations;
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
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkOperation(response);
      })));
    });

    unittest.test('method--getIamPolicy', () {
      var mock = HttpServerMock();
      api.ProjectsRegionsOperationsResourceApi res =
          api.DataprocApi(mock).projects.regions.operations;
      var arg_request = buildGetIamPolicyRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GetIamPolicyRequest.fromJson(json);
        checkGetIamPolicyRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
          .getIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.ProjectsRegionsOperationsResourceApi res =
          api.DataprocApi(mock).projects.regions.operations;
      var arg_name = 'foo';
      var arg_pageToken = 'foo';
      var arg_pageSize = 42;
      var arg_filter = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListOperationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              filter: arg_filter,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListOperationsResponse(response);
      })));
    });

    unittest.test('method--setIamPolicy', () {
      var mock = HttpServerMock();
      api.ProjectsRegionsOperationsResourceApi res =
          api.DataprocApi(mock).projects.regions.operations;
      var arg_request = buildSetIamPolicyRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SetIamPolicyRequest.fromJson(json);
        checkSetIamPolicyRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkPolicy(response);
      })));
    });

    unittest.test('method--testIamPermissions', () {
      var mock = HttpServerMock();
      api.ProjectsRegionsOperationsResourceApi res =
          api.DataprocApi(mock).projects.regions.operations;
      var arg_request = buildTestIamPermissionsRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.TestIamPermissionsRequest.fromJson(json);
        checkTestIamPermissionsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkTestIamPermissionsResponse(response);
      })));
    });
  });

  unittest.group('resource-ProjectsRegionsWorkflowTemplatesResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      api.ProjectsRegionsWorkflowTemplatesResourceApi res =
          api.DataprocApi(mock).projects.regions.workflowTemplates;
      var arg_request = buildWorkflowTemplate();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.WorkflowTemplate.fromJson(json);
        checkWorkflowTemplate(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildWorkflowTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkWorkflowTemplate(response);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      api.ProjectsRegionsWorkflowTemplatesResourceApi res =
          api.DataprocApi(mock).projects.regions.workflowTemplates;
      var arg_name = 'foo';
      var arg_version = 42;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(core.int.parse(queryMap["version"].first),
            unittest.equals(arg_version));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, version: arg_version, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.ProjectsRegionsWorkflowTemplatesResourceApi res =
          api.DataprocApi(mock).projects.regions.workflowTemplates;
      var arg_name = 'foo';
      var arg_version = 42;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(core.int.parse(queryMap["version"].first),
            unittest.equals(arg_version));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildWorkflowTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, version: arg_version, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkWorkflowTemplate(response);
      })));
    });

    unittest.test('method--getIamPolicy', () {
      var mock = HttpServerMock();
      api.ProjectsRegionsWorkflowTemplatesResourceApi res =
          api.DataprocApi(mock).projects.regions.workflowTemplates;
      var arg_request = buildGetIamPolicyRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GetIamPolicyRequest.fromJson(json);
        checkGetIamPolicyRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
          .getIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test('method--instantiate', () {
      var mock = HttpServerMock();
      api.ProjectsRegionsWorkflowTemplatesResourceApi res =
          api.DataprocApi(mock).projects.regions.workflowTemplates;
      var arg_request = buildInstantiateWorkflowTemplateRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.InstantiateWorkflowTemplateRequest.fromJson(json);
        checkInstantiateWorkflowTemplateRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
          .instantiate(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test('method--instantiateInline', () {
      var mock = HttpServerMock();
      api.ProjectsRegionsWorkflowTemplatesResourceApi res =
          api.DataprocApi(mock).projects.regions.workflowTemplates;
      var arg_request = buildWorkflowTemplate();
      var arg_parent = 'foo';
      var arg_requestId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.WorkflowTemplate.fromJson(json);
        checkWorkflowTemplate(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .instantiateInline(arg_request, arg_parent,
              requestId: arg_requestId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.ProjectsRegionsWorkflowTemplatesResourceApi res =
          api.DataprocApi(mock).projects.regions.workflowTemplates;
      var arg_parent = 'foo';
      var arg_pageToken = 'foo';
      var arg_pageSize = 42;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListWorkflowTemplatesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListWorkflowTemplatesResponse(response);
      })));
    });

    unittest.test('method--setIamPolicy', () {
      var mock = HttpServerMock();
      api.ProjectsRegionsWorkflowTemplatesResourceApi res =
          api.DataprocApi(mock).projects.regions.workflowTemplates;
      var arg_request = buildSetIamPolicyRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SetIamPolicyRequest.fromJson(json);
        checkSetIamPolicyRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkPolicy(response);
      })));
    });

    unittest.test('method--testIamPermissions', () {
      var mock = HttpServerMock();
      api.ProjectsRegionsWorkflowTemplatesResourceApi res =
          api.DataprocApi(mock).projects.regions.workflowTemplates;
      var arg_request = buildTestIamPermissionsRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.TestIamPermissionsRequest.fromJson(json);
        checkTestIamPermissionsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkTestIamPermissionsResponse(response);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      api.ProjectsRegionsWorkflowTemplatesResourceApi res =
          api.DataprocApi(mock).projects.regions.workflowTemplates;
      var arg_request = buildWorkflowTemplate();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.WorkflowTemplate.fromJson(json);
        checkWorkflowTemplate(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildWorkflowTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkWorkflowTemplate(response);
      })));
    });
  });
}
