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

import 'package:googleapis/dataproc/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAcceleratorConfig = 0;
api.AcceleratorConfig buildAcceleratorConfig() {
  final o = api.AcceleratorConfig();
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
    unittest.expect(
      o.acceleratorCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.acceleratorTypeUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterAcceleratorConfig--;
}

core.int buildCounterAutoscalingConfig = 0;
api.AutoscalingConfig buildAutoscalingConfig() {
  final o = api.AutoscalingConfig();
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
    unittest.expect(
      o.policyUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterAutoscalingConfig--;
}

core.int buildCounterAutoscalingPolicy = 0;
api.AutoscalingPolicy buildAutoscalingPolicy() {
  final o = api.AutoscalingPolicy();
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
    checkBasicAutoscalingAlgorithm(o.basicAlgorithm!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkInstanceGroupAutoscalingPolicyConfig(o.secondaryWorkerConfig!);
    checkInstanceGroupAutoscalingPolicyConfig(o.workerConfig!);
  }
  buildCounterAutoscalingPolicy--;
}

core.int buildCounterBasicAutoscalingAlgorithm = 0;
api.BasicAutoscalingAlgorithm buildBasicAutoscalingAlgorithm() {
  final o = api.BasicAutoscalingAlgorithm();
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
    unittest.expect(
      o.cooldownPeriod!,
      unittest.equals('foo'),
    );
    checkBasicYarnAutoscalingConfig(o.yarnConfig!);
  }
  buildCounterBasicAutoscalingAlgorithm--;
}

core.int buildCounterBasicYarnAutoscalingConfig = 0;
api.BasicYarnAutoscalingConfig buildBasicYarnAutoscalingConfig() {
  final o = api.BasicYarnAutoscalingConfig();
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
    unittest.expect(
      o.gracefulDecommissionTimeout!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.scaleDownFactor!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.scaleDownMinWorkerFraction!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.scaleUpFactor!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.scaleUpMinWorkerFraction!,
      unittest.equals(42.0),
    );
  }
  buildCounterBasicYarnAutoscalingConfig--;
}

core.Map<core.String, core.String> buildUnnamed0() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed0(core.Map<core.String, core.String> o) {
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

core.int buildCounterBatchOperationMetadata = 0;
api.BatchOperationMetadata buildBatchOperationMetadata() {
  final o = api.BatchOperationMetadata();
  buildCounterBatchOperationMetadata++;
  if (buildCounterBatchOperationMetadata < 3) {
    o.batch = 'foo';
    o.batchUuid = 'foo';
    o.createTime = 'foo';
    o.description = 'foo';
    o.doneTime = 'foo';
    o.labels = buildUnnamed0();
    o.operationType = 'foo';
    o.warnings = buildUnnamed1();
  }
  buildCounterBatchOperationMetadata--;
  return o;
}

void checkBatchOperationMetadata(api.BatchOperationMetadata o) {
  buildCounterBatchOperationMetadata++;
  if (buildCounterBatchOperationMetadata < 3) {
    unittest.expect(
      o.batch!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.batchUuid!,
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
      o.doneTime!,
      unittest.equals('foo'),
    );
    checkUnnamed0(o.labels!);
    unittest.expect(
      o.operationType!,
      unittest.equals('foo'),
    );
    checkUnnamed1(o.warnings!);
  }
  buildCounterBatchOperationMetadata--;
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

core.int buildCounterBinding = 0;
api.Binding buildBinding() {
  final o = api.Binding();
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    o.condition = buildExpr();
    o.members = buildUnnamed2();
    o.role = 'foo';
  }
  buildCounterBinding--;
  return o;
}

void checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition!);
    checkUnnamed2(o.members!);
    unittest.expect(
      o.role!,
      unittest.equals('foo'),
    );
  }
  buildCounterBinding--;
}

