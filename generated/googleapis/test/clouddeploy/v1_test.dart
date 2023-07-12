// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_const_declarations
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_library_directive
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unreachable_from_main
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:googleapis/clouddeploy/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAbandonReleaseRequest = 0;
api.AbandonReleaseRequest buildAbandonReleaseRequest() {
  final o = api.AbandonReleaseRequest();
  buildCounterAbandonReleaseRequest++;
  if (buildCounterAbandonReleaseRequest < 3) {}
  buildCounterAbandonReleaseRequest--;
  return o;
}

void checkAbandonReleaseRequest(api.AbandonReleaseRequest o) {
  buildCounterAbandonReleaseRequest++;
  if (buildCounterAbandonReleaseRequest < 3) {}
  buildCounterAbandonReleaseRequest--;
}

core.int buildCounterAbandonReleaseResponse = 0;
api.AbandonReleaseResponse buildAbandonReleaseResponse() {
  final o = api.AbandonReleaseResponse();
  buildCounterAbandonReleaseResponse++;
  if (buildCounterAbandonReleaseResponse < 3) {}
  buildCounterAbandonReleaseResponse--;
  return o;
}

void checkAbandonReleaseResponse(api.AbandonReleaseResponse o) {
  buildCounterAbandonReleaseResponse++;
  if (buildCounterAbandonReleaseResponse < 3) {}
  buildCounterAbandonReleaseResponse--;
}

core.int buildCounterAdvanceChildRolloutJob = 0;
api.AdvanceChildRolloutJob buildAdvanceChildRolloutJob() {
  final o = api.AdvanceChildRolloutJob();
  buildCounterAdvanceChildRolloutJob++;
  if (buildCounterAdvanceChildRolloutJob < 3) {}
  buildCounterAdvanceChildRolloutJob--;
  return o;
}

void checkAdvanceChildRolloutJob(api.AdvanceChildRolloutJob o) {
  buildCounterAdvanceChildRolloutJob++;
  if (buildCounterAdvanceChildRolloutJob < 3) {}
  buildCounterAdvanceChildRolloutJob--;
}

core.int buildCounterAdvanceChildRolloutJobRun = 0;
api.AdvanceChildRolloutJobRun buildAdvanceChildRolloutJobRun() {
  final o = api.AdvanceChildRolloutJobRun();
  buildCounterAdvanceChildRolloutJobRun++;
  if (buildCounterAdvanceChildRolloutJobRun < 3) {
    o.rollout = 'foo';
    o.rolloutPhaseId = 'foo';
  }
  buildCounterAdvanceChildRolloutJobRun--;
  return o;
}

void checkAdvanceChildRolloutJobRun(api.AdvanceChildRolloutJobRun o) {
  buildCounterAdvanceChildRolloutJobRun++;
  if (buildCounterAdvanceChildRolloutJobRun < 3) {
    unittest.expect(
      o.rollout!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rolloutPhaseId!,
      unittest.equals('foo'),
    );
  }
  buildCounterAdvanceChildRolloutJobRun--;
}

core.int buildCounterAdvanceRolloutRequest = 0;
api.AdvanceRolloutRequest buildAdvanceRolloutRequest() {
  final o = api.AdvanceRolloutRequest();
  buildCounterAdvanceRolloutRequest++;
  if (buildCounterAdvanceRolloutRequest < 3) {
    o.phaseId = 'foo';
  }
  buildCounterAdvanceRolloutRequest--;
  return o;
}

void checkAdvanceRolloutRequest(api.AdvanceRolloutRequest o) {
  buildCounterAdvanceRolloutRequest++;
  if (buildCounterAdvanceRolloutRequest < 3) {
    unittest.expect(
      o.phaseId!,
      unittest.equals('foo'),
    );
  }
  buildCounterAdvanceRolloutRequest--;
}

core.int buildCounterAdvanceRolloutResponse = 0;
api.AdvanceRolloutResponse buildAdvanceRolloutResponse() {
  final o = api.AdvanceRolloutResponse();
  buildCounterAdvanceRolloutResponse++;
  if (buildCounterAdvanceRolloutResponse < 3) {}
  buildCounterAdvanceRolloutResponse--;
  return o;
}

void checkAdvanceRolloutResponse(api.AdvanceRolloutResponse o) {
  buildCounterAdvanceRolloutResponse++;
  if (buildCounterAdvanceRolloutResponse < 3) {}
  buildCounterAdvanceRolloutResponse--;
}

core.int buildCounterAnthosCluster = 0;
api.AnthosCluster buildAnthosCluster() {
  final o = api.AnthosCluster();
  buildCounterAnthosCluster++;
  if (buildCounterAnthosCluster < 3) {
    o.membership = 'foo';
  }
  buildCounterAnthosCluster--;
  return o;
}

void checkAnthosCluster(api.AnthosCluster o) {
  buildCounterAnthosCluster++;
  if (buildCounterAnthosCluster < 3) {
    unittest.expect(
      o.membership!,
      unittest.equals('foo'),
    );
  }
  buildCounterAnthosCluster--;
}

core.int buildCounterApproveRolloutRequest = 0;
api.ApproveRolloutRequest buildApproveRolloutRequest() {
  final o = api.ApproveRolloutRequest();
  buildCounterApproveRolloutRequest++;
  if (buildCounterApproveRolloutRequest < 3) {
    o.approved = true;
  }
  buildCounterApproveRolloutRequest--;
  return o;
}

void checkApproveRolloutRequest(api.ApproveRolloutRequest o) {
  buildCounterApproveRolloutRequest++;
  if (buildCounterApproveRolloutRequest < 3) {
    unittest.expect(o.approved!, unittest.isTrue);
  }
  buildCounterApproveRolloutRequest--;
}

core.int buildCounterApproveRolloutResponse = 0;
api.ApproveRolloutResponse buildApproveRolloutResponse() {
  final o = api.ApproveRolloutResponse();
  buildCounterApproveRolloutResponse++;
  if (buildCounterApproveRolloutResponse < 3) {}
  buildCounterApproveRolloutResponse--;
  return o;
}

void checkApproveRolloutResponse(api.ApproveRolloutResponse o) {
  buildCounterApproveRolloutResponse++;
  if (buildCounterApproveRolloutResponse < 3) {}
  buildCounterApproveRolloutResponse--;
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

core.int buildCounterBuildArtifact = 0;
api.BuildArtifact buildBuildArtifact() {
  final o = api.BuildArtifact();
  buildCounterBuildArtifact++;
  if (buildCounterBuildArtifact < 3) {
    o.image = 'foo';
    o.tag = 'foo';
  }
  buildCounterBuildArtifact--;
  return o;
}

void checkBuildArtifact(api.BuildArtifact o) {
  buildCounterBuildArtifact++;
  if (buildCounterBuildArtifact < 3) {
    unittest.expect(
      o.image!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tag!,
      unittest.equals('foo'),
    );
  }
  buildCounterBuildArtifact--;
}

core.int buildCounterCanary = 0;
api.Canary buildCanary() {
  final o = api.Canary();
  buildCounterCanary++;
  if (buildCounterCanary < 3) {
    o.canaryDeployment = buildCanaryDeployment();
    o.customCanaryDeployment = buildCustomCanaryDeployment();
    o.runtimeConfig = buildRuntimeConfig();
  }
  buildCounterCanary--;
  return o;
}

void checkCanary(api.Canary o) {
  buildCounterCanary++;
  if (buildCounterCanary < 3) {
    checkCanaryDeployment(o.canaryDeployment!);
    checkCustomCanaryDeployment(o.customCanaryDeployment!);
    checkRuntimeConfig(o.runtimeConfig!);
  }
  buildCounterCanary--;
}

core.List<core.int> buildUnnamed3() => [
      42,
      42,
    ];

void checkUnnamed3(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals(42),
  );
  unittest.expect(
    o[1],
    unittest.equals(42),
  );
}

core.int buildCounterCanaryDeployment = 0;
api.CanaryDeployment buildCanaryDeployment() {
  final o = api.CanaryDeployment();
  buildCounterCanaryDeployment++;
  if (buildCounterCanaryDeployment < 3) {
    o.percentages = buildUnnamed3();
    o.verify = true;
  }
  buildCounterCanaryDeployment--;
  return o;
}