core.int buildCounterCancelJobRequest = 0;
api.CancelJobRequest buildCancelJobRequest() {
  final o = api.CancelJobRequest();
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

core.Map<core.String, core.String> buildUnnamed3() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed3(core.Map<core.String, core.String> o) {
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

core.List<api.ClusterStatus> buildUnnamed4() => [
      buildClusterStatus(),
      buildClusterStatus(),
    ];

void checkUnnamed4(core.List<api.ClusterStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkClusterStatus(o[0]);
  checkClusterStatus(o[1]);
}

core.int buildCounterCluster = 0;
api.Cluster buildCluster() {
  final o = api.Cluster();
  buildCounterCluster++;
  if (buildCounterCluster < 3) {
    o.clusterName = 'foo';
    o.clusterUuid = 'foo';
    o.config = buildClusterConfig();
    o.labels = buildUnnamed3();
    o.metrics = buildClusterMetrics();
    o.projectId = 'foo';
    o.status = buildClusterStatus();
    o.statusHistory = buildUnnamed4();
  }
  buildCounterCluster--;
  return o;
}

void checkCluster(api.Cluster o) {
  buildCounterCluster++;
  if (buildCounterCluster < 3) {
    unittest.expect(
      o.clusterName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.clusterUuid!,
      unittest.equals('foo'),
    );
    checkClusterConfig(o.config!);
    checkUnnamed3(o.labels!);
    checkClusterMetrics(o.metrics!);
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    checkClusterStatus(o.status!);
    checkUnnamed4(o.statusHistory!);
  }
  buildCounterCluster--;
}

core.List<api.NodeInitializationAction> buildUnnamed5() => [
      buildNodeInitializationAction(),
      buildNodeInitializationAction(),
    ];

void checkUnnamed5(core.List<api.NodeInitializationAction> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNodeInitializationAction(o[0]);
  checkNodeInitializationAction(o[1]);
}

core.int buildCounterClusterConfig = 0;
api.ClusterConfig buildClusterConfig() {
  final o = api.ClusterConfig();
  buildCounterClusterConfig++;
  if (buildCounterClusterConfig < 3) {
    o.autoscalingConfig = buildAutoscalingConfig();
    o.configBucket = 'foo';
    o.encryptionConfig = buildEncryptionConfig();
    o.endpointConfig = buildEndpointConfig();
    o.gceClusterConfig = buildGceClusterConfig();
    o.gkeClusterConfig = buildGkeClusterConfig();
    o.initializationActions = buildUnnamed5();
    o.lifecycleConfig = buildLifecycleConfig();
    o.masterConfig = buildInstanceGroupConfig();
    o.metastoreConfig = buildMetastoreConfig();
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
    checkAutoscalingConfig(o.autoscalingConfig!);
    unittest.expect(
      o.configBucket!,
      unittest.equals('foo'),
    );
    checkEncryptionConfig(o.encryptionConfig!);
    checkEndpointConfig(o.endpointConfig!);
    checkGceClusterConfig(o.gceClusterConfig!);
    checkGkeClusterConfig(o.gkeClusterConfig!);
    checkUnnamed5(o.initializationActions!);
    checkLifecycleConfig(o.lifecycleConfig!);
    checkInstanceGroupConfig(o.masterConfig!);
    checkMetastoreConfig(o.metastoreConfig!);
    checkInstanceGroupConfig(o.secondaryWorkerConfig!);
    checkSecurityConfig(o.securityConfig!);
    checkSoftwareConfig(o.softwareConfig!);
    unittest.expect(
      o.tempBucket!,
      unittest.equals('foo'),
    );
    checkInstanceGroupConfig(o.workerConfig!);
  }
  buildCounterClusterConfig--;
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

core.Map<core.String, core.String> buildUnnamed7() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed7(core.Map<core.String, core.String> o) {
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

core.int buildCounterClusterMetrics = 0;
api.ClusterMetrics buildClusterMetrics() {
  final o = api.ClusterMetrics();
  buildCounterClusterMetrics++;
  if (buildCounterClusterMetrics < 3) {
    o.hdfsMetrics = buildUnnamed6();
    o.yarnMetrics = buildUnnamed7();
  }
  buildCounterClusterMetrics--;
  return o;
}

void checkClusterMetrics(api.ClusterMetrics o) {
  buildCounterClusterMetrics++;
  if (buildCounterClusterMetrics < 3) {
    checkUnnamed6(o.hdfsMetrics!);
    checkUnnamed7(o.yarnMetrics!);
  }
  buildCounterClusterMetrics--;
}

core.int buildCounterClusterOperation = 0;
api.ClusterOperation buildClusterOperation() {
  final o = api.ClusterOperation();
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
    unittest.expect(o.done!, unittest.isTrue);
    unittest.expect(
      o.error!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.operationId!,
      unittest.equals('foo'),
    );
  }
  buildCounterClusterOperation--;
}

core.Map<core.String, core.String> buildUnnamed8() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed8(core.Map<core.String, core.String> o) {
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

core.List<api.ClusterOperationStatus> buildUnnamed9() => [
      buildClusterOperationStatus(),
      buildClusterOperationStatus(),
    ];

void checkUnnamed9(core.List<api.ClusterOperationStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkClusterOperationStatus(o[0]);
  checkClusterOperationStatus(o[1]);
}

core.List<core.String> buildUnnamed10() => [
      'foo',
      'foo',
    ];

void checkUnnamed10(core.List<core.String> o) {
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

core.int buildCounterClusterOperationMetadata = 0;
api.ClusterOperationMetadata buildClusterOperationMetadata() {
  final o = api.ClusterOperationMetadata();
  buildCounterClusterOperationMetadata++;
  if (buildCounterClusterOperationMetadata < 3) {
    o.clusterName = 'foo';
    o.clusterUuid = 'foo';
    o.description = 'foo';
    o.labels = buildUnnamed8();
    o.operationType = 'foo';
    o.status = buildClusterOperationStatus();
    o.statusHistory = buildUnnamed9();
    o.warnings = buildUnnamed10();
  }
  buildCounterClusterOperationMetadata--;
  return o;
}

void checkClusterOperationMetadata(api.ClusterOperationMetadata o) {
  buildCounterClusterOperationMetadata++;
  if (buildCounterClusterOperationMetadata < 3) {
    unittest.expect(
      o.clusterName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.clusterUuid!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkUnnamed8(o.labels!);
    unittest.expect(
      o.operationType!,
      unittest.equals('foo'),
    );
    checkClusterOperationStatus(o.status!);
    checkUnnamed9(o.statusHistory!);
    checkUnnamed10(o.warnings!);
  }
  buildCounterClusterOperationMetadata--;
}

core.int buildCounterClusterOperationStatus = 0;
api.ClusterOperationStatus buildClusterOperationStatus() {
  final o = api.ClusterOperationStatus();
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
    unittest.expect(
      o.details!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.innerState!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.stateStartTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterClusterOperationStatus--;
}

core.Map<core.String, core.String> buildUnnamed11() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed11(core.Map<core.String, core.String> o) {
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

core.int buildCounterClusterSelector = 0;
api.ClusterSelector buildClusterSelector() {
  final o = api.ClusterSelector();
  buildCounterClusterSelector++;
  if (buildCounterClusterSelector < 3) {
    o.clusterLabels = buildUnnamed11();
    o.zone = 'foo';
  }
  buildCounterClusterSelector--;
  return o;
}

void checkClusterSelector(api.ClusterSelector o) {
  buildCounterClusterSelector++;
  if (buildCounterClusterSelector < 3) {
    checkUnnamed11(o.clusterLabels!);
    unittest.expect(
      o.zone!,
      unittest.equals('foo'),
    );
  }
  buildCounterClusterSelector--;
}

core.int buildCounterClusterStatus = 0;
api.ClusterStatus buildClusterStatus() {
  final o = api.ClusterStatus();
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
    unittest.expect(
      o.detail!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.stateStartTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.substate!,
      unittest.equals('foo'),
    );
  }
  buildCounterClusterStatus--;
}

core.int buildCounterConfidentialInstanceConfig = 0;
api.ConfidentialInstanceConfig buildConfidentialInstanceConfig() {
  final o = api.ConfidentialInstanceConfig();
  buildCounterConfidentialInstanceConfig++;
  if (buildCounterConfidentialInstanceConfig < 3) {
    o.enableConfidentialCompute = true;
  }
  buildCounterConfidentialInstanceConfig--;
  return o;
}

void checkConfidentialInstanceConfig(api.ConfidentialInstanceConfig o) {
  buildCounterConfidentialInstanceConfig++;
  if (buildCounterConfidentialInstanceConfig < 3) {
    unittest.expect(o.enableConfidentialCompute!, unittest.isTrue);
  }
  buildCounterConfidentialInstanceConfig--;
}

core.int buildCounterDiagnoseClusterRequest = 0;
api.DiagnoseClusterRequest buildDiagnoseClusterRequest() {
  final o = api.DiagnoseClusterRequest();
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
  final o = api.DiagnoseClusterResults();
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
    unittest.expect(
      o.outputUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterDiagnoseClusterResults--;
}

core.int buildCounterDiskConfig = 0;
api.DiskConfig buildDiskConfig() {
  final o = api.DiskConfig();
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
    unittest.expect(
      o.bootDiskSizeGb!,
      unittest.equals(42),
    );
    unittest.expect(
      o.bootDiskType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.numLocalSsds!,
      unittest.equals(42),
    );
  }
  buildCounterDiskConfig--;
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

core.int buildCounterEncryptionConfig = 0;
api.EncryptionConfig buildEncryptionConfig() {
  final o = api.EncryptionConfig();
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
    unittest.expect(
      o.gcePdKmsKeyName!,
      unittest.equals('foo'),
    );
  }
  buildCounterEncryptionConfig--;
}

core.Map<core.String, core.String> buildUnnamed12() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed12(core.Map<core.String, core.String> o) {
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

core.int buildCounterEndpointConfig = 0;
api.EndpointConfig buildEndpointConfig() {
  final o = api.EndpointConfig();
  buildCounterEndpointConfig++;
  if (buildCounterEndpointConfig < 3) {
    o.enableHttpPortAccess = true;
    o.httpPorts = buildUnnamed12();
  }
  buildCounterEndpointConfig--;
  return o;
}

void checkEndpointConfig(api.EndpointConfig o) {
  buildCounterEndpointConfig++;
  if (buildCounterEndpointConfig < 3) {
    unittest.expect(o.enableHttpPortAccess!, unittest.isTrue);
    checkUnnamed12(o.httpPorts!);
  }
  buildCounterEndpointConfig--;
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

core.List<core.String> buildUnnamed14() => [
      'foo',
      'foo',
    ];

void checkUnnamed14(core.List<core.String> o) {
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

core.int buildCounterGceClusterConfig = 0;
api.GceClusterConfig buildGceClusterConfig() {
  final o = api.GceClusterConfig();
  buildCounterGceClusterConfig++;
  if (buildCounterGceClusterConfig < 3) {
    o.confidentialInstanceConfig = buildConfidentialInstanceConfig();
    o.internalIpOnly = true;
    o.metadata = buildUnnamed13();
    o.networkUri = 'foo';
    o.nodeGroupAffinity = buildNodeGroupAffinity();
    o.privateIpv6GoogleAccess = 'foo';
    o.reservationAffinity = buildReservationAffinity();
    o.serviceAccount = 'foo';
    o.serviceAccountScopes = buildUnnamed14();
    o.shieldedInstanceConfig = buildShieldedInstanceConfig();
    o.subnetworkUri = 'foo';
    o.tags = buildUnnamed15();
    o.zoneUri = 'foo';
  }
  buildCounterGceClusterConfig--;
  return o;
}

void checkGceClusterConfig(api.GceClusterConfig o) {
  buildCounterGceClusterConfig++;
  if (buildCounterGceClusterConfig < 3) {
    checkConfidentialInstanceConfig(o.confidentialInstanceConfig!);
    unittest.expect(o.internalIpOnly!, unittest.isTrue);
    checkUnnamed13(o.metadata!);
    unittest.expect(
      o.networkUri!,
      unittest.equals('foo'),
    );
    checkNodeGroupAffinity(o.nodeGroupAffinity!);
    unittest.expect(
      o.privateIpv6GoogleAccess!,
      unittest.equals('foo'),
    );
    checkReservationAffinity(o.reservationAffinity!);
    unittest.expect(
      o.serviceAccount!,
      unittest.equals('foo'),
    );
    checkUnnamed14(o.serviceAccountScopes!);
    checkShieldedInstanceConfig(o.shieldedInstanceConfig!);
    unittest.expect(
      o.subnetworkUri!,
      unittest.equals('foo'),
    );
    checkUnnamed15(o.tags!);
    unittest.expect(
      o.zoneUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGceClusterConfig--;
}

core.int buildCounterGetIamPolicyRequest = 0;
api.GetIamPolicyRequest buildGetIamPolicyRequest() {
  final o = api.GetIamPolicyRequest();
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
    checkGetPolicyOptions(o.options!);
  }
  buildCounterGetIamPolicyRequest--;
}

core.int buildCounterGetPolicyOptions = 0;
api.GetPolicyOptions buildGetPolicyOptions() {
  final o = api.GetPolicyOptions();
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
    unittest.expect(
      o.requestedPolicyVersion!,
      unittest.equals(42),
    );
  }
  buildCounterGetPolicyOptions--;
}

core.int buildCounterGkeClusterConfig = 0;
api.GkeClusterConfig buildGkeClusterConfig() {
  final o = api.GkeClusterConfig();
  buildCounterGkeClusterConfig++;
  if (buildCounterGkeClusterConfig < 3) {
    o.namespacedGkeDeploymentTarget = buildNamespacedGkeDeploymentTarget();
  }
  buildCounterGkeClusterConfig--;
  return o;
}

void checkGkeClusterConfig(api.GkeClusterConfig o) {
  buildCounterGkeClusterConfig++;
  if (buildCounterGkeClusterConfig < 3) {
    checkNamespacedGkeDeploymentTarget(o.namespacedGkeDeploymentTarget!);
  }
  buildCounterGkeClusterConfig--;
}

core.List<core.String> buildUnnamed16() => [
      'foo',
      'foo',
    ];

void checkUnnamed16(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed17() => [
      'foo',
      'foo',
    ];

void checkUnnamed17(core.List<core.String> o) {
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

core.Map<core.String, core.String> buildUnnamed20() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed20(core.Map<core.String, core.String> o) {
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

core.int buildCounterHadoopJob = 0;
api.HadoopJob buildHadoopJob() {
  final o = api.HadoopJob();
  buildCounterHadoopJob++;
  if (buildCounterHadoopJob < 3) {
    o.archiveUris = buildUnnamed16();
    o.args = buildUnnamed17();
    o.fileUris = buildUnnamed18();
    o.jarFileUris = buildUnnamed19();
    o.loggingConfig = buildLoggingConfig();
    o.mainClass = 'foo';
    o.mainJarFileUri = 'foo';
    o.properties = buildUnnamed20();
  }
  buildCounterHadoopJob--;
  return o;
}

void checkHadoopJob(api.HadoopJob o) {
  buildCounterHadoopJob++;
  if (buildCounterHadoopJob < 3) {
    checkUnnamed16(o.archiveUris!);
    checkUnnamed17(o.args!);
    checkUnnamed18(o.fileUris!);
    checkUnnamed19(o.jarFileUris!);
    checkLoggingConfig(o.loggingConfig!);
    unittest.expect(
      o.mainClass!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mainJarFileUri!,
      unittest.equals('foo'),
    );
    checkUnnamed20(o.properties!);
  }
  buildCounterHadoopJob--;
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

core.Map<core.String, core.String> buildUnnamed22() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed22(core.Map<core.String, core.String> o) {
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

core.Map<core.String, core.String> buildUnnamed23() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed23(core.Map<core.String, core.String> o) {
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

core.int buildCounterHiveJob = 0;
api.HiveJob buildHiveJob() {
  final o = api.HiveJob();
  buildCounterHiveJob++;
  if (buildCounterHiveJob < 3) {
    o.continueOnFailure = true;
    o.jarFileUris = buildUnnamed21();
    o.properties = buildUnnamed22();
    o.queryFileUri = 'foo';
    o.queryList = buildQueryList();
    o.scriptVariables = buildUnnamed23();
  }
  buildCounterHiveJob--;
  return o;
}

void checkHiveJob(api.HiveJob o) {
  buildCounterHiveJob++;
  if (buildCounterHiveJob < 3) {
    unittest.expect(o.continueOnFailure!, unittest.isTrue);
    checkUnnamed21(o.jarFileUris!);
    checkUnnamed22(o.properties!);
    unittest.expect(
      o.queryFileUri!,
      unittest.equals('foo'),
    );
    checkQueryList(o.queryList!);
    checkUnnamed23(o.scriptVariables!);
  }
  buildCounterHiveJob--;
}

core.Map<core.String, core.String> buildUnnamed24() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed24(core.Map<core.String, core.String> o) {
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

core.int buildCounterIdentityConfig = 0;
api.IdentityConfig buildIdentityConfig() {
  final o = api.IdentityConfig();
  buildCounterIdentityConfig++;
  if (buildCounterIdentityConfig < 3) {
    o.userServiceAccountMapping = buildUnnamed24();
  }
  buildCounterIdentityConfig--;
  return o;
}

void checkIdentityConfig(api.IdentityConfig o) {
  buildCounterIdentityConfig++;
  if (buildCounterIdentityConfig < 3) {
    checkUnnamed24(o.userServiceAccountMapping!);
  }
  buildCounterIdentityConfig--;
}

core.int buildCounterInjectCredentialsRequest = 0;
api.InjectCredentialsRequest buildInjectCredentialsRequest() {
  final o = api.InjectCredentialsRequest();
  buildCounterInjectCredentialsRequest++;
  if (buildCounterInjectCredentialsRequest < 3) {
    o.clusterUuid = 'foo';
    o.credentialsCiphertext = 'foo';
  }
  buildCounterInjectCredentialsRequest--;
  return o;
}

void checkInjectCredentialsRequest(api.InjectCredentialsRequest o) {
  buildCounterInjectCredentialsRequest++;
  if (buildCounterInjectCredentialsRequest < 3) {
    unittest.expect(
      o.clusterUuid!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.credentialsCiphertext!,
      unittest.equals('foo'),
    );
  }
  buildCounterInjectCredentialsRequest--;
}

core.int buildCounterInstanceGroupAutoscalingPolicyConfig = 0;
api.InstanceGroupAutoscalingPolicyConfig
    buildInstanceGroupAutoscalingPolicyConfig() {
  final o = api.InstanceGroupAutoscalingPolicyConfig();
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
    unittest.expect(
      o.maxInstances!,
      unittest.equals(42),
    );
    unittest.expect(
      o.minInstances!,
      unittest.equals(42),
    );
    unittest.expect(
      o.weight!,
      unittest.equals(42),
    );
  }
  buildCounterInstanceGroupAutoscalingPolicyConfig--;
}

core.List<api.AcceleratorConfig> buildUnnamed25() => [
      buildAcceleratorConfig(),
      buildAcceleratorConfig(),
    ];

void checkUnnamed25(core.List<api.AcceleratorConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAcceleratorConfig(o[0]);
  checkAcceleratorConfig(o[1]);
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

core.List<api.InstanceReference> buildUnnamed27() => [
      buildInstanceReference(),
      buildInstanceReference(),
    ];

void checkUnnamed27(core.List<api.InstanceReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInstanceReference(o[0]);
  checkInstanceReference(o[1]);
}

core.int buildCounterInstanceGroupConfig = 0;
api.InstanceGroupConfig buildInstanceGroupConfig() {
  final o = api.InstanceGroupConfig();
  buildCounterInstanceGroupConfig++;
  if (buildCounterInstanceGroupConfig < 3) {
    o.accelerators = buildUnnamed25();
    o.diskConfig = buildDiskConfig();
    o.imageUri = 'foo';
    o.instanceNames = buildUnnamed26();
    o.instanceReferences = buildUnnamed27();
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
    checkUnnamed25(o.accelerators!);
    checkDiskConfig(o.diskConfig!);
    unittest.expect(
      o.imageUri!,
      unittest.equals('foo'),
    );
    checkUnnamed26(o.instanceNames!);
    checkUnnamed27(o.instanceReferences!);
    unittest.expect(o.isPreemptible!, unittest.isTrue);
    unittest.expect(
      o.machineTypeUri!,
      unittest.equals('foo'),
    );
    checkManagedGroupConfig(o.managedGroupConfig!);
    unittest.expect(
      o.minCpuPlatform!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.numInstances!,
      unittest.equals(42),
    );
    unittest.expect(
      o.preemptibility!,
      unittest.equals('foo'),
    );
  }
  buildCounterInstanceGroupConfig--;
}

core.int buildCounterInstanceReference = 0;
api.InstanceReference buildInstanceReference() {
  final o = api.InstanceReference();
  buildCounterInstanceReference++;
  if (buildCounterInstanceReference < 3) {
    o.instanceId = 'foo';
    o.instanceName = 'foo';
    o.publicEciesKey = 'foo';
    o.publicKey = 'foo';
  }
  buildCounterInstanceReference--;
  return o;
}

void checkInstanceReference(api.InstanceReference o) {
  buildCounterInstanceReference++;
  if (buildCounterInstanceReference < 3) {
    unittest.expect(
      o.instanceId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.instanceName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.publicEciesKey!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.publicKey!,
      unittest.equals('foo'),
    );
  }
  buildCounterInstanceReference--;
}

core.Map<core.String, core.String> buildUnnamed28() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed28(core.Map<core.String, core.String> o) {
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

core.int buildCounterInstantiateWorkflowTemplateRequest = 0;
api.InstantiateWorkflowTemplateRequest
    buildInstantiateWorkflowTemplateRequest() {
  final o = api.InstantiateWorkflowTemplateRequest();
  buildCounterInstantiateWorkflowTemplateRequest++;
  if (buildCounterInstantiateWorkflowTemplateRequest < 3) {
    o.parameters = buildUnnamed28();
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
    checkUnnamed28(o.parameters!);
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals(42),
    );
  }
  buildCounterInstantiateWorkflowTemplateRequest--;
}

core.Map<core.String, core.String> buildUnnamed29() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed29(core.Map<core.String, core.String> o) {
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

core.List<api.JobStatus> buildUnnamed30() => [
      buildJobStatus(),
      buildJobStatus(),
    ];

void checkUnnamed30(core.List<api.JobStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJobStatus(o[0]);
  checkJobStatus(o[1]);
}

core.List<api.YarnApplication> buildUnnamed31() => [
      buildYarnApplication(),
      buildYarnApplication(),
    ];

void checkUnnamed31(core.List<api.YarnApplication> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkYarnApplication(o[0]);
  checkYarnApplication(o[1]);
}

core.int buildCounterJob = 0;
api.Job buildJob() {
  final o = api.Job();
  buildCounterJob++;
  if (buildCounterJob < 3) {
    o.done = true;
    o.driverControlFilesUri = 'foo';
    o.driverOutputResourceUri = 'foo';
    o.hadoopJob = buildHadoopJob();
    o.hiveJob = buildHiveJob();
    o.jobUuid = 'foo';
    o.labels = buildUnnamed29();
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
    o.statusHistory = buildUnnamed30();
    o.yarnApplications = buildUnnamed31();
  }
  buildCounterJob--;
  return o;
}

void checkJob(api.Job o) {
  buildCounterJob++;
  if (buildCounterJob < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    unittest.expect(
      o.driverControlFilesUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.driverOutputResourceUri!,
      unittest.equals('foo'),
    );
    checkHadoopJob(o.hadoopJob!);
    checkHiveJob(o.hiveJob!);
    unittest.expect(
      o.jobUuid!,
      unittest.equals('foo'),
    );
    checkUnnamed29(o.labels!);
    checkPigJob(o.pigJob!);
    checkJobPlacement(o.placement!);
    checkPrestoJob(o.prestoJob!);
    checkPySparkJob(o.pysparkJob!);
    checkJobReference(o.reference!);
    checkJobScheduling(o.scheduling!);
    checkSparkJob(o.sparkJob!);
    checkSparkRJob(o.sparkRJob!);
    checkSparkSqlJob(o.sparkSqlJob!);
    checkJobStatus(o.status!);
    checkUnnamed30(o.statusHistory!);
    checkUnnamed31(o.yarnApplications!);
  }
  buildCounterJob--;
}

core.int buildCounterJobMetadata = 0;
api.JobMetadata buildJobMetadata() {
  final o = api.JobMetadata();
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
    unittest.expect(
      o.jobId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.operationType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
    checkJobStatus(o.status!);
  }
  buildCounterJobMetadata--;
}

core.Map<core.String, core.String> buildUnnamed32() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed32(core.Map<core.String, core.String> o) {
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

core.int buildCounterJobPlacement = 0;
api.JobPlacement buildJobPlacement() {
  final o = api.JobPlacement();
  buildCounterJobPlacement++;
  if (buildCounterJobPlacement < 3) {
    o.clusterLabels = buildUnnamed32();
    o.clusterName = 'foo';
    o.clusterUuid = 'foo';
  }
  buildCounterJobPlacement--;
  return o;
}

void checkJobPlacement(api.JobPlacement o) {
  buildCounterJobPlacement++;
  if (buildCounterJobPlacement < 3) {
    checkUnnamed32(o.clusterLabels!);
    unittest.expect(
      o.clusterName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.clusterUuid!,
      unittest.equals('foo'),
    );
  }
  buildCounterJobPlacement--;
}

core.int buildCounterJobReference = 0;
api.JobReference buildJobReference() {
  final o = api.JobReference();
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
    unittest.expect(
      o.jobId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
  }
  buildCounterJobReference--;
}

core.int buildCounterJobScheduling = 0;
api.JobScheduling buildJobScheduling() {
  final o = api.JobScheduling();
  buildCounterJobScheduling++;
  if (buildCounterJobScheduling < 3) {
    o.maxFailuresPerHour = 42;
    o.maxFailuresTotal = 42;
  }
  buildCounterJobScheduling--;
  return o;
}

void checkJobScheduling(api.JobScheduling o) {
  buildCounterJobScheduling++;
  if (buildCounterJobScheduling < 3) {
    unittest.expect(
      o.maxFailuresPerHour!,
      unittest.equals(42),
    );
    unittest.expect(
      o.maxFailuresTotal!,
      unittest.equals(42),
    );
  }
  buildCounterJobScheduling--;
}

core.int buildCounterJobStatus = 0;
api.JobStatus buildJobStatus() {
  final o = api.JobStatus();
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
    unittest.expect(
      o.details!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.stateStartTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.substate!,
      unittest.equals('foo'),
    );
  }
  buildCounterJobStatus--;
}

core.int buildCounterKerberosConfig = 0;
api.KerberosConfig buildKerberosConfig() {
  final o = api.KerberosConfig();
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
    unittest.expect(
      o.crossRealmTrustAdminServer!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.crossRealmTrustKdc!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.crossRealmTrustRealm!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.crossRealmTrustSharedPasswordUri!,
      unittest.equals('foo'),
    );
    unittest.expect(o.enableKerberos!, unittest.isTrue);
    unittest.expect(
      o.kdcDbKeyUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.keyPasswordUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.keystorePasswordUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.keystoreUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kmsKeyUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.realm!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rootPrincipalPasswordUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tgtLifetimeHours!,
      unittest.equals(42),
    );
    unittest.expect(
      o.truststorePasswordUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.truststoreUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterKerberosConfig--;
}

core.int buildCounterLifecycleConfig = 0;
api.LifecycleConfig buildLifecycleConfig() {
  final o = api.LifecycleConfig();
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
    unittest.expect(
      o.autoDeleteTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.autoDeleteTtl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.idleDeleteTtl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.idleStartTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterLifecycleConfig--;
}

core.List<api.AutoscalingPolicy> buildUnnamed33() => [
      buildAutoscalingPolicy(),
      buildAutoscalingPolicy(),
    ];

void checkUnnamed33(core.List<api.AutoscalingPolicy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAutoscalingPolicy(o[0]);
  checkAutoscalingPolicy(o[1]);
}

core.int buildCounterListAutoscalingPoliciesResponse = 0;
api.ListAutoscalingPoliciesResponse buildListAutoscalingPoliciesResponse() {
  final o = api.ListAutoscalingPoliciesResponse();
  buildCounterListAutoscalingPoliciesResponse++;
  if (buildCounterListAutoscalingPoliciesResponse < 3) {
    o.nextPageToken = 'foo';
    o.policies = buildUnnamed33();
  }
  buildCounterListAutoscalingPoliciesResponse--;
  return o;
}

void checkListAutoscalingPoliciesResponse(
    api.ListAutoscalingPoliciesResponse o) {
  buildCounterListAutoscalingPoliciesResponse++;
  if (buildCounterListAutoscalingPoliciesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed33(o.policies!);
  }
  buildCounterListAutoscalingPoliciesResponse--;
}

core.List<api.Cluster> buildUnnamed34() => [
      buildCluster(),
      buildCluster(),
    ];

void checkUnnamed34(core.List<api.Cluster> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCluster(o[0]);
  checkCluster(o[1]);
}

core.int buildCounterListClustersResponse = 0;
api.ListClustersResponse buildListClustersResponse() {
  final o = api.ListClustersResponse();
  buildCounterListClustersResponse++;
  if (buildCounterListClustersResponse < 3) {
    o.clusters = buildUnnamed34();
    o.nextPageToken = 'foo';
  }
  buildCounterListClustersResponse--;
  return o;
}

void checkListClustersResponse(api.ListClustersResponse o) {
  buildCounterListClustersResponse++;
  if (buildCounterListClustersResponse < 3) {
    checkUnnamed34(o.clusters!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListClustersResponse--;
}

core.List<api.Job> buildUnnamed35() => [
      buildJob(),
      buildJob(),
    ];

void checkUnnamed35(core.List<api.Job> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJob(o[0]);
  checkJob(o[1]);
}

core.int buildCounterListJobsResponse = 0;
api.ListJobsResponse buildListJobsResponse() {
  final o = api.ListJobsResponse();
  buildCounterListJobsResponse++;
  if (buildCounterListJobsResponse < 3) {
    o.jobs = buildUnnamed35();
    o.nextPageToken = 'foo';
  }
  buildCounterListJobsResponse--;
  return o;
}

void checkListJobsResponse(api.ListJobsResponse o) {
  buildCounterListJobsResponse++;
  if (buildCounterListJobsResponse < 3) {
    checkUnnamed35(o.jobs!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListJobsResponse--;
}

core.List<api.Operation> buildUnnamed36() => [
      buildOperation(),
      buildOperation(),
    ];

void checkUnnamed36(core.List<api.Operation> o) {
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
    o.operations = buildUnnamed36();
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
    checkUnnamed36(o.operations!);
  }
  buildCounterListOperationsResponse--;
}

core.List<api.WorkflowTemplate> buildUnnamed37() => [
      buildWorkflowTemplate(),
      buildWorkflowTemplate(),
    ];

void checkUnnamed37(core.List<api.WorkflowTemplate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWorkflowTemplate(o[0]);
  checkWorkflowTemplate(o[1]);
}

core.int buildCounterListWorkflowTemplatesResponse = 0;
api.ListWorkflowTemplatesResponse buildListWorkflowTemplatesResponse() {
  final o = api.ListWorkflowTemplatesResponse();
  buildCounterListWorkflowTemplatesResponse++;
  if (buildCounterListWorkflowTemplatesResponse < 3) {
    o.nextPageToken = 'foo';
    o.templates = buildUnnamed37();
  }
  buildCounterListWorkflowTemplatesResponse--;
  return o;
}

void checkListWorkflowTemplatesResponse(api.ListWorkflowTemplatesResponse o) {
  buildCounterListWorkflowTemplatesResponse++;
  if (buildCounterListWorkflowTemplatesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed37(o.templates!);
  }
  buildCounterListWorkflowTemplatesResponse--;
}

core.Map<core.String, core.String> buildUnnamed38() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed38(core.Map<core.String, core.String> o) {
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

core.int buildCounterLoggingConfig = 0;
api.LoggingConfig buildLoggingConfig() {
  final o = api.LoggingConfig();
  buildCounterLoggingConfig++;
  if (buildCounterLoggingConfig < 3) {
    o.driverLogLevels = buildUnnamed38();
  }
  buildCounterLoggingConfig--;
  return o;
}

void checkLoggingConfig(api.LoggingConfig o) {
  buildCounterLoggingConfig++;
  if (buildCounterLoggingConfig < 3) {
    checkUnnamed38(o.driverLogLevels!);
  }
  buildCounterLoggingConfig--;
}

core.Map<core.String, core.String> buildUnnamed39() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed39(core.Map<core.String, core.String> o) {
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

core.int buildCounterManagedCluster = 0;
api.ManagedCluster buildManagedCluster() {
  final o = api.ManagedCluster();
  buildCounterManagedCluster++;
  if (buildCounterManagedCluster < 3) {
    o.clusterName = 'foo';
    o.config = buildClusterConfig();
    o.labels = buildUnnamed39();
  }
  buildCounterManagedCluster--;
  return o;
}

void checkManagedCluster(api.ManagedCluster o) {
  buildCounterManagedCluster++;
  if (buildCounterManagedCluster < 3) {
    unittest.expect(
      o.clusterName!,
      unittest.equals('foo'),
    );
    checkClusterConfig(o.config!);
    checkUnnamed39(o.labels!);
  }
  buildCounterManagedCluster--;
}

core.int buildCounterManagedGroupConfig = 0;
api.ManagedGroupConfig buildManagedGroupConfig() {
  final o = api.ManagedGroupConfig();
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
    unittest.expect(
      o.instanceGroupManagerName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.instanceTemplateName!,
      unittest.equals('foo'),
    );
  }
  buildCounterManagedGroupConfig--;
}

core.int buildCounterMetastoreConfig = 0;
api.MetastoreConfig buildMetastoreConfig() {
  final o = api.MetastoreConfig();
  buildCounterMetastoreConfig++;
  if (buildCounterMetastoreConfig < 3) {
    o.dataprocMetastoreService = 'foo';
  }
  buildCounterMetastoreConfig--;
  return o;
}

void checkMetastoreConfig(api.MetastoreConfig o) {
  buildCounterMetastoreConfig++;
  if (buildCounterMetastoreConfig < 3) {
    unittest.expect(
      o.dataprocMetastoreService!,
      unittest.equals('foo'),
    );
  }
  buildCounterMetastoreConfig--;
}

core.int buildCounterNamespacedGkeDeploymentTarget = 0;
api.NamespacedGkeDeploymentTarget buildNamespacedGkeDeploymentTarget() {
  final o = api.NamespacedGkeDeploymentTarget();
  buildCounterNamespacedGkeDeploymentTarget++;
  if (buildCounterNamespacedGkeDeploymentTarget < 3) {
    o.clusterNamespace = 'foo';
    o.targetGkeCluster = 'foo';
  }
  buildCounterNamespacedGkeDeploymentTarget--;
  return o;
}

void checkNamespacedGkeDeploymentTarget(api.NamespacedGkeDeploymentTarget o) {
  buildCounterNamespacedGkeDeploymentTarget++;
  if (buildCounterNamespacedGkeDeploymentTarget < 3) {
    unittest.expect(
      o.clusterNamespace!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.targetGkeCluster!,
      unittest.equals('foo'),
    );
  }
  buildCounterNamespacedGkeDeploymentTarget--;
}

core.int buildCounterNodeGroupAffinity = 0;
api.NodeGroupAffinity buildNodeGroupAffinity() {
  final o = api.NodeGroupAffinity();
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
    unittest.expect(
      o.nodeGroupUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterNodeGroupAffinity--;
}

core.int buildCounterNodeInitializationAction = 0;
api.NodeInitializationAction buildNodeInitializationAction() {
  final o = api.NodeInitializationAction();
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
    unittest.expect(
      o.executableFile!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.executionTimeout!,
      unittest.equals('foo'),
    );
  }
  buildCounterNodeInitializationAction--;
}

core.Map<core.String, core.Object?> buildUnnamed40() => {
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

void checkUnnamed40(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed41() => {
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

void checkUnnamed41(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  final o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed40();
    o.name = 'foo';
    o.response = buildUnnamed41();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed40(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed41(o.response!);
  }
  buildCounterOperation--;
}

core.Map<core.String, core.String> buildUnnamed42() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed42(core.Map<core.String, core.String> o) {
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

core.List<core.String> buildUnnamed43() => [
      'foo',
      'foo',
    ];

void checkUnnamed43(core.List<core.String> o) {
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

core.int buildCounterOrderedJob = 0;
api.OrderedJob buildOrderedJob() {
  final o = api.OrderedJob();
  buildCounterOrderedJob++;
  if (buildCounterOrderedJob < 3) {
    o.hadoopJob = buildHadoopJob();
    o.hiveJob = buildHiveJob();
    o.labels = buildUnnamed42();
    o.pigJob = buildPigJob();
    o.prerequisiteStepIds = buildUnnamed43();
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
    checkHadoopJob(o.hadoopJob!);
    checkHiveJob(o.hiveJob!);
    checkUnnamed42(o.labels!);
    checkPigJob(o.pigJob!);
    checkUnnamed43(o.prerequisiteStepIds!);
    checkPrestoJob(o.prestoJob!);
    checkPySparkJob(o.pysparkJob!);
    checkJobScheduling(o.scheduling!);
    checkSparkJob(o.sparkJob!);
    checkSparkRJob(o.sparkRJob!);
    checkSparkSqlJob(o.sparkSqlJob!);
    unittest.expect(
      o.stepId!,
      unittest.equals('foo'),
    );
  }
  buildCounterOrderedJob--;
}

core.int buildCounterParameterValidation = 0;
api.ParameterValidation buildParameterValidation() {
  final o = api.ParameterValidation();
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
    checkRegexValidation(o.regex!);
    checkValueValidation(o.values!);
  }
  buildCounterParameterValidation--;
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

core.Map<core.String, core.String> buildUnnamed45() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed45(core.Map<core.String, core.String> o) {
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

core.Map<core.String, core.String> buildUnnamed46() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed46(core.Map<core.String, core.String> o) {
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

core.int buildCounterPigJob = 0;
api.PigJob buildPigJob() {
  final o = api.PigJob();
  buildCounterPigJob++;
  if (buildCounterPigJob < 3) {
    o.continueOnFailure = true;
    o.jarFileUris = buildUnnamed44();
    o.loggingConfig = buildLoggingConfig();
    o.properties = buildUnnamed45();
    o.queryFileUri = 'foo';
    o.queryList = buildQueryList();
    o.scriptVariables = buildUnnamed46();
  }
  buildCounterPigJob--;
  return o;
}

void checkPigJob(api.PigJob o) {
  buildCounterPigJob++;
  if (buildCounterPigJob < 3) {
    unittest.expect(o.continueOnFailure!, unittest.isTrue);
    checkUnnamed44(o.jarFileUris!);
    checkLoggingConfig(o.loggingConfig!);
    checkUnnamed45(o.properties!);
    unittest.expect(
      o.queryFileUri!,
      unittest.equals('foo'),
    );
    checkQueryList(o.queryList!);
    checkUnnamed46(o.scriptVariables!);
  }
  buildCounterPigJob--;
}

core.List<api.Binding> buildUnnamed47() => [
      buildBinding(),
      buildBinding(),
    ];

void checkUnnamed47(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  final o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.bindings = buildUnnamed47();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed47(o.bindings!);
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

core.Map<core.String, core.String> buildUnnamed49() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed49(core.Map<core.String, core.String> o) {
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

core.int buildCounterPrestoJob = 0;
api.PrestoJob buildPrestoJob() {
  final o = api.PrestoJob();
  buildCounterPrestoJob++;
  if (buildCounterPrestoJob < 3) {
    o.clientTags = buildUnnamed48();
    o.continueOnFailure = true;
    o.loggingConfig = buildLoggingConfig();
    o.outputFormat = 'foo';
    o.properties = buildUnnamed49();
    o.queryFileUri = 'foo';
    o.queryList = buildQueryList();
  }
  buildCounterPrestoJob--;
  return o;
}

void checkPrestoJob(api.PrestoJob o) {
  buildCounterPrestoJob++;
  if (buildCounterPrestoJob < 3) {
    checkUnnamed48(o.clientTags!);
    unittest.expect(o.continueOnFailure!, unittest.isTrue);
    checkLoggingConfig(o.loggingConfig!);
    unittest.expect(
      o.outputFormat!,
      unittest.equals('foo'),
    );
    checkUnnamed49(o.properties!);
    unittest.expect(
      o.queryFileUri!,
      unittest.equals('foo'),
    );
    checkQueryList(o.queryList!);
  }
  buildCounterPrestoJob--;
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

core.List<core.String> buildUnnamed51() => [
      'foo',
      'foo',
    ];

void checkUnnamed51(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed53() => [
      'foo',
      'foo',
    ];

void checkUnnamed53(core.List<core.String> o) {
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

core.Map<core.String, core.String> buildUnnamed54() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed54(core.Map<core.String, core.String> o) {
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

core.List<core.String> buildUnnamed55() => [
      'foo',
      'foo',
    ];

void checkUnnamed55(core.List<core.String> o) {
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

core.int buildCounterPySparkJob = 0;
api.PySparkJob buildPySparkJob() {
  final o = api.PySparkJob();
  buildCounterPySparkJob++;
  if (buildCounterPySparkJob < 3) {
    o.archiveUris = buildUnnamed50();
    o.args = buildUnnamed51();
    o.fileUris = buildUnnamed52();
    o.jarFileUris = buildUnnamed53();
    o.loggingConfig = buildLoggingConfig();
    o.mainPythonFileUri = 'foo';
    o.properties = buildUnnamed54();
    o.pythonFileUris = buildUnnamed55();
  }
  buildCounterPySparkJob--;
  return o;
}

void checkPySparkJob(api.PySparkJob o) {
  buildCounterPySparkJob++;
  if (buildCounterPySparkJob < 3) {
    checkUnnamed50(o.archiveUris!);
    checkUnnamed51(o.args!);
    checkUnnamed52(o.fileUris!);
    checkUnnamed53(o.jarFileUris!);
    checkLoggingConfig(o.loggingConfig!);
    unittest.expect(
      o.mainPythonFileUri!,
      unittest.equals('foo'),
    );
    checkUnnamed54(o.properties!);
    checkUnnamed55(o.pythonFileUris!);
  }
  buildCounterPySparkJob--;
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

core.int buildCounterQueryList = 0;
api.QueryList buildQueryList() {
  final o = api.QueryList();
  buildCounterQueryList++;
  if (buildCounterQueryList < 3) {
    o.queries = buildUnnamed56();
  }
  buildCounterQueryList--;
  return o;
}

void checkQueryList(api.QueryList o) {
  buildCounterQueryList++;
  if (buildCounterQueryList < 3) {
    checkUnnamed56(o.queries!);
  }
  buildCounterQueryList--;
}

core.List<core.String> buildUnnamed57() => [
      'foo',
      'foo',
    ];

void checkUnnamed57(core.List<core.String> o) {
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

core.int buildCounterRegexValidation = 0;
api.RegexValidation buildRegexValidation() {
  final o = api.RegexValidation();
  buildCounterRegexValidation++;
  if (buildCounterRegexValidation < 3) {
    o.regexes = buildUnnamed57();
  }
  buildCounterRegexValidation--;
  return o;
}

void checkRegexValidation(api.RegexValidation o) {
  buildCounterRegexValidation++;
  if (buildCounterRegexValidation < 3) {
    checkUnnamed57(o.regexes!);
  }
  buildCounterRegexValidation--;
}

core.int buildCounterRepairClusterRequest = 0;
api.RepairClusterRequest buildRepairClusterRequest() {
  final o = api.RepairClusterRequest();
  buildCounterRepairClusterRequest++;
  if (buildCounterRepairClusterRequest < 3) {
    o.clusterUuid = 'foo';
    o.requestId = 'foo';
  }
  buildCounterRepairClusterRequest--;
  return o;
}

void checkRepairClusterRequest(api.RepairClusterRequest o) {
  buildCounterRepairClusterRequest++;
  if (buildCounterRepairClusterRequest < 3) {
    unittest.expect(
      o.clusterUuid!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
  }
  buildCounterRepairClusterRequest--;
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

core.int buildCounterReservationAffinity = 0;
api.ReservationAffinity buildReservationAffinity() {
  final o = api.ReservationAffinity();
  buildCounterReservationAffinity++;
  if (buildCounterReservationAffinity < 3) {
    o.consumeReservationType = 'foo';
    o.key = 'foo';
    o.values = buildUnnamed58();
  }
  buildCounterReservationAffinity--;
  return o;
}

void checkReservationAffinity(api.ReservationAffinity o) {
  buildCounterReservationAffinity++;
  if (buildCounterReservationAffinity < 3) {
    unittest.expect(
      o.consumeReservationType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    checkUnnamed58(o.values!);
  }
  buildCounterReservationAffinity--;
}

core.int buildCounterSecurityConfig = 0;
api.SecurityConfig buildSecurityConfig() {
  final o = api.SecurityConfig();
  buildCounterSecurityConfig++;
  if (buildCounterSecurityConfig < 3) {
    o.identityConfig = buildIdentityConfig();
    o.kerberosConfig = buildKerberosConfig();
  }
  buildCounterSecurityConfig--;
  return o;
}

void checkSecurityConfig(api.SecurityConfig o) {
  buildCounterSecurityConfig++;
  if (buildCounterSecurityConfig < 3) {
    checkIdentityConfig(o.identityConfig!);
    checkKerberosConfig(o.kerberosConfig!);
  }
  buildCounterSecurityConfig--;
}

core.Map<core.String, core.String> buildUnnamed59() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed59(core.Map<core.String, core.String> o) {
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

core.int buildCounterSessionOperationMetadata = 0;
api.SessionOperationMetadata buildSessionOperationMetadata() {
  final o = api.SessionOperationMetadata();
  buildCounterSessionOperationMetadata++;
  if (buildCounterSessionOperationMetadata < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.doneTime = 'foo';
    o.labels = buildUnnamed59();
    o.operationType = 'foo';
    o.session = 'foo';
    o.sessionUuid = 'foo';
    o.warnings = buildUnnamed60();
  }
  buildCounterSessionOperationMetadata--;
  return o;
}

void checkSessionOperationMetadata(api.SessionOperationMetadata o) {
  buildCounterSessionOperationMetadata++;
  if (buildCounterSessionOperationMetadata < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.doneTime!,
      unittest.equals('foo'),
    );
    checkUnnamed59(o.labels!);
    unittest.expect(
      o.operationType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.session!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sessionUuid!,
      unittest.equals('foo'),
    );
    checkUnnamed60(o.warnings!);
  }
  buildCounterSessionOperationMetadata--;
}

core.int buildCounterSetIamPolicyRequest = 0;
api.SetIamPolicyRequest buildSetIamPolicyRequest() {
  final o = api.SetIamPolicyRequest();
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
    checkPolicy(o.policy!);
  }
  buildCounterSetIamPolicyRequest--;
}

core.int buildCounterShieldedInstanceConfig = 0;
api.ShieldedInstanceConfig buildShieldedInstanceConfig() {
  final o = api.ShieldedInstanceConfig();
  buildCounterShieldedInstanceConfig++;
  if (buildCounterShieldedInstanceConfig < 3) {
    o.enableIntegrityMonitoring = true;
    o.enableSecureBoot = true;
    o.enableVtpm = true;
  }
  buildCounterShieldedInstanceConfig--;
  return o;
}

void checkShieldedInstanceConfig(api.ShieldedInstanceConfig o) {
  buildCounterShieldedInstanceConfig++;
  if (buildCounterShieldedInstanceConfig < 3) {
    unittest.expect(o.enableIntegrityMonitoring!, unittest.isTrue);
    unittest.expect(o.enableSecureBoot!, unittest.isTrue);
    unittest.expect(o.enableVtpm!, unittest.isTrue);
  }
  buildCounterShieldedInstanceConfig--;
}

core.List<core.String> buildUnnamed61() => [
      'foo',
      'foo',
    ];

void checkUnnamed61(core.List<core.String> o) {
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

core.Map<core.String, core.String> buildUnnamed62() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed62(core.Map<core.String, core.String> o) {
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

core.int buildCounterSoftwareConfig = 0;
api.SoftwareConfig buildSoftwareConfig() {
  final o = api.SoftwareConfig();
  buildCounterSoftwareConfig++;
  if (buildCounterSoftwareConfig < 3) {
    o.imageVersion = 'foo';
    o.optionalComponents = buildUnnamed61();
    o.properties = buildUnnamed62();
  }
  buildCounterSoftwareConfig--;
  return o;
}

void checkSoftwareConfig(api.SoftwareConfig o) {
  buildCounterSoftwareConfig++;
  if (buildCounterSoftwareConfig < 3) {
    unittest.expect(
      o.imageVersion!,
      unittest.equals('foo'),
    );
    checkUnnamed61(o.optionalComponents!);
    checkUnnamed62(o.properties!);
  }
  buildCounterSoftwareConfig--;
}

core.List<core.String> buildUnnamed63() => [
      'foo',
      'foo',
    ];

void checkUnnamed63(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed64() => [
      'foo',
      'foo',
    ];

void checkUnnamed64(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed65() => [
      'foo',
      'foo',
    ];

void checkUnnamed65(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed66() => [
      'foo',
      'foo',
    ];

void checkUnnamed66(core.List<core.String> o) {
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

core.Map<core.String, core.String> buildUnnamed67() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed67(core.Map<core.String, core.String> o) {
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

core.int buildCounterSparkJob = 0;
api.SparkJob buildSparkJob() {
  final o = api.SparkJob();
  buildCounterSparkJob++;
  if (buildCounterSparkJob < 3) {
    o.archiveUris = buildUnnamed63();
    o.args = buildUnnamed64();
    o.fileUris = buildUnnamed65();
    o.jarFileUris = buildUnnamed66();
    o.loggingConfig = buildLoggingConfig();
    o.mainClass = 'foo';
    o.mainJarFileUri = 'foo';
    o.properties = buildUnnamed67();
  }
  buildCounterSparkJob--;
  return o;
}

void checkSparkJob(api.SparkJob o) {
  buildCounterSparkJob++;
  if (buildCounterSparkJob < 3) {
    checkUnnamed63(o.archiveUris!);
    checkUnnamed64(o.args!);
    checkUnnamed65(o.fileUris!);
    checkUnnamed66(o.jarFileUris!);
    checkLoggingConfig(o.loggingConfig!);
    unittest.expect(
      o.mainClass!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mainJarFileUri!,
      unittest.equals('foo'),
    );
    checkUnnamed67(o.properties!);
  }
  buildCounterSparkJob--;
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

core.List<core.String> buildUnnamed69() => [
      'foo',
      'foo',
    ];

void checkUnnamed69(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed70() => [
      'foo',
      'foo',
    ];

void checkUnnamed70(core.List<core.String> o) {
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

core.int buildCounterSparkRJob = 0;
api.SparkRJob buildSparkRJob() {
  final o = api.SparkRJob();
  buildCounterSparkRJob++;
  if (buildCounterSparkRJob < 3) {
    o.archiveUris = buildUnnamed68();
    o.args = buildUnnamed69();
    o.fileUris = buildUnnamed70();
    o.loggingConfig = buildLoggingConfig();
    o.mainRFileUri = 'foo';
    o.properties = buildUnnamed71();
  }
  buildCounterSparkRJob--;
  return o;
}

void checkSparkRJob(api.SparkRJob o) {
  buildCounterSparkRJob++;
  if (buildCounterSparkRJob < 3) {
    checkUnnamed68(o.archiveUris!);
    checkUnnamed69(o.args!);
    checkUnnamed70(o.fileUris!);
    checkLoggingConfig(o.loggingConfig!);
    unittest.expect(
      o.mainRFileUri!,
      unittest.equals('foo'),
    );
    checkUnnamed71(o.properties!);
  }
  buildCounterSparkRJob--;
}

core.List<core.String> buildUnnamed72() => [
      'foo',
      'foo',
    ];

void checkUnnamed72(core.List<core.String> o) {
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

core.int buildCounterSparkSqlJob = 0;
api.SparkSqlJob buildSparkSqlJob() {
  final o = api.SparkSqlJob();
  buildCounterSparkSqlJob++;
  if (buildCounterSparkSqlJob < 3) {
    o.jarFileUris = buildUnnamed72();
    o.loggingConfig = buildLoggingConfig();
    o.properties = buildUnnamed73();
    o.queryFileUri = 'foo';
    o.queryList = buildQueryList();
    o.scriptVariables = buildUnnamed74();
  }
  buildCounterSparkSqlJob--;
  return o;
}

void checkSparkSqlJob(api.SparkSqlJob o) {
  buildCounterSparkSqlJob++;
  if (buildCounterSparkSqlJob < 3) {
    checkUnnamed72(o.jarFileUris!);
    checkLoggingConfig(o.loggingConfig!);
    checkUnnamed73(o.properties!);
    unittest.expect(
      o.queryFileUri!,
      unittest.equals('foo'),
    );
    checkQueryList(o.queryList!);
    checkUnnamed74(o.scriptVariables!);
  }
  buildCounterSparkSqlJob--;
}

core.int buildCounterStartClusterRequest = 0;
api.StartClusterRequest buildStartClusterRequest() {
  final o = api.StartClusterRequest();
  buildCounterStartClusterRequest++;
  if (buildCounterStartClusterRequest < 3) {
    o.clusterUuid = 'foo';
    o.requestId = 'foo';
  }
  buildCounterStartClusterRequest--;
  return o;
}

void checkStartClusterRequest(api.StartClusterRequest o) {
  buildCounterStartClusterRequest++;
  if (buildCounterStartClusterRequest < 3) {
    unittest.expect(
      o.clusterUuid!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
  }
  buildCounterStartClusterRequest--;
}

core.Map<core.String, core.Object?> buildUnnamed75() => {
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

void checkUnnamed75(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed76() => [
      buildUnnamed75(),
      buildUnnamed75(),
    ];

void checkUnnamed76(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed75(o[0]);
  checkUnnamed75(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed76();
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
    checkUnnamed76(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.int buildCounterStopClusterRequest = 0;
api.StopClusterRequest buildStopClusterRequest() {
  final o = api.StopClusterRequest();
  buildCounterStopClusterRequest++;
  if (buildCounterStopClusterRequest < 3) {
    o.clusterUuid = 'foo';
    o.requestId = 'foo';
  }
  buildCounterStopClusterRequest--;
  return o;
}

void checkStopClusterRequest(api.StopClusterRequest o) {
  buildCounterStopClusterRequest++;
  if (buildCounterStopClusterRequest < 3) {
    unittest.expect(
      o.clusterUuid!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
  }
  buildCounterStopClusterRequest--;
}

core.int buildCounterSubmitJobRequest = 0;
api.SubmitJobRequest buildSubmitJobRequest() {
  final o = api.SubmitJobRequest();
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
    checkJob(o.job!);
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
  }
  buildCounterSubmitJobRequest--;
}

core.List<core.String> buildUnnamed77() => [
      'foo',
      'foo',
    ];

void checkUnnamed77(core.List<core.String> o) {
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

core.int buildCounterTemplateParameter = 0;
api.TemplateParameter buildTemplateParameter() {
  final o = api.TemplateParameter();
  buildCounterTemplateParameter++;
  if (buildCounterTemplateParameter < 3) {
    o.description = 'foo';
    o.fields = buildUnnamed77();
    o.name = 'foo';
    o.validation = buildParameterValidation();
  }
  buildCounterTemplateParameter--;
  return o;
}

void checkTemplateParameter(api.TemplateParameter o) {
  buildCounterTemplateParameter++;
  if (buildCounterTemplateParameter < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkUnnamed77(o.fields!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkParameterValidation(o.validation!);
  }
  buildCounterTemplateParameter--;
}

core.List<core.String> buildUnnamed78() => [
      'foo',
      'foo',
    ];

void checkUnnamed78(core.List<core.String> o) {
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
    o.permissions = buildUnnamed78();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

void checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed78(o.permissions!);
  }
  buildCounterTestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed79() => [
      'foo',
      'foo',
    ];

void checkUnnamed79(core.List<core.String> o) {
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
    o.permissions = buildUnnamed79();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed79(o.permissions!);
  }
  buildCounterTestIamPermissionsResponse--;
}

core.List<core.String> buildUnnamed80() => [
      'foo',
      'foo',
    ];

void checkUnnamed80(core.List<core.String> o) {
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

core.int buildCounterValueValidation = 0;
api.ValueValidation buildValueValidation() {
  final o = api.ValueValidation();
  buildCounterValueValidation++;
  if (buildCounterValueValidation < 3) {
    o.values = buildUnnamed80();
  }
  buildCounterValueValidation--;
  return o;
}

void checkValueValidation(api.ValueValidation o) {
  buildCounterValueValidation++;
  if (buildCounterValueValidation < 3) {
    checkUnnamed80(o.values!);
  }
  buildCounterValueValidation--;
}

core.List<api.WorkflowNode> buildUnnamed81() => [
      buildWorkflowNode(),
      buildWorkflowNode(),
    ];

void checkUnnamed81(core.List<api.WorkflowNode> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWorkflowNode(o[0]);
  checkWorkflowNode(o[1]);
}

core.int buildCounterWorkflowGraph = 0;
api.WorkflowGraph buildWorkflowGraph() {
  final o = api.WorkflowGraph();
  buildCounterWorkflowGraph++;
  if (buildCounterWorkflowGraph < 3) {
    o.nodes = buildUnnamed81();
  }
  buildCounterWorkflowGraph--;
  return o;
}

void checkWorkflowGraph(api.WorkflowGraph o) {
  buildCounterWorkflowGraph++;
  if (buildCounterWorkflowGraph < 3) {
    checkUnnamed81(o.nodes!);
  }
  buildCounterWorkflowGraph--;
}

core.Map<core.String, core.String> buildUnnamed82() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed82(core.Map<core.String, core.String> o) {
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

core.int buildCounterWorkflowMetadata = 0;
api.WorkflowMetadata buildWorkflowMetadata() {
  final o = api.WorkflowMetadata();
  buildCounterWorkflowMetadata++;
  if (buildCounterWorkflowMetadata < 3) {
    o.clusterName = 'foo';
    o.clusterUuid = 'foo';
    o.createCluster = buildClusterOperation();
    o.dagEndTime = 'foo';
    o.dagStartTime = 'foo';
    o.dagTimeout = 'foo';
    o.deleteCluster = buildClusterOperation();
    o.endTime = 'foo';
    o.graph = buildWorkflowGraph();
    o.parameters = buildUnnamed82();
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
    unittest.expect(
      o.clusterName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.clusterUuid!,
      unittest.equals('foo'),
    );
    checkClusterOperation(o.createCluster!);
    unittest.expect(
      o.dagEndTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dagStartTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dagTimeout!,
      unittest.equals('foo'),
    );
    checkClusterOperation(o.deleteCluster!);
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    checkWorkflowGraph(o.graph!);
    checkUnnamed82(o.parameters!);
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.template!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals(42),
    );
  }
  buildCounterWorkflowMetadata--;
}

core.List<core.String> buildUnnamed83() => [
      'foo',
      'foo',
    ];

void checkUnnamed83(core.List<core.String> o) {
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

core.int buildCounterWorkflowNode = 0;
api.WorkflowNode buildWorkflowNode() {
  final o = api.WorkflowNode();
  buildCounterWorkflowNode++;
  if (buildCounterWorkflowNode < 3) {
    o.error = 'foo';
    o.jobId = 'foo';
    o.prerequisiteStepIds = buildUnnamed83();
    o.state = 'foo';
    o.stepId = 'foo';
  }
  buildCounterWorkflowNode--;
  return o;
}

void checkWorkflowNode(api.WorkflowNode o) {
  buildCounterWorkflowNode++;
  if (buildCounterWorkflowNode < 3) {
    unittest.expect(
      o.error!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.jobId!,
      unittest.equals('foo'),
    );
    checkUnnamed83(o.prerequisiteStepIds!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.stepId!,
      unittest.equals('foo'),
    );
  }
  buildCounterWorkflowNode--;
}

core.List<api.OrderedJob> buildUnnamed84() => [
      buildOrderedJob(),
      buildOrderedJob(),
    ];

void checkUnnamed84(core.List<api.OrderedJob> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderedJob(o[0]);
  checkOrderedJob(o[1]);
}

core.Map<core.String, core.String> buildUnnamed85() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed85(core.Map<core.String, core.String> o) {
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

core.List<api.TemplateParameter> buildUnnamed86() => [
      buildTemplateParameter(),
      buildTemplateParameter(),
    ];

void checkUnnamed86(core.List<api.TemplateParameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTemplateParameter(o[0]);
  checkTemplateParameter(o[1]);
}

core.int buildCounterWorkflowTemplate = 0;
api.WorkflowTemplate buildWorkflowTemplate() {
  final o = api.WorkflowTemplate();
  buildCounterWorkflowTemplate++;
  if (buildCounterWorkflowTemplate < 3) {
    o.createTime = 'foo';
    o.dagTimeout = 'foo';
    o.id = 'foo';
    o.jobs = buildUnnamed84();
    o.labels = buildUnnamed85();
    o.name = 'foo';
    o.parameters = buildUnnamed86();
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
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dagTimeout!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkUnnamed84(o.jobs!);
    checkUnnamed85(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed86(o.parameters!);
    checkWorkflowTemplatePlacement(o.placement!);
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals(42),
    );
  }
  buildCounterWorkflowTemplate--;
}

core.int buildCounterWorkflowTemplatePlacement = 0;
api.WorkflowTemplatePlacement buildWorkflowTemplatePlacement() {
  final o = api.WorkflowTemplatePlacement();
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
    checkClusterSelector(o.clusterSelector!);
    checkManagedCluster(o.managedCluster!);
  }
  buildCounterWorkflowTemplatePlacement--;
}

core.int buildCounterYarnApplication = 0;
api.YarnApplication buildYarnApplication() {
  final o = api.YarnApplication();
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
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.progress!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.trackingUrl!,
      unittest.equals('foo'),
    );
  }
  buildCounterYarnApplication--;
}

void main() {
  unittest.group('obj-schema-AcceleratorConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAcceleratorConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AcceleratorConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAcceleratorConfig(od);
    });
  });

  unittest.group('obj-schema-AutoscalingConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAutoscalingConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AutoscalingConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAutoscalingConfig(od);
    });
  });

  unittest.group('obj-schema-AutoscalingPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAutoscalingPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AutoscalingPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAutoscalingPolicy(od);
    });
  });

  unittest.group('obj-schema-BasicAutoscalingAlgorithm', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBasicAutoscalingAlgorithm();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BasicAutoscalingAlgorithm.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBasicAutoscalingAlgorithm(od);
    });
  });

  unittest.group('obj-schema-BasicYarnAutoscalingConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBasicYarnAutoscalingConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BasicYarnAutoscalingConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBasicYarnAutoscalingConfig(od);
    });
  });

  unittest.group('obj-schema-BatchOperationMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchOperationMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchOperationMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchOperationMetadata(od);
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

  unittest.group('obj-schema-CancelJobRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCancelJobRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CancelJobRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCancelJobRequest(od);
    });
  });

  unittest.group('obj-schema-Cluster', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCluster();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Cluster.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCluster(od);
    });
  });

  unittest.group('obj-schema-ClusterConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClusterConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ClusterConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkClusterConfig(od);
    });
  });

  unittest.group('obj-schema-ClusterMetrics', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClusterMetrics();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ClusterMetrics.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkClusterMetrics(od);
    });
  });

  unittest.group('obj-schema-ClusterOperation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClusterOperation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ClusterOperation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkClusterOperation(od);
    });
  });

  unittest.group('obj-schema-ClusterOperationMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClusterOperationMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ClusterOperationMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkClusterOperationMetadata(od);
    });
  });

  unittest.group('obj-schema-ClusterOperationStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClusterOperationStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ClusterOperationStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkClusterOperationStatus(od);
    });
  });

  unittest.group('obj-schema-ClusterSelector', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClusterSelector();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ClusterSelector.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkClusterSelector(od);
    });
  });

  unittest.group('obj-schema-ClusterStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClusterStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ClusterStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkClusterStatus(od);
    });
  });

  unittest.group('obj-schema-ConfidentialInstanceConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConfidentialInstanceConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConfidentialInstanceConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConfidentialInstanceConfig(od);
    });
  });

  unittest.group('obj-schema-DiagnoseClusterRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDiagnoseClusterRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DiagnoseClusterRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDiagnoseClusterRequest(od);
    });
  });

  unittest.group('obj-schema-DiagnoseClusterResults', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDiagnoseClusterResults();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DiagnoseClusterResults.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDiagnoseClusterResults(od);
    });
  });

  unittest.group('obj-schema-DiskConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDiskConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.DiskConfig.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDiskConfig(od);
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

  unittest.group('obj-schema-EncryptionConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEncryptionConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EncryptionConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEncryptionConfig(od);
    });
  });

  unittest.group('obj-schema-EndpointConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEndpointConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EndpointConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEndpointConfig(od);
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

  unittest.group('obj-schema-GceClusterConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGceClusterConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GceClusterConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGceClusterConfig(od);
    });
  });

  unittest.group('obj-schema-GetIamPolicyRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGetIamPolicyRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GetIamPolicyRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGetIamPolicyRequest(od);
    });
  });

  unittest.group('obj-schema-GetPolicyOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGetPolicyOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GetPolicyOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGetPolicyOptions(od);
    });
  });

  unittest.group('obj-schema-GkeClusterConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGkeClusterConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GkeClusterConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGkeClusterConfig(od);
    });
  });

  unittest.group('obj-schema-HadoopJob', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHadoopJob();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.HadoopJob.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkHadoopJob(od);
    });
  });

  unittest.group('obj-schema-HiveJob', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHiveJob();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.HiveJob.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkHiveJob(od);
    });
  });

  unittest.group('obj-schema-IdentityConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIdentityConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IdentityConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIdentityConfig(od);
    });
  });

  unittest.group('obj-schema-InjectCredentialsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInjectCredentialsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InjectCredentialsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInjectCredentialsRequest(od);
    });
  });

  unittest.group('obj-schema-InstanceGroupAutoscalingPolicyConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInstanceGroupAutoscalingPolicyConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InstanceGroupAutoscalingPolicyConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInstanceGroupAutoscalingPolicyConfig(od);
    });
  });

  unittest.group('obj-schema-InstanceGroupConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInstanceGroupConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InstanceGroupConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInstanceGroupConfig(od);
    });
  });

  unittest.group('obj-schema-InstanceReference', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInstanceReference();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InstanceReference.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInstanceReference(od);
    });
  });

  unittest.group('obj-schema-InstantiateWorkflowTemplateRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInstantiateWorkflowTemplateRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InstantiateWorkflowTemplateRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInstantiateWorkflowTemplateRequest(od);
    });
  });

  unittest.group('obj-schema-Job', () {
    unittest.test('to-json--from-json', () async {
      final o = buildJob();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Job.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkJob(od);
    });
  });

  unittest.group('obj-schema-JobMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildJobMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.JobMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkJobMetadata(od);
    });
  });

  unittest.group('obj-schema-JobPlacement', () {
    unittest.test('to-json--from-json', () async {
      final o = buildJobPlacement();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.JobPlacement.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkJobPlacement(od);
    });
  });

  unittest.group('obj-schema-JobReference', () {
    unittest.test('to-json--from-json', () async {
      final o = buildJobReference();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.JobReference.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkJobReference(od);
    });
  });

  unittest.group('obj-schema-JobScheduling', () {
    unittest.test('to-json--from-json', () async {
      final o = buildJobScheduling();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.JobScheduling.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkJobScheduling(od);
    });
  });

  unittest.group('obj-schema-JobStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildJobStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.JobStatus.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkJobStatus(od);
    });
  });

  unittest.group('obj-schema-KerberosConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildKerberosConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.KerberosConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkKerberosConfig(od);
    });
  });

  unittest.group('obj-schema-LifecycleConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLifecycleConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LifecycleConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLifecycleConfig(od);
    });
  });

  unittest.group('obj-schema-ListAutoscalingPoliciesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAutoscalingPoliciesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAutoscalingPoliciesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListAutoscalingPoliciesResponse(od);
    });
  });

  unittest.group('obj-schema-ListClustersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListClustersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListClustersResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListClustersResponse(od);
    });
  });

  unittest.group('obj-schema-ListJobsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListJobsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListJobsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListJobsResponse(od);
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

  unittest.group('obj-schema-ListWorkflowTemplatesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListWorkflowTemplatesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListWorkflowTemplatesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListWorkflowTemplatesResponse(od);
    });
  });

  unittest.group('obj-schema-LoggingConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLoggingConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LoggingConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLoggingConfig(od);
    });
  });

  unittest.group('obj-schema-ManagedCluster', () {
    unittest.test('to-json--from-json', () async {
      final o = buildManagedCluster();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ManagedCluster.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkManagedCluster(od);
    });
  });

  unittest.group('obj-schema-ManagedGroupConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildManagedGroupConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ManagedGroupConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkManagedGroupConfig(od);
    });
  });

  unittest.group('obj-schema-MetastoreConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMetastoreConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MetastoreConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMetastoreConfig(od);
    });
  });

  unittest.group('obj-schema-NamespacedGkeDeploymentTarget', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNamespacedGkeDeploymentTarget();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NamespacedGkeDeploymentTarget.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNamespacedGkeDeploymentTarget(od);
    });
  });

  unittest.group('obj-schema-NodeGroupAffinity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNodeGroupAffinity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NodeGroupAffinity.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNodeGroupAffinity(od);
    });
  });

  unittest.group('obj-schema-NodeInitializationAction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNodeInitializationAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NodeInitializationAction.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNodeInitializationAction(od);
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

  unittest.group('obj-schema-OrderedJob', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrderedJob();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.OrderedJob.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOrderedJob(od);
    });
  });

  unittest.group('obj-schema-ParameterValidation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildParameterValidation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ParameterValidation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkParameterValidation(od);
    });
  });

  unittest.group('obj-schema-PigJob', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPigJob();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.PigJob.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPigJob(od);
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

  unittest.group('obj-schema-PrestoJob', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPrestoJob();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.PrestoJob.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPrestoJob(od);
    });
  });

  unittest.group('obj-schema-PySparkJob', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPySparkJob();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.PySparkJob.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPySparkJob(od);
    });
  });

  unittest.group('obj-schema-QueryList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQueryList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.QueryList.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkQueryList(od);
    });
  });

  unittest.group('obj-schema-RegexValidation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRegexValidation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RegexValidation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRegexValidation(od);
    });
  });

  unittest.group('obj-schema-RepairClusterRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRepairClusterRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RepairClusterRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRepairClusterRequest(od);
    });
  });

  unittest.group('obj-schema-ReservationAffinity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReservationAffinity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReservationAffinity.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReservationAffinity(od);
    });
  });

  unittest.group('obj-schema-SecurityConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSecurityConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SecurityConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSecurityConfig(od);
    });
  });

  unittest.group('obj-schema-SessionOperationMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSessionOperationMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SessionOperationMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSessionOperationMetadata(od);
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

  unittest.group('obj-schema-ShieldedInstanceConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildShieldedInstanceConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ShieldedInstanceConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkShieldedInstanceConfig(od);
    });
  });

  unittest.group('obj-schema-SoftwareConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSoftwareConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SoftwareConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSoftwareConfig(od);
    });
  });

  unittest.group('obj-schema-SparkJob', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSparkJob();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.SparkJob.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSparkJob(od);
    });
  });

  unittest.group('obj-schema-SparkRJob', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSparkRJob();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.SparkRJob.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSparkRJob(od);
    });
  });

  unittest.group('obj-schema-SparkSqlJob', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSparkSqlJob();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SparkSqlJob.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSparkSqlJob(od);
    });
  });

  unittest.group('obj-schema-StartClusterRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStartClusterRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StartClusterRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStartClusterRequest(od);
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

  unittest.group('obj-schema-StopClusterRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStopClusterRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StopClusterRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStopClusterRequest(od);
    });
  });

  unittest.group('obj-schema-SubmitJobRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSubmitJobRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SubmitJobRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSubmitJobRequest(od);
    });
  });

  unittest.group('obj-schema-TemplateParameter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTemplateParameter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TemplateParameter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTemplateParameter(od);
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

  unittest.group('obj-schema-ValueValidation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildValueValidation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ValueValidation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkValueValidation(od);
    });
  });

  unittest.group('obj-schema-WorkflowGraph', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWorkflowGraph();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WorkflowGraph.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWorkflowGraph(od);
    });
  });

  unittest.group('obj-schema-WorkflowMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWorkflowMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WorkflowMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWorkflowMetadata(od);
    });
  });

  unittest.group('obj-schema-WorkflowNode', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWorkflowNode();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WorkflowNode.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWorkflowNode(od);
    });
  });

  unittest.group('obj-schema-WorkflowTemplate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWorkflowTemplate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WorkflowTemplate.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWorkflowTemplate(od);
    });
  });

  unittest.group('obj-schema-WorkflowTemplatePlacement', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWorkflowTemplatePlacement();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WorkflowTemplatePlacement.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWorkflowTemplatePlacement(od);
    });
  });

  unittest.group('obj-schema-YarnApplication', () {
    unittest.test('to-json--from-json', () async {
      final o = buildYarnApplication();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.YarnApplication.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkYarnApplication(od);
    });
  });

  unittest.group('resource-ProjectsLocationsAutoscalingPoliciesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.locations.autoscalingPolicies;
      final arg_request = buildAutoscalingPolicy();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AutoscalingPolicy.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAutoscalingPolicy(obj);

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
        final resp = convert.json.encode(buildAutoscalingPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkAutoscalingPolicy(response as api.AutoscalingPolicy);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.locations.autoscalingPolicies;
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
      final res = api.DataprocApi(mock).projects.locations.autoscalingPolicies;
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
        final resp = convert.json.encode(buildAutoscalingPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkAutoscalingPolicy(response as api.AutoscalingPolicy);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.locations.autoscalingPolicies;
      final arg_request = buildGetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGetIamPolicyRequest(obj);

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
      final response = await res.getIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.locations.autoscalingPolicies;
      final arg_parent = 'foo';
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
            convert.json.encode(buildListAutoscalingPoliciesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListAutoscalingPoliciesResponse(
          response as api.ListAutoscalingPoliciesResponse);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.locations.autoscalingPolicies;
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
      final res = api.DataprocApi(mock).projects.locations.autoscalingPolicies;
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

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.locations.autoscalingPolicies;
      final arg_request = buildAutoscalingPolicy();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AutoscalingPolicy.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAutoscalingPolicy(obj);

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
        final resp = convert.json.encode(buildAutoscalingPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.update(arg_request, arg_name, $fields: arg_$fields);
      checkAutoscalingPolicy(response as api.AutoscalingPolicy);
    });
  });

  unittest.group('resource-ProjectsLocationsWorkflowTemplatesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.locations.workflowTemplates;
      final arg_request = buildWorkflowTemplate();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.WorkflowTemplate.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkWorkflowTemplate(obj);

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
        final resp = convert.json.encode(buildWorkflowTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkWorkflowTemplate(response as api.WorkflowTemplate);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.locations.workflowTemplates;
      final arg_name = 'foo';
      final arg_version = 42;
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
          core.int.parse(queryMap['version']!.first),
          unittest.equals(arg_version),
        );
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
      final response = await res.delete(arg_name,
          version: arg_version, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.locations.workflowTemplates;
      final arg_name = 'foo';
      final arg_version = 42;
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
          core.int.parse(queryMap['version']!.first),
          unittest.equals(arg_version),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildWorkflowTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_name, version: arg_version, $fields: arg_$fields);
      checkWorkflowTemplate(response as api.WorkflowTemplate);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.locations.workflowTemplates;
      final arg_request = buildGetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGetIamPolicyRequest(obj);

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
      final response = await res.getIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--instantiate', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.locations.workflowTemplates;
      final arg_request = buildInstantiateWorkflowTemplateRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.InstantiateWorkflowTemplateRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkInstantiateWorkflowTemplateRequest(obj);

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
      final response =
          await res.instantiate(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--instantiateInline', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.locations.workflowTemplates;
      final arg_request = buildWorkflowTemplate();
      final arg_parent = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.WorkflowTemplate.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkWorkflowTemplate(obj);

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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.instantiateInline(arg_request, arg_parent,
          requestId: arg_requestId, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.locations.workflowTemplates;
      final arg_parent = 'foo';
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
        final resp = convert.json.encode(buildListWorkflowTemplatesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListWorkflowTemplatesResponse(
          response as api.ListWorkflowTemplatesResponse);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.locations.workflowTemplates;
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
      final res = api.DataprocApi(mock).projects.locations.workflowTemplates;
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

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.locations.workflowTemplates;
      final arg_request = buildWorkflowTemplate();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.WorkflowTemplate.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkWorkflowTemplate(obj);

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
        final resp = convert.json.encode(buildWorkflowTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.update(arg_request, arg_name, $fields: arg_$fields);
      checkWorkflowTemplate(response as api.WorkflowTemplate);
    });
  });

  unittest.group('resource-ProjectsRegionsAutoscalingPoliciesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.autoscalingPolicies;
      final arg_request = buildAutoscalingPolicy();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AutoscalingPolicy.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAutoscalingPolicy(obj);

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
        final resp = convert.json.encode(buildAutoscalingPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkAutoscalingPolicy(response as api.AutoscalingPolicy);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.autoscalingPolicies;
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
      final res = api.DataprocApi(mock).projects.regions.autoscalingPolicies;
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
        final resp = convert.json.encode(buildAutoscalingPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkAutoscalingPolicy(response as api.AutoscalingPolicy);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.autoscalingPolicies;
      final arg_request = buildGetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGetIamPolicyRequest(obj);

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
      final response = await res.getIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.autoscalingPolicies;
      final arg_parent = 'foo';
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
            convert.json.encode(buildListAutoscalingPoliciesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListAutoscalingPoliciesResponse(
          response as api.ListAutoscalingPoliciesResponse);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.autoscalingPolicies;
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
      final res = api.DataprocApi(mock).projects.regions.autoscalingPolicies;
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

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.autoscalingPolicies;
      final arg_request = buildAutoscalingPolicy();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AutoscalingPolicy.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAutoscalingPolicy(obj);

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
        final resp = convert.json.encode(buildAutoscalingPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.update(arg_request, arg_name, $fields: arg_$fields);
      checkAutoscalingPolicy(response as api.AutoscalingPolicy);
    });
  });

  unittest.group('resource-ProjectsRegionsClustersResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.clusters;
      final arg_request = buildCluster();
      final arg_projectId = 'foo';
      final arg_region = 'foo';
      final arg_actionOnFailedPrimaryWorkers = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Cluster.fromJson(json as core.Map<core.String, core.dynamic>);
        checkCluster(obj);

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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/regions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/regions/'),
        );
        pathOffset += 9;
        index = path.indexOf('/clusters', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_region'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/clusters'),
        );
        pathOffset += 9;

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
          queryMap['actionOnFailedPrimaryWorkers']!.first,
          unittest.equals(arg_actionOnFailedPrimaryWorkers),
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_projectId, arg_region,
          actionOnFailedPrimaryWorkers: arg_actionOnFailedPrimaryWorkers,
          requestId: arg_requestId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.clusters;
      final arg_projectId = 'foo';
      final arg_region = 'foo';
      final arg_clusterName = 'foo';
      final arg_clusterUuid = 'foo';
      final arg_requestId = 'foo';
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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/regions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/regions/'),
        );
        pathOffset += 9;
        index = path.indexOf('/clusters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_region'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/clusters/'),
        );
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_clusterName'),
        );

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
          queryMap['clusterUuid']!.first,
          unittest.equals(arg_clusterUuid),
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(
          arg_projectId, arg_region, arg_clusterName,
          clusterUuid: arg_clusterUuid,
          requestId: arg_requestId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--diagnose', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.clusters;
      final arg_request = buildDiagnoseClusterRequest();
      final arg_projectId = 'foo';
      final arg_region = 'foo';
      final arg_clusterName = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.DiagnoseClusterRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDiagnoseClusterRequest(obj);

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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/regions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/regions/'),
        );
        pathOffset += 9;
        index = path.indexOf('/clusters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_region'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/clusters/'),
        );
        pathOffset += 10;
        index = path.indexOf(':diagnose', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_clusterName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals(':diagnose'),
        );
        pathOffset += 9;

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
      final response = await res.diagnose(
          arg_request, arg_projectId, arg_region, arg_clusterName,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.clusters;
      final arg_projectId = 'foo';
      final arg_region = 'foo';
      final arg_clusterName = 'foo';
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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/regions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/regions/'),
        );
        pathOffset += 9;
        index = path.indexOf('/clusters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_region'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/clusters/'),
        );
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_clusterName'),
        );

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
        final resp = convert.json.encode(buildCluster());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_projectId, arg_region, arg_clusterName,
          $fields: arg_$fields);
      checkCluster(response as api.Cluster);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.clusters;
      final arg_request = buildGetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGetIamPolicyRequest(obj);

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
      final response = await res.getIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--injectCredentials', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.clusters;
      final arg_request = buildInjectCredentialsRequest();
      final arg_project = 'foo';
      final arg_region = 'foo';
      final arg_cluster = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.InjectCredentialsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkInjectCredentialsRequest(obj);

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
      final response = await res.injectCredentials(
          arg_request, arg_project, arg_region, arg_cluster,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.clusters;
      final arg_projectId = 'foo';
      final arg_region = 'foo';
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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/regions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/regions/'),
        );
        pathOffset += 9;
        index = path.indexOf('/clusters', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_region'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/clusters'),
        );
        pathOffset += 9;

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
        final resp = convert.json.encode(buildListClustersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_projectId, arg_region,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListClustersResponse(response as api.ListClustersResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.clusters;
      final arg_request = buildCluster();
      final arg_projectId = 'foo';
      final arg_region = 'foo';
      final arg_clusterName = 'foo';
      final arg_gracefulDecommissionTimeout = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Cluster.fromJson(json as core.Map<core.String, core.dynamic>);
        checkCluster(obj);

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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/regions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/regions/'),
        );
        pathOffset += 9;
        index = path.indexOf('/clusters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_region'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/clusters/'),
        );
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_clusterName'),
        );

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
          queryMap['gracefulDecommissionTimeout']!.first,
          unittest.equals(arg_gracefulDecommissionTimeout),
        );
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(
          arg_request, arg_projectId, arg_region, arg_clusterName,
          gracefulDecommissionTimeout: arg_gracefulDecommissionTimeout,
          requestId: arg_requestId,
          updateMask: arg_updateMask,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--repair', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.clusters;
      final arg_request = buildRepairClusterRequest();
      final arg_projectId = 'foo';
      final arg_region = 'foo';
      final arg_clusterName = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RepairClusterRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRepairClusterRequest(obj);

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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/regions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/regions/'),
        );
        pathOffset += 9;
        index = path.indexOf('/clusters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_region'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/clusters/'),
        );
        pathOffset += 10;
        index = path.indexOf(':repair', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_clusterName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals(':repair'),
        );
        pathOffset += 7;

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
      final response = await res.repair(
          arg_request, arg_projectId, arg_region, arg_clusterName,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.clusters;
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

    unittest.test('method--start', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.clusters;
      final arg_request = buildStartClusterRequest();
      final arg_projectId = 'foo';
      final arg_region = 'foo';
      final arg_clusterName = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.StartClusterRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkStartClusterRequest(obj);

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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/regions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/regions/'),
        );
        pathOffset += 9;
        index = path.indexOf('/clusters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_region'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/clusters/'),
        );
        pathOffset += 10;
        index = path.indexOf(':start', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_clusterName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals(':start'),
        );
        pathOffset += 6;

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
      final response = await res.start(
          arg_request, arg_projectId, arg_region, arg_clusterName,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--stop', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.clusters;
      final arg_request = buildStopClusterRequest();
      final arg_projectId = 'foo';
      final arg_region = 'foo';
      final arg_clusterName = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.StopClusterRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkStopClusterRequest(obj);

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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/regions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/regions/'),
        );
        pathOffset += 9;
        index = path.indexOf('/clusters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_region'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/clusters/'),
        );
        pathOffset += 10;
        index = path.indexOf(':stop', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_clusterName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 5),
          unittest.equals(':stop'),
        );
        pathOffset += 5;

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
      final response = await res.stop(
          arg_request, arg_projectId, arg_region, arg_clusterName,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.clusters;
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
  });

  unittest.group('resource-ProjectsRegionsJobsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.jobs;
      final arg_request = buildCancelJobRequest();
      final arg_projectId = 'foo';
      final arg_region = 'foo';
      final arg_jobId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CancelJobRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCancelJobRequest(obj);

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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/regions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/regions/'),
        );
        pathOffset += 9;
        index = path.indexOf('/jobs/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_region'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/jobs/'),
        );
        pathOffset += 6;
        index = path.indexOf(':cancel', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_jobId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals(':cancel'),
        );
        pathOffset += 7;

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
        final resp = convert.json.encode(buildJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.cancel(
          arg_request, arg_projectId, arg_region, arg_jobId,
          $fields: arg_$fields);
      checkJob(response as api.Job);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.jobs;
      final arg_projectId = 'foo';
      final arg_region = 'foo';
      final arg_jobId = 'foo';
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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/regions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/regions/'),
        );
        pathOffset += 9;
        index = path.indexOf('/jobs/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_region'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/jobs/'),
        );
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_jobId'),
        );

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
      final response = await res.delete(arg_projectId, arg_region, arg_jobId,
          $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.jobs;
      final arg_projectId = 'foo';
      final arg_region = 'foo';
      final arg_jobId = 'foo';
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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/regions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/regions/'),
        );
        pathOffset += 9;
        index = path.indexOf('/jobs/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_region'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/jobs/'),
        );
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_jobId'),
        );

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
        final resp = convert.json.encode(buildJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_projectId, arg_region, arg_jobId,
          $fields: arg_$fields);
      checkJob(response as api.Job);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.jobs;
      final arg_request = buildGetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGetIamPolicyRequest(obj);

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
      final response = await res.getIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.jobs;
      final arg_projectId = 'foo';
      final arg_region = 'foo';
      final arg_clusterName = 'foo';
      final arg_filter = 'foo';
      final arg_jobStateMatcher = 'foo';
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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/regions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/regions/'),
        );
        pathOffset += 9;
        index = path.indexOf('/jobs', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_region'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 5),
          unittest.equals('/jobs'),
        );
        pathOffset += 5;

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
          queryMap['clusterName']!.first,
          unittest.equals(arg_clusterName),
        );
        unittest.expect(
          queryMap['filter']!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          queryMap['jobStateMatcher']!.first,
          unittest.equals(arg_jobStateMatcher),
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
        final resp = convert.json.encode(buildListJobsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_projectId, arg_region,
          clusterName: arg_clusterName,
          filter: arg_filter,
          jobStateMatcher: arg_jobStateMatcher,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListJobsResponse(response as api.ListJobsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.jobs;
      final arg_request = buildJob();
      final arg_projectId = 'foo';
      final arg_region = 'foo';
      final arg_jobId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Job.fromJson(json as core.Map<core.String, core.dynamic>);
        checkJob(obj);

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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/regions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/regions/'),
        );
        pathOffset += 9;
        index = path.indexOf('/jobs/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_region'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/jobs/'),
        );
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_jobId'),
        );

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
        final resp = convert.json.encode(buildJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(
          arg_request, arg_projectId, arg_region, arg_jobId,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkJob(response as api.Job);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.jobs;
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

    unittest.test('method--submit', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.jobs;
      final arg_request = buildSubmitJobRequest();
      final arg_projectId = 'foo';
      final arg_region = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SubmitJobRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSubmitJobRequest(obj);

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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/regions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/regions/'),
        );
        pathOffset += 9;
        index = path.indexOf('/jobs:submit', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_region'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/jobs:submit'),
        );
        pathOffset += 12;

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
        final resp = convert.json.encode(buildJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.submit(arg_request, arg_projectId, arg_region,
          $fields: arg_$fields);
      checkJob(response as api.Job);
    });

    unittest.test('method--submitAsOperation', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.jobs;
      final arg_request = buildSubmitJobRequest();
      final arg_projectId = 'foo';
      final arg_region = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SubmitJobRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSubmitJobRequest(obj);

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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/regions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/regions/'),
        );
        pathOffset += 9;
        index = path.indexOf('/jobs:submitAsOperation', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_region'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 23),
          unittest.equals('/jobs:submitAsOperation'),
        );
        pathOffset += 23;

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
      final response = await res.submitAsOperation(
          arg_request, arg_projectId, arg_region,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.jobs;
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
  });

  unittest.group('resource-ProjectsRegionsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.operations;
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
      final response = await res.cancel(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.operations;
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
      final res = api.DataprocApi(mock).projects.regions.operations;
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

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.operations;
      final arg_request = buildGetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGetIamPolicyRequest(obj);

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
      final response = await res.getIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.operations;
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

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.operations;
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
      final res = api.DataprocApi(mock).projects.regions.operations;
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
  });

  unittest.group('resource-ProjectsRegionsWorkflowTemplatesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.workflowTemplates;
      final arg_request = buildWorkflowTemplate();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.WorkflowTemplate.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkWorkflowTemplate(obj);

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
        final resp = convert.json.encode(buildWorkflowTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkWorkflowTemplate(response as api.WorkflowTemplate);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.workflowTemplates;
      final arg_name = 'foo';
      final arg_version = 42;
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
          core.int.parse(queryMap['version']!.first),
          unittest.equals(arg_version),
        );
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
      final response = await res.delete(arg_name,
          version: arg_version, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.workflowTemplates;
      final arg_name = 'foo';
      final arg_version = 42;
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
          core.int.parse(queryMap['version']!.first),
          unittest.equals(arg_version),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildWorkflowTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_name, version: arg_version, $fields: arg_$fields);
      checkWorkflowTemplate(response as api.WorkflowTemplate);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.workflowTemplates;
      final arg_request = buildGetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGetIamPolicyRequest(obj);

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
      final response = await res.getIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--instantiate', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.workflowTemplates;
      final arg_request = buildInstantiateWorkflowTemplateRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.InstantiateWorkflowTemplateRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkInstantiateWorkflowTemplateRequest(obj);

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
      final response =
          await res.instantiate(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--instantiateInline', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.workflowTemplates;
      final arg_request = buildWorkflowTemplate();
      final arg_parent = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.WorkflowTemplate.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkWorkflowTemplate(obj);

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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.instantiateInline(arg_request, arg_parent,
          requestId: arg_requestId, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.workflowTemplates;
      final arg_parent = 'foo';
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
        final resp = convert.json.encode(buildListWorkflowTemplatesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListWorkflowTemplatesResponse(
          response as api.ListWorkflowTemplatesResponse);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.workflowTemplates;
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
      final res = api.DataprocApi(mock).projects.regions.workflowTemplates;
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

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.workflowTemplates;
      final arg_request = buildWorkflowTemplate();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.WorkflowTemplate.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkWorkflowTemplate(obj);

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
        final resp = convert.json.encode(buildWorkflowTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.update(arg_request, arg_name, $fields: arg_$fields);
      checkWorkflowTemplate(response as api.WorkflowTemplate);
    });
  });
}