void checkCanaryDeployment(api.CanaryDeployment o) {
  buildCounterCanaryDeployment++;
  if (buildCounterCanaryDeployment < 3) {
    checkUnnamed3(o.percentages!);
    unittest.expect(o.verify!, unittest.isTrue);
  }
  buildCounterCanaryDeployment--;
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

core.int buildCounterCancelRolloutRequest = 0;
api.CancelRolloutRequest buildCancelRolloutRequest() {
  final o = api.CancelRolloutRequest();
  buildCounterCancelRolloutRequest++;
  if (buildCounterCancelRolloutRequest < 3) {}
  buildCounterCancelRolloutRequest--;
  return o;
}

void checkCancelRolloutRequest(api.CancelRolloutRequest o) {
  buildCounterCancelRolloutRequest++;
  if (buildCounterCancelRolloutRequest < 3) {}
  buildCounterCancelRolloutRequest--;
}

core.int buildCounterCancelRolloutResponse = 0;
api.CancelRolloutResponse buildCancelRolloutResponse() {
  final o = api.CancelRolloutResponse();
  buildCounterCancelRolloutResponse++;
  if (buildCounterCancelRolloutResponse < 3) {}
  buildCounterCancelRolloutResponse--;
  return o;
}

void checkCancelRolloutResponse(api.CancelRolloutResponse o) {
  buildCounterCancelRolloutResponse++;
  if (buildCounterCancelRolloutResponse < 3) {}
  buildCounterCancelRolloutResponse--;
}

core.List<api.Job> buildUnnamed4() => [
      buildJob(),
      buildJob(),
    ];

void checkUnnamed4(core.List<api.Job> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJob(o[0]);
  checkJob(o[1]);
}

core.List<api.Job> buildUnnamed5() => [
      buildJob(),
      buildJob(),
    ];

void checkUnnamed5(core.List<api.Job> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJob(o[0]);
  checkJob(o[1]);
}

core.int buildCounterChildRolloutJobs = 0;
api.ChildRolloutJobs buildChildRolloutJobs() {
  final o = api.ChildRolloutJobs();
  buildCounterChildRolloutJobs++;
  if (buildCounterChildRolloutJobs < 3) {
    o.advanceRolloutJobs = buildUnnamed4();
    o.createRolloutJobs = buildUnnamed5();
  }
  buildCounterChildRolloutJobs--;
  return o;
}

void checkChildRolloutJobs(api.ChildRolloutJobs o) {
  buildCounterChildRolloutJobs++;
  if (buildCounterChildRolloutJobs < 3) {
    checkUnnamed4(o.advanceRolloutJobs!);
    checkUnnamed5(o.createRolloutJobs!);
  }
  buildCounterChildRolloutJobs--;
}

core.int buildCounterCloudRunConfig = 0;
api.CloudRunConfig buildCloudRunConfig() {
  final o = api.CloudRunConfig();
  buildCounterCloudRunConfig++;
  if (buildCounterCloudRunConfig < 3) {
    o.automaticTrafficControl = true;
  }
  buildCounterCloudRunConfig--;
  return o;
}

void checkCloudRunConfig(api.CloudRunConfig o) {
  buildCounterCloudRunConfig++;
  if (buildCounterCloudRunConfig < 3) {
    unittest.expect(o.automaticTrafficControl!, unittest.isTrue);
  }
  buildCounterCloudRunConfig--;
}

core.int buildCounterCloudRunLocation = 0;
api.CloudRunLocation buildCloudRunLocation() {
  final o = api.CloudRunLocation();
  buildCounterCloudRunLocation++;
  if (buildCounterCloudRunLocation < 3) {
    o.location = 'foo';
  }
  buildCounterCloudRunLocation--;
  return o;
}

void checkCloudRunLocation(api.CloudRunLocation o) {
  buildCounterCloudRunLocation++;
  if (buildCounterCloudRunLocation < 3) {
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
  }
  buildCounterCloudRunLocation--;
}

core.List<core.String> buildUnnamed6() => [
      'foo',
      'foo',
    ];

void checkUnnamed6(core.List<core.String> o) {
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

core.int buildCounterCloudRunMetadata = 0;
api.CloudRunMetadata buildCloudRunMetadata() {
  final o = api.CloudRunMetadata();
  buildCounterCloudRunMetadata++;
  if (buildCounterCloudRunMetadata < 3) {
    o.revision = 'foo';
    o.service = 'foo';
    o.serviceUrls = buildUnnamed6();
  }
  buildCounterCloudRunMetadata--;
  return o;
}

void checkCloudRunMetadata(api.CloudRunMetadata o) {
  buildCounterCloudRunMetadata++;
  if (buildCounterCloudRunMetadata < 3) {
    unittest.expect(
      o.revision!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.service!,
      unittest.equals('foo'),
    );
    checkUnnamed6(o.serviceUrls!);
  }
  buildCounterCloudRunMetadata--;
}

core.int buildCounterCloudRunRenderMetadata = 0;
api.CloudRunRenderMetadata buildCloudRunRenderMetadata() {
  final o = api.CloudRunRenderMetadata();
  buildCounterCloudRunRenderMetadata++;
  if (buildCounterCloudRunRenderMetadata < 3) {
    o.service = 'foo';
  }
  buildCounterCloudRunRenderMetadata--;
  return o;
}

void checkCloudRunRenderMetadata(api.CloudRunRenderMetadata o) {
  buildCounterCloudRunRenderMetadata++;
  if (buildCounterCloudRunRenderMetadata < 3) {
    unittest.expect(
      o.service!,
      unittest.equals('foo'),
    );
  }
  buildCounterCloudRunRenderMetadata--;
}

core.List<api.SkaffoldVersion> buildUnnamed7() => [
      buildSkaffoldVersion(),
      buildSkaffoldVersion(),
    ];

void checkUnnamed7(core.List<api.SkaffoldVersion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSkaffoldVersion(o[0]);
  checkSkaffoldVersion(o[1]);
}

core.int buildCounterConfig = 0;
api.Config buildConfig() {
  final o = api.Config();
  buildCounterConfig++;
  if (buildCounterConfig < 3) {
    o.defaultSkaffoldVersion = 'foo';
    o.name = 'foo';
    o.supportedVersions = buildUnnamed7();
  }
  buildCounterConfig--;
  return o;
}

void checkConfig(api.Config o) {
  buildCounterConfig++;
  if (buildCounterConfig < 3) {
    unittest.expect(
      o.defaultSkaffoldVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed7(o.supportedVersions!);
  }
  buildCounterConfig--;
}

core.int buildCounterCreateChildRolloutJob = 0;
api.CreateChildRolloutJob buildCreateChildRolloutJob() {
  final o = api.CreateChildRolloutJob();
  buildCounterCreateChildRolloutJob++;
  if (buildCounterCreateChildRolloutJob < 3) {}
  buildCounterCreateChildRolloutJob--;
  return o;
}

void checkCreateChildRolloutJob(api.CreateChildRolloutJob o) {
  buildCounterCreateChildRolloutJob++;
  if (buildCounterCreateChildRolloutJob < 3) {}
  buildCounterCreateChildRolloutJob--;
}

core.int buildCounterCreateChildRolloutJobRun = 0;
api.CreateChildRolloutJobRun buildCreateChildRolloutJobRun() {
  final o = api.CreateChildRolloutJobRun();
  buildCounterCreateChildRolloutJobRun++;
  if (buildCounterCreateChildRolloutJobRun < 3) {
    o.rollout = 'foo';
    o.rolloutPhaseId = 'foo';
  }
  buildCounterCreateChildRolloutJobRun--;
  return o;
}

void checkCreateChildRolloutJobRun(api.CreateChildRolloutJobRun o) {
  buildCounterCreateChildRolloutJobRun++;
  if (buildCounterCreateChildRolloutJobRun < 3) {
    unittest.expect(
      o.rollout!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rolloutPhaseId!,
      unittest.equals('foo'),
    );
  }
  buildCounterCreateChildRolloutJobRun--;
}

core.List<api.PhaseConfig> buildUnnamed8() => [
      buildPhaseConfig(),
      buildPhaseConfig(),
    ];

void checkUnnamed8(core.List<api.PhaseConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPhaseConfig(o[0]);
  checkPhaseConfig(o[1]);
}

core.int buildCounterCustomCanaryDeployment = 0;
api.CustomCanaryDeployment buildCustomCanaryDeployment() {
  final o = api.CustomCanaryDeployment();
  buildCounterCustomCanaryDeployment++;
  if (buildCounterCustomCanaryDeployment < 3) {
    o.phaseConfigs = buildUnnamed8();
  }
  buildCounterCustomCanaryDeployment--;
  return o;
}

void checkCustomCanaryDeployment(api.CustomCanaryDeployment o) {
  buildCounterCustomCanaryDeployment++;
  if (buildCounterCustomCanaryDeployment < 3) {
    checkUnnamed8(o.phaseConfigs!);
  }
  buildCounterCustomCanaryDeployment--;
}

core.int buildCounterDate = 0;
api.Date buildDate() {
  final o = api.Date();
  buildCounterDate++;
  if (buildCounterDate < 3) {
    o.day = 42;
    o.month = 42;
    o.year = 42;
  }
  buildCounterDate--;
  return o;
}

void checkDate(api.Date o) {
  buildCounterDate++;
  if (buildCounterDate < 3) {
    unittest.expect(
      o.day!,
      unittest.equals(42),
    );
    unittest.expect(
      o.month!,
      unittest.equals(42),
    );
    unittest.expect(
      o.year!,
      unittest.equals(42),
    );
  }
  buildCounterDate--;
}

core.int buildCounterDefaultPool = 0;
api.DefaultPool buildDefaultPool() {
  final o = api.DefaultPool();
  buildCounterDefaultPool++;
  if (buildCounterDefaultPool < 3) {
    o.artifactStorage = 'foo';
    o.serviceAccount = 'foo';
  }
  buildCounterDefaultPool--;
  return o;
}

void checkDefaultPool(api.DefaultPool o) {
  buildCounterDefaultPool++;
  if (buildCounterDefaultPool < 3) {
    unittest.expect(
      o.artifactStorage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serviceAccount!,
      unittest.equals('foo'),
    );
  }
  buildCounterDefaultPool--;
}

core.Map<core.String, core.String> buildUnnamed9() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed9(core.Map<core.String, core.String> o) {
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

core.int buildCounterDeliveryPipeline = 0;
api.DeliveryPipeline buildDeliveryPipeline() {
  final o = api.DeliveryPipeline();
  buildCounterDeliveryPipeline++;
  if (buildCounterDeliveryPipeline < 3) {
    o.annotations = buildUnnamed9();
    o.condition = buildPipelineCondition();
    o.createTime = 'foo';
    o.description = 'foo';
    o.etag = 'foo';
    o.labels = buildUnnamed10();
    o.name = 'foo';
    o.serialPipeline = buildSerialPipeline();
    o.suspended = true;
    o.uid = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterDeliveryPipeline--;
  return o;
}

void checkDeliveryPipeline(api.DeliveryPipeline o) {
  buildCounterDeliveryPipeline++;
  if (buildCounterDeliveryPipeline < 3) {
    checkUnnamed9(o.annotations!);
    checkPipelineCondition(o.condition!);
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
    checkUnnamed10(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkSerialPipeline(o.serialPipeline!);
    unittest.expect(o.suspended!, unittest.isTrue);
    unittest.expect(
      o.uid!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterDeliveryPipeline--;
}

core.List<core.String> buildUnnamed11() => [
      'foo',
      'foo',
    ];

void checkUnnamed11(core.List<core.String> o) {
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

core.int buildCounterDeployArtifact = 0;
api.DeployArtifact buildDeployArtifact() {
  final o = api.DeployArtifact();
  buildCounterDeployArtifact++;
  if (buildCounterDeployArtifact < 3) {
    o.artifactUri = 'foo';
    o.manifestPaths = buildUnnamed11();
  }
  buildCounterDeployArtifact--;
  return o;
}

void checkDeployArtifact(api.DeployArtifact o) {
  buildCounterDeployArtifact++;
  if (buildCounterDeployArtifact < 3) {
    unittest.expect(
      o.artifactUri!,
      unittest.equals('foo'),
    );
    checkUnnamed11(o.manifestPaths!);
  }
  buildCounterDeployArtifact--;
}

core.int buildCounterDeployJob = 0;
api.DeployJob buildDeployJob() {
  final o = api.DeployJob();
  buildCounterDeployJob++;
  if (buildCounterDeployJob < 3) {}
  buildCounterDeployJob--;
  return o;
}

void checkDeployJob(api.DeployJob o) {
  buildCounterDeployJob++;
  if (buildCounterDeployJob < 3) {}
  buildCounterDeployJob--;
}

core.int buildCounterDeployJobRun = 0;
api.DeployJobRun buildDeployJobRun() {
  final o = api.DeployJobRun();
  buildCounterDeployJobRun++;
  if (buildCounterDeployJobRun < 3) {
    o.artifact = buildDeployArtifact();
    o.build = 'foo';
    o.failureCause = 'foo';
    o.failureMessage = 'foo';
    o.metadata = buildDeployJobRunMetadata();
  }
  buildCounterDeployJobRun--;
  return o;
}

void checkDeployJobRun(api.DeployJobRun o) {
  buildCounterDeployJobRun++;
  if (buildCounterDeployJobRun < 3) {
    checkDeployArtifact(o.artifact!);
    unittest.expect(
      o.build!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.failureCause!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.failureMessage!,
      unittest.equals('foo'),
    );
    checkDeployJobRunMetadata(o.metadata!);
  }
  buildCounterDeployJobRun--;
}

core.int buildCounterDeployJobRunMetadata = 0;
api.DeployJobRunMetadata buildDeployJobRunMetadata() {
  final o = api.DeployJobRunMetadata();
  buildCounterDeployJobRunMetadata++;
  if (buildCounterDeployJobRunMetadata < 3) {
    o.cloudRun = buildCloudRunMetadata();
  }
  buildCounterDeployJobRunMetadata--;
  return o;
}

void checkDeployJobRunMetadata(api.DeployJobRunMetadata o) {
  buildCounterDeployJobRunMetadata++;
  if (buildCounterDeployJobRunMetadata < 3) {
    checkCloudRunMetadata(o.cloudRun!);
  }
  buildCounterDeployJobRunMetadata--;
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

core.int buildCounterDeployParameters = 0;
api.DeployParameters buildDeployParameters() {
  final o = api.DeployParameters();
  buildCounterDeployParameters++;
  if (buildCounterDeployParameters < 3) {
    o.matchTargetLabels = buildUnnamed12();
    o.values = buildUnnamed13();
  }
  buildCounterDeployParameters--;
  return o;
}

void checkDeployParameters(api.DeployParameters o) {
  buildCounterDeployParameters++;
  if (buildCounterDeployParameters < 3) {
    checkUnnamed12(o.matchTargetLabels!);
    checkUnnamed13(o.values!);
  }
  buildCounterDeployParameters--;
}

core.int buildCounterDeploymentJobs = 0;
api.DeploymentJobs buildDeploymentJobs() {
  final o = api.DeploymentJobs();
  buildCounterDeploymentJobs++;
  if (buildCounterDeploymentJobs < 3) {
    o.deployJob = buildJob();
    o.verifyJob = buildJob();
  }
  buildCounterDeploymentJobs--;
  return o;
}

void checkDeploymentJobs(api.DeploymentJobs o) {
  buildCounterDeploymentJobs++;
  if (buildCounterDeploymentJobs < 3) {
    checkJob(o.deployJob!);
    checkJob(o.verifyJob!);
  }
  buildCounterDeploymentJobs--;
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

core.int buildCounterExecutionConfig = 0;
api.ExecutionConfig buildExecutionConfig() {
  final o = api.ExecutionConfig();
  buildCounterExecutionConfig++;
  if (buildCounterExecutionConfig < 3) {
    o.artifactStorage = 'foo';
    o.defaultPool = buildDefaultPool();
    o.executionTimeout = 'foo';
    o.privatePool = buildPrivatePool();
    o.serviceAccount = 'foo';
    o.usages = buildUnnamed14();
    o.workerPool = 'foo';
  }
  buildCounterExecutionConfig--;
  return o;
}

void checkExecutionConfig(api.ExecutionConfig o) {
  buildCounterExecutionConfig++;
  if (buildCounterExecutionConfig < 3) {
    unittest.expect(
      o.artifactStorage!,
      unittest.equals('foo'),
    );
    checkDefaultPool(o.defaultPool!);
    unittest.expect(
      o.executionTimeout!,
      unittest.equals('foo'),
    );
    checkPrivatePool(o.privatePool!);
    unittest.expect(
      o.serviceAccount!,
      unittest.equals('foo'),
    );
    checkUnnamed14(o.usages!);
    unittest.expect(
      o.workerPool!,
      unittest.equals('foo'),
    );
  }
  buildCounterExecutionConfig--;
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

core.int buildCounterGatewayServiceMesh = 0;
api.GatewayServiceMesh buildGatewayServiceMesh() {
  final o = api.GatewayServiceMesh();
  buildCounterGatewayServiceMesh++;
  if (buildCounterGatewayServiceMesh < 3) {
    o.deployment = 'foo';
    o.httpRoute = 'foo';
    o.service = 'foo';
  }
  buildCounterGatewayServiceMesh--;
  return o;
}

void checkGatewayServiceMesh(api.GatewayServiceMesh o) {
  buildCounterGatewayServiceMesh++;
  if (buildCounterGatewayServiceMesh < 3) {
    unittest.expect(
      o.deployment!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.httpRoute!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.service!,
      unittest.equals('foo'),
    );
  }
  buildCounterGatewayServiceMesh--;
}

core.int buildCounterGkeCluster = 0;
api.GkeCluster buildGkeCluster() {
  final o = api.GkeCluster();
  buildCounterGkeCluster++;
  if (buildCounterGkeCluster < 3) {
    o.cluster = 'foo';
    o.internalIp = true;
  }
  buildCounterGkeCluster--;
  return o;
}

void checkGkeCluster(api.GkeCluster o) {
  buildCounterGkeCluster++;
  if (buildCounterGkeCluster < 3) {
    unittest.expect(
      o.cluster!,
      unittest.equals('foo'),
    );
    unittest.expect(o.internalIp!, unittest.isTrue);
  }
  buildCounterGkeCluster--;
}

core.int buildCounterIgnoreJobRequest = 0;
api.IgnoreJobRequest buildIgnoreJobRequest() {
  final o = api.IgnoreJobRequest();
  buildCounterIgnoreJobRequest++;
  if (buildCounterIgnoreJobRequest < 3) {
    o.jobId = 'foo';
    o.phaseId = 'foo';
  }
  buildCounterIgnoreJobRequest--;
  return o;
}

void checkIgnoreJobRequest(api.IgnoreJobRequest o) {
  buildCounterIgnoreJobRequest++;
  if (buildCounterIgnoreJobRequest < 3) {
    unittest.expect(
      o.jobId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.phaseId!,
      unittest.equals('foo'),
    );
  }
  buildCounterIgnoreJobRequest--;
}

core.int buildCounterIgnoreJobResponse = 0;
api.IgnoreJobResponse buildIgnoreJobResponse() {
  final o = api.IgnoreJobResponse();
  buildCounterIgnoreJobResponse++;
  if (buildCounterIgnoreJobResponse < 3) {}
  buildCounterIgnoreJobResponse--;
  return o;
}

void checkIgnoreJobResponse(api.IgnoreJobResponse o) {
  buildCounterIgnoreJobResponse++;
  if (buildCounterIgnoreJobResponse < 3) {}
  buildCounterIgnoreJobResponse--;
}

core.int buildCounterJob = 0;
api.Job buildJob() {
  final o = api.Job();
  buildCounterJob++;
  if (buildCounterJob < 3) {
    o.advanceChildRolloutJob = buildAdvanceChildRolloutJob();
    o.createChildRolloutJob = buildCreateChildRolloutJob();
    o.deployJob = buildDeployJob();
    o.id = 'foo';
    o.jobRun = 'foo';
    o.skipMessage = 'foo';
    o.state = 'foo';
    o.verifyJob = buildVerifyJob();
  }
  buildCounterJob--;
  return o;
}

void checkJob(api.Job o) {
  buildCounterJob++;
  if (buildCounterJob < 3) {
    checkAdvanceChildRolloutJob(o.advanceChildRolloutJob!);
    checkCreateChildRolloutJob(o.createChildRolloutJob!);
    checkDeployJob(o.deployJob!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.jobRun!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.skipMessage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    checkVerifyJob(o.verifyJob!);
  }
  buildCounterJob--;
}

core.int buildCounterJobRun = 0;
api.JobRun buildJobRun() {
  final o = api.JobRun();
  buildCounterJobRun++;
  if (buildCounterJobRun < 3) {
    o.advanceChildRolloutJobRun = buildAdvanceChildRolloutJobRun();
    o.createChildRolloutJobRun = buildCreateChildRolloutJobRun();
    o.createTime = 'foo';
    o.deployJobRun = buildDeployJobRun();
    o.endTime = 'foo';
    o.etag = 'foo';
    o.jobId = 'foo';
    o.name = 'foo';
    o.phaseId = 'foo';
    o.startTime = 'foo';
    o.state = 'foo';
    o.uid = 'foo';
    o.verifyJobRun = buildVerifyJobRun();
  }
  buildCounterJobRun--;
  return o;
}

void checkJobRun(api.JobRun o) {
  buildCounterJobRun++;
  if (buildCounterJobRun < 3) {
    checkAdvanceChildRolloutJobRun(o.advanceChildRolloutJobRun!);
    checkCreateChildRolloutJobRun(o.createChildRolloutJobRun!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkDeployJobRun(o.deployJobRun!);
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.jobId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.phaseId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startTime!,
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
    checkVerifyJobRun(o.verifyJobRun!);
  }
  buildCounterJobRun--;
}

core.int buildCounterKubernetesConfig = 0;
api.KubernetesConfig buildKubernetesConfig() {
  final o = api.KubernetesConfig();
  buildCounterKubernetesConfig++;
  if (buildCounterKubernetesConfig < 3) {
    o.gatewayServiceMesh = buildGatewayServiceMesh();
    o.serviceNetworking = buildServiceNetworking();
  }
  buildCounterKubernetesConfig--;
  return o;
}

void checkKubernetesConfig(api.KubernetesConfig o) {
  buildCounterKubernetesConfig++;
  if (buildCounterKubernetesConfig < 3) {
    checkGatewayServiceMesh(o.gatewayServiceMesh!);
    checkServiceNetworking(o.serviceNetworking!);
  }
  buildCounterKubernetesConfig--;
}

core.List<api.DeliveryPipeline> buildUnnamed15() => [
      buildDeliveryPipeline(),
      buildDeliveryPipeline(),
    ];

void checkUnnamed15(core.List<api.DeliveryPipeline> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeliveryPipeline(o[0]);
  checkDeliveryPipeline(o[1]);
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

core.int buildCounterListDeliveryPipelinesResponse = 0;
api.ListDeliveryPipelinesResponse buildListDeliveryPipelinesResponse() {
  final o = api.ListDeliveryPipelinesResponse();
  buildCounterListDeliveryPipelinesResponse++;
  if (buildCounterListDeliveryPipelinesResponse < 3) {
    o.deliveryPipelines = buildUnnamed15();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed16();
  }
  buildCounterListDeliveryPipelinesResponse--;
  return o;
}

void checkListDeliveryPipelinesResponse(api.ListDeliveryPipelinesResponse o) {
  buildCounterListDeliveryPipelinesResponse++;
  if (buildCounterListDeliveryPipelinesResponse < 3) {
    checkUnnamed15(o.deliveryPipelines!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed16(o.unreachable!);
  }
  buildCounterListDeliveryPipelinesResponse--;
}

core.List<api.JobRun> buildUnnamed17() => [
      buildJobRun(),
      buildJobRun(),
    ];

void checkUnnamed17(core.List<api.JobRun> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJobRun(o[0]);
  checkJobRun(o[1]);
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

core.int buildCounterListJobRunsResponse = 0;
api.ListJobRunsResponse buildListJobRunsResponse() {
  final o = api.ListJobRunsResponse();
  buildCounterListJobRunsResponse++;
  if (buildCounterListJobRunsResponse < 3) {
    o.jobRuns = buildUnnamed17();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed18();
  }
  buildCounterListJobRunsResponse--;
  return o;
}

void checkListJobRunsResponse(api.ListJobRunsResponse o) {
  buildCounterListJobRunsResponse++;
  if (buildCounterListJobRunsResponse < 3) {
    checkUnnamed17(o.jobRuns!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed18(o.unreachable!);
  }
  buildCounterListJobRunsResponse--;
}

core.List<api.Location> buildUnnamed19() => [
      buildLocation(),
      buildLocation(),
    ];

void checkUnnamed19(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  final o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed19();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed19(o.locations!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListLocationsResponse--;
}

core.List<api.Operation> buildUnnamed20() => [
      buildOperation(),
      buildOperation(),
    ];

void checkUnnamed20(core.List<api.Operation> o) {
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
    o.operations = buildUnnamed20();
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
    checkUnnamed20(o.operations!);
  }
  buildCounterListOperationsResponse--;
}

core.List<api.Release> buildUnnamed21() => [
      buildRelease(),
      buildRelease(),
    ];

void checkUnnamed21(core.List<api.Release> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRelease(o[0]);
  checkRelease(o[1]);
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

core.int buildCounterListReleasesResponse = 0;
api.ListReleasesResponse buildListReleasesResponse() {
  final o = api.ListReleasesResponse();
  buildCounterListReleasesResponse++;
  if (buildCounterListReleasesResponse < 3) {
    o.nextPageToken = 'foo';
    o.releases = buildUnnamed21();
    o.unreachable = buildUnnamed22();
  }
  buildCounterListReleasesResponse--;
  return o;
}

void checkListReleasesResponse(api.ListReleasesResponse o) {
  buildCounterListReleasesResponse++;
  if (buildCounterListReleasesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed21(o.releases!);
    checkUnnamed22(o.unreachable!);
  }
  buildCounterListReleasesResponse--;
}

core.List<api.Rollout> buildUnnamed23() => [
      buildRollout(),
      buildRollout(),
    ];

void checkUnnamed23(core.List<api.Rollout> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRollout(o[0]);
  checkRollout(o[1]);
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

core.int buildCounterListRolloutsResponse = 0;
api.ListRolloutsResponse buildListRolloutsResponse() {
  final o = api.ListRolloutsResponse();
  buildCounterListRolloutsResponse++;
  if (buildCounterListRolloutsResponse < 3) {
    o.nextPageToken = 'foo';
    o.rollouts = buildUnnamed23();
    o.unreachable = buildUnnamed24();
  }
  buildCounterListRolloutsResponse--;
  return o;
}

void checkListRolloutsResponse(api.ListRolloutsResponse o) {
  buildCounterListRolloutsResponse++;
  if (buildCounterListRolloutsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed23(o.rollouts!);
    checkUnnamed24(o.unreachable!);
  }
  buildCounterListRolloutsResponse--;
}

core.List<api.Target> buildUnnamed25() => [
      buildTarget(),
      buildTarget(),
    ];

void checkUnnamed25(core.List<api.Target> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTarget(o[0]);
  checkTarget(o[1]);
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

core.int buildCounterListTargetsResponse = 0;
api.ListTargetsResponse buildListTargetsResponse() {
  final o = api.ListTargetsResponse();
  buildCounterListTargetsResponse++;
  if (buildCounterListTargetsResponse < 3) {
    o.nextPageToken = 'foo';
    o.targets = buildUnnamed25();
    o.unreachable = buildUnnamed26();
  }
  buildCounterListTargetsResponse--;
  return o;
}

void checkListTargetsResponse(api.ListTargetsResponse o) {
  buildCounterListTargetsResponse++;
  if (buildCounterListTargetsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed25(o.targets!);
    checkUnnamed26(o.unreachable!);
  }
  buildCounterListTargetsResponse--;
}

core.Map<core.String, core.String> buildUnnamed27() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed27(core.Map<core.String, core.String> o) {
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

core.Map<core.String, core.Object?> buildUnnamed28() => {
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

void checkUnnamed28(core.Map<core.String, core.Object?> o) {
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
    o.labels = buildUnnamed27();
    o.locationId = 'foo';
    o.metadata = buildUnnamed28();
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
    checkUnnamed27(o.labels!);
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
    checkUnnamed28(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterLocation--;
}

core.int buildCounterMetadata = 0;
api.Metadata buildMetadata() {
  final o = api.Metadata();
  buildCounterMetadata++;
  if (buildCounterMetadata < 3) {
    o.cloudRun = buildCloudRunMetadata();
  }
  buildCounterMetadata--;
  return o;
}

void checkMetadata(api.Metadata o) {
  buildCounterMetadata++;
  if (buildCounterMetadata < 3) {
    checkCloudRunMetadata(o.cloudRun!);
  }
  buildCounterMetadata--;
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

core.int buildCounterMultiTarget = 0;
api.MultiTarget buildMultiTarget() {
  final o = api.MultiTarget();
  buildCounterMultiTarget++;
  if (buildCounterMultiTarget < 3) {
    o.targetIds = buildUnnamed29();
  }
  buildCounterMultiTarget--;
  return o;
}

void checkMultiTarget(api.MultiTarget o) {
  buildCounterMultiTarget++;
  if (buildCounterMultiTarget < 3) {
    checkUnnamed29(o.targetIds!);
  }
  buildCounterMultiTarget--;
}

core.Map<core.String, core.Object?> buildUnnamed30() => {
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

void checkUnnamed30(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed31() => {
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

void checkUnnamed31(core.Map<core.String, core.Object?> o) {
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
    o.metadata = buildUnnamed30();
    o.name = 'foo';
    o.response = buildUnnamed31();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed30(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed31(o.response!);
  }
  buildCounterOperation--;
}

core.int buildCounterPhase = 0;
api.Phase buildPhase() {
  final o = api.Phase();
  buildCounterPhase++;
  if (buildCounterPhase < 3) {
    o.childRolloutJobs = buildChildRolloutJobs();
    o.deploymentJobs = buildDeploymentJobs();
    o.id = 'foo';
    o.skipMessage = 'foo';
    o.state = 'foo';
  }
  buildCounterPhase--;
  return o;
}

void checkPhase(api.Phase o) {
  buildCounterPhase++;
  if (buildCounterPhase < 3) {
    checkChildRolloutJobs(o.childRolloutJobs!);
    checkDeploymentJobs(o.deploymentJobs!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.skipMessage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterPhase--;
}

core.int buildCounterPhaseArtifact = 0;
api.PhaseArtifact buildPhaseArtifact() {
  final o = api.PhaseArtifact();
  buildCounterPhaseArtifact++;
  if (buildCounterPhaseArtifact < 3) {
    o.jobManifestsPath = 'foo';
    o.manifestPath = 'foo';
    o.skaffoldConfigPath = 'foo';
  }
  buildCounterPhaseArtifact--;
  return o;
}

void checkPhaseArtifact(api.PhaseArtifact o) {
  buildCounterPhaseArtifact++;
  if (buildCounterPhaseArtifact < 3) {
    unittest.expect(
      o.jobManifestsPath!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.manifestPath!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.skaffoldConfigPath!,
      unittest.equals('foo'),
    );
  }
  buildCounterPhaseArtifact--;
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

core.int buildCounterPhaseConfig = 0;
api.PhaseConfig buildPhaseConfig() {
  final o = api.PhaseConfig();
  buildCounterPhaseConfig++;
  if (buildCounterPhaseConfig < 3) {
    o.percentage = 42;
    o.phaseId = 'foo';
    o.profiles = buildUnnamed32();
    o.verify = true;
  }
  buildCounterPhaseConfig--;
  return o;
}

void checkPhaseConfig(api.PhaseConfig o) {
  buildCounterPhaseConfig++;
  if (buildCounterPhaseConfig < 3) {
    unittest.expect(
      o.percentage!,
      unittest.equals(42),
    );
    unittest.expect(
      o.phaseId!,
      unittest.equals('foo'),
    );
    checkUnnamed32(o.profiles!);
    unittest.expect(o.verify!, unittest.isTrue);
  }
  buildCounterPhaseConfig--;
}

core.int buildCounterPipelineCondition = 0;
api.PipelineCondition buildPipelineCondition() {
  final o = api.PipelineCondition();
  buildCounterPipelineCondition++;
  if (buildCounterPipelineCondition < 3) {
    o.pipelineReadyCondition = buildPipelineReadyCondition();
    o.targetsPresentCondition = buildTargetsPresentCondition();
    o.targetsTypeCondition = buildTargetsTypeCondition();
  }
  buildCounterPipelineCondition--;
  return o;
}

void checkPipelineCondition(api.PipelineCondition o) {
  buildCounterPipelineCondition++;
  if (buildCounterPipelineCondition < 3) {
    checkPipelineReadyCondition(o.pipelineReadyCondition!);
    checkTargetsPresentCondition(o.targetsPresentCondition!);
    checkTargetsTypeCondition(o.targetsTypeCondition!);
  }
  buildCounterPipelineCondition--;
}

core.int buildCounterPipelineReadyCondition = 0;
api.PipelineReadyCondition buildPipelineReadyCondition() {
  final o = api.PipelineReadyCondition();
  buildCounterPipelineReadyCondition++;
  if (buildCounterPipelineReadyCondition < 3) {
    o.status = true;
    o.updateTime = 'foo';
  }
  buildCounterPipelineReadyCondition--;
  return o;
}

void checkPipelineReadyCondition(api.PipelineReadyCondition o) {
  buildCounterPipelineReadyCondition++;
  if (buildCounterPipelineReadyCondition < 3) {
    unittest.expect(o.status!, unittest.isTrue);
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterPipelineReadyCondition--;
}

core.List<api.AuditConfig> buildUnnamed33() => [
      buildAuditConfig(),
      buildAuditConfig(),
    ];

void checkUnnamed33(core.List<api.AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditConfig(o[0]);
  checkAuditConfig(o[1]);
}

core.List<api.Binding> buildUnnamed34() => [
      buildBinding(),
      buildBinding(),
    ];

void checkUnnamed34(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  final o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.auditConfigs = buildUnnamed33();
    o.bindings = buildUnnamed34();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed33(o.auditConfigs!);
    checkUnnamed34(o.bindings!);
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

core.int buildCounterPrivatePool = 0;
api.PrivatePool buildPrivatePool() {
  final o = api.PrivatePool();
  buildCounterPrivatePool++;
  if (buildCounterPrivatePool < 3) {
    o.artifactStorage = 'foo';
    o.serviceAccount = 'foo';
    o.workerPool = 'foo';
  }
  buildCounterPrivatePool--;
  return o;
}

void checkPrivatePool(api.PrivatePool o) {
  buildCounterPrivatePool++;
  if (buildCounterPrivatePool < 3) {
    unittest.expect(
      o.artifactStorage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serviceAccount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.workerPool!,
      unittest.equals('foo'),
    );
  }
  buildCounterPrivatePool--;
}

core.Map<core.String, core.String> buildUnnamed35() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed35(core.Map<core.String, core.String> o) {
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

core.List<api.BuildArtifact> buildUnnamed36() => [
      buildBuildArtifact(),
      buildBuildArtifact(),
    ];

void checkUnnamed36(core.List<api.BuildArtifact> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBuildArtifact(o[0]);
  checkBuildArtifact(o[1]);
}

core.Map<core.String, core.String> buildUnnamed37() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed37(core.Map<core.String, core.String> o) {
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

core.Map<core.String, api.TargetArtifact> buildUnnamed39() => {
      'x': buildTargetArtifact(),
      'y': buildTargetArtifact(),
    };

void checkUnnamed39(core.Map<core.String, api.TargetArtifact> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTargetArtifact(o['x']!);
  checkTargetArtifact(o['y']!);
}

core.Map<core.String, api.TargetRender> buildUnnamed40() => {
      'x': buildTargetRender(),
      'y': buildTargetRender(),
    };

void checkUnnamed40(core.Map<core.String, api.TargetRender> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTargetRender(o['x']!);
  checkTargetRender(o['y']!);
}

core.List<api.Target> buildUnnamed41() => [
      buildTarget(),
      buildTarget(),
    ];

void checkUnnamed41(core.List<api.Target> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTarget(o[0]);
  checkTarget(o[1]);
}

core.int buildCounterRelease = 0;
api.Release buildRelease() {
  final o = api.Release();
  buildCounterRelease++;
  if (buildCounterRelease < 3) {
    o.abandoned = true;
    o.annotations = buildUnnamed35();
    o.buildArtifacts = buildUnnamed36();
    o.condition = buildReleaseCondition();
    o.createTime = 'foo';
    o.deliveryPipelineSnapshot = buildDeliveryPipeline();
    o.deployParameters = buildUnnamed37();
    o.description = 'foo';
    o.etag = 'foo';
    o.labels = buildUnnamed38();
    o.name = 'foo';
    o.renderEndTime = 'foo';
    o.renderStartTime = 'foo';
    o.renderState = 'foo';
    o.skaffoldConfigPath = 'foo';
    o.skaffoldConfigUri = 'foo';
    o.skaffoldVersion = 'foo';
    o.targetArtifacts = buildUnnamed39();
    o.targetRenders = buildUnnamed40();
    o.targetSnapshots = buildUnnamed41();
    o.uid = 'foo';
  }
  buildCounterRelease--;
  return o;
}

void checkRelease(api.Release o) {
  buildCounterRelease++;
  if (buildCounterRelease < 3) {
    unittest.expect(o.abandoned!, unittest.isTrue);
    checkUnnamed35(o.annotations!);
    checkUnnamed36(o.buildArtifacts!);
    checkReleaseCondition(o.condition!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkDeliveryPipeline(o.deliveryPipelineSnapshot!);
    checkUnnamed37(o.deployParameters!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    checkUnnamed38(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.renderEndTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.renderStartTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.renderState!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.skaffoldConfigPath!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.skaffoldConfigUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.skaffoldVersion!,
      unittest.equals('foo'),
    );
    checkUnnamed39(o.targetArtifacts!);
    checkUnnamed40(o.targetRenders!);
    checkUnnamed41(o.targetSnapshots!);
    unittest.expect(
      o.uid!,
      unittest.equals('foo'),
    );
  }
  buildCounterRelease--;
}

core.int buildCounterReleaseCondition = 0;
api.ReleaseCondition buildReleaseCondition() {
  final o = api.ReleaseCondition();
  buildCounterReleaseCondition++;
  if (buildCounterReleaseCondition < 3) {
    o.releaseReadyCondition = buildReleaseReadyCondition();
    o.skaffoldSupportedCondition = buildSkaffoldSupportedCondition();
  }
  buildCounterReleaseCondition--;
  return o;
}

void checkReleaseCondition(api.ReleaseCondition o) {
  buildCounterReleaseCondition++;
  if (buildCounterReleaseCondition < 3) {
    checkReleaseReadyCondition(o.releaseReadyCondition!);
    checkSkaffoldSupportedCondition(o.skaffoldSupportedCondition!);
  }
  buildCounterReleaseCondition--;
}

core.int buildCounterReleaseReadyCondition = 0;
api.ReleaseReadyCondition buildReleaseReadyCondition() {
  final o = api.ReleaseReadyCondition();
  buildCounterReleaseReadyCondition++;
  if (buildCounterReleaseReadyCondition < 3) {
    o.status = true;
  }
  buildCounterReleaseReadyCondition--;
  return o;
}

void checkReleaseReadyCondition(api.ReleaseReadyCondition o) {
  buildCounterReleaseReadyCondition++;
  if (buildCounterReleaseReadyCondition < 3) {
    unittest.expect(o.status!, unittest.isTrue);
  }
  buildCounterReleaseReadyCondition--;
}

core.int buildCounterRenderMetadata = 0;
api.RenderMetadata buildRenderMetadata() {
  final o = api.RenderMetadata();
  buildCounterRenderMetadata++;
  if (buildCounterRenderMetadata < 3) {
    o.cloudRun = buildCloudRunRenderMetadata();
  }
  buildCounterRenderMetadata--;
  return o;
}

void checkRenderMetadata(api.RenderMetadata o) {
  buildCounterRenderMetadata++;
  if (buildCounterRenderMetadata < 3) {
    checkCloudRunRenderMetadata(o.cloudRun!);
  }
  buildCounterRenderMetadata--;
}

core.int buildCounterRetryJobRequest = 0;
api.RetryJobRequest buildRetryJobRequest() {
  final o = api.RetryJobRequest();
  buildCounterRetryJobRequest++;
  if (buildCounterRetryJobRequest < 3) {
    o.jobId = 'foo';
    o.phaseId = 'foo';
  }
  buildCounterRetryJobRequest--;
  return o;
}

void checkRetryJobRequest(api.RetryJobRequest o) {
  buildCounterRetryJobRequest++;
  if (buildCounterRetryJobRequest < 3) {
    unittest.expect(
      o.jobId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.phaseId!,
      unittest.equals('foo'),
    );
  }
  buildCounterRetryJobRequest--;
}

core.int buildCounterRetryJobResponse = 0;
api.RetryJobResponse buildRetryJobResponse() {
  final o = api.RetryJobResponse();
  buildCounterRetryJobResponse++;
  if (buildCounterRetryJobResponse < 3) {}
  buildCounterRetryJobResponse--;
  return o;
}

void checkRetryJobResponse(api.RetryJobResponse o) {
  buildCounterRetryJobResponse++;
  if (buildCounterRetryJobResponse < 3) {}
  buildCounterRetryJobResponse--;
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

core.Map<core.String, core.String> buildUnnamed43() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed43(core.Map<core.String, core.String> o) {
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

core.List<api.Phase> buildUnnamed44() => [
      buildPhase(),
      buildPhase(),
    ];

void checkUnnamed44(core.List<api.Phase> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPhase(o[0]);
  checkPhase(o[1]);
}

core.int buildCounterRollout = 0;
api.Rollout buildRollout() {
  final o = api.Rollout();
  buildCounterRollout++;
  if (buildCounterRollout < 3) {
    o.annotations = buildUnnamed42();
    o.approvalState = 'foo';
    o.approveTime = 'foo';
    o.controllerRollout = 'foo';
    o.createTime = 'foo';
    o.deployEndTime = 'foo';
    o.deployFailureCause = 'foo';
    o.deployStartTime = 'foo';
    o.deployingBuild = 'foo';
    o.description = 'foo';
    o.enqueueTime = 'foo';
    o.etag = 'foo';
    o.failureReason = 'foo';
    o.labels = buildUnnamed43();
    o.metadata = buildMetadata();
    o.name = 'foo';
    o.phases = buildUnnamed44();
    o.state = 'foo';
    o.targetId = 'foo';
    o.uid = 'foo';
  }
  buildCounterRollout--;
  return o;
}

void checkRollout(api.Rollout o) {
  buildCounterRollout++;
  if (buildCounterRollout < 3) {
    checkUnnamed42(o.annotations!);
    unittest.expect(
      o.approvalState!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.approveTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.controllerRollout!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deployEndTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deployFailureCause!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deployStartTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deployingBuild!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.enqueueTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.failureReason!,
      unittest.equals('foo'),
    );
    checkUnnamed43(o.labels!);
    checkMetadata(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed44(o.phases!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.targetId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uid!,
      unittest.equals('foo'),
    );
  }
  buildCounterRollout--;
}

core.int buildCounterRuntimeConfig = 0;
api.RuntimeConfig buildRuntimeConfig() {
  final o = api.RuntimeConfig();
  buildCounterRuntimeConfig++;
  if (buildCounterRuntimeConfig < 3) {
    o.cloudRun = buildCloudRunConfig();
    o.kubernetes = buildKubernetesConfig();
  }
  buildCounterRuntimeConfig--;
  return o;
}

void checkRuntimeConfig(api.RuntimeConfig o) {
  buildCounterRuntimeConfig++;
  if (buildCounterRuntimeConfig < 3) {
    checkCloudRunConfig(o.cloudRun!);
    checkKubernetesConfig(o.kubernetes!);
  }
  buildCounterRuntimeConfig--;
}

core.List<api.Stage> buildUnnamed45() => [
      buildStage(),
      buildStage(),
    ];

void checkUnnamed45(core.List<api.Stage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStage(o[0]);
  checkStage(o[1]);
}

core.int buildCounterSerialPipeline = 0;
api.SerialPipeline buildSerialPipeline() {
  final o = api.SerialPipeline();
  buildCounterSerialPipeline++;
  if (buildCounterSerialPipeline < 3) {
    o.stages = buildUnnamed45();
  }
  buildCounterSerialPipeline--;
  return o;
}

void checkSerialPipeline(api.SerialPipeline o) {
  buildCounterSerialPipeline++;
  if (buildCounterSerialPipeline < 3) {
    checkUnnamed45(o.stages!);
  }
  buildCounterSerialPipeline--;
}

core.int buildCounterServiceNetworking = 0;
api.ServiceNetworking buildServiceNetworking() {
  final o = api.ServiceNetworking();
  buildCounterServiceNetworking++;
  if (buildCounterServiceNetworking < 3) {
    o.deployment = 'foo';
    o.disablePodOverprovisioning = true;
    o.service = 'foo';
  }
  buildCounterServiceNetworking--;
  return o;
}

void checkServiceNetworking(api.ServiceNetworking o) {
  buildCounterServiceNetworking++;
  if (buildCounterServiceNetworking < 3) {
    unittest.expect(
      o.deployment!,
      unittest.equals('foo'),
    );
    unittest.expect(o.disablePodOverprovisioning!, unittest.isTrue);
    unittest.expect(
      o.service!,
      unittest.equals('foo'),
    );
  }
  buildCounterServiceNetworking--;
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

core.int buildCounterSkaffoldSupportedCondition = 0;
api.SkaffoldSupportedCondition buildSkaffoldSupportedCondition() {
  final o = api.SkaffoldSupportedCondition();
  buildCounterSkaffoldSupportedCondition++;
  if (buildCounterSkaffoldSupportedCondition < 3) {
    o.maintenanceModeTime = 'foo';
    o.skaffoldSupportState = 'foo';
    o.status = true;
    o.supportExpirationTime = 'foo';
  }
  buildCounterSkaffoldSupportedCondition--;
  return o;
}

void checkSkaffoldSupportedCondition(api.SkaffoldSupportedCondition o) {
  buildCounterSkaffoldSupportedCondition++;
  if (buildCounterSkaffoldSupportedCondition < 3) {
    unittest.expect(
      o.maintenanceModeTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.skaffoldSupportState!,
      unittest.equals('foo'),
    );
    unittest.expect(o.status!, unittest.isTrue);
    unittest.expect(
      o.supportExpirationTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterSkaffoldSupportedCondition--;
}

core.int buildCounterSkaffoldVersion = 0;
api.SkaffoldVersion buildSkaffoldVersion() {
  final o = api.SkaffoldVersion();
  buildCounterSkaffoldVersion++;
  if (buildCounterSkaffoldVersion < 3) {
    o.maintenanceModeTime = 'foo';
    o.supportEndDate = buildDate();
    o.supportExpirationTime = 'foo';
    o.version = 'foo';
  }
  buildCounterSkaffoldVersion--;
  return o;
}

void checkSkaffoldVersion(api.SkaffoldVersion o) {
  buildCounterSkaffoldVersion++;
  if (buildCounterSkaffoldVersion < 3) {
    unittest.expect(
      o.maintenanceModeTime!,
      unittest.equals('foo'),
    );
    checkDate(o.supportEndDate!);
    unittest.expect(
      o.supportExpirationTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterSkaffoldVersion--;
}

core.List<api.DeployParameters> buildUnnamed46() => [
      buildDeployParameters(),
      buildDeployParameters(),
    ];

void checkUnnamed46(core.List<api.DeployParameters> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeployParameters(o[0]);
  checkDeployParameters(o[1]);
}

core.List<core.String> buildUnnamed47() => [
      'foo',
      'foo',
    ];

void checkUnnamed47(core.List<core.String> o) {
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

core.int buildCounterStage = 0;
api.Stage buildStage() {
  final o = api.Stage();
  buildCounterStage++;
  if (buildCounterStage < 3) {
    o.deployParameters = buildUnnamed46();
    o.profiles = buildUnnamed47();
    o.strategy = buildStrategy();
    o.targetId = 'foo';
  }
  buildCounterStage--;
  return o;
}

void checkStage(api.Stage o) {
  buildCounterStage++;
  if (buildCounterStage < 3) {
    checkUnnamed46(o.deployParameters!);
    checkUnnamed47(o.profiles!);
    checkStrategy(o.strategy!);
    unittest.expect(
      o.targetId!,
      unittest.equals('foo'),
    );
  }
  buildCounterStage--;
}

core.int buildCounterStandard = 0;
api.Standard buildStandard() {
  final o = api.Standard();
  buildCounterStandard++;
  if (buildCounterStandard < 3) {
    o.verify = true;
  }
  buildCounterStandard--;
  return o;
}

void checkStandard(api.Standard o) {
  buildCounterStandard++;
  if (buildCounterStandard < 3) {
    unittest.expect(o.verify!, unittest.isTrue);
  }
  buildCounterStandard--;
}

core.Map<core.String, core.Object?> buildUnnamed48() => {
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

void checkUnnamed48(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed49() => [
      buildUnnamed48(),
      buildUnnamed48(),
    ];

void checkUnnamed49(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed48(o[0]);
  checkUnnamed48(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed49();
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
    checkUnnamed49(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.int buildCounterStrategy = 0;
api.Strategy buildStrategy() {
  final o = api.Strategy();
  buildCounterStrategy++;
  if (buildCounterStrategy < 3) {
    o.canary = buildCanary();
    o.standard = buildStandard();
  }
  buildCounterStrategy--;
  return o;
}

void checkStrategy(api.Strategy o) {
  buildCounterStrategy++;
  if (buildCounterStrategy < 3) {
    checkCanary(o.canary!);
    checkStandard(o.standard!);
  }
  buildCounterStrategy--;
}

core.Map<core.String, core.String> buildUnnamed50() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed50(core.Map<core.String, core.String> o) {
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

core.Map<core.String, core.String> buildUnnamed51() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed51(core.Map<core.String, core.String> o) {
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

core.List<api.ExecutionConfig> buildUnnamed52() => [
      buildExecutionConfig(),
      buildExecutionConfig(),
    ];

void checkUnnamed52(core.List<api.ExecutionConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExecutionConfig(o[0]);
  checkExecutionConfig(o[1]);
}

core.Map<core.String, core.String> buildUnnamed53() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed53(core.Map<core.String, core.String> o) {
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

core.int buildCounterTarget = 0;
api.Target buildTarget() {
  final o = api.Target();
  buildCounterTarget++;
  if (buildCounterTarget < 3) {
    o.annotations = buildUnnamed50();
    o.anthosCluster = buildAnthosCluster();
    o.createTime = 'foo';
    o.deployParameters = buildUnnamed51();
    o.description = 'foo';
    o.etag = 'foo';
    o.executionConfigs = buildUnnamed52();
    o.gke = buildGkeCluster();
    o.labels = buildUnnamed53();
    o.multiTarget = buildMultiTarget();
    o.name = 'foo';
    o.requireApproval = true;
    o.run = buildCloudRunLocation();
    o.targetId = 'foo';
    o.uid = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterTarget--;
  return o;
}

void checkTarget(api.Target o) {
  buildCounterTarget++;
  if (buildCounterTarget < 3) {
    checkUnnamed50(o.annotations!);
    checkAnthosCluster(o.anthosCluster!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkUnnamed51(o.deployParameters!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    checkUnnamed52(o.executionConfigs!);
    checkGkeCluster(o.gke!);
    checkUnnamed53(o.labels!);
    checkMultiTarget(o.multiTarget!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(o.requireApproval!, unittest.isTrue);
    checkCloudRunLocation(o.run!);
    unittest.expect(
      o.targetId!,
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
  buildCounterTarget--;
}

core.Map<core.String, api.PhaseArtifact> buildUnnamed54() => {
      'x': buildPhaseArtifact(),
      'y': buildPhaseArtifact(),
    };

void checkUnnamed54(core.Map<core.String, api.PhaseArtifact> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPhaseArtifact(o['x']!);
  checkPhaseArtifact(o['y']!);
}

core.int buildCounterTargetArtifact = 0;
api.TargetArtifact buildTargetArtifact() {
  final o = api.TargetArtifact();
  buildCounterTargetArtifact++;
  if (buildCounterTargetArtifact < 3) {
    o.artifactUri = 'foo';
    o.manifestPath = 'foo';
    o.phaseArtifacts = buildUnnamed54();
    o.skaffoldConfigPath = 'foo';
  }
  buildCounterTargetArtifact--;
  return o;
}

void checkTargetArtifact(api.TargetArtifact o) {
  buildCounterTargetArtifact++;
  if (buildCounterTargetArtifact < 3) {
    unittest.expect(
      o.artifactUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.manifestPath!,
      unittest.equals('foo'),
    );
    checkUnnamed54(o.phaseArtifacts!);
    unittest.expect(
      o.skaffoldConfigPath!,
      unittest.equals('foo'),
    );
  }
  buildCounterTargetArtifact--;
}

core.int buildCounterTargetRender = 0;
api.TargetRender buildTargetRender() {
  final o = api.TargetRender();
  buildCounterTargetRender++;
  if (buildCounterTargetRender < 3) {
    o.failureCause = 'foo';
    o.failureMessage = 'foo';
    o.metadata = buildRenderMetadata();
    o.renderingBuild = 'foo';
    o.renderingState = 'foo';
  }
  buildCounterTargetRender--;
  return o;
}

void checkTargetRender(api.TargetRender o) {
  buildCounterTargetRender++;
  if (buildCounterTargetRender < 3) {
    unittest.expect(
      o.failureCause!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.failureMessage!,
      unittest.equals('foo'),
    );
    checkRenderMetadata(o.metadata!);
    unittest.expect(
      o.renderingBuild!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.renderingState!,
      unittest.equals('foo'),
    );
  }
  buildCounterTargetRender--;
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

core.int buildCounterTargetsPresentCondition = 0;
api.TargetsPresentCondition buildTargetsPresentCondition() {
  final o = api.TargetsPresentCondition();
  buildCounterTargetsPresentCondition++;
  if (buildCounterTargetsPresentCondition < 3) {
    o.missingTargets = buildUnnamed55();
    o.status = true;
    o.updateTime = 'foo';
  }
  buildCounterTargetsPresentCondition--;
  return o;
}

void checkTargetsPresentCondition(api.TargetsPresentCondition o) {
  buildCounterTargetsPresentCondition++;
  if (buildCounterTargetsPresentCondition < 3) {
    checkUnnamed55(o.missingTargets!);
    unittest.expect(o.status!, unittest.isTrue);
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterTargetsPresentCondition--;
}

core.int buildCounterTargetsTypeCondition = 0;
api.TargetsTypeCondition buildTargetsTypeCondition() {
  final o = api.TargetsTypeCondition();
  buildCounterTargetsTypeCondition++;
  if (buildCounterTargetsTypeCondition < 3) {
    o.errorDetails = 'foo';
    o.status = true;
  }
  buildCounterTargetsTypeCondition--;
  return o;
}

void checkTargetsTypeCondition(api.TargetsTypeCondition o) {
  buildCounterTargetsTypeCondition++;
  if (buildCounterTargetsTypeCondition < 3) {
    unittest.expect(
      o.errorDetails!,
      unittest.equals('foo'),
    );
    unittest.expect(o.status!, unittest.isTrue);
  }
  buildCounterTargetsTypeCondition--;
}

core.int buildCounterTerminateJobRunRequest = 0;
api.TerminateJobRunRequest buildTerminateJobRunRequest() {
  final o = api.TerminateJobRunRequest();
  buildCounterTerminateJobRunRequest++;
  if (buildCounterTerminateJobRunRequest < 3) {}
  buildCounterTerminateJobRunRequest--;
  return o;
}

void checkTerminateJobRunRequest(api.TerminateJobRunRequest o) {
  buildCounterTerminateJobRunRequest++;
  if (buildCounterTerminateJobRunRequest < 3) {}
  buildCounterTerminateJobRunRequest--;
}

core.int buildCounterTerminateJobRunResponse = 0;
api.TerminateJobRunResponse buildTerminateJobRunResponse() {
  final o = api.TerminateJobRunResponse();
  buildCounterTerminateJobRunResponse++;
  if (buildCounterTerminateJobRunResponse < 3) {}
  buildCounterTerminateJobRunResponse--;
  return o;
}

void checkTerminateJobRunResponse(api.TerminateJobRunResponse o) {
  buildCounterTerminateJobRunResponse++;
  if (buildCounterTerminateJobRunResponse < 3) {}
  buildCounterTerminateJobRunResponse--;
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

core.int buildCounterTestIamPermissionsRequest = 0;
api.TestIamPermissionsRequest buildTestIamPermissionsRequest() {
  final o = api.TestIamPermissionsRequest();
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed56();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

void checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed56(o.permissions!);
  }
  buildCounterTestIamPermissionsRequest--;
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

core.int buildCounterTestIamPermissionsResponse = 0;
api.TestIamPermissionsResponse buildTestIamPermissionsResponse() {
  final o = api.TestIamPermissionsResponse();
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed57();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed57(o.permissions!);
  }
  buildCounterTestIamPermissionsResponse--;
}

core.int buildCounterVerifyJob = 0;
api.VerifyJob buildVerifyJob() {
  final o = api.VerifyJob();
  buildCounterVerifyJob++;
  if (buildCounterVerifyJob < 3) {}
  buildCounterVerifyJob--;
  return o;
}

void checkVerifyJob(api.VerifyJob o) {
  buildCounterVerifyJob++;
  if (buildCounterVerifyJob < 3) {}
  buildCounterVerifyJob--;
}

core.int buildCounterVerifyJobRun = 0;
api.VerifyJobRun buildVerifyJobRun() {
  final o = api.VerifyJobRun();
  buildCounterVerifyJobRun++;
  if (buildCounterVerifyJobRun < 3) {
    o.artifactUri = 'foo';
    o.build = 'foo';
    o.eventLogPath = 'foo';
    o.failureCause = 'foo';
    o.failureMessage = 'foo';
  }
  buildCounterVerifyJobRun--;
  return o;
}

void checkVerifyJobRun(api.VerifyJobRun o) {
  buildCounterVerifyJobRun++;
  if (buildCounterVerifyJobRun < 3) {
    unittest.expect(
      o.artifactUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.build!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.eventLogPath!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.failureCause!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.failureMessage!,
      unittest.equals('foo'),
    );
  }
  buildCounterVerifyJobRun--;
}

void main() {
  unittest.group('obj-schema-AbandonReleaseRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAbandonReleaseRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AbandonReleaseRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAbandonReleaseRequest(od);
    });
  });

  unittest.group('obj-schema-AbandonReleaseResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAbandonReleaseResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AbandonReleaseResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAbandonReleaseResponse(od);
    });
  });

  unittest.group('obj-schema-AdvanceChildRolloutJob', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdvanceChildRolloutJob();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AdvanceChildRolloutJob.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAdvanceChildRolloutJob(od);
    });
  });

  unittest.group('obj-schema-AdvanceChildRolloutJobRun', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdvanceChildRolloutJobRun();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AdvanceChildRolloutJobRun.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAdvanceChildRolloutJobRun(od);
    });
  });

  unittest.group('obj-schema-AdvanceRolloutRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdvanceRolloutRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AdvanceRolloutRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAdvanceRolloutRequest(od);
    });
  });

  unittest.group('obj-schema-AdvanceRolloutResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdvanceRolloutResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AdvanceRolloutResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAdvanceRolloutResponse(od);
    });
  });

  unittest.group('obj-schema-AnthosCluster', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAnthosCluster();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AnthosCluster.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAnthosCluster(od);
    });
  });

  unittest.group('obj-schema-ApproveRolloutRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApproveRolloutRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApproveRolloutRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkApproveRolloutRequest(od);
    });
  });

  unittest.group('obj-schema-ApproveRolloutResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApproveRolloutResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApproveRolloutResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkApproveRolloutResponse(od);
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

  unittest.group('obj-schema-Binding', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBinding();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Binding.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkBinding(od);
    });
  });

  unittest.group('obj-schema-BuildArtifact', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBuildArtifact();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BuildArtifact.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBuildArtifact(od);
    });
  });

  unittest.group('obj-schema-Canary', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCanary();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Canary.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCanary(od);
    });
  });

  unittest.group('obj-schema-CanaryDeployment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCanaryDeployment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CanaryDeployment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCanaryDeployment(od);
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

  unittest.group('obj-schema-CancelRolloutRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCancelRolloutRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CancelRolloutRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCancelRolloutRequest(od);
    });
  });

  unittest.group('obj-schema-CancelRolloutResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCancelRolloutResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CancelRolloutResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCancelRolloutResponse(od);
    });
  });

  unittest.group('obj-schema-ChildRolloutJobs', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChildRolloutJobs();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ChildRolloutJobs.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkChildRolloutJobs(od);
    });
  });

  unittest.group('obj-schema-CloudRunConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCloudRunConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CloudRunConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCloudRunConfig(od);
    });
  });

  unittest.group('obj-schema-CloudRunLocation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCloudRunLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CloudRunLocation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCloudRunLocation(od);
    });
  });

  unittest.group('obj-schema-CloudRunMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCloudRunMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CloudRunMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCloudRunMetadata(od);
    });
  });

  unittest.group('obj-schema-CloudRunRenderMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCloudRunRenderMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CloudRunRenderMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCloudRunRenderMetadata(od);
    });
  });

  unittest.group('obj-schema-Config', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Config.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkConfig(od);
    });
  });

  unittest.group('obj-schema-CreateChildRolloutJob', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateChildRolloutJob();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateChildRolloutJob.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreateChildRolloutJob(od);
    });
  });

  unittest.group('obj-schema-CreateChildRolloutJobRun', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateChildRolloutJobRun();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateChildRolloutJobRun.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreateChildRolloutJobRun(od);
    });
  });

  unittest.group('obj-schema-CustomCanaryDeployment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomCanaryDeployment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomCanaryDeployment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCustomCanaryDeployment(od);
    });
  });

  unittest.group('obj-schema-Date', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Date.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDate(od);
    });
  });

  unittest.group('obj-schema-DefaultPool', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDefaultPool();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DefaultPool.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDefaultPool(od);
    });
  });

  unittest.group('obj-schema-DeliveryPipeline', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeliveryPipeline();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeliveryPipeline.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeliveryPipeline(od);
    });
  });

  unittest.group('obj-schema-DeployArtifact', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeployArtifact();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeployArtifact.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeployArtifact(od);
    });
  });

  unittest.group('obj-schema-DeployJob', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeployJob();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.DeployJob.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDeployJob(od);
    });
  });

  unittest.group('obj-schema-DeployJobRun', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeployJobRun();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeployJobRun.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeployJobRun(od);
    });
  });

  unittest.group('obj-schema-DeployJobRunMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeployJobRunMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeployJobRunMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeployJobRunMetadata(od);
    });
  });

  unittest.group('obj-schema-DeployParameters', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeployParameters();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeployParameters.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeployParameters(od);
    });
  });

  unittest.group('obj-schema-DeploymentJobs', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeploymentJobs();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeploymentJobs.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeploymentJobs(od);
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

  unittest.group('obj-schema-ExecutionConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExecutionConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExecutionConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExecutionConfig(od);
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

  unittest.group('obj-schema-GatewayServiceMesh', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGatewayServiceMesh();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GatewayServiceMesh.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGatewayServiceMesh(od);
    });
  });

  unittest.group('obj-schema-GkeCluster', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGkeCluster();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GkeCluster.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGkeCluster(od);
    });
  });

  unittest.group('obj-schema-IgnoreJobRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIgnoreJobRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IgnoreJobRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIgnoreJobRequest(od);
    });
  });

  unittest.group('obj-schema-IgnoreJobResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIgnoreJobResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IgnoreJobResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIgnoreJobResponse(od);
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

  unittest.group('obj-schema-JobRun', () {
    unittest.test('to-json--from-json', () async {
      final o = buildJobRun();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.JobRun.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkJobRun(od);
    });
  });

  unittest.group('obj-schema-KubernetesConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildKubernetesConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.KubernetesConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkKubernetesConfig(od);
    });
  });

  unittest.group('obj-schema-ListDeliveryPipelinesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListDeliveryPipelinesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListDeliveryPipelinesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListDeliveryPipelinesResponse(od);
    });
  });

  unittest.group('obj-schema-ListJobRunsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListJobRunsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListJobRunsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListJobRunsResponse(od);
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

  unittest.group('obj-schema-ListReleasesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListReleasesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListReleasesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListReleasesResponse(od);
    });
  });

  unittest.group('obj-schema-ListRolloutsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListRolloutsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListRolloutsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListRolloutsResponse(od);
    });
  });

  unittest.group('obj-schema-ListTargetsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListTargetsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListTargetsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListTargetsResponse(od);
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

  unittest.group('obj-schema-Metadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Metadata.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMetadata(od);
    });
  });

  unittest.group('obj-schema-MultiTarget', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMultiTarget();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MultiTarget.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMultiTarget(od);
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

  unittest.group('obj-schema-Phase', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPhase();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Phase.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPhase(od);
    });
  });

  unittest.group('obj-schema-PhaseArtifact', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPhaseArtifact();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PhaseArtifact.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPhaseArtifact(od);
    });
  });

  unittest.group('obj-schema-PhaseConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPhaseConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PhaseConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPhaseConfig(od);
    });
  });

  unittest.group('obj-schema-PipelineCondition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPipelineCondition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PipelineCondition.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPipelineCondition(od);
    });
  });

  unittest.group('obj-schema-PipelineReadyCondition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPipelineReadyCondition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PipelineReadyCondition.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPipelineReadyCondition(od);
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

  unittest.group('obj-schema-PrivatePool', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPrivatePool();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PrivatePool.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPrivatePool(od);
    });
  });

  unittest.group('obj-schema-Release', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRelease();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Release.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkRelease(od);
    });
  });

  unittest.group('obj-schema-ReleaseCondition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReleaseCondition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReleaseCondition.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReleaseCondition(od);
    });
  });

  unittest.group('obj-schema-ReleaseReadyCondition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReleaseReadyCondition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReleaseReadyCondition.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReleaseReadyCondition(od);
    });
  });

  unittest.group('obj-schema-RenderMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRenderMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RenderMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRenderMetadata(od);
    });
  });

  unittest.group('obj-schema-RetryJobRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRetryJobRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RetryJobRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRetryJobRequest(od);
    });
  });

  unittest.group('obj-schema-RetryJobResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRetryJobResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RetryJobResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRetryJobResponse(od);
    });
  });

  unittest.group('obj-schema-Rollout', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRollout();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Rollout.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkRollout(od);
    });
  });

  unittest.group('obj-schema-RuntimeConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRuntimeConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RuntimeConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRuntimeConfig(od);
    });
  });

  unittest.group('obj-schema-SerialPipeline', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSerialPipeline();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SerialPipeline.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSerialPipeline(od);
    });
  });

  unittest.group('obj-schema-ServiceNetworking', () {
    unittest.test('to-json--from-json', () async {
      final o = buildServiceNetworking();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ServiceNetworking.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkServiceNetworking(od);
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

  unittest.group('obj-schema-SkaffoldSupportedCondition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSkaffoldSupportedCondition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SkaffoldSupportedCondition.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSkaffoldSupportedCondition(od);
    });
  });

  unittest.group('obj-schema-SkaffoldVersion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSkaffoldVersion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SkaffoldVersion.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSkaffoldVersion(od);
    });
  });

  unittest.group('obj-schema-Stage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Stage.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkStage(od);
    });
  });

  unittest.group('obj-schema-Standard', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStandard();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Standard.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkStandard(od);
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

  unittest.group('obj-schema-Strategy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStrategy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Strategy.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkStrategy(od);
    });
  });

  unittest.group('obj-schema-Target', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTarget();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Target.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTarget(od);
    });
  });

  unittest.group('obj-schema-TargetArtifact', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTargetArtifact();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TargetArtifact.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTargetArtifact(od);
    });
  });

  unittest.group('obj-schema-TargetRender', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTargetRender();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TargetRender.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTargetRender(od);
    });
  });

  unittest.group('obj-schema-TargetsPresentCondition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTargetsPresentCondition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TargetsPresentCondition.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTargetsPresentCondition(od);
    });
  });

  unittest.group('obj-schema-TargetsTypeCondition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTargetsTypeCondition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TargetsTypeCondition.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTargetsTypeCondition(od);
    });
  });

  unittest.group('obj-schema-TerminateJobRunRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTerminateJobRunRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TerminateJobRunRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTerminateJobRunRequest(od);
    });
  });

  unittest.group('obj-schema-TerminateJobRunResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTerminateJobRunResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TerminateJobRunResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTerminateJobRunResponse(od);
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

  unittest.group('obj-schema-VerifyJob', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVerifyJob();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.VerifyJob.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkVerifyJob(od);
    });
  });

  unittest.group('obj-schema-VerifyJobRun', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVerifyJobRun();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VerifyJobRun.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVerifyJobRun(od);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudDeployApi(mock).projects.locations;
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

    unittest.test('method--getConfig', () async {
      final mock = HttpServerMock();
      final res = api.CloudDeployApi(mock).projects.locations;
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
        final resp = convert.json.encode(buildConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getConfig(arg_name, $fields: arg_$fields);
      checkConfig(response as api.Config);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudDeployApi(mock).projects.locations;
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

  unittest.group('resource-ProjectsLocationsDeliveryPipelinesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudDeployApi(mock).projects.locations.deliveryPipelines;
      final arg_request = buildDeliveryPipeline();
      final arg_parent = 'foo';
      final arg_deliveryPipelineId = 'foo';
      final arg_requestId = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.DeliveryPipeline.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDeliveryPipeline(obj);

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
          queryMap['deliveryPipelineId']!.first,
          unittest.equals(arg_deliveryPipelineId),
        );
        unittest.expect(
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
        );
        unittest.expect(
          queryMap['validateOnly']!.first,
          unittest.equals('$arg_validateOnly'),
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
          deliveryPipelineId: arg_deliveryPipelineId,
          requestId: arg_requestId,
          validateOnly: arg_validateOnly,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudDeployApi(mock).projects.locations.deliveryPipelines;
      final arg_name = 'foo';
      final arg_allowMissing = true;
      final arg_etag = 'foo';
      final arg_force = true;
      final arg_requestId = 'foo';
      final arg_validateOnly = true;
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
          queryMap['allowMissing']!.first,
          unittest.equals('$arg_allowMissing'),
        );
        unittest.expect(
          queryMap['etag']!.first,
          unittest.equals(arg_etag),
        );
        unittest.expect(
          queryMap['force']!.first,
          unittest.equals('$arg_force'),
        );
        unittest.expect(
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
        );
        unittest.expect(
          queryMap['validateOnly']!.first,
          unittest.equals('$arg_validateOnly'),
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
      final response = await res.delete(arg_name,
          allowMissing: arg_allowMissing,
          etag: arg_etag,
          force: arg_force,
          requestId: arg_requestId,
          validateOnly: arg_validateOnly,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudDeployApi(mock).projects.locations.deliveryPipelines;
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
        final resp = convert.json.encode(buildDeliveryPipeline());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkDeliveryPipeline(response as api.DeliveryPipeline);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.CloudDeployApi(mock).projects.locations.deliveryPipelines;
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

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudDeployApi(mock).projects.locations.deliveryPipelines;
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
        final resp = convert.json.encode(buildListDeliveryPipelinesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListDeliveryPipelinesResponse(
          response as api.ListDeliveryPipelinesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CloudDeployApi(mock).projects.locations.deliveryPipelines;
      final arg_request = buildDeliveryPipeline();
      final arg_name = 'foo';
      final arg_allowMissing = true;
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.DeliveryPipeline.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDeliveryPipeline(obj);

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
          queryMap['allowMissing']!.first,
          unittest.equals('$arg_allowMissing'),
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
          queryMap['validateOnly']!.first,
          unittest.equals('$arg_validateOnly'),
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
          allowMissing: arg_allowMissing,
          requestId: arg_requestId,
          updateMask: arg_updateMask,
          validateOnly: arg_validateOnly,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.CloudDeployApi(mock).projects.locations.deliveryPipelines;
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
      final res = api.CloudDeployApi(mock).projects.locations.deliveryPipelines;
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

  unittest.group('resource-ProjectsLocationsDeliveryPipelinesReleasesResource',
      () {
    unittest.test('method--abandon', () async {
      final mock = HttpServerMock();
      final res = api.CloudDeployApi(mock)
          .projects
          .locations
          .deliveryPipelines
          .releases;
      final arg_request = buildAbandonReleaseRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AbandonReleaseRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAbandonReleaseRequest(obj);

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
        final resp = convert.json.encode(buildAbandonReleaseResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.abandon(arg_request, arg_name, $fields: arg_$fields);
      checkAbandonReleaseResponse(response as api.AbandonReleaseResponse);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudDeployApi(mock)
          .projects
          .locations
          .deliveryPipelines
          .releases;
      final arg_request = buildRelease();
      final arg_parent = 'foo';
      final arg_releaseId = 'foo';
      final arg_requestId = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Release.fromJson(json as core.Map<core.String, core.dynamic>);
        checkRelease(obj);

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
          queryMap['releaseId']!.first,
          unittest.equals(arg_releaseId),
        );
        unittest.expect(
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
        );
        unittest.expect(
          queryMap['validateOnly']!.first,
          unittest.equals('$arg_validateOnly'),
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
          releaseId: arg_releaseId,
          requestId: arg_requestId,
          validateOnly: arg_validateOnly,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudDeployApi(mock)
          .projects
          .locations
          .deliveryPipelines
          .releases;
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
        final resp = convert.json.encode(buildRelease());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkRelease(response as api.Release);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudDeployApi(mock)
          .projects
          .locations
          .deliveryPipelines
          .releases;
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
        final resp = convert.json.encode(buildListReleasesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListReleasesResponse(response as api.ListReleasesResponse);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsDeliveryPipelinesReleasesRolloutsResource',
      () {
    unittest.test('method--advance', () async {
      final mock = HttpServerMock();
      final res = api.CloudDeployApi(mock)
          .projects
          .locations
          .deliveryPipelines
          .releases
          .rollouts;
      final arg_request = buildAdvanceRolloutRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AdvanceRolloutRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAdvanceRolloutRequest(obj);

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
        final resp = convert.json.encode(buildAdvanceRolloutResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.advance(arg_request, arg_name, $fields: arg_$fields);
      checkAdvanceRolloutResponse(response as api.AdvanceRolloutResponse);
    });

    unittest.test('method--approve', () async {
      final mock = HttpServerMock();
      final res = api.CloudDeployApi(mock)
          .projects
          .locations
          .deliveryPipelines
          .releases
          .rollouts;
      final arg_request = buildApproveRolloutRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ApproveRolloutRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkApproveRolloutRequest(obj);

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
        final resp = convert.json.encode(buildApproveRolloutResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.approve(arg_request, arg_name, $fields: arg_$fields);
      checkApproveRolloutResponse(response as api.ApproveRolloutResponse);
    });

    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.CloudDeployApi(mock)
          .projects
          .locations
          .deliveryPipelines
          .releases
          .rollouts;
      final arg_request = buildCancelRolloutRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CancelRolloutRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCancelRolloutRequest(obj);

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
        final resp = convert.json.encode(buildCancelRolloutResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.cancel(arg_request, arg_name, $fields: arg_$fields);
      checkCancelRolloutResponse(response as api.CancelRolloutResponse);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudDeployApi(mock)
          .projects
          .locations
          .deliveryPipelines
          .releases
          .rollouts;
      final arg_request = buildRollout();
      final arg_parent = 'foo';
      final arg_requestId = 'foo';
      final arg_rolloutId = 'foo';
      final arg_startingPhaseId = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Rollout.fromJson(json as core.Map<core.String, core.dynamic>);
        checkRollout(obj);

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
          queryMap['rolloutId']!.first,
          unittest.equals(arg_rolloutId),
        );
        unittest.expect(
          queryMap['startingPhaseId']!.first,
          unittest.equals(arg_startingPhaseId),
        );
        unittest.expect(
          queryMap['validateOnly']!.first,
          unittest.equals('$arg_validateOnly'),
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
          requestId: arg_requestId,
          rolloutId: arg_rolloutId,
          startingPhaseId: arg_startingPhaseId,
          validateOnly: arg_validateOnly,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudDeployApi(mock)
          .projects
          .locations
          .deliveryPipelines
          .releases
          .rollouts;
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
        final resp = convert.json.encode(buildRollout());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkRollout(response as api.Rollout);
    });

    unittest.test('method--ignoreJob', () async {
      final mock = HttpServerMock();
      final res = api.CloudDeployApi(mock)
          .projects
          .locations
          .deliveryPipelines
          .releases
          .rollouts;
      final arg_request = buildIgnoreJobRequest();
      final arg_rollout = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.IgnoreJobRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkIgnoreJobRequest(obj);

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
        final resp = convert.json.encode(buildIgnoreJobResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.ignoreJob(arg_request, arg_rollout, $fields: arg_$fields);
      checkIgnoreJobResponse(response as api.IgnoreJobResponse);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudDeployApi(mock)
          .projects
          .locations
          .deliveryPipelines
          .releases
          .rollouts;
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
        final resp = convert.json.encode(buildListRolloutsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListRolloutsResponse(response as api.ListRolloutsResponse);
    });

    unittest.test('method--retryJob', () async {
      final mock = HttpServerMock();
      final res = api.CloudDeployApi(mock)
          .projects
          .locations
          .deliveryPipelines
          .releases
          .rollouts;
      final arg_request = buildRetryJobRequest();
      final arg_rollout = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RetryJobRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRetryJobRequest(obj);

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
        final resp = convert.json.encode(buildRetryJobResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.retryJob(arg_request, arg_rollout, $fields: arg_$fields);
      checkRetryJobResponse(response as api.RetryJobResponse);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsDeliveryPipelinesReleasesRolloutsJobRunsResource',
      () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudDeployApi(mock)
          .projects
          .locations
          .deliveryPipelines
          .releases
          .rollouts
          .jobRuns;
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
        final resp = convert.json.encode(buildJobRun());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkJobRun(response as api.JobRun);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudDeployApi(mock)
          .projects
          .locations
          .deliveryPipelines
          .releases
          .rollouts
          .jobRuns;
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
        final resp = convert.json.encode(buildListJobRunsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListJobRunsResponse(response as api.ListJobRunsResponse);
    });

    unittest.test('method--terminate', () async {
      final mock = HttpServerMock();
      final res = api.CloudDeployApi(mock)
          .projects
          .locations
          .deliveryPipelines
          .releases
          .rollouts
          .jobRuns;
      final arg_request = buildTerminateJobRunRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.TerminateJobRunRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTerminateJobRunRequest(obj);

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
        final resp = convert.json.encode(buildTerminateJobRunResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.terminate(arg_request, arg_name, $fields: arg_$fields);
      checkTerminateJobRunResponse(response as api.TerminateJobRunResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.CloudDeployApi(mock).projects.locations.operations;
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
      final res = api.CloudDeployApi(mock).projects.locations.operations;
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
      final res = api.CloudDeployApi(mock).projects.locations.operations;
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
      final res = api.CloudDeployApi(mock).projects.locations.operations;
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

  unittest.group('resource-ProjectsLocationsTargetsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudDeployApi(mock).projects.locations.targets;
      final arg_request = buildTarget();
      final arg_parent = 'foo';
      final arg_requestId = 'foo';
      final arg_targetId = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Target.fromJson(json as core.Map<core.String, core.dynamic>);
        checkTarget(obj);

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
          queryMap['targetId']!.first,
          unittest.equals(arg_targetId),
        );
        unittest.expect(
          queryMap['validateOnly']!.first,
          unittest.equals('$arg_validateOnly'),
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
          requestId: arg_requestId,
          targetId: arg_targetId,
          validateOnly: arg_validateOnly,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudDeployApi(mock).projects.locations.targets;
      final arg_name = 'foo';
      final arg_allowMissing = true;
      final arg_etag = 'foo';
      final arg_requestId = 'foo';
      final arg_validateOnly = true;
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
          queryMap['allowMissing']!.first,
          unittest.equals('$arg_allowMissing'),
        );
        unittest.expect(
          queryMap['etag']!.first,
          unittest.equals(arg_etag),
        );
        unittest.expect(
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
        );
        unittest.expect(
          queryMap['validateOnly']!.first,
          unittest.equals('$arg_validateOnly'),
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
      final response = await res.delete(arg_name,
          allowMissing: arg_allowMissing,
          etag: arg_etag,
          requestId: arg_requestId,
          validateOnly: arg_validateOnly,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudDeployApi(mock).projects.locations.targets;
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
        final resp = convert.json.encode(buildTarget());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkTarget(response as api.Target);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.CloudDeployApi(mock).projects.locations.targets;
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

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudDeployApi(mock).projects.locations.targets;
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
        final resp = convert.json.encode(buildListTargetsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListTargetsResponse(response as api.ListTargetsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CloudDeployApi(mock).projects.locations.targets;
      final arg_request = buildTarget();
      final arg_name = 'foo';
      final arg_allowMissing = true;
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Target.fromJson(json as core.Map<core.String, core.dynamic>);
        checkTarget(obj);

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
          queryMap['allowMissing']!.first,
          unittest.equals('$arg_allowMissing'),
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
          queryMap['validateOnly']!.first,
          unittest.equals('$arg_validateOnly'),
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
          allowMissing: arg_allowMissing,
          requestId: arg_requestId,
          updateMask: arg_updateMask,
          validateOnly: arg_validateOnly,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.CloudDeployApi(mock).projects.locations.targets;
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
      final res = api.CloudDeployApi(mock).projects.locations.targets;
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
}
