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
    unittest.expect(o.rollout!, unittest.equals('foo'));
    unittest.expect(o.rolloutPhaseId!, unittest.equals('foo'));
  }
  buildCounterAdvanceChildRolloutJobRun--;
}

core.int buildCounterAdvanceRolloutOperation = 0;
api.AdvanceRolloutOperation buildAdvanceRolloutOperation() {
  final o = api.AdvanceRolloutOperation();
  buildCounterAdvanceRolloutOperation++;
  if (buildCounterAdvanceRolloutOperation < 3) {
    o.destinationPhase = 'foo';
    o.rollout = 'foo';
    o.sourcePhase = 'foo';
    o.wait = 'foo';
  }
  buildCounterAdvanceRolloutOperation--;
  return o;
}

void checkAdvanceRolloutOperation(api.AdvanceRolloutOperation o) {
  buildCounterAdvanceRolloutOperation++;
  if (buildCounterAdvanceRolloutOperation < 3) {
    unittest.expect(o.destinationPhase!, unittest.equals('foo'));
    unittest.expect(o.rollout!, unittest.equals('foo'));
    unittest.expect(o.sourcePhase!, unittest.equals('foo'));
    unittest.expect(o.wait!, unittest.equals('foo'));
  }
  buildCounterAdvanceRolloutOperation--;
}

core.List<core.String> buildUnnamed0() => ['foo', 'foo'];

void checkUnnamed0(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAdvanceRolloutRequest = 0;
api.AdvanceRolloutRequest buildAdvanceRolloutRequest() {
  final o = api.AdvanceRolloutRequest();
  buildCounterAdvanceRolloutRequest++;
  if (buildCounterAdvanceRolloutRequest < 3) {
    o.overrideDeployPolicy = buildUnnamed0();
    o.phaseId = 'foo';
  }
  buildCounterAdvanceRolloutRequest--;
  return o;
}

void checkAdvanceRolloutRequest(api.AdvanceRolloutRequest o) {
  buildCounterAdvanceRolloutRequest++;
  if (buildCounterAdvanceRolloutRequest < 3) {
    checkUnnamed0(o.overrideDeployPolicy!);
    unittest.expect(o.phaseId!, unittest.equals('foo'));
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

core.List<core.String> buildUnnamed1() => ['foo', 'foo'];

void checkUnnamed1(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAdvanceRolloutRule = 0;
api.AdvanceRolloutRule buildAdvanceRolloutRule() {
  final o = api.AdvanceRolloutRule();
  buildCounterAdvanceRolloutRule++;
  if (buildCounterAdvanceRolloutRule < 3) {
    o.condition = buildAutomationRuleCondition();
    o.id = 'foo';
    o.sourcePhases = buildUnnamed1();
    o.wait = 'foo';
  }
  buildCounterAdvanceRolloutRule--;
  return o;
}

void checkAdvanceRolloutRule(api.AdvanceRolloutRule o) {
  buildCounterAdvanceRolloutRule++;
  if (buildCounterAdvanceRolloutRule < 3) {
    checkAutomationRuleCondition(o.condition!);
    unittest.expect(o.id!, unittest.equals('foo'));
    checkUnnamed1(o.sourcePhases!);
    unittest.expect(o.wait!, unittest.equals('foo'));
  }
  buildCounterAdvanceRolloutRule--;
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
    unittest.expect(o.membership!, unittest.equals('foo'));
  }
  buildCounterAnthosCluster--;
}

core.List<core.String> buildUnnamed2() => ['foo', 'foo'];

void checkUnnamed2(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterApproveRolloutRequest = 0;
api.ApproveRolloutRequest buildApproveRolloutRequest() {
  final o = api.ApproveRolloutRequest();
  buildCounterApproveRolloutRequest++;
  if (buildCounterApproveRolloutRequest < 3) {
    o.approved = true;
    o.overrideDeployPolicy = buildUnnamed2();
  }
  buildCounterApproveRolloutRequest--;
  return o;
}

void checkApproveRolloutRequest(api.ApproveRolloutRequest o) {
  buildCounterApproveRolloutRequest++;
  if (buildCounterApproveRolloutRequest < 3) {
    unittest.expect(o.approved!, unittest.isTrue);
    checkUnnamed2(o.overrideDeployPolicy!);
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

core.List<api.AnthosCluster> buildUnnamed3() => [
  buildAnthosCluster(),
  buildAnthosCluster(),
];

void checkUnnamed3(core.List<api.AnthosCluster> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAnthosCluster(o[0]);
  checkAnthosCluster(o[1]);
}

core.List<api.GkeCluster> buildUnnamed4() => [
  buildGkeCluster(),
  buildGkeCluster(),
];

void checkUnnamed4(core.List<api.GkeCluster> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGkeCluster(o[0]);
  checkGkeCluster(o[1]);
}

core.int buildCounterAssociatedEntities = 0;
api.AssociatedEntities buildAssociatedEntities() {
  final o = api.AssociatedEntities();
  buildCounterAssociatedEntities++;
  if (buildCounterAssociatedEntities < 3) {
    o.anthosClusters = buildUnnamed3();
    o.gkeClusters = buildUnnamed4();
  }
  buildCounterAssociatedEntities--;
  return o;
}

void checkAssociatedEntities(api.AssociatedEntities o) {
  buildCounterAssociatedEntities++;
  if (buildCounterAssociatedEntities < 3) {
    checkUnnamed3(o.anthosClusters!);
    checkUnnamed4(o.gkeClusters!);
  }
  buildCounterAssociatedEntities--;
}

core.List<api.AuditLogConfig> buildUnnamed5() => [
  buildAuditLogConfig(),
  buildAuditLogConfig(),
];

void checkUnnamed5(core.List<api.AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditLogConfig(o[0]);
  checkAuditLogConfig(o[1]);
}

core.int buildCounterAuditConfig = 0;
api.AuditConfig buildAuditConfig() {
  final o = api.AuditConfig();
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed5();
    o.service = 'foo';
  }
  buildCounterAuditConfig--;
  return o;
}

void checkAuditConfig(api.AuditConfig o) {
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    checkUnnamed5(o.auditLogConfigs!);
    unittest.expect(o.service!, unittest.equals('foo'));
  }
  buildCounterAuditConfig--;
}

core.List<core.String> buildUnnamed6() => ['foo', 'foo'];

void checkUnnamed6(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAuditLogConfig = 0;
api.AuditLogConfig buildAuditLogConfig() {
  final o = api.AuditLogConfig();
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    o.exemptedMembers = buildUnnamed6();
    o.logType = 'foo';
  }
  buildCounterAuditLogConfig--;
  return o;
}

void checkAuditLogConfig(api.AuditLogConfig o) {
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    checkUnnamed6(o.exemptedMembers!);
    unittest.expect(o.logType!, unittest.equals('foo'));
  }
  buildCounterAuditLogConfig--;
}

core.Map<core.String, core.String> buildUnnamed7() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed7(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed8() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed8(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<api.AutomationRule> buildUnnamed9() => [
  buildAutomationRule(),
  buildAutomationRule(),
];

void checkUnnamed9(core.List<api.AutomationRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAutomationRule(o[0]);
  checkAutomationRule(o[1]);
}

core.int buildCounterAutomation = 0;
api.Automation buildAutomation() {
  final o = api.Automation();
  buildCounterAutomation++;
  if (buildCounterAutomation < 3) {
    o.annotations = buildUnnamed7();
    o.createTime = 'foo';
    o.description = 'foo';
    o.etag = 'foo';
    o.labels = buildUnnamed8();
    o.name = 'foo';
    o.rules = buildUnnamed9();
    o.selector = buildAutomationResourceSelector();
    o.serviceAccount = 'foo';
    o.suspended = true;
    o.uid = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterAutomation--;
  return o;
}

void checkAutomation(api.Automation o) {
  buildCounterAutomation++;
  if (buildCounterAutomation < 3) {
    checkUnnamed7(o.annotations!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.etag!, unittest.equals('foo'));
    checkUnnamed8(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed9(o.rules!);
    checkAutomationResourceSelector(o.selector!);
    unittest.expect(o.serviceAccount!, unittest.equals('foo'));
    unittest.expect(o.suspended!, unittest.isTrue);
    unittest.expect(o.uid!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterAutomation--;
}

core.List<api.TargetAttribute> buildUnnamed10() => [
  buildTargetAttribute(),
  buildTargetAttribute(),
];

void checkUnnamed10(core.List<api.TargetAttribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTargetAttribute(o[0]);
  checkTargetAttribute(o[1]);
}

core.int buildCounterAutomationResourceSelector = 0;
api.AutomationResourceSelector buildAutomationResourceSelector() {
  final o = api.AutomationResourceSelector();
  buildCounterAutomationResourceSelector++;
  if (buildCounterAutomationResourceSelector < 3) {
    o.targets = buildUnnamed10();
  }
  buildCounterAutomationResourceSelector--;
  return o;
}

void checkAutomationResourceSelector(api.AutomationResourceSelector o) {
  buildCounterAutomationResourceSelector++;
  if (buildCounterAutomationResourceSelector < 3) {
    checkUnnamed10(o.targets!);
  }
  buildCounterAutomationResourceSelector--;
}

core.List<core.String> buildUnnamed11() => ['foo', 'foo'];

void checkUnnamed11(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed12() => ['foo', 'foo'];

void checkUnnamed12(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAutomationRolloutMetadata = 0;
api.AutomationRolloutMetadata buildAutomationRolloutMetadata() {
  final o = api.AutomationRolloutMetadata();
  buildCounterAutomationRolloutMetadata++;
  if (buildCounterAutomationRolloutMetadata < 3) {
    o.advanceAutomationRuns = buildUnnamed11();
    o.promoteAutomationRun = 'foo';
    o.repairAutomationRuns = buildUnnamed12();
  }
  buildCounterAutomationRolloutMetadata--;
  return o;
}

void checkAutomationRolloutMetadata(api.AutomationRolloutMetadata o) {
  buildCounterAutomationRolloutMetadata++;
  if (buildCounterAutomationRolloutMetadata < 3) {
    checkUnnamed11(o.advanceAutomationRuns!);
    unittest.expect(o.promoteAutomationRun!, unittest.equals('foo'));
    checkUnnamed12(o.repairAutomationRuns!);
  }
  buildCounterAutomationRolloutMetadata--;
}

core.int buildCounterAutomationRule = 0;
api.AutomationRule buildAutomationRule() {
  final o = api.AutomationRule();
  buildCounterAutomationRule++;
  if (buildCounterAutomationRule < 3) {
    o.advanceRolloutRule = buildAdvanceRolloutRule();
    o.promoteReleaseRule = buildPromoteReleaseRule();
    o.repairRolloutRule = buildRepairRolloutRule();
    o.timedPromoteReleaseRule = buildTimedPromoteReleaseRule();
  }
  buildCounterAutomationRule--;
  return o;
}

void checkAutomationRule(api.AutomationRule o) {
  buildCounterAutomationRule++;
  if (buildCounterAutomationRule < 3) {
    checkAdvanceRolloutRule(o.advanceRolloutRule!);
    checkPromoteReleaseRule(o.promoteReleaseRule!);
    checkRepairRolloutRule(o.repairRolloutRule!);
    checkTimedPromoteReleaseRule(o.timedPromoteReleaseRule!);
  }
  buildCounterAutomationRule--;
}

core.int buildCounterAutomationRuleCondition = 0;
api.AutomationRuleCondition buildAutomationRuleCondition() {
  final o = api.AutomationRuleCondition();
  buildCounterAutomationRuleCondition++;
  if (buildCounterAutomationRuleCondition < 3) {
    o.targetsPresentCondition = buildTargetsPresentCondition();
    o.timedPromoteReleaseCondition = buildTimedPromoteReleaseCondition();
  }
  buildCounterAutomationRuleCondition--;
  return o;
}

void checkAutomationRuleCondition(api.AutomationRuleCondition o) {
  buildCounterAutomationRuleCondition++;
  if (buildCounterAutomationRuleCondition < 3) {
    checkTargetsPresentCondition(o.targetsPresentCondition!);
    checkTimedPromoteReleaseCondition(o.timedPromoteReleaseCondition!);
  }
  buildCounterAutomationRuleCondition--;
}

core.int buildCounterAutomationRun = 0;
api.AutomationRun buildAutomationRun() {
  final o = api.AutomationRun();
  buildCounterAutomationRun++;
  if (buildCounterAutomationRun < 3) {
    o.advanceRolloutOperation = buildAdvanceRolloutOperation();
    o.automationId = 'foo';
    o.automationSnapshot = buildAutomation();
    o.createTime = 'foo';
    o.etag = 'foo';
    o.expireTime = 'foo';
    o.name = 'foo';
    o.policyViolation = buildPolicyViolation();
    o.promoteReleaseOperation = buildPromoteReleaseOperation();
    o.repairRolloutOperation = buildRepairRolloutOperation();
    o.ruleId = 'foo';
    o.serviceAccount = 'foo';
    o.state = 'foo';
    o.stateDescription = 'foo';
    o.targetId = 'foo';
    o.timedPromoteReleaseOperation = buildTimedPromoteReleaseOperation();
    o.uid = 'foo';
    o.updateTime = 'foo';
    o.waitUntilTime = 'foo';
  }
  buildCounterAutomationRun--;
  return o;
}

void checkAutomationRun(api.AutomationRun o) {
  buildCounterAutomationRun++;
  if (buildCounterAutomationRun < 3) {
    checkAdvanceRolloutOperation(o.advanceRolloutOperation!);
    unittest.expect(o.automationId!, unittest.equals('foo'));
    checkAutomation(o.automationSnapshot!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.etag!, unittest.equals('foo'));
    unittest.expect(o.expireTime!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkPolicyViolation(o.policyViolation!);
    checkPromoteReleaseOperation(o.promoteReleaseOperation!);
    checkRepairRolloutOperation(o.repairRolloutOperation!);
    unittest.expect(o.ruleId!, unittest.equals('foo'));
    unittest.expect(o.serviceAccount!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.stateDescription!, unittest.equals('foo'));
    unittest.expect(o.targetId!, unittest.equals('foo'));
    checkTimedPromoteReleaseOperation(o.timedPromoteReleaseOperation!);
    unittest.expect(o.uid!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
    unittest.expect(o.waitUntilTime!, unittest.equals('foo'));
  }
  buildCounterAutomationRun--;
}

core.List<core.String> buildUnnamed13() => ['foo', 'foo'];

void checkUnnamed13(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBinding = 0;
api.Binding buildBinding() {
  final o = api.Binding();
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    o.condition = buildExpr();
    o.members = buildUnnamed13();
    o.role = 'foo';
  }
  buildCounterBinding--;
  return o;
}

void checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition!);
    checkUnnamed13(o.members!);
    unittest.expect(o.role!, unittest.equals('foo'));
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
    unittest.expect(o.image!, unittest.equals('foo'));
    unittest.expect(o.tag!, unittest.equals('foo'));
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

core.List<core.int> buildUnnamed14() => [42, 42];

void checkUnnamed14(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.int buildCounterCanaryDeployment = 0;
api.CanaryDeployment buildCanaryDeployment() {
  final o = api.CanaryDeployment();
  buildCounterCanaryDeployment++;
  if (buildCounterCanaryDeployment < 3) {
    o.percentages = buildUnnamed14();
    o.postdeploy = buildPostdeploy();
    o.predeploy = buildPredeploy();
    o.verify = true;
  }
  buildCounterCanaryDeployment--;
  return o;
}

void checkCanaryDeployment(api.CanaryDeployment o) {
  buildCounterCanaryDeployment++;
  if (buildCounterCanaryDeployment < 3) {
    checkUnnamed14(o.percentages!);
    checkPostdeploy(o.postdeploy!);
    checkPredeploy(o.predeploy!);
    unittest.expect(o.verify!, unittest.isTrue);
  }
  buildCounterCanaryDeployment--;
}

core.int buildCounterCancelAutomationRunRequest = 0;
api.CancelAutomationRunRequest buildCancelAutomationRunRequest() {
  final o = api.CancelAutomationRunRequest();
  buildCounterCancelAutomationRunRequest++;
  if (buildCounterCancelAutomationRunRequest < 3) {}
  buildCounterCancelAutomationRunRequest--;
  return o;
}

void checkCancelAutomationRunRequest(api.CancelAutomationRunRequest o) {
  buildCounterCancelAutomationRunRequest++;
  if (buildCounterCancelAutomationRunRequest < 3) {}
  buildCounterCancelAutomationRunRequest--;
}

core.int buildCounterCancelAutomationRunResponse = 0;
api.CancelAutomationRunResponse buildCancelAutomationRunResponse() {
  final o = api.CancelAutomationRunResponse();
  buildCounterCancelAutomationRunResponse++;
  if (buildCounterCancelAutomationRunResponse < 3) {}
  buildCounterCancelAutomationRunResponse--;
  return o;
}

void checkCancelAutomationRunResponse(api.CancelAutomationRunResponse o) {
  buildCounterCancelAutomationRunResponse++;
  if (buildCounterCancelAutomationRunResponse < 3) {}
  buildCounterCancelAutomationRunResponse--;
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

core.List<core.String> buildUnnamed15() => ['foo', 'foo'];

void checkUnnamed15(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCancelRolloutRequest = 0;
api.CancelRolloutRequest buildCancelRolloutRequest() {
  final o = api.CancelRolloutRequest();
  buildCounterCancelRolloutRequest++;
  if (buildCounterCancelRolloutRequest < 3) {
    o.overrideDeployPolicy = buildUnnamed15();
  }
  buildCounterCancelRolloutRequest--;
  return o;
}

void checkCancelRolloutRequest(api.CancelRolloutRequest o) {
  buildCounterCancelRolloutRequest++;
  if (buildCounterCancelRolloutRequest < 3) {
    checkUnnamed15(o.overrideDeployPolicy!);
  }
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

core.List<api.Job> buildUnnamed16() => [buildJob(), buildJob()];

void checkUnnamed16(core.List<api.Job> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJob(o[0]);
  checkJob(o[1]);
}

core.List<api.Job> buildUnnamed17() => [buildJob(), buildJob()];

void checkUnnamed17(core.List<api.Job> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJob(o[0]);
  checkJob(o[1]);
}

core.int buildCounterChildRolloutJobs = 0;
api.ChildRolloutJobs buildChildRolloutJobs() {
  final o = api.ChildRolloutJobs();
  buildCounterChildRolloutJobs++;
  if (buildCounterChildRolloutJobs < 3) {
    o.advanceRolloutJobs = buildUnnamed16();
    o.createRolloutJobs = buildUnnamed17();
  }
  buildCounterChildRolloutJobs--;
  return o;
}

void checkChildRolloutJobs(api.ChildRolloutJobs o) {
  buildCounterChildRolloutJobs++;
  if (buildCounterChildRolloutJobs < 3) {
    checkUnnamed16(o.advanceRolloutJobs!);
    checkUnnamed17(o.createRolloutJobs!);
  }
  buildCounterChildRolloutJobs--;
}

core.List<core.String> buildUnnamed18() => ['foo', 'foo'];

void checkUnnamed18(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed19() => ['foo', 'foo'];

void checkUnnamed19(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed20() => ['foo', 'foo'];

void checkUnnamed20(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCloudRunConfig = 0;
api.CloudRunConfig buildCloudRunConfig() {
  final o = api.CloudRunConfig();
  buildCounterCloudRunConfig++;
  if (buildCounterCloudRunConfig < 3) {
    o.automaticTrafficControl = true;
    o.canaryRevisionTags = buildUnnamed18();
    o.priorRevisionTags = buildUnnamed19();
    o.stableRevisionTags = buildUnnamed20();
  }
  buildCounterCloudRunConfig--;
  return o;
}

void checkCloudRunConfig(api.CloudRunConfig o) {
  buildCounterCloudRunConfig++;
  if (buildCounterCloudRunConfig < 3) {
    unittest.expect(o.automaticTrafficControl!, unittest.isTrue);
    checkUnnamed18(o.canaryRevisionTags!);
    checkUnnamed19(o.priorRevisionTags!);
    checkUnnamed20(o.stableRevisionTags!);
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
    unittest.expect(o.location!, unittest.equals('foo'));
  }
  buildCounterCloudRunLocation--;
}

core.List<core.String> buildUnnamed21() => ['foo', 'foo'];

void checkUnnamed21(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCloudRunMetadata = 0;
api.CloudRunMetadata buildCloudRunMetadata() {
  final o = api.CloudRunMetadata();
  buildCounterCloudRunMetadata++;
  if (buildCounterCloudRunMetadata < 3) {
    o.job = 'foo';
    o.revision = 'foo';
    o.service = 'foo';
    o.serviceUrls = buildUnnamed21();
  }
  buildCounterCloudRunMetadata--;
  return o;
}

void checkCloudRunMetadata(api.CloudRunMetadata o) {
  buildCounterCloudRunMetadata++;
  if (buildCounterCloudRunMetadata < 3) {
    unittest.expect(o.job!, unittest.equals('foo'));
    unittest.expect(o.revision!, unittest.equals('foo'));
    unittest.expect(o.service!, unittest.equals('foo'));
    checkUnnamed21(o.serviceUrls!);
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
    unittest.expect(o.service!, unittest.equals('foo'));
  }
  buildCounterCloudRunRenderMetadata--;
}

core.List<api.SkaffoldVersion> buildUnnamed22() => [
  buildSkaffoldVersion(),
  buildSkaffoldVersion(),
];

void checkUnnamed22(core.List<api.SkaffoldVersion> o) {
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
    o.defaultToolVersions = buildToolVersions();
    o.name = 'foo';
    o.supportedVersions = buildUnnamed22();
  }
  buildCounterConfig--;
  return o;
}

void checkConfig(api.Config o) {
  buildCounterConfig++;
  if (buildCounterConfig < 3) {
    unittest.expect(o.defaultSkaffoldVersion!, unittest.equals('foo'));
    checkToolVersions(o.defaultToolVersions!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed22(o.supportedVersions!);
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
    unittest.expect(o.rollout!, unittest.equals('foo'));
    unittest.expect(o.rolloutPhaseId!, unittest.equals('foo'));
  }
  buildCounterCreateChildRolloutJobRun--;
}

core.List<api.PhaseConfig> buildUnnamed23() => [
  buildPhaseConfig(),
  buildPhaseConfig(),
];

void checkUnnamed23(core.List<api.PhaseConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPhaseConfig(o[0]);
  checkPhaseConfig(o[1]);
}

core.int buildCounterCustomCanaryDeployment = 0;
api.CustomCanaryDeployment buildCustomCanaryDeployment() {
  final o = api.CustomCanaryDeployment();
  buildCounterCustomCanaryDeployment++;
  if (buildCounterCustomCanaryDeployment < 3) {
    o.phaseConfigs = buildUnnamed23();
  }
  buildCounterCustomCanaryDeployment--;
  return o;
}

void checkCustomCanaryDeployment(api.CustomCanaryDeployment o) {
  buildCounterCustomCanaryDeployment++;
  if (buildCounterCustomCanaryDeployment < 3) {
    checkUnnamed23(o.phaseConfigs!);
  }
  buildCounterCustomCanaryDeployment--;
}

core.Map<core.String, core.String> buildUnnamed24() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed24(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterCustomMetadata = 0;
api.CustomMetadata buildCustomMetadata() {
  final o = api.CustomMetadata();
  buildCounterCustomMetadata++;
  if (buildCounterCustomMetadata < 3) {
    o.values = buildUnnamed24();
  }
  buildCounterCustomMetadata--;
  return o;
}

void checkCustomMetadata(api.CustomMetadata o) {
  buildCounterCustomMetadata++;
  if (buildCounterCustomMetadata < 3) {
    checkUnnamed24(o.values!);
  }
  buildCounterCustomMetadata--;
}

core.int buildCounterCustomTarget = 0;
api.CustomTarget buildCustomTarget() {
  final o = api.CustomTarget();
  buildCounterCustomTarget++;
  if (buildCounterCustomTarget < 3) {
    o.customTargetType = 'foo';
  }
  buildCounterCustomTarget--;
  return o;
}

void checkCustomTarget(api.CustomTarget o) {
  buildCounterCustomTarget++;
  if (buildCounterCustomTarget < 3) {
    unittest.expect(o.customTargetType!, unittest.equals('foo'));
  }
  buildCounterCustomTarget--;
}

core.int buildCounterCustomTargetDeployMetadata = 0;
api.CustomTargetDeployMetadata buildCustomTargetDeployMetadata() {
  final o = api.CustomTargetDeployMetadata();
  buildCounterCustomTargetDeployMetadata++;
  if (buildCounterCustomTargetDeployMetadata < 3) {
    o.skipMessage = 'foo';
  }
  buildCounterCustomTargetDeployMetadata--;
  return o;
}

void checkCustomTargetDeployMetadata(api.CustomTargetDeployMetadata o) {
  buildCounterCustomTargetDeployMetadata++;
  if (buildCounterCustomTargetDeployMetadata < 3) {
    unittest.expect(o.skipMessage!, unittest.equals('foo'));
  }
  buildCounterCustomTargetDeployMetadata--;
}

core.List<api.SkaffoldModules> buildUnnamed25() => [
  buildSkaffoldModules(),
  buildSkaffoldModules(),
];

void checkUnnamed25(core.List<api.SkaffoldModules> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSkaffoldModules(o[0]);
  checkSkaffoldModules(o[1]);
}

core.int buildCounterCustomTargetSkaffoldActions = 0;
api.CustomTargetSkaffoldActions buildCustomTargetSkaffoldActions() {
  final o = api.CustomTargetSkaffoldActions();
  buildCounterCustomTargetSkaffoldActions++;
  if (buildCounterCustomTargetSkaffoldActions < 3) {
    o.deployAction = 'foo';
    o.includeSkaffoldModules = buildUnnamed25();
    o.renderAction = 'foo';
  }
  buildCounterCustomTargetSkaffoldActions--;
  return o;
}

void checkCustomTargetSkaffoldActions(api.CustomTargetSkaffoldActions o) {
  buildCounterCustomTargetSkaffoldActions++;
  if (buildCounterCustomTargetSkaffoldActions < 3) {
    unittest.expect(o.deployAction!, unittest.equals('foo'));
    checkUnnamed25(o.includeSkaffoldModules!);
    unittest.expect(o.renderAction!, unittest.equals('foo'));
  }
  buildCounterCustomTargetSkaffoldActions--;
}

core.Map<core.String, core.String> buildUnnamed26() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed26(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed27() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed27(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterCustomTargetType = 0;
api.CustomTargetType buildCustomTargetType() {
  final o = api.CustomTargetType();
  buildCounterCustomTargetType++;
  if (buildCounterCustomTargetType < 3) {
    o.annotations = buildUnnamed26();
    o.createTime = 'foo';
    o.customActions = buildCustomTargetSkaffoldActions();
    o.customTargetTypeId = 'foo';
    o.description = 'foo';
    o.etag = 'foo';
    o.labels = buildUnnamed27();
    o.name = 'foo';
    o.uid = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterCustomTargetType--;
  return o;
}

void checkCustomTargetType(api.CustomTargetType o) {
  buildCounterCustomTargetType++;
  if (buildCounterCustomTargetType < 3) {
    checkUnnamed26(o.annotations!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkCustomTargetSkaffoldActions(o.customActions!);
    unittest.expect(o.customTargetTypeId!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.etag!, unittest.equals('foo'));
    checkUnnamed27(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.uid!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterCustomTargetType--;
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
    unittest.expect(o.day!, unittest.equals(42));
    unittest.expect(o.month!, unittest.equals(42));
    unittest.expect(o.year!, unittest.equals(42));
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
    unittest.expect(o.artifactStorage!, unittest.equals('foo'));
    unittest.expect(o.serviceAccount!, unittest.equals('foo'));
  }
  buildCounterDefaultPool--;
}

core.Map<core.String, core.String> buildUnnamed28() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed28(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed29() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed29(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterDeliveryPipeline = 0;
api.DeliveryPipeline buildDeliveryPipeline() {
  final o = api.DeliveryPipeline();
  buildCounterDeliveryPipeline++;
  if (buildCounterDeliveryPipeline < 3) {
    o.annotations = buildUnnamed28();
    o.condition = buildPipelineCondition();
    o.createTime = 'foo';
    o.description = 'foo';
    o.etag = 'foo';
    o.labels = buildUnnamed29();
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
    checkUnnamed28(o.annotations!);
    checkPipelineCondition(o.condition!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.etag!, unittest.equals('foo'));
    checkUnnamed29(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkSerialPipeline(o.serialPipeline!);
    unittest.expect(o.suspended!, unittest.isTrue);
    unittest.expect(o.uid!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterDeliveryPipeline--;
}

core.Map<core.String, core.String> buildUnnamed30() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed30(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterDeliveryPipelineAttribute = 0;
api.DeliveryPipelineAttribute buildDeliveryPipelineAttribute() {
  final o = api.DeliveryPipelineAttribute();
  buildCounterDeliveryPipelineAttribute++;
  if (buildCounterDeliveryPipelineAttribute < 3) {
    o.id = 'foo';
    o.labels = buildUnnamed30();
  }
  buildCounterDeliveryPipelineAttribute--;
  return o;
}

void checkDeliveryPipelineAttribute(api.DeliveryPipelineAttribute o) {
  buildCounterDeliveryPipelineAttribute++;
  if (buildCounterDeliveryPipelineAttribute < 3) {
    unittest.expect(o.id!, unittest.equals('foo'));
    checkUnnamed30(o.labels!);
  }
  buildCounterDeliveryPipelineAttribute--;
}

core.List<core.String> buildUnnamed31() => ['foo', 'foo'];

void checkUnnamed31(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterDeployArtifact = 0;
api.DeployArtifact buildDeployArtifact() {
  final o = api.DeployArtifact();
  buildCounterDeployArtifact++;
  if (buildCounterDeployArtifact < 3) {
    o.artifactUri = 'foo';
    o.manifestPaths = buildUnnamed31();
  }
  buildCounterDeployArtifact--;
  return o;
}

void checkDeployArtifact(api.DeployArtifact o) {
  buildCounterDeployArtifact++;
  if (buildCounterDeployArtifact < 3) {
    unittest.expect(o.artifactUri!, unittest.equals('foo'));
    checkUnnamed31(o.manifestPaths!);
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
    unittest.expect(o.build!, unittest.equals('foo'));
    unittest.expect(o.failureCause!, unittest.equals('foo'));
    unittest.expect(o.failureMessage!, unittest.equals('foo'));
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
    o.custom = buildCustomMetadata();
    o.customTarget = buildCustomTargetDeployMetadata();
  }
  buildCounterDeployJobRunMetadata--;
  return o;
}

void checkDeployJobRunMetadata(api.DeployJobRunMetadata o) {
  buildCounterDeployJobRunMetadata++;
  if (buildCounterDeployJobRunMetadata < 3) {
    checkCloudRunMetadata(o.cloudRun!);
    checkCustomMetadata(o.custom!);
    checkCustomTargetDeployMetadata(o.customTarget!);
  }
  buildCounterDeployJobRunMetadata--;
}

core.Map<core.String, core.String> buildUnnamed32() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed32(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed33() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed33(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterDeployParameters = 0;
api.DeployParameters buildDeployParameters() {
  final o = api.DeployParameters();
  buildCounterDeployParameters++;
  if (buildCounterDeployParameters < 3) {
    o.matchTargetLabels = buildUnnamed32();
    o.values = buildUnnamed33();
  }
  buildCounterDeployParameters--;
  return o;
}

void checkDeployParameters(api.DeployParameters o) {
  buildCounterDeployParameters++;
  if (buildCounterDeployParameters < 3) {
    checkUnnamed32(o.matchTargetLabels!);
    checkUnnamed33(o.values!);
  }
  buildCounterDeployParameters--;
}

core.Map<core.String, core.String> buildUnnamed34() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed34(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed35() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed35(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<api.PolicyRule> buildUnnamed36() => [
  buildPolicyRule(),
  buildPolicyRule(),
];

void checkUnnamed36(core.List<api.PolicyRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPolicyRule(o[0]);
  checkPolicyRule(o[1]);
}

core.List<api.DeployPolicyResourceSelector> buildUnnamed37() => [
  buildDeployPolicyResourceSelector(),
  buildDeployPolicyResourceSelector(),
];

void checkUnnamed37(core.List<api.DeployPolicyResourceSelector> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeployPolicyResourceSelector(o[0]);
  checkDeployPolicyResourceSelector(o[1]);
}

core.int buildCounterDeployPolicy = 0;
api.DeployPolicy buildDeployPolicy() {
  final o = api.DeployPolicy();
  buildCounterDeployPolicy++;
  if (buildCounterDeployPolicy < 3) {
    o.annotations = buildUnnamed34();
    o.createTime = 'foo';
    o.description = 'foo';
    o.etag = 'foo';
    o.labels = buildUnnamed35();
    o.name = 'foo';
    o.rules = buildUnnamed36();
    o.selectors = buildUnnamed37();
    o.suspended = true;
    o.uid = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterDeployPolicy--;
  return o;
}

void checkDeployPolicy(api.DeployPolicy o) {
  buildCounterDeployPolicy++;
  if (buildCounterDeployPolicy < 3) {
    checkUnnamed34(o.annotations!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.etag!, unittest.equals('foo'));
    checkUnnamed35(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed36(o.rules!);
    checkUnnamed37(o.selectors!);
    unittest.expect(o.suspended!, unittest.isTrue);
    unittest.expect(o.uid!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterDeployPolicy--;
}

core.int buildCounterDeployPolicyResourceSelector = 0;
api.DeployPolicyResourceSelector buildDeployPolicyResourceSelector() {
  final o = api.DeployPolicyResourceSelector();
  buildCounterDeployPolicyResourceSelector++;
  if (buildCounterDeployPolicyResourceSelector < 3) {
    o.deliveryPipeline = buildDeliveryPipelineAttribute();
    o.target = buildTargetAttribute();
  }
  buildCounterDeployPolicyResourceSelector--;
  return o;
}

void checkDeployPolicyResourceSelector(api.DeployPolicyResourceSelector o) {
  buildCounterDeployPolicyResourceSelector++;
  if (buildCounterDeployPolicyResourceSelector < 3) {
    checkDeliveryPipelineAttribute(o.deliveryPipeline!);
    checkTargetAttribute(o.target!);
  }
  buildCounterDeployPolicyResourceSelector--;
}

core.int buildCounterDeploymentJobs = 0;
api.DeploymentJobs buildDeploymentJobs() {
  final o = api.DeploymentJobs();
  buildCounterDeploymentJobs++;
  if (buildCounterDeploymentJobs < 3) {
    o.deployJob = buildJob();
    o.postdeployJob = buildJob();
    o.predeployJob = buildJob();
    o.verifyJob = buildJob();
  }
  buildCounterDeploymentJobs--;
  return o;
}

void checkDeploymentJobs(api.DeploymentJobs o) {
  buildCounterDeploymentJobs++;
  if (buildCounterDeploymentJobs < 3) {
    checkJob(o.deployJob!);
    checkJob(o.postdeployJob!);
    checkJob(o.predeployJob!);
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

core.List<core.String> buildUnnamed38() => ['foo', 'foo'];

void checkUnnamed38(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
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
    o.usages = buildUnnamed38();
    o.verbose = true;
    o.workerPool = 'foo';
  }
  buildCounterExecutionConfig--;
  return o;
}

void checkExecutionConfig(api.ExecutionConfig o) {
  buildCounterExecutionConfig++;
  if (buildCounterExecutionConfig < 3) {
    unittest.expect(o.artifactStorage!, unittest.equals('foo'));
    checkDefaultPool(o.defaultPool!);
    unittest.expect(o.executionTimeout!, unittest.equals('foo'));
    checkPrivatePool(o.privatePool!);
    unittest.expect(o.serviceAccount!, unittest.equals('foo'));
    checkUnnamed38(o.usages!);
    unittest.expect(o.verbose!, unittest.isTrue);
    unittest.expect(o.workerPool!, unittest.equals('foo'));
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
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.expression!, unittest.equals('foo'));
    unittest.expect(o.location!, unittest.equals('foo'));
    unittest.expect(o.title!, unittest.equals('foo'));
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
    o.podSelectorLabel = 'foo';
    o.routeDestinations = buildRouteDestinations();
    o.routeUpdateWaitTime = 'foo';
    o.service = 'foo';
    o.stableCutbackDuration = 'foo';
  }
  buildCounterGatewayServiceMesh--;
  return o;
}

void checkGatewayServiceMesh(api.GatewayServiceMesh o) {
  buildCounterGatewayServiceMesh++;
  if (buildCounterGatewayServiceMesh < 3) {
    unittest.expect(o.deployment!, unittest.equals('foo'));
    unittest.expect(o.httpRoute!, unittest.equals('foo'));
    unittest.expect(o.podSelectorLabel!, unittest.equals('foo'));
    checkRouteDestinations(o.routeDestinations!);
    unittest.expect(o.routeUpdateWaitTime!, unittest.equals('foo'));
    unittest.expect(o.service!, unittest.equals('foo'));
    unittest.expect(o.stableCutbackDuration!, unittest.equals('foo'));
  }
  buildCounterGatewayServiceMesh--;
}

core.int buildCounterGkeCluster = 0;
api.GkeCluster buildGkeCluster() {
  final o = api.GkeCluster();
  buildCounterGkeCluster++;
  if (buildCounterGkeCluster < 3) {
    o.cluster = 'foo';
    o.dnsEndpoint = true;
    o.internalIp = true;
    o.proxyUrl = 'foo';
  }
  buildCounterGkeCluster--;
  return o;
}

void checkGkeCluster(api.GkeCluster o) {
  buildCounterGkeCluster++;
  if (buildCounterGkeCluster < 3) {
    unittest.expect(o.cluster!, unittest.equals('foo'));
    unittest.expect(o.dnsEndpoint!, unittest.isTrue);
    unittest.expect(o.internalIp!, unittest.isTrue);
    unittest.expect(o.proxyUrl!, unittest.equals('foo'));
  }
  buildCounterGkeCluster--;
}

core.List<core.String> buildUnnamed39() => ['foo', 'foo'];

void checkUnnamed39(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterIgnoreJobRequest = 0;
api.IgnoreJobRequest buildIgnoreJobRequest() {
  final o = api.IgnoreJobRequest();
  buildCounterIgnoreJobRequest++;
  if (buildCounterIgnoreJobRequest < 3) {
    o.jobId = 'foo';
    o.overrideDeployPolicy = buildUnnamed39();
    o.phaseId = 'foo';
  }
  buildCounterIgnoreJobRequest--;
  return o;
}

void checkIgnoreJobRequest(api.IgnoreJobRequest o) {
  buildCounterIgnoreJobRequest++;
  if (buildCounterIgnoreJobRequest < 3) {
    unittest.expect(o.jobId!, unittest.equals('foo'));
    checkUnnamed39(o.overrideDeployPolicy!);
    unittest.expect(o.phaseId!, unittest.equals('foo'));
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
    o.postdeployJob = buildPostdeployJob();
    o.predeployJob = buildPredeployJob();
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
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.jobRun!, unittest.equals('foo'));
    checkPostdeployJob(o.postdeployJob!);
    checkPredeployJob(o.predeployJob!);
    unittest.expect(o.skipMessage!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
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
    o.postdeployJobRun = buildPostdeployJobRun();
    o.predeployJobRun = buildPredeployJobRun();
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
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkDeployJobRun(o.deployJobRun!);
    unittest.expect(o.endTime!, unittest.equals('foo'));
    unittest.expect(o.etag!, unittest.equals('foo'));
    unittest.expect(o.jobId!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.phaseId!, unittest.equals('foo'));
    checkPostdeployJobRun(o.postdeployJobRun!);
    checkPredeployJobRun(o.predeployJobRun!);
    unittest.expect(o.startTime!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.uid!, unittest.equals('foo'));
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

core.List<api.AutomationRun> buildUnnamed40() => [
  buildAutomationRun(),
  buildAutomationRun(),
];

void checkUnnamed40(core.List<api.AutomationRun> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAutomationRun(o[0]);
  checkAutomationRun(o[1]);
}

core.List<core.String> buildUnnamed41() => ['foo', 'foo'];

void checkUnnamed41(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListAutomationRunsResponse = 0;
api.ListAutomationRunsResponse buildListAutomationRunsResponse() {
  final o = api.ListAutomationRunsResponse();
  buildCounterListAutomationRunsResponse++;
  if (buildCounterListAutomationRunsResponse < 3) {
    o.automationRuns = buildUnnamed40();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed41();
  }
  buildCounterListAutomationRunsResponse--;
  return o;
}

void checkListAutomationRunsResponse(api.ListAutomationRunsResponse o) {
  buildCounterListAutomationRunsResponse++;
  if (buildCounterListAutomationRunsResponse < 3) {
    checkUnnamed40(o.automationRuns!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed41(o.unreachable!);
  }
  buildCounterListAutomationRunsResponse--;
}

core.List<api.Automation> buildUnnamed42() => [
  buildAutomation(),
  buildAutomation(),
];

void checkUnnamed42(core.List<api.Automation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAutomation(o[0]);
  checkAutomation(o[1]);
}

core.List<core.String> buildUnnamed43() => ['foo', 'foo'];

void checkUnnamed43(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListAutomationsResponse = 0;
api.ListAutomationsResponse buildListAutomationsResponse() {
  final o = api.ListAutomationsResponse();
  buildCounterListAutomationsResponse++;
  if (buildCounterListAutomationsResponse < 3) {
    o.automations = buildUnnamed42();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed43();
  }
  buildCounterListAutomationsResponse--;
  return o;
}

void checkListAutomationsResponse(api.ListAutomationsResponse o) {
  buildCounterListAutomationsResponse++;
  if (buildCounterListAutomationsResponse < 3) {
    checkUnnamed42(o.automations!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed43(o.unreachable!);
  }
  buildCounterListAutomationsResponse--;
}

core.List<api.CustomTargetType> buildUnnamed44() => [
  buildCustomTargetType(),
  buildCustomTargetType(),
];

void checkUnnamed44(core.List<api.CustomTargetType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomTargetType(o[0]);
  checkCustomTargetType(o[1]);
}

core.List<core.String> buildUnnamed45() => ['foo', 'foo'];

void checkUnnamed45(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListCustomTargetTypesResponse = 0;
api.ListCustomTargetTypesResponse buildListCustomTargetTypesResponse() {
  final o = api.ListCustomTargetTypesResponse();
  buildCounterListCustomTargetTypesResponse++;
  if (buildCounterListCustomTargetTypesResponse < 3) {
    o.customTargetTypes = buildUnnamed44();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed45();
  }
  buildCounterListCustomTargetTypesResponse--;
  return o;
}

void checkListCustomTargetTypesResponse(api.ListCustomTargetTypesResponse o) {
  buildCounterListCustomTargetTypesResponse++;
  if (buildCounterListCustomTargetTypesResponse < 3) {
    checkUnnamed44(o.customTargetTypes!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed45(o.unreachable!);
  }
  buildCounterListCustomTargetTypesResponse--;
}

core.List<api.DeliveryPipeline> buildUnnamed46() => [
  buildDeliveryPipeline(),
  buildDeliveryPipeline(),
];

void checkUnnamed46(core.List<api.DeliveryPipeline> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeliveryPipeline(o[0]);
  checkDeliveryPipeline(o[1]);
}

core.List<core.String> buildUnnamed47() => ['foo', 'foo'];

void checkUnnamed47(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListDeliveryPipelinesResponse = 0;
api.ListDeliveryPipelinesResponse buildListDeliveryPipelinesResponse() {
  final o = api.ListDeliveryPipelinesResponse();
  buildCounterListDeliveryPipelinesResponse++;
  if (buildCounterListDeliveryPipelinesResponse < 3) {
    o.deliveryPipelines = buildUnnamed46();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed47();
  }
  buildCounterListDeliveryPipelinesResponse--;
  return o;
}

void checkListDeliveryPipelinesResponse(api.ListDeliveryPipelinesResponse o) {
  buildCounterListDeliveryPipelinesResponse++;
  if (buildCounterListDeliveryPipelinesResponse < 3) {
    checkUnnamed46(o.deliveryPipelines!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed47(o.unreachable!);
  }
  buildCounterListDeliveryPipelinesResponse--;
}

core.List<api.DeployPolicy> buildUnnamed48() => [
  buildDeployPolicy(),
  buildDeployPolicy(),
];

void checkUnnamed48(core.List<api.DeployPolicy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeployPolicy(o[0]);
  checkDeployPolicy(o[1]);
}

core.List<core.String> buildUnnamed49() => ['foo', 'foo'];

void checkUnnamed49(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListDeployPoliciesResponse = 0;
api.ListDeployPoliciesResponse buildListDeployPoliciesResponse() {
  final o = api.ListDeployPoliciesResponse();
  buildCounterListDeployPoliciesResponse++;
  if (buildCounterListDeployPoliciesResponse < 3) {
    o.deployPolicies = buildUnnamed48();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed49();
  }
  buildCounterListDeployPoliciesResponse--;
  return o;
}

void checkListDeployPoliciesResponse(api.ListDeployPoliciesResponse o) {
  buildCounterListDeployPoliciesResponse++;
  if (buildCounterListDeployPoliciesResponse < 3) {
    checkUnnamed48(o.deployPolicies!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed49(o.unreachable!);
  }
  buildCounterListDeployPoliciesResponse--;
}

core.List<api.JobRun> buildUnnamed50() => [buildJobRun(), buildJobRun()];

void checkUnnamed50(core.List<api.JobRun> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJobRun(o[0]);
  checkJobRun(o[1]);
}

core.List<core.String> buildUnnamed51() => ['foo', 'foo'];

void checkUnnamed51(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListJobRunsResponse = 0;
api.ListJobRunsResponse buildListJobRunsResponse() {
  final o = api.ListJobRunsResponse();
  buildCounterListJobRunsResponse++;
  if (buildCounterListJobRunsResponse < 3) {
    o.jobRuns = buildUnnamed50();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed51();
  }
  buildCounterListJobRunsResponse--;
  return o;
}

void checkListJobRunsResponse(api.ListJobRunsResponse o) {
  buildCounterListJobRunsResponse++;
  if (buildCounterListJobRunsResponse < 3) {
    checkUnnamed50(o.jobRuns!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed51(o.unreachable!);
  }
  buildCounterListJobRunsResponse--;
}

core.List<api.Location> buildUnnamed52() => [buildLocation(), buildLocation()];

void checkUnnamed52(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  final o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed52();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed52(o.locations!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListLocationsResponse--;
}

core.List<api.Operation> buildUnnamed53() => [
  buildOperation(),
  buildOperation(),
];

void checkUnnamed53(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0]);
  checkOperation(o[1]);
}

core.List<core.String> buildUnnamed54() => ['foo', 'foo'];

void checkUnnamed54(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListOperationsResponse = 0;
api.ListOperationsResponse buildListOperationsResponse() {
  final o = api.ListOperationsResponse();
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.operations = buildUnnamed53();
    o.unreachable = buildUnnamed54();
  }
  buildCounterListOperationsResponse--;
  return o;
}

void checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed53(o.operations!);
    checkUnnamed54(o.unreachable!);
  }
  buildCounterListOperationsResponse--;
}

core.List<api.Release> buildUnnamed55() => [buildRelease(), buildRelease()];

void checkUnnamed55(core.List<api.Release> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRelease(o[0]);
  checkRelease(o[1]);
}

core.List<core.String> buildUnnamed56() => ['foo', 'foo'];

void checkUnnamed56(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListReleasesResponse = 0;
api.ListReleasesResponse buildListReleasesResponse() {
  final o = api.ListReleasesResponse();
  buildCounterListReleasesResponse++;
  if (buildCounterListReleasesResponse < 3) {
    o.nextPageToken = 'foo';
    o.releases = buildUnnamed55();
    o.unreachable = buildUnnamed56();
  }
  buildCounterListReleasesResponse--;
  return o;
}

void checkListReleasesResponse(api.ListReleasesResponse o) {
  buildCounterListReleasesResponse++;
  if (buildCounterListReleasesResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed55(o.releases!);
    checkUnnamed56(o.unreachable!);
  }
  buildCounterListReleasesResponse--;
}

core.List<api.Rollout> buildUnnamed57() => [buildRollout(), buildRollout()];

void checkUnnamed57(core.List<api.Rollout> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRollout(o[0]);
  checkRollout(o[1]);
}

core.List<core.String> buildUnnamed58() => ['foo', 'foo'];

void checkUnnamed58(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListRolloutsResponse = 0;
api.ListRolloutsResponse buildListRolloutsResponse() {
  final o = api.ListRolloutsResponse();
  buildCounterListRolloutsResponse++;
  if (buildCounterListRolloutsResponse < 3) {
    o.nextPageToken = 'foo';
    o.rollouts = buildUnnamed57();
    o.unreachable = buildUnnamed58();
  }
  buildCounterListRolloutsResponse--;
  return o;
}

void checkListRolloutsResponse(api.ListRolloutsResponse o) {
  buildCounterListRolloutsResponse++;
  if (buildCounterListRolloutsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed57(o.rollouts!);
    checkUnnamed58(o.unreachable!);
  }
  buildCounterListRolloutsResponse--;
}

core.List<api.Target> buildUnnamed59() => [buildTarget(), buildTarget()];

void checkUnnamed59(core.List<api.Target> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTarget(o[0]);
  checkTarget(o[1]);
}

core.List<core.String> buildUnnamed60() => ['foo', 'foo'];

void checkUnnamed60(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListTargetsResponse = 0;
api.ListTargetsResponse buildListTargetsResponse() {
  final o = api.ListTargetsResponse();
  buildCounterListTargetsResponse++;
  if (buildCounterListTargetsResponse < 3) {
    o.nextPageToken = 'foo';
    o.targets = buildUnnamed59();
    o.unreachable = buildUnnamed60();
  }
  buildCounterListTargetsResponse--;
  return o;
}

void checkListTargetsResponse(api.ListTargetsResponse o) {
  buildCounterListTargetsResponse++;
  if (buildCounterListTargetsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed59(o.targets!);
    checkUnnamed60(o.unreachable!);
  }
  buildCounterListTargetsResponse--;
}

core.Map<core.String, core.String> buildUnnamed61() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed61(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.Object?> buildUnnamed62() => {
  'x': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
  'y': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
};

void checkUnnamed62(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o['x']!) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(casted1['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted1['bool'], unittest.equals(true));
  unittest.expect(casted1['string'], unittest.equals('foo'));
  var casted2 = (o['y']!) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted2['bool'], unittest.equals(true));
  unittest.expect(casted2['string'], unittest.equals('foo'));
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
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkUnnamed61(o.labels!);
    unittest.expect(o.locationId!, unittest.equals('foo'));
    checkUnnamed62(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterLocation--;
}

core.int buildCounterMetadata = 0;
api.Metadata buildMetadata() {
  final o = api.Metadata();
  buildCounterMetadata++;
  if (buildCounterMetadata < 3) {
    o.automation = buildAutomationRolloutMetadata();
    o.cloudRun = buildCloudRunMetadata();
    o.custom = buildCustomMetadata();
  }
  buildCounterMetadata--;
  return o;
}

void checkMetadata(api.Metadata o) {
  buildCounterMetadata++;
  if (buildCounterMetadata < 3) {
    checkAutomationRolloutMetadata(o.automation!);
    checkCloudRunMetadata(o.cloudRun!);
    checkCustomMetadata(o.custom!);
  }
  buildCounterMetadata--;
}

core.List<core.String> buildUnnamed63() => ['foo', 'foo'];

void checkUnnamed63(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterMultiTarget = 0;
api.MultiTarget buildMultiTarget() {
  final o = api.MultiTarget();
  buildCounterMultiTarget++;
  if (buildCounterMultiTarget < 3) {
    o.targetIds = buildUnnamed63();
  }
  buildCounterMultiTarget--;
  return o;
}

void checkMultiTarget(api.MultiTarget o) {
  buildCounterMultiTarget++;
  if (buildCounterMultiTarget < 3) {
    checkUnnamed63(o.targetIds!);
  }
  buildCounterMultiTarget--;
}

core.int buildCounterOneTimeWindow = 0;
api.OneTimeWindow buildOneTimeWindow() {
  final o = api.OneTimeWindow();
  buildCounterOneTimeWindow++;
  if (buildCounterOneTimeWindow < 3) {
    o.endDate = buildDate();
    o.endTime = buildTimeOfDay();
    o.startDate = buildDate();
    o.startTime = buildTimeOfDay();
  }
  buildCounterOneTimeWindow--;
  return o;
}

void checkOneTimeWindow(api.OneTimeWindow o) {
  buildCounterOneTimeWindow++;
  if (buildCounterOneTimeWindow < 3) {
    checkDate(o.endDate!);
    checkTimeOfDay(o.endTime!);
    checkDate(o.startDate!);
    checkTimeOfDay(o.startTime!);
  }
  buildCounterOneTimeWindow--;
}

core.Map<core.String, core.Object?> buildUnnamed64() => {
  'x': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
  'y': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
};

void checkUnnamed64(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o['x']!) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(casted3['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted3['bool'], unittest.equals(true));
  unittest.expect(casted3['string'], unittest.equals('foo'));
  var casted4 = (o['y']!) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(casted4['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted4['bool'], unittest.equals(true));
  unittest.expect(casted4['string'], unittest.equals('foo'));
}

core.Map<core.String, core.Object?> buildUnnamed65() => {
  'x': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
  'y': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
};

void checkUnnamed65(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o['x']!) as core.Map;
  unittest.expect(casted5, unittest.hasLength(3));
  unittest.expect(casted5['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted5['bool'], unittest.equals(true));
  unittest.expect(casted5['string'], unittest.equals('foo'));
  var casted6 = (o['y']!) as core.Map;
  unittest.expect(casted6, unittest.hasLength(3));
  unittest.expect(casted6['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted6['bool'], unittest.equals(true));
  unittest.expect(casted6['string'], unittest.equals('foo'));
}

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  final o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed64();
    o.name = 'foo';
    o.response = buildUnnamed65();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed64(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed65(o.response!);
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
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.skipMessage!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
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
    unittest.expect(o.jobManifestsPath!, unittest.equals('foo'));
    unittest.expect(o.manifestPath!, unittest.equals('foo'));
    unittest.expect(o.skaffoldConfigPath!, unittest.equals('foo'));
  }
  buildCounterPhaseArtifact--;
}

core.List<core.String> buildUnnamed66() => ['foo', 'foo'];

void checkUnnamed66(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPhaseConfig = 0;
api.PhaseConfig buildPhaseConfig() {
  final o = api.PhaseConfig();
  buildCounterPhaseConfig++;
  if (buildCounterPhaseConfig < 3) {
    o.percentage = 42;
    o.phaseId = 'foo';
    o.postdeploy = buildPostdeploy();
    o.predeploy = buildPredeploy();
    o.profiles = buildUnnamed66();
    o.verify = true;
  }
  buildCounterPhaseConfig--;
  return o;
}

void checkPhaseConfig(api.PhaseConfig o) {
  buildCounterPhaseConfig++;
  if (buildCounterPhaseConfig < 3) {
    unittest.expect(o.percentage!, unittest.equals(42));
    unittest.expect(o.phaseId!, unittest.equals('foo'));
    checkPostdeploy(o.postdeploy!);
    checkPredeploy(o.predeploy!);
    checkUnnamed66(o.profiles!);
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
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterPipelineReadyCondition--;
}

core.List<api.AuditConfig> buildUnnamed67() => [
  buildAuditConfig(),
  buildAuditConfig(),
];

void checkUnnamed67(core.List<api.AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditConfig(o[0]);
  checkAuditConfig(o[1]);
}

core.List<api.Binding> buildUnnamed68() => [buildBinding(), buildBinding()];

void checkUnnamed68(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  final o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.auditConfigs = buildUnnamed67();
    o.bindings = buildUnnamed68();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed67(o.auditConfigs!);
    checkUnnamed68(o.bindings!);
    unittest.expect(o.etag!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals(42));
  }
  buildCounterPolicy--;
}

core.int buildCounterPolicyRule = 0;
api.PolicyRule buildPolicyRule() {
  final o = api.PolicyRule();
  buildCounterPolicyRule++;
  if (buildCounterPolicyRule < 3) {
    o.rolloutRestriction = buildRolloutRestriction();
  }
  buildCounterPolicyRule--;
  return o;
}

void checkPolicyRule(api.PolicyRule o) {
  buildCounterPolicyRule++;
  if (buildCounterPolicyRule < 3) {
    checkRolloutRestriction(o.rolloutRestriction!);
  }
  buildCounterPolicyRule--;
}

core.List<api.PolicyViolationDetails> buildUnnamed69() => [
  buildPolicyViolationDetails(),
  buildPolicyViolationDetails(),
];

void checkUnnamed69(core.List<api.PolicyViolationDetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPolicyViolationDetails(o[0]);
  checkPolicyViolationDetails(o[1]);
}

core.int buildCounterPolicyViolation = 0;
api.PolicyViolation buildPolicyViolation() {
  final o = api.PolicyViolation();
  buildCounterPolicyViolation++;
  if (buildCounterPolicyViolation < 3) {
    o.policyViolationDetails = buildUnnamed69();
  }
  buildCounterPolicyViolation--;
  return o;
}

void checkPolicyViolation(api.PolicyViolation o) {
  buildCounterPolicyViolation++;
  if (buildCounterPolicyViolation < 3) {
    checkUnnamed69(o.policyViolationDetails!);
  }
  buildCounterPolicyViolation--;
}

core.int buildCounterPolicyViolationDetails = 0;
api.PolicyViolationDetails buildPolicyViolationDetails() {
  final o = api.PolicyViolationDetails();
  buildCounterPolicyViolationDetails++;
  if (buildCounterPolicyViolationDetails < 3) {
    o.failureMessage = 'foo';
    o.policy = 'foo';
    o.ruleId = 'foo';
  }
  buildCounterPolicyViolationDetails--;
  return o;
}

void checkPolicyViolationDetails(api.PolicyViolationDetails o) {
  buildCounterPolicyViolationDetails++;
  if (buildCounterPolicyViolationDetails < 3) {
    unittest.expect(o.failureMessage!, unittest.equals('foo'));
    unittest.expect(o.policy!, unittest.equals('foo'));
    unittest.expect(o.ruleId!, unittest.equals('foo'));
  }
  buildCounterPolicyViolationDetails--;
}

core.List<core.String> buildUnnamed70() => ['foo', 'foo'];

void checkUnnamed70(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPostdeploy = 0;
api.Postdeploy buildPostdeploy() {
  final o = api.Postdeploy();
  buildCounterPostdeploy++;
  if (buildCounterPostdeploy < 3) {
    o.actions = buildUnnamed70();
  }
  buildCounterPostdeploy--;
  return o;
}

void checkPostdeploy(api.Postdeploy o) {
  buildCounterPostdeploy++;
  if (buildCounterPostdeploy < 3) {
    checkUnnamed70(o.actions!);
  }
  buildCounterPostdeploy--;
}

core.List<core.String> buildUnnamed71() => ['foo', 'foo'];

void checkUnnamed71(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPostdeployJob = 0;
api.PostdeployJob buildPostdeployJob() {
  final o = api.PostdeployJob();
  buildCounterPostdeployJob++;
  if (buildCounterPostdeployJob < 3) {
    o.actions = buildUnnamed71();
  }
  buildCounterPostdeployJob--;
  return o;
}

void checkPostdeployJob(api.PostdeployJob o) {
  buildCounterPostdeployJob++;
  if (buildCounterPostdeployJob < 3) {
    checkUnnamed71(o.actions!);
  }
  buildCounterPostdeployJob--;
}

core.int buildCounterPostdeployJobRun = 0;
api.PostdeployJobRun buildPostdeployJobRun() {
  final o = api.PostdeployJobRun();
  buildCounterPostdeployJobRun++;
  if (buildCounterPostdeployJobRun < 3) {
    o.build = 'foo';
    o.failureCause = 'foo';
    o.failureMessage = 'foo';
  }
  buildCounterPostdeployJobRun--;
  return o;
}

void checkPostdeployJobRun(api.PostdeployJobRun o) {
  buildCounterPostdeployJobRun++;
  if (buildCounterPostdeployJobRun < 3) {
    unittest.expect(o.build!, unittest.equals('foo'));
    unittest.expect(o.failureCause!, unittest.equals('foo'));
    unittest.expect(o.failureMessage!, unittest.equals('foo'));
  }
  buildCounterPostdeployJobRun--;
}

core.List<core.String> buildUnnamed72() => ['foo', 'foo'];

void checkUnnamed72(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPredeploy = 0;
api.Predeploy buildPredeploy() {
  final o = api.Predeploy();
  buildCounterPredeploy++;
  if (buildCounterPredeploy < 3) {
    o.actions = buildUnnamed72();
  }
  buildCounterPredeploy--;
  return o;
}

void checkPredeploy(api.Predeploy o) {
  buildCounterPredeploy++;
  if (buildCounterPredeploy < 3) {
    checkUnnamed72(o.actions!);
  }
  buildCounterPredeploy--;
}

core.List<core.String> buildUnnamed73() => ['foo', 'foo'];

void checkUnnamed73(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPredeployJob = 0;
api.PredeployJob buildPredeployJob() {
  final o = api.PredeployJob();
  buildCounterPredeployJob++;
  if (buildCounterPredeployJob < 3) {
    o.actions = buildUnnamed73();
  }
  buildCounterPredeployJob--;
  return o;
}

void checkPredeployJob(api.PredeployJob o) {
  buildCounterPredeployJob++;
  if (buildCounterPredeployJob < 3) {
    checkUnnamed73(o.actions!);
  }
  buildCounterPredeployJob--;
}

core.int buildCounterPredeployJobRun = 0;
api.PredeployJobRun buildPredeployJobRun() {
  final o = api.PredeployJobRun();
  buildCounterPredeployJobRun++;
  if (buildCounterPredeployJobRun < 3) {
    o.build = 'foo';
    o.failureCause = 'foo';
    o.failureMessage = 'foo';
  }
  buildCounterPredeployJobRun--;
  return o;
}

void checkPredeployJobRun(api.PredeployJobRun o) {
  buildCounterPredeployJobRun++;
  if (buildCounterPredeployJobRun < 3) {
    unittest.expect(o.build!, unittest.equals('foo'));
    unittest.expect(o.failureCause!, unittest.equals('foo'));
    unittest.expect(o.failureMessage!, unittest.equals('foo'));
  }
  buildCounterPredeployJobRun--;
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
    unittest.expect(o.artifactStorage!, unittest.equals('foo'));
    unittest.expect(o.serviceAccount!, unittest.equals('foo'));
    unittest.expect(o.workerPool!, unittest.equals('foo'));
  }
  buildCounterPrivatePool--;
}

core.int buildCounterPromoteReleaseOperation = 0;
api.PromoteReleaseOperation buildPromoteReleaseOperation() {
  final o = api.PromoteReleaseOperation();
  buildCounterPromoteReleaseOperation++;
  if (buildCounterPromoteReleaseOperation < 3) {
    o.phase = 'foo';
    o.rollout = 'foo';
    o.targetId = 'foo';
    o.wait = 'foo';
  }
  buildCounterPromoteReleaseOperation--;
  return o;
}

void checkPromoteReleaseOperation(api.PromoteReleaseOperation o) {
  buildCounterPromoteReleaseOperation++;
  if (buildCounterPromoteReleaseOperation < 3) {
    unittest.expect(o.phase!, unittest.equals('foo'));
    unittest.expect(o.rollout!, unittest.equals('foo'));
    unittest.expect(o.targetId!, unittest.equals('foo'));
    unittest.expect(o.wait!, unittest.equals('foo'));
  }
  buildCounterPromoteReleaseOperation--;
}

core.int buildCounterPromoteReleaseRule = 0;
api.PromoteReleaseRule buildPromoteReleaseRule() {
  final o = api.PromoteReleaseRule();
  buildCounterPromoteReleaseRule++;
  if (buildCounterPromoteReleaseRule < 3) {
    o.condition = buildAutomationRuleCondition();
    o.destinationPhase = 'foo';
    o.destinationTargetId = 'foo';
    o.id = 'foo';
    o.wait = 'foo';
  }
  buildCounterPromoteReleaseRule--;
  return o;
}

void checkPromoteReleaseRule(api.PromoteReleaseRule o) {
  buildCounterPromoteReleaseRule++;
  if (buildCounterPromoteReleaseRule < 3) {
    checkAutomationRuleCondition(o.condition!);
    unittest.expect(o.destinationPhase!, unittest.equals('foo'));
    unittest.expect(o.destinationTargetId!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.wait!, unittest.equals('foo'));
  }
  buildCounterPromoteReleaseRule--;
}

core.Map<core.String, core.String> buildUnnamed74() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed74(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<api.BuildArtifact> buildUnnamed75() => [
  buildBuildArtifact(),
  buildBuildArtifact(),
];

void checkUnnamed75(core.List<api.BuildArtifact> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBuildArtifact(o[0]);
  checkBuildArtifact(o[1]);
}

core.List<api.CustomTargetType> buildUnnamed76() => [
  buildCustomTargetType(),
  buildCustomTargetType(),
];

void checkUnnamed76(core.List<api.CustomTargetType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomTargetType(o[0]);
  checkCustomTargetType(o[1]);
}

core.Map<core.String, core.String> buildUnnamed77() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed77(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed78() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed78(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, api.TargetArtifact> buildUnnamed79() => {
  'x': buildTargetArtifact(),
  'y': buildTargetArtifact(),
};

void checkUnnamed79(core.Map<core.String, api.TargetArtifact> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTargetArtifact(o['x']!);
  checkTargetArtifact(o['y']!);
}

core.Map<core.String, api.TargetRender> buildUnnamed80() => {
  'x': buildTargetRender(),
  'y': buildTargetRender(),
};

void checkUnnamed80(core.Map<core.String, api.TargetRender> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTargetRender(o['x']!);
  checkTargetRender(o['y']!);
}

core.List<api.Target> buildUnnamed81() => [buildTarget(), buildTarget()];

void checkUnnamed81(core.List<api.Target> o) {
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
    o.annotations = buildUnnamed74();
    o.buildArtifacts = buildUnnamed75();
    o.condition = buildReleaseCondition();
    o.createTime = 'foo';
    o.customTargetTypeSnapshots = buildUnnamed76();
    o.deliveryPipelineSnapshot = buildDeliveryPipeline();
    o.deployParameters = buildUnnamed77();
    o.description = 'foo';
    o.etag = 'foo';
    o.labels = buildUnnamed78();
    o.name = 'foo';
    o.renderEndTime = 'foo';
    o.renderStartTime = 'foo';
    o.renderState = 'foo';
    o.skaffoldConfigPath = 'foo';
    o.skaffoldConfigUri = 'foo';
    o.skaffoldVersion = 'foo';
    o.targetArtifacts = buildUnnamed79();
    o.targetRenders = buildUnnamed80();
    o.targetSnapshots = buildUnnamed81();
    o.toolVersions = buildToolVersions();
    o.uid = 'foo';
  }
  buildCounterRelease--;
  return o;
}

void checkRelease(api.Release o) {
  buildCounterRelease++;
  if (buildCounterRelease < 3) {
    unittest.expect(o.abandoned!, unittest.isTrue);
    checkUnnamed74(o.annotations!);
    checkUnnamed75(o.buildArtifacts!);
    checkReleaseCondition(o.condition!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkUnnamed76(o.customTargetTypeSnapshots!);
    checkDeliveryPipeline(o.deliveryPipelineSnapshot!);
    checkUnnamed77(o.deployParameters!);
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.etag!, unittest.equals('foo'));
    checkUnnamed78(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.renderEndTime!, unittest.equals('foo'));
    unittest.expect(o.renderStartTime!, unittest.equals('foo'));
    unittest.expect(o.renderState!, unittest.equals('foo'));
    unittest.expect(o.skaffoldConfigPath!, unittest.equals('foo'));
    unittest.expect(o.skaffoldConfigUri!, unittest.equals('foo'));
    unittest.expect(o.skaffoldVersion!, unittest.equals('foo'));
    checkUnnamed79(o.targetArtifacts!);
    checkUnnamed80(o.targetRenders!);
    checkUnnamed81(o.targetSnapshots!);
    checkToolVersions(o.toolVersions!);
    unittest.expect(o.uid!, unittest.equals('foo'));
  }
  buildCounterRelease--;
}

core.int buildCounterReleaseCondition = 0;
api.ReleaseCondition buildReleaseCondition() {
  final o = api.ReleaseCondition();
  buildCounterReleaseCondition++;
  if (buildCounterReleaseCondition < 3) {
    o.dockerVersionSupportedCondition = buildToolVersionSupportedCondition();
    o.helmVersionSupportedCondition = buildToolVersionSupportedCondition();
    o.kptVersionSupportedCondition = buildToolVersionSupportedCondition();
    o.kubectlVersionSupportedCondition = buildToolVersionSupportedCondition();
    o.kustomizeVersionSupportedCondition = buildToolVersionSupportedCondition();
    o.releaseReadyCondition = buildReleaseReadyCondition();
    o.skaffoldSupportedCondition = buildSkaffoldSupportedCondition();
    o.skaffoldVersionSupportedCondition = buildToolVersionSupportedCondition();
  }
  buildCounterReleaseCondition--;
  return o;
}

void checkReleaseCondition(api.ReleaseCondition o) {
  buildCounterReleaseCondition++;
  if (buildCounterReleaseCondition < 3) {
    checkToolVersionSupportedCondition(o.dockerVersionSupportedCondition!);
    checkToolVersionSupportedCondition(o.helmVersionSupportedCondition!);
    checkToolVersionSupportedCondition(o.kptVersionSupportedCondition!);
    checkToolVersionSupportedCondition(o.kubectlVersionSupportedCondition!);
    checkToolVersionSupportedCondition(o.kustomizeVersionSupportedCondition!);
    checkReleaseReadyCondition(o.releaseReadyCondition!);
    checkSkaffoldSupportedCondition(o.skaffoldSupportedCondition!);
    checkToolVersionSupportedCondition(o.skaffoldVersionSupportedCondition!);
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
    o.custom = buildCustomMetadata();
  }
  buildCounterRenderMetadata--;
  return o;
}

void checkRenderMetadata(api.RenderMetadata o) {
  buildCounterRenderMetadata++;
  if (buildCounterRenderMetadata < 3) {
    checkCloudRunRenderMetadata(o.cloudRun!);
    checkCustomMetadata(o.custom!);
  }
  buildCounterRenderMetadata--;
}

core.int buildCounterRepairPhase = 0;
api.RepairPhase buildRepairPhase() {
  final o = api.RepairPhase();
  buildCounterRepairPhase++;
  if (buildCounterRepairPhase < 3) {
    o.retry = buildRetryPhase();
    o.rollback = buildRollbackAttempt();
  }
  buildCounterRepairPhase--;
  return o;
}

void checkRepairPhase(api.RepairPhase o) {
  buildCounterRepairPhase++;
  if (buildCounterRepairPhase < 3) {
    checkRetryPhase(o.retry!);
    checkRollbackAttempt(o.rollback!);
  }
  buildCounterRepairPhase--;
}

core.int buildCounterRepairPhaseConfig = 0;
api.RepairPhaseConfig buildRepairPhaseConfig() {
  final o = api.RepairPhaseConfig();
  buildCounterRepairPhaseConfig++;
  if (buildCounterRepairPhaseConfig < 3) {
    o.retry = buildRetry();
    o.rollback = buildRollback();
  }
  buildCounterRepairPhaseConfig--;
  return o;
}

void checkRepairPhaseConfig(api.RepairPhaseConfig o) {
  buildCounterRepairPhaseConfig++;
  if (buildCounterRepairPhaseConfig < 3) {
    checkRetry(o.retry!);
    checkRollback(o.rollback!);
  }
  buildCounterRepairPhaseConfig--;
}

core.List<api.RepairPhase> buildUnnamed82() => [
  buildRepairPhase(),
  buildRepairPhase(),
];

void checkUnnamed82(core.List<api.RepairPhase> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRepairPhase(o[0]);
  checkRepairPhase(o[1]);
}

core.int buildCounterRepairRolloutOperation = 0;
api.RepairRolloutOperation buildRepairRolloutOperation() {
  final o = api.RepairRolloutOperation();
  buildCounterRepairRolloutOperation++;
  if (buildCounterRepairRolloutOperation < 3) {
    o.currentRepairPhaseIndex = 'foo';
    o.jobId = 'foo';
    o.phaseId = 'foo';
    o.repairPhases = buildUnnamed82();
    o.rollout = 'foo';
  }
  buildCounterRepairRolloutOperation--;
  return o;
}

void checkRepairRolloutOperation(api.RepairRolloutOperation o) {
  buildCounterRepairRolloutOperation++;
  if (buildCounterRepairRolloutOperation < 3) {
    unittest.expect(o.currentRepairPhaseIndex!, unittest.equals('foo'));
    unittest.expect(o.jobId!, unittest.equals('foo'));
    unittest.expect(o.phaseId!, unittest.equals('foo'));
    checkUnnamed82(o.repairPhases!);
    unittest.expect(o.rollout!, unittest.equals('foo'));
  }
  buildCounterRepairRolloutOperation--;
}

core.List<core.String> buildUnnamed83() => ['foo', 'foo'];

void checkUnnamed83(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed84() => ['foo', 'foo'];

void checkUnnamed84(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.RepairPhaseConfig> buildUnnamed85() => [
  buildRepairPhaseConfig(),
  buildRepairPhaseConfig(),
];

void checkUnnamed85(core.List<api.RepairPhaseConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRepairPhaseConfig(o[0]);
  checkRepairPhaseConfig(o[1]);
}

core.int buildCounterRepairRolloutRule = 0;
api.RepairRolloutRule buildRepairRolloutRule() {
  final o = api.RepairRolloutRule();
  buildCounterRepairRolloutRule++;
  if (buildCounterRepairRolloutRule < 3) {
    o.condition = buildAutomationRuleCondition();
    o.id = 'foo';
    o.jobs = buildUnnamed83();
    o.phases = buildUnnamed84();
    o.repairPhases = buildUnnamed85();
  }
  buildCounterRepairRolloutRule--;
  return o;
}

void checkRepairRolloutRule(api.RepairRolloutRule o) {
  buildCounterRepairRolloutRule++;
  if (buildCounterRepairRolloutRule < 3) {
    checkAutomationRuleCondition(o.condition!);
    unittest.expect(o.id!, unittest.equals('foo'));
    checkUnnamed83(o.jobs!);
    checkUnnamed84(o.phases!);
    checkUnnamed85(o.repairPhases!);
  }
  buildCounterRepairRolloutRule--;
}

core.int buildCounterRetry = 0;
api.Retry buildRetry() {
  final o = api.Retry();
  buildCounterRetry++;
  if (buildCounterRetry < 3) {
    o.attempts = 'foo';
    o.backoffMode = 'foo';
    o.wait = 'foo';
  }
  buildCounterRetry--;
  return o;
}

void checkRetry(api.Retry o) {
  buildCounterRetry++;
  if (buildCounterRetry < 3) {
    unittest.expect(o.attempts!, unittest.equals('foo'));
    unittest.expect(o.backoffMode!, unittest.equals('foo'));
    unittest.expect(o.wait!, unittest.equals('foo'));
  }
  buildCounterRetry--;
}

core.int buildCounterRetryAttempt = 0;
api.RetryAttempt buildRetryAttempt() {
  final o = api.RetryAttempt();
  buildCounterRetryAttempt++;
  if (buildCounterRetryAttempt < 3) {
    o.attempt = 'foo';
    o.state = 'foo';
    o.stateDesc = 'foo';
    o.wait = 'foo';
  }
  buildCounterRetryAttempt--;
  return o;
}

void checkRetryAttempt(api.RetryAttempt o) {
  buildCounterRetryAttempt++;
  if (buildCounterRetryAttempt < 3) {
    unittest.expect(o.attempt!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.stateDesc!, unittest.equals('foo'));
    unittest.expect(o.wait!, unittest.equals('foo'));
  }
  buildCounterRetryAttempt--;
}

core.List<core.String> buildUnnamed86() => ['foo', 'foo'];

void checkUnnamed86(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterRetryJobRequest = 0;
api.RetryJobRequest buildRetryJobRequest() {
  final o = api.RetryJobRequest();
  buildCounterRetryJobRequest++;
  if (buildCounterRetryJobRequest < 3) {
    o.jobId = 'foo';
    o.overrideDeployPolicy = buildUnnamed86();
    o.phaseId = 'foo';
  }
  buildCounterRetryJobRequest--;
  return o;
}

void checkRetryJobRequest(api.RetryJobRequest o) {
  buildCounterRetryJobRequest++;
  if (buildCounterRetryJobRequest < 3) {
    unittest.expect(o.jobId!, unittest.equals('foo'));
    checkUnnamed86(o.overrideDeployPolicy!);
    unittest.expect(o.phaseId!, unittest.equals('foo'));
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

core.List<api.RetryAttempt> buildUnnamed87() => [
  buildRetryAttempt(),
  buildRetryAttempt(),
];

void checkUnnamed87(core.List<api.RetryAttempt> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRetryAttempt(o[0]);
  checkRetryAttempt(o[1]);
}

core.int buildCounterRetryPhase = 0;
api.RetryPhase buildRetryPhase() {
  final o = api.RetryPhase();
  buildCounterRetryPhase++;
  if (buildCounterRetryPhase < 3) {
    o.attempts = buildUnnamed87();
    o.backoffMode = 'foo';
    o.totalAttempts = 'foo';
  }
  buildCounterRetryPhase--;
  return o;
}

void checkRetryPhase(api.RetryPhase o) {
  buildCounterRetryPhase++;
  if (buildCounterRetryPhase < 3) {
    checkUnnamed87(o.attempts!);
    unittest.expect(o.backoffMode!, unittest.equals('foo'));
    unittest.expect(o.totalAttempts!, unittest.equals('foo'));
  }
  buildCounterRetryPhase--;
}

core.int buildCounterRollback = 0;
api.Rollback buildRollback() {
  final o = api.Rollback();
  buildCounterRollback++;
  if (buildCounterRollback < 3) {
    o.destinationPhase = 'foo';
    o.disableRollbackIfRolloutPending = true;
  }
  buildCounterRollback--;
  return o;
}

void checkRollback(api.Rollback o) {
  buildCounterRollback++;
  if (buildCounterRollback < 3) {
    unittest.expect(o.destinationPhase!, unittest.equals('foo'));
    unittest.expect(o.disableRollbackIfRolloutPending!, unittest.isTrue);
  }
  buildCounterRollback--;
}

core.int buildCounterRollbackAttempt = 0;
api.RollbackAttempt buildRollbackAttempt() {
  final o = api.RollbackAttempt();
  buildCounterRollbackAttempt++;
  if (buildCounterRollbackAttempt < 3) {
    o.destinationPhase = 'foo';
    o.disableRollbackIfRolloutPending = true;
    o.rolloutId = 'foo';
    o.state = 'foo';
    o.stateDesc = 'foo';
  }
  buildCounterRollbackAttempt--;
  return o;
}

void checkRollbackAttempt(api.RollbackAttempt o) {
  buildCounterRollbackAttempt++;
  if (buildCounterRollbackAttempt < 3) {
    unittest.expect(o.destinationPhase!, unittest.equals('foo'));
    unittest.expect(o.disableRollbackIfRolloutPending!, unittest.isTrue);
    unittest.expect(o.rolloutId!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.stateDesc!, unittest.equals('foo'));
  }
  buildCounterRollbackAttempt--;
}

core.int buildCounterRollbackTargetConfig = 0;
api.RollbackTargetConfig buildRollbackTargetConfig() {
  final o = api.RollbackTargetConfig();
  buildCounterRollbackTargetConfig++;
  if (buildCounterRollbackTargetConfig < 3) {
    o.rollout = buildRollout();
    o.startingPhaseId = 'foo';
  }
  buildCounterRollbackTargetConfig--;
  return o;
}

void checkRollbackTargetConfig(api.RollbackTargetConfig o) {
  buildCounterRollbackTargetConfig++;
  if (buildCounterRollbackTargetConfig < 3) {
    checkRollout(o.rollout!);
    unittest.expect(o.startingPhaseId!, unittest.equals('foo'));
  }
  buildCounterRollbackTargetConfig--;
}

core.List<core.String> buildUnnamed88() => ['foo', 'foo'];

void checkUnnamed88(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterRollbackTargetRequest = 0;
api.RollbackTargetRequest buildRollbackTargetRequest() {
  final o = api.RollbackTargetRequest();
  buildCounterRollbackTargetRequest++;
  if (buildCounterRollbackTargetRequest < 3) {
    o.overrideDeployPolicy = buildUnnamed88();
    o.releaseId = 'foo';
    o.rollbackConfig = buildRollbackTargetConfig();
    o.rolloutId = 'foo';
    o.rolloutToRollBack = 'foo';
    o.targetId = 'foo';
    o.validateOnly = true;
  }
  buildCounterRollbackTargetRequest--;
  return o;
}

void checkRollbackTargetRequest(api.RollbackTargetRequest o) {
  buildCounterRollbackTargetRequest++;
  if (buildCounterRollbackTargetRequest < 3) {
    checkUnnamed88(o.overrideDeployPolicy!);
    unittest.expect(o.releaseId!, unittest.equals('foo'));
    checkRollbackTargetConfig(o.rollbackConfig!);
    unittest.expect(o.rolloutId!, unittest.equals('foo'));
    unittest.expect(o.rolloutToRollBack!, unittest.equals('foo'));
    unittest.expect(o.targetId!, unittest.equals('foo'));
    unittest.expect(o.validateOnly!, unittest.isTrue);
  }
  buildCounterRollbackTargetRequest--;
}

core.int buildCounterRollbackTargetResponse = 0;
api.RollbackTargetResponse buildRollbackTargetResponse() {
  final o = api.RollbackTargetResponse();
  buildCounterRollbackTargetResponse++;
  if (buildCounterRollbackTargetResponse < 3) {
    o.rollbackConfig = buildRollbackTargetConfig();
  }
  buildCounterRollbackTargetResponse--;
  return o;
}

void checkRollbackTargetResponse(api.RollbackTargetResponse o) {
  buildCounterRollbackTargetResponse++;
  if (buildCounterRollbackTargetResponse < 3) {
    checkRollbackTargetConfig(o.rollbackConfig!);
  }
  buildCounterRollbackTargetResponse--;
}

core.Map<core.String, core.String> buildUnnamed89() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed89(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed90() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed90(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<api.Phase> buildUnnamed91() => [buildPhase(), buildPhase()];

void checkUnnamed91(core.List<api.Phase> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPhase(o[0]);
  checkPhase(o[1]);
}

core.List<core.String> buildUnnamed92() => ['foo', 'foo'];

void checkUnnamed92(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterRollout = 0;
api.Rollout buildRollout() {
  final o = api.Rollout();
  buildCounterRollout++;
  if (buildCounterRollout < 3) {
    o.activeRepairAutomationRun = 'foo';
    o.annotations = buildUnnamed89();
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
    o.labels = buildUnnamed90();
    o.metadata = buildMetadata();
    o.name = 'foo';
    o.phases = buildUnnamed91();
    o.rollbackOfRollout = 'foo';
    o.rolledBackByRollouts = buildUnnamed92();
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
    unittest.expect(o.activeRepairAutomationRun!, unittest.equals('foo'));
    checkUnnamed89(o.annotations!);
    unittest.expect(o.approvalState!, unittest.equals('foo'));
    unittest.expect(o.approveTime!, unittest.equals('foo'));
    unittest.expect(o.controllerRollout!, unittest.equals('foo'));
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.deployEndTime!, unittest.equals('foo'));
    unittest.expect(o.deployFailureCause!, unittest.equals('foo'));
    unittest.expect(o.deployStartTime!, unittest.equals('foo'));
    unittest.expect(o.deployingBuild!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.enqueueTime!, unittest.equals('foo'));
    unittest.expect(o.etag!, unittest.equals('foo'));
    unittest.expect(o.failureReason!, unittest.equals('foo'));
    checkUnnamed90(o.labels!);
    checkMetadata(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed91(o.phases!);
    unittest.expect(o.rollbackOfRollout!, unittest.equals('foo'));
    checkUnnamed92(o.rolledBackByRollouts!);
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.targetId!, unittest.equals('foo'));
    unittest.expect(o.uid!, unittest.equals('foo'));
  }
  buildCounterRollout--;
}

core.List<core.String> buildUnnamed93() => ['foo', 'foo'];

void checkUnnamed93(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed94() => ['foo', 'foo'];

void checkUnnamed94(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterRolloutRestriction = 0;
api.RolloutRestriction buildRolloutRestriction() {
  final o = api.RolloutRestriction();
  buildCounterRolloutRestriction++;
  if (buildCounterRolloutRestriction < 3) {
    o.actions = buildUnnamed93();
    o.id = 'foo';
    o.invokers = buildUnnamed94();
    o.timeWindows = buildTimeWindows();
  }
  buildCounterRolloutRestriction--;
  return o;
}

void checkRolloutRestriction(api.RolloutRestriction o) {
  buildCounterRolloutRestriction++;
  if (buildCounterRolloutRestriction < 3) {
    checkUnnamed93(o.actions!);
    unittest.expect(o.id!, unittest.equals('foo'));
    checkUnnamed94(o.invokers!);
    checkTimeWindows(o.timeWindows!);
  }
  buildCounterRolloutRestriction--;
}

core.List<core.String> buildUnnamed95() => ['foo', 'foo'];

void checkUnnamed95(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterRouteDestinations = 0;
api.RouteDestinations buildRouteDestinations() {
  final o = api.RouteDestinations();
  buildCounterRouteDestinations++;
  if (buildCounterRouteDestinations < 3) {
    o.destinationIds = buildUnnamed95();
    o.propagateService = true;
  }
  buildCounterRouteDestinations--;
  return o;
}

void checkRouteDestinations(api.RouteDestinations o) {
  buildCounterRouteDestinations++;
  if (buildCounterRouteDestinations < 3) {
    checkUnnamed95(o.destinationIds!);
    unittest.expect(o.propagateService!, unittest.isTrue);
  }
  buildCounterRouteDestinations--;
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

core.List<api.Stage> buildUnnamed96() => [buildStage(), buildStage()];

void checkUnnamed96(core.List<api.Stage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStage(o[0]);
  checkStage(o[1]);
}

core.int buildCounterSerialPipeline = 0;
api.SerialPipeline buildSerialPipeline() {
  final o = api.SerialPipeline();
  buildCounterSerialPipeline++;
  if (buildCounterSerialPipeline < 3) {
    o.stages = buildUnnamed96();
  }
  buildCounterSerialPipeline--;
  return o;
}

void checkSerialPipeline(api.SerialPipeline o) {
  buildCounterSerialPipeline++;
  if (buildCounterSerialPipeline < 3) {
    checkUnnamed96(o.stages!);
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
    o.podSelectorLabel = 'foo';
    o.service = 'foo';
  }
  buildCounterServiceNetworking--;
  return o;
}

void checkServiceNetworking(api.ServiceNetworking o) {
  buildCounterServiceNetworking++;
  if (buildCounterServiceNetworking < 3) {
    unittest.expect(o.deployment!, unittest.equals('foo'));
    unittest.expect(o.disablePodOverprovisioning!, unittest.isTrue);
    unittest.expect(o.podSelectorLabel!, unittest.equals('foo'));
    unittest.expect(o.service!, unittest.equals('foo'));
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
    unittest.expect(o.updateMask!, unittest.equals('foo'));
  }
  buildCounterSetIamPolicyRequest--;
}

core.int buildCounterSkaffoldGCBRepoSource = 0;
api.SkaffoldGCBRepoSource buildSkaffoldGCBRepoSource() {
  final o = api.SkaffoldGCBRepoSource();
  buildCounterSkaffoldGCBRepoSource++;
  if (buildCounterSkaffoldGCBRepoSource < 3) {
    o.path = 'foo';
    o.ref = 'foo';
    o.repository = 'foo';
  }
  buildCounterSkaffoldGCBRepoSource--;
  return o;
}

void checkSkaffoldGCBRepoSource(api.SkaffoldGCBRepoSource o) {
  buildCounterSkaffoldGCBRepoSource++;
  if (buildCounterSkaffoldGCBRepoSource < 3) {
    unittest.expect(o.path!, unittest.equals('foo'));
    unittest.expect(o.ref!, unittest.equals('foo'));
    unittest.expect(o.repository!, unittest.equals('foo'));
  }
  buildCounterSkaffoldGCBRepoSource--;
}

core.int buildCounterSkaffoldGCSSource = 0;
api.SkaffoldGCSSource buildSkaffoldGCSSource() {
  final o = api.SkaffoldGCSSource();
  buildCounterSkaffoldGCSSource++;
  if (buildCounterSkaffoldGCSSource < 3) {
    o.path = 'foo';
    o.source = 'foo';
  }
  buildCounterSkaffoldGCSSource--;
  return o;
}

void checkSkaffoldGCSSource(api.SkaffoldGCSSource o) {
  buildCounterSkaffoldGCSSource++;
  if (buildCounterSkaffoldGCSSource < 3) {
    unittest.expect(o.path!, unittest.equals('foo'));
    unittest.expect(o.source!, unittest.equals('foo'));
  }
  buildCounterSkaffoldGCSSource--;
}

core.int buildCounterSkaffoldGitSource = 0;
api.SkaffoldGitSource buildSkaffoldGitSource() {
  final o = api.SkaffoldGitSource();
  buildCounterSkaffoldGitSource++;
  if (buildCounterSkaffoldGitSource < 3) {
    o.path = 'foo';
    o.ref = 'foo';
    o.repo = 'foo';
  }
  buildCounterSkaffoldGitSource--;
  return o;
}

void checkSkaffoldGitSource(api.SkaffoldGitSource o) {
  buildCounterSkaffoldGitSource++;
  if (buildCounterSkaffoldGitSource < 3) {
    unittest.expect(o.path!, unittest.equals('foo'));
    unittest.expect(o.ref!, unittest.equals('foo'));
    unittest.expect(o.repo!, unittest.equals('foo'));
  }
  buildCounterSkaffoldGitSource--;
}

core.List<core.String> buildUnnamed97() => ['foo', 'foo'];

void checkUnnamed97(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSkaffoldModules = 0;
api.SkaffoldModules buildSkaffoldModules() {
  final o = api.SkaffoldModules();
  buildCounterSkaffoldModules++;
  if (buildCounterSkaffoldModules < 3) {
    o.configs = buildUnnamed97();
    o.git = buildSkaffoldGitSource();
    o.googleCloudBuildRepo = buildSkaffoldGCBRepoSource();
    o.googleCloudStorage = buildSkaffoldGCSSource();
  }
  buildCounterSkaffoldModules--;
  return o;
}

void checkSkaffoldModules(api.SkaffoldModules o) {
  buildCounterSkaffoldModules++;
  if (buildCounterSkaffoldModules < 3) {
    checkUnnamed97(o.configs!);
    checkSkaffoldGitSource(o.git!);
    checkSkaffoldGCBRepoSource(o.googleCloudBuildRepo!);
    checkSkaffoldGCSSource(o.googleCloudStorage!);
  }
  buildCounterSkaffoldModules--;
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
    unittest.expect(o.maintenanceModeTime!, unittest.equals('foo'));
    unittest.expect(o.skaffoldSupportState!, unittest.equals('foo'));
    unittest.expect(o.status!, unittest.isTrue);
    unittest.expect(o.supportExpirationTime!, unittest.equals('foo'));
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
    unittest.expect(o.maintenanceModeTime!, unittest.equals('foo'));
    checkDate(o.supportEndDate!);
    unittest.expect(o.supportExpirationTime!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals('foo'));
  }
  buildCounterSkaffoldVersion--;
}

core.List<api.DeployParameters> buildUnnamed98() => [
  buildDeployParameters(),
  buildDeployParameters(),
];

void checkUnnamed98(core.List<api.DeployParameters> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeployParameters(o[0]);
  checkDeployParameters(o[1]);
}

core.List<core.String> buildUnnamed99() => ['foo', 'foo'];

void checkUnnamed99(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterStage = 0;
api.Stage buildStage() {
  final o = api.Stage();
  buildCounterStage++;
  if (buildCounterStage < 3) {
    o.deployParameters = buildUnnamed98();
    o.profiles = buildUnnamed99();
    o.strategy = buildStrategy();
    o.targetId = 'foo';
  }
  buildCounterStage--;
  return o;
}

void checkStage(api.Stage o) {
  buildCounterStage++;
  if (buildCounterStage < 3) {
    checkUnnamed98(o.deployParameters!);
    checkUnnamed99(o.profiles!);
    checkStrategy(o.strategy!);
    unittest.expect(o.targetId!, unittest.equals('foo'));
  }
  buildCounterStage--;
}

core.int buildCounterStandard = 0;
api.Standard buildStandard() {
  final o = api.Standard();
  buildCounterStandard++;
  if (buildCounterStandard < 3) {
    o.postdeploy = buildPostdeploy();
    o.predeploy = buildPredeploy();
    o.verify = true;
  }
  buildCounterStandard--;
  return o;
}

void checkStandard(api.Standard o) {
  buildCounterStandard++;
  if (buildCounterStandard < 3) {
    checkPostdeploy(o.postdeploy!);
    checkPredeploy(o.predeploy!);
    unittest.expect(o.verify!, unittest.isTrue);
  }
  buildCounterStandard--;
}

core.Map<core.String, core.Object?> buildUnnamed100() => {
  'x': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
  'y': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
};

void checkUnnamed100(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted7 = (o['x']!) as core.Map;
  unittest.expect(casted7, unittest.hasLength(3));
  unittest.expect(casted7['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted7['bool'], unittest.equals(true));
  unittest.expect(casted7['string'], unittest.equals('foo'));
  var casted8 = (o['y']!) as core.Map;
  unittest.expect(casted8, unittest.hasLength(3));
  unittest.expect(casted8['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted8['bool'], unittest.equals(true));
  unittest.expect(casted8['string'], unittest.equals('foo'));
}

core.List<core.Map<core.String, core.Object?>> buildUnnamed101() => [
  buildUnnamed100(),
  buildUnnamed100(),
];

void checkUnnamed101(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed100(o[0]);
  checkUnnamed100(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed101();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code!, unittest.equals(42));
    checkUnnamed101(o.details!);
    unittest.expect(o.message!, unittest.equals('foo'));
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

core.Map<core.String, core.String> buildUnnamed102() => {
  'x': 'foo',
  'y': 'foo',
};

void checkUnnamed102(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, api.AssociatedEntities> buildUnnamed103() => {
  'x': buildAssociatedEntities(),
  'y': buildAssociatedEntities(),
};

void checkUnnamed103(core.Map<core.String, api.AssociatedEntities> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAssociatedEntities(o['x']!);
  checkAssociatedEntities(o['y']!);
}

core.Map<core.String, core.String> buildUnnamed104() => {
  'x': 'foo',
  'y': 'foo',
};

void checkUnnamed104(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<api.ExecutionConfig> buildUnnamed105() => [
  buildExecutionConfig(),
  buildExecutionConfig(),
];

void checkUnnamed105(core.List<api.ExecutionConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExecutionConfig(o[0]);
  checkExecutionConfig(o[1]);
}

core.Map<core.String, core.String> buildUnnamed106() => {
  'x': 'foo',
  'y': 'foo',
};

void checkUnnamed106(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterTarget = 0;
api.Target buildTarget() {
  final o = api.Target();
  buildCounterTarget++;
  if (buildCounterTarget < 3) {
    o.annotations = buildUnnamed102();
    o.anthosCluster = buildAnthosCluster();
    o.associatedEntities = buildUnnamed103();
    o.createTime = 'foo';
    o.customTarget = buildCustomTarget();
    o.deployParameters = buildUnnamed104();
    o.description = 'foo';
    o.etag = 'foo';
    o.executionConfigs = buildUnnamed105();
    o.gke = buildGkeCluster();
    o.labels = buildUnnamed106();
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
    checkUnnamed102(o.annotations!);
    checkAnthosCluster(o.anthosCluster!);
    checkUnnamed103(o.associatedEntities!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkCustomTarget(o.customTarget!);
    checkUnnamed104(o.deployParameters!);
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.etag!, unittest.equals('foo'));
    checkUnnamed105(o.executionConfigs!);
    checkGkeCluster(o.gke!);
    checkUnnamed106(o.labels!);
    checkMultiTarget(o.multiTarget!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.requireApproval!, unittest.isTrue);
    checkCloudRunLocation(o.run!);
    unittest.expect(o.targetId!, unittest.equals('foo'));
    unittest.expect(o.uid!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterTarget--;
}

core.Map<core.String, api.PhaseArtifact> buildUnnamed107() => {
  'x': buildPhaseArtifact(),
  'y': buildPhaseArtifact(),
};

void checkUnnamed107(core.Map<core.String, api.PhaseArtifact> o) {
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
    o.phaseArtifacts = buildUnnamed107();
    o.skaffoldConfigPath = 'foo';
  }
  buildCounterTargetArtifact--;
  return o;
}

void checkTargetArtifact(api.TargetArtifact o) {
  buildCounterTargetArtifact++;
  if (buildCounterTargetArtifact < 3) {
    unittest.expect(o.artifactUri!, unittest.equals('foo'));
    unittest.expect(o.manifestPath!, unittest.equals('foo'));
    checkUnnamed107(o.phaseArtifacts!);
    unittest.expect(o.skaffoldConfigPath!, unittest.equals('foo'));
  }
  buildCounterTargetArtifact--;
}

core.Map<core.String, core.String> buildUnnamed108() => {
  'x': 'foo',
  'y': 'foo',
};

void checkUnnamed108(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterTargetAttribute = 0;
api.TargetAttribute buildTargetAttribute() {
  final o = api.TargetAttribute();
  buildCounterTargetAttribute++;
  if (buildCounterTargetAttribute < 3) {
    o.id = 'foo';
    o.labels = buildUnnamed108();
  }
  buildCounterTargetAttribute--;
  return o;
}

void checkTargetAttribute(api.TargetAttribute o) {
  buildCounterTargetAttribute++;
  if (buildCounterTargetAttribute < 3) {
    unittest.expect(o.id!, unittest.equals('foo'));
    checkUnnamed108(o.labels!);
  }
  buildCounterTargetAttribute--;
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
    unittest.expect(o.failureCause!, unittest.equals('foo'));
    unittest.expect(o.failureMessage!, unittest.equals('foo'));
    checkRenderMetadata(o.metadata!);
    unittest.expect(o.renderingBuild!, unittest.equals('foo'));
    unittest.expect(o.renderingState!, unittest.equals('foo'));
  }
  buildCounterTargetRender--;
}

core.int buildCounterTargets = 0;
api.Targets buildTargets() {
  final o = api.Targets();
  buildCounterTargets++;
  if (buildCounterTargets < 3) {
    o.destinationTargetId = 'foo';
    o.sourceTargetId = 'foo';
  }
  buildCounterTargets--;
  return o;
}

void checkTargets(api.Targets o) {
  buildCounterTargets++;
  if (buildCounterTargets < 3) {
    unittest.expect(o.destinationTargetId!, unittest.equals('foo'));
    unittest.expect(o.sourceTargetId!, unittest.equals('foo'));
  }
  buildCounterTargets--;
}

core.List<core.String> buildUnnamed109() => ['foo', 'foo'];

void checkUnnamed109(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTargetsPresentCondition = 0;
api.TargetsPresentCondition buildTargetsPresentCondition() {
  final o = api.TargetsPresentCondition();
  buildCounterTargetsPresentCondition++;
  if (buildCounterTargetsPresentCondition < 3) {
    o.missingTargets = buildUnnamed109();
    o.status = true;
    o.updateTime = 'foo';
  }
  buildCounterTargetsPresentCondition--;
  return o;
}

void checkTargetsPresentCondition(api.TargetsPresentCondition o) {
  buildCounterTargetsPresentCondition++;
  if (buildCounterTargetsPresentCondition < 3) {
    checkUnnamed109(o.missingTargets!);
    unittest.expect(o.status!, unittest.isTrue);
    unittest.expect(o.updateTime!, unittest.equals('foo'));
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
    unittest.expect(o.errorDetails!, unittest.equals('foo'));
    unittest.expect(o.status!, unittest.isTrue);
  }
  buildCounterTargetsTypeCondition--;
}

core.List<core.String> buildUnnamed110() => ['foo', 'foo'];

void checkUnnamed110(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTerminateJobRunRequest = 0;
api.TerminateJobRunRequest buildTerminateJobRunRequest() {
  final o = api.TerminateJobRunRequest();
  buildCounterTerminateJobRunRequest++;
  if (buildCounterTerminateJobRunRequest < 3) {
    o.overrideDeployPolicy = buildUnnamed110();
  }
  buildCounterTerminateJobRunRequest--;
  return o;
}

void checkTerminateJobRunRequest(api.TerminateJobRunRequest o) {
  buildCounterTerminateJobRunRequest++;
  if (buildCounterTerminateJobRunRequest < 3) {
    checkUnnamed110(o.overrideDeployPolicy!);
  }
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

core.List<core.String> buildUnnamed111() => ['foo', 'foo'];

void checkUnnamed111(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsRequest = 0;
api.TestIamPermissionsRequest buildTestIamPermissionsRequest() {
  final o = api.TestIamPermissionsRequest();
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed111();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

void checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed111(o.permissions!);
  }
  buildCounterTestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed112() => ['foo', 'foo'];

void checkUnnamed112(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsResponse = 0;
api.TestIamPermissionsResponse buildTestIamPermissionsResponse() {
  final o = api.TestIamPermissionsResponse();
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed112();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed112(o.permissions!);
  }
  buildCounterTestIamPermissionsResponse--;
}

core.int buildCounterTimeOfDay = 0;
api.TimeOfDay buildTimeOfDay() {
  final o = api.TimeOfDay();
  buildCounterTimeOfDay++;
  if (buildCounterTimeOfDay < 3) {
    o.hours = 42;
    o.minutes = 42;
    o.nanos = 42;
    o.seconds = 42;
  }
  buildCounterTimeOfDay--;
  return o;
}

void checkTimeOfDay(api.TimeOfDay o) {
  buildCounterTimeOfDay++;
  if (buildCounterTimeOfDay < 3) {
    unittest.expect(o.hours!, unittest.equals(42));
    unittest.expect(o.minutes!, unittest.equals(42));
    unittest.expect(o.nanos!, unittest.equals(42));
    unittest.expect(o.seconds!, unittest.equals(42));
  }
  buildCounterTimeOfDay--;
}

core.List<api.OneTimeWindow> buildUnnamed113() => [
  buildOneTimeWindow(),
  buildOneTimeWindow(),
];

void checkUnnamed113(core.List<api.OneTimeWindow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOneTimeWindow(o[0]);
  checkOneTimeWindow(o[1]);
}

core.List<api.WeeklyWindow> buildUnnamed114() => [
  buildWeeklyWindow(),
  buildWeeklyWindow(),
];

void checkUnnamed114(core.List<api.WeeklyWindow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWeeklyWindow(o[0]);
  checkWeeklyWindow(o[1]);
}

core.int buildCounterTimeWindows = 0;
api.TimeWindows buildTimeWindows() {
  final o = api.TimeWindows();
  buildCounterTimeWindows++;
  if (buildCounterTimeWindows < 3) {
    o.oneTimeWindows = buildUnnamed113();
    o.timeZone = 'foo';
    o.weeklyWindows = buildUnnamed114();
  }
  buildCounterTimeWindows--;
  return o;
}

void checkTimeWindows(api.TimeWindows o) {
  buildCounterTimeWindows++;
  if (buildCounterTimeWindows < 3) {
    checkUnnamed113(o.oneTimeWindows!);
    unittest.expect(o.timeZone!, unittest.equals('foo'));
    checkUnnamed114(o.weeklyWindows!);
  }
  buildCounterTimeWindows--;
}

core.List<api.Targets> buildUnnamed115() => [buildTargets(), buildTargets()];

void checkUnnamed115(core.List<api.Targets> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTargets(o[0]);
  checkTargets(o[1]);
}

core.int buildCounterTimedPromoteReleaseCondition = 0;
api.TimedPromoteReleaseCondition buildTimedPromoteReleaseCondition() {
  final o = api.TimedPromoteReleaseCondition();
  buildCounterTimedPromoteReleaseCondition++;
  if (buildCounterTimedPromoteReleaseCondition < 3) {
    o.nextPromotionTime = 'foo';
    o.targetsList = buildUnnamed115();
  }
  buildCounterTimedPromoteReleaseCondition--;
  return o;
}

void checkTimedPromoteReleaseCondition(api.TimedPromoteReleaseCondition o) {
  buildCounterTimedPromoteReleaseCondition++;
  if (buildCounterTimedPromoteReleaseCondition < 3) {
    unittest.expect(o.nextPromotionTime!, unittest.equals('foo'));
    checkUnnamed115(o.targetsList!);
  }
  buildCounterTimedPromoteReleaseCondition--;
}

core.int buildCounterTimedPromoteReleaseOperation = 0;
api.TimedPromoteReleaseOperation buildTimedPromoteReleaseOperation() {
  final o = api.TimedPromoteReleaseOperation();
  buildCounterTimedPromoteReleaseOperation++;
  if (buildCounterTimedPromoteReleaseOperation < 3) {
    o.phase = 'foo';
    o.release = 'foo';
    o.targetId = 'foo';
  }
  buildCounterTimedPromoteReleaseOperation--;
  return o;
}

void checkTimedPromoteReleaseOperation(api.TimedPromoteReleaseOperation o) {
  buildCounterTimedPromoteReleaseOperation++;
  if (buildCounterTimedPromoteReleaseOperation < 3) {
    unittest.expect(o.phase!, unittest.equals('foo'));
    unittest.expect(o.release!, unittest.equals('foo'));
    unittest.expect(o.targetId!, unittest.equals('foo'));
  }
  buildCounterTimedPromoteReleaseOperation--;
}

core.int buildCounterTimedPromoteReleaseRule = 0;
api.TimedPromoteReleaseRule buildTimedPromoteReleaseRule() {
  final o = api.TimedPromoteReleaseRule();
  buildCounterTimedPromoteReleaseRule++;
  if (buildCounterTimedPromoteReleaseRule < 3) {
    o.condition = buildAutomationRuleCondition();
    o.destinationPhase = 'foo';
    o.destinationTargetId = 'foo';
    o.id = 'foo';
    o.schedule = 'foo';
    o.timeZone = 'foo';
  }
  buildCounterTimedPromoteReleaseRule--;
  return o;
}

void checkTimedPromoteReleaseRule(api.TimedPromoteReleaseRule o) {
  buildCounterTimedPromoteReleaseRule++;
  if (buildCounterTimedPromoteReleaseRule < 3) {
    checkAutomationRuleCondition(o.condition!);
    unittest.expect(o.destinationPhase!, unittest.equals('foo'));
    unittest.expect(o.destinationTargetId!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.schedule!, unittest.equals('foo'));
    unittest.expect(o.timeZone!, unittest.equals('foo'));
  }
  buildCounterTimedPromoteReleaseRule--;
}

core.int buildCounterToolVersionSupportedCondition = 0;
api.ToolVersionSupportedCondition buildToolVersionSupportedCondition() {
  final o = api.ToolVersionSupportedCondition();
  buildCounterToolVersionSupportedCondition++;
  if (buildCounterToolVersionSupportedCondition < 3) {
    o.maintenanceModeTime = 'foo';
    o.status = true;
    o.supportExpirationTime = 'foo';
    o.toolVersionSupportState = 'foo';
  }
  buildCounterToolVersionSupportedCondition--;
  return o;
}

void checkToolVersionSupportedCondition(api.ToolVersionSupportedCondition o) {
  buildCounterToolVersionSupportedCondition++;
  if (buildCounterToolVersionSupportedCondition < 3) {
    unittest.expect(o.maintenanceModeTime!, unittest.equals('foo'));
    unittest.expect(o.status!, unittest.isTrue);
    unittest.expect(o.supportExpirationTime!, unittest.equals('foo'));
    unittest.expect(o.toolVersionSupportState!, unittest.equals('foo'));
  }
  buildCounterToolVersionSupportedCondition--;
}

core.int buildCounterToolVersions = 0;
api.ToolVersions buildToolVersions() {
  final o = api.ToolVersions();
  buildCounterToolVersions++;
  if (buildCounterToolVersions < 3) {
    o.docker = 'foo';
    o.helm = 'foo';
    o.kpt = 'foo';
    o.kubectl = 'foo';
    o.kustomize = 'foo';
    o.skaffold = 'foo';
  }
  buildCounterToolVersions--;
  return o;
}

void checkToolVersions(api.ToolVersions o) {
  buildCounterToolVersions++;
  if (buildCounterToolVersions < 3) {
    unittest.expect(o.docker!, unittest.equals('foo'));
    unittest.expect(o.helm!, unittest.equals('foo'));
    unittest.expect(o.kpt!, unittest.equals('foo'));
    unittest.expect(o.kubectl!, unittest.equals('foo'));
    unittest.expect(o.kustomize!, unittest.equals('foo'));
    unittest.expect(o.skaffold!, unittest.equals('foo'));
  }
  buildCounterToolVersions--;
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
    unittest.expect(o.artifactUri!, unittest.equals('foo'));
    unittest.expect(o.build!, unittest.equals('foo'));
    unittest.expect(o.eventLogPath!, unittest.equals('foo'));
    unittest.expect(o.failureCause!, unittest.equals('foo'));
    unittest.expect(o.failureMessage!, unittest.equals('foo'));
  }
  buildCounterVerifyJobRun--;
}

core.List<core.String> buildUnnamed116() => ['foo', 'foo'];

void checkUnnamed116(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterWeeklyWindow = 0;
api.WeeklyWindow buildWeeklyWindow() {
  final o = api.WeeklyWindow();
  buildCounterWeeklyWindow++;
  if (buildCounterWeeklyWindow < 3) {
    o.daysOfWeek = buildUnnamed116();
    o.endTime = buildTimeOfDay();
    o.startTime = buildTimeOfDay();
  }
  buildCounterWeeklyWindow--;
  return o;
}

void checkWeeklyWindow(api.WeeklyWindow o) {
  buildCounterWeeklyWindow++;
  if (buildCounterWeeklyWindow < 3) {
    checkUnnamed116(o.daysOfWeek!);
    checkTimeOfDay(o.endTime!);
    checkTimeOfDay(o.startTime!);
  }
  buildCounterWeeklyWindow--;
}

core.List<core.String> buildUnnamed117() => ['foo', 'foo'];

void checkUnnamed117(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed118() => ['foo', 'foo'];

void checkUnnamed118(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed119() => ['foo', 'foo'];

void checkUnnamed119(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

void main() {
  unittest.group('obj-schema-AbandonReleaseRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAbandonReleaseRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AbandonReleaseRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAbandonReleaseRequest(od);
    });
  });

  unittest.group('obj-schema-AbandonReleaseResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAbandonReleaseResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AbandonReleaseResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAbandonReleaseResponse(od);
    });
  });

  unittest.group('obj-schema-AdvanceChildRolloutJob', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdvanceChildRolloutJob();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AdvanceChildRolloutJob.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAdvanceChildRolloutJob(od);
    });
  });

  unittest.group('obj-schema-AdvanceChildRolloutJobRun', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdvanceChildRolloutJobRun();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AdvanceChildRolloutJobRun.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAdvanceChildRolloutJobRun(od);
    });
  });

  unittest.group('obj-schema-AdvanceRolloutOperation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdvanceRolloutOperation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AdvanceRolloutOperation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAdvanceRolloutOperation(od);
    });
  });

  unittest.group('obj-schema-AdvanceRolloutRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdvanceRolloutRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AdvanceRolloutRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAdvanceRolloutRequest(od);
    });
  });

  unittest.group('obj-schema-AdvanceRolloutResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdvanceRolloutResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AdvanceRolloutResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAdvanceRolloutResponse(od);
    });
  });

  unittest.group('obj-schema-AdvanceRolloutRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdvanceRolloutRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AdvanceRolloutRule.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAdvanceRolloutRule(od);
    });
  });

  unittest.group('obj-schema-AnthosCluster', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAnthosCluster();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AnthosCluster.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAnthosCluster(od);
    });
  });

  unittest.group('obj-schema-ApproveRolloutRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApproveRolloutRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApproveRolloutRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkApproveRolloutRequest(od);
    });
  });

  unittest.group('obj-schema-ApproveRolloutResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApproveRolloutResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApproveRolloutResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkApproveRolloutResponse(od);
    });
  });

  unittest.group('obj-schema-AssociatedEntities', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAssociatedEntities();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AssociatedEntities.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAssociatedEntities(od);
    });
  });

  unittest.group('obj-schema-AuditConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuditConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuditConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAuditConfig(od);
    });
  });

  unittest.group('obj-schema-AuditLogConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuditLogConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuditLogConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAuditLogConfig(od);
    });
  });

  unittest.group('obj-schema-Automation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAutomation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Automation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAutomation(od);
    });
  });

  unittest.group('obj-schema-AutomationResourceSelector', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAutomationResourceSelector();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AutomationResourceSelector.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAutomationResourceSelector(od);
    });
  });

  unittest.group('obj-schema-AutomationRolloutMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAutomationRolloutMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AutomationRolloutMetadata.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAutomationRolloutMetadata(od);
    });
  });

  unittest.group('obj-schema-AutomationRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAutomationRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AutomationRule.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAutomationRule(od);
    });
  });

  unittest.group('obj-schema-AutomationRuleCondition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAutomationRuleCondition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AutomationRuleCondition.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAutomationRuleCondition(od);
    });
  });

  unittest.group('obj-schema-AutomationRun', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAutomationRun();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AutomationRun.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAutomationRun(od);
    });
  });

  unittest.group('obj-schema-Binding', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBinding();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Binding.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBinding(od);
    });
  });

  unittest.group('obj-schema-BuildArtifact', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBuildArtifact();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BuildArtifact.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBuildArtifact(od);
    });
  });

  unittest.group('obj-schema-Canary', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCanary();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Canary.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCanary(od);
    });
  });

  unittest.group('obj-schema-CanaryDeployment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCanaryDeployment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CanaryDeployment.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCanaryDeployment(od);
    });
  });

  unittest.group('obj-schema-CancelAutomationRunRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCancelAutomationRunRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CancelAutomationRunRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCancelAutomationRunRequest(od);
    });
  });

  unittest.group('obj-schema-CancelAutomationRunResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCancelAutomationRunResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CancelAutomationRunResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCancelAutomationRunResponse(od);
    });
  });

  unittest.group('obj-schema-CancelOperationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCancelOperationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CancelOperationRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCancelOperationRequest(od);
    });
  });

  unittest.group('obj-schema-CancelRolloutRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCancelRolloutRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CancelRolloutRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCancelRolloutRequest(od);
    });
  });

  unittest.group('obj-schema-CancelRolloutResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCancelRolloutResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CancelRolloutResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCancelRolloutResponse(od);
    });
  });

  unittest.group('obj-schema-ChildRolloutJobs', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChildRolloutJobs();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ChildRolloutJobs.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkChildRolloutJobs(od);
    });
  });

  unittest.group('obj-schema-CloudRunConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCloudRunConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CloudRunConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCloudRunConfig(od);
    });
  });

  unittest.group('obj-schema-CloudRunLocation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCloudRunLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CloudRunLocation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCloudRunLocation(od);
    });
  });

  unittest.group('obj-schema-CloudRunMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCloudRunMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CloudRunMetadata.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCloudRunMetadata(od);
    });
  });

  unittest.group('obj-schema-CloudRunRenderMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCloudRunRenderMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CloudRunRenderMetadata.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCloudRunRenderMetadata(od);
    });
  });

  unittest.group('obj-schema-Config', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Config.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkConfig(od);
    });
  });

  unittest.group('obj-schema-CreateChildRolloutJob', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateChildRolloutJob();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateChildRolloutJob.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCreateChildRolloutJob(od);
    });
  });

  unittest.group('obj-schema-CreateChildRolloutJobRun', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateChildRolloutJobRun();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateChildRolloutJobRun.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCreateChildRolloutJobRun(od);
    });
  });

  unittest.group('obj-schema-CustomCanaryDeployment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomCanaryDeployment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomCanaryDeployment.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCustomCanaryDeployment(od);
    });
  });

  unittest.group('obj-schema-CustomMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomMetadata.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCustomMetadata(od);
    });
  });

  unittest.group('obj-schema-CustomTarget', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomTarget();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomTarget.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCustomTarget(od);
    });
  });

  unittest.group('obj-schema-CustomTargetDeployMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomTargetDeployMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomTargetDeployMetadata.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCustomTargetDeployMetadata(od);
    });
  });

  unittest.group('obj-schema-CustomTargetSkaffoldActions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomTargetSkaffoldActions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomTargetSkaffoldActions.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCustomTargetSkaffoldActions(od);
    });
  });

  unittest.group('obj-schema-CustomTargetType', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomTargetType();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomTargetType.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCustomTargetType(od);
    });
  });

  unittest.group('obj-schema-Date', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Date.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDate(od);
    });
  });

  unittest.group('obj-schema-DefaultPool', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDefaultPool();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DefaultPool.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDefaultPool(od);
    });
  });

  unittest.group('obj-schema-DeliveryPipeline', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeliveryPipeline();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeliveryPipeline.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDeliveryPipeline(od);
    });
  });

  unittest.group('obj-schema-DeliveryPipelineAttribute', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeliveryPipelineAttribute();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeliveryPipelineAttribute.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDeliveryPipelineAttribute(od);
    });
  });

  unittest.group('obj-schema-DeployArtifact', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeployArtifact();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeployArtifact.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDeployArtifact(od);
    });
  });

  unittest.group('obj-schema-DeployJob', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeployJob();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeployJob.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDeployJob(od);
    });
  });

  unittest.group('obj-schema-DeployJobRun', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeployJobRun();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeployJobRun.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDeployJobRun(od);
    });
  });

  unittest.group('obj-schema-DeployJobRunMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeployJobRunMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeployJobRunMetadata.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDeployJobRunMetadata(od);
    });
  });

  unittest.group('obj-schema-DeployParameters', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeployParameters();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeployParameters.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDeployParameters(od);
    });
  });

  unittest.group('obj-schema-DeployPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeployPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeployPolicy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDeployPolicy(od);
    });
  });

  unittest.group('obj-schema-DeployPolicyResourceSelector', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeployPolicyResourceSelector();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeployPolicyResourceSelector.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDeployPolicyResourceSelector(od);
    });
  });

  unittest.group('obj-schema-DeploymentJobs', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeploymentJobs();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeploymentJobs.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDeploymentJobs(od);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Empty.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEmpty(od);
    });
  });

  unittest.group('obj-schema-ExecutionConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExecutionConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExecutionConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExecutionConfig(od);
    });
  });

  unittest.group('obj-schema-Expr', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExpr();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Expr.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExpr(od);
    });
  });

  unittest.group('obj-schema-GatewayServiceMesh', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGatewayServiceMesh();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GatewayServiceMesh.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGatewayServiceMesh(od);
    });
  });

  unittest.group('obj-schema-GkeCluster', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGkeCluster();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GkeCluster.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGkeCluster(od);
    });
  });

  unittest.group('obj-schema-IgnoreJobRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIgnoreJobRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IgnoreJobRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkIgnoreJobRequest(od);
    });
  });

  unittest.group('obj-schema-IgnoreJobResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIgnoreJobResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IgnoreJobResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
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
      final od = api.JobRun.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkJobRun(od);
    });
  });

  unittest.group('obj-schema-KubernetesConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildKubernetesConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.KubernetesConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkKubernetesConfig(od);
    });
  });

  unittest.group('obj-schema-ListAutomationRunsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAutomationRunsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAutomationRunsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListAutomationRunsResponse(od);
    });
  });

  unittest.group('obj-schema-ListAutomationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAutomationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAutomationsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListAutomationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListCustomTargetTypesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListCustomTargetTypesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListCustomTargetTypesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListCustomTargetTypesResponse(od);
    });
  });

  unittest.group('obj-schema-ListDeliveryPipelinesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListDeliveryPipelinesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListDeliveryPipelinesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListDeliveryPipelinesResponse(od);
    });
  });

  unittest.group('obj-schema-ListDeployPoliciesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListDeployPoliciesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListDeployPoliciesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListDeployPoliciesResponse(od);
    });
  });

  unittest.group('obj-schema-ListJobRunsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListJobRunsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListJobRunsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListJobRunsResponse(od);
    });
  });

  unittest.group('obj-schema-ListLocationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListLocationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListLocationsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListLocationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListOperationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListOperationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListOperationsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListOperationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListReleasesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListReleasesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListReleasesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListReleasesResponse(od);
    });
  });

  unittest.group('obj-schema-ListRolloutsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListRolloutsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListRolloutsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListRolloutsResponse(od);
    });
  });

  unittest.group('obj-schema-ListTargetsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListTargetsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListTargetsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListTargetsResponse(od);
    });
  });

  unittest.group('obj-schema-Location', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Location.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLocation(od);
    });
  });

  unittest.group('obj-schema-Metadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Metadata.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMetadata(od);
    });
  });

  unittest.group('obj-schema-MultiTarget', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMultiTarget();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MultiTarget.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMultiTarget(od);
    });
  });

  unittest.group('obj-schema-OneTimeWindow', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOneTimeWindow();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OneTimeWindow.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOneTimeWindow(od);
    });
  });

  unittest.group('obj-schema-Operation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOperation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Operation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOperation(od);
    });
  });

  unittest.group('obj-schema-Phase', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPhase();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Phase.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPhase(od);
    });
  });

  unittest.group('obj-schema-PhaseArtifact', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPhaseArtifact();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PhaseArtifact.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPhaseArtifact(od);
    });
  });

  unittest.group('obj-schema-PhaseConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPhaseConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PhaseConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPhaseConfig(od);
    });
  });

  unittest.group('obj-schema-PipelineCondition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPipelineCondition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PipelineCondition.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPipelineCondition(od);
    });
  });

  unittest.group('obj-schema-PipelineReadyCondition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPipelineReadyCondition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PipelineReadyCondition.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPipelineReadyCondition(od);
    });
  });

  unittest.group('obj-schema-Policy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Policy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPolicy(od);
    });
  });

  unittest.group('obj-schema-PolicyRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPolicyRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PolicyRule.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPolicyRule(od);
    });
  });

  unittest.group('obj-schema-PolicyViolation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPolicyViolation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PolicyViolation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPolicyViolation(od);
    });
  });

  unittest.group('obj-schema-PolicyViolationDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPolicyViolationDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PolicyViolationDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPolicyViolationDetails(od);
    });
  });

  unittest.group('obj-schema-Postdeploy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPostdeploy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Postdeploy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPostdeploy(od);
    });
  });

  unittest.group('obj-schema-PostdeployJob', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPostdeployJob();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PostdeployJob.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPostdeployJob(od);
    });
  });

  unittest.group('obj-schema-PostdeployJobRun', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPostdeployJobRun();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PostdeployJobRun.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPostdeployJobRun(od);
    });
  });

  unittest.group('obj-schema-Predeploy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPredeploy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Predeploy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPredeploy(od);
    });
  });

  unittest.group('obj-schema-PredeployJob', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPredeployJob();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PredeployJob.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPredeployJob(od);
    });
  });

  unittest.group('obj-schema-PredeployJobRun', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPredeployJobRun();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PredeployJobRun.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPredeployJobRun(od);
    });
  });

  unittest.group('obj-schema-PrivatePool', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPrivatePool();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PrivatePool.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPrivatePool(od);
    });
  });

  unittest.group('obj-schema-PromoteReleaseOperation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPromoteReleaseOperation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PromoteReleaseOperation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPromoteReleaseOperation(od);
    });
  });

  unittest.group('obj-schema-PromoteReleaseRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPromoteReleaseRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PromoteReleaseRule.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPromoteReleaseRule(od);
    });
  });

  unittest.group('obj-schema-Release', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRelease();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Release.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRelease(od);
    });
  });

  unittest.group('obj-schema-ReleaseCondition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReleaseCondition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReleaseCondition.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkReleaseCondition(od);
    });
  });

  unittest.group('obj-schema-ReleaseReadyCondition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReleaseReadyCondition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReleaseReadyCondition.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkReleaseReadyCondition(od);
    });
  });

  unittest.group('obj-schema-RenderMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRenderMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RenderMetadata.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRenderMetadata(od);
    });
  });

  unittest.group('obj-schema-RepairPhase', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRepairPhase();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RepairPhase.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRepairPhase(od);
    });
  });

  unittest.group('obj-schema-RepairPhaseConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRepairPhaseConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RepairPhaseConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRepairPhaseConfig(od);
    });
  });

  unittest.group('obj-schema-RepairRolloutOperation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRepairRolloutOperation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RepairRolloutOperation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRepairRolloutOperation(od);
    });
  });

  unittest.group('obj-schema-RepairRolloutRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRepairRolloutRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RepairRolloutRule.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRepairRolloutRule(od);
    });
  });

  unittest.group('obj-schema-Retry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRetry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Retry.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRetry(od);
    });
  });

  unittest.group('obj-schema-RetryAttempt', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRetryAttempt();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RetryAttempt.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRetryAttempt(od);
    });
  });

  unittest.group('obj-schema-RetryJobRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRetryJobRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RetryJobRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRetryJobRequest(od);
    });
  });

  unittest.group('obj-schema-RetryJobResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRetryJobResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RetryJobResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRetryJobResponse(od);
    });
  });

  unittest.group('obj-schema-RetryPhase', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRetryPhase();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RetryPhase.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRetryPhase(od);
    });
  });

  unittest.group('obj-schema-Rollback', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRollback();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Rollback.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRollback(od);
    });
  });

  unittest.group('obj-schema-RollbackAttempt', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRollbackAttempt();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RollbackAttempt.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRollbackAttempt(od);
    });
  });

  unittest.group('obj-schema-RollbackTargetConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRollbackTargetConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RollbackTargetConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRollbackTargetConfig(od);
    });
  });

  unittest.group('obj-schema-RollbackTargetRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRollbackTargetRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RollbackTargetRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRollbackTargetRequest(od);
    });
  });

  unittest.group('obj-schema-RollbackTargetResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRollbackTargetResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RollbackTargetResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRollbackTargetResponse(od);
    });
  });

  unittest.group('obj-schema-Rollout', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRollout();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Rollout.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRollout(od);
    });
  });

  unittest.group('obj-schema-RolloutRestriction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRolloutRestriction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RolloutRestriction.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRolloutRestriction(od);
    });
  });

  unittest.group('obj-schema-RouteDestinations', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRouteDestinations();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RouteDestinations.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRouteDestinations(od);
    });
  });

  unittest.group('obj-schema-RuntimeConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRuntimeConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RuntimeConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRuntimeConfig(od);
    });
  });

  unittest.group('obj-schema-SerialPipeline', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSerialPipeline();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SerialPipeline.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSerialPipeline(od);
    });
  });

  unittest.group('obj-schema-ServiceNetworking', () {
    unittest.test('to-json--from-json', () async {
      final o = buildServiceNetworking();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ServiceNetworking.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkServiceNetworking(od);
    });
  });

  unittest.group('obj-schema-SetIamPolicyRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSetIamPolicyRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SetIamPolicyRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSetIamPolicyRequest(od);
    });
  });

  unittest.group('obj-schema-SkaffoldGCBRepoSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSkaffoldGCBRepoSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SkaffoldGCBRepoSource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSkaffoldGCBRepoSource(od);
    });
  });

  unittest.group('obj-schema-SkaffoldGCSSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSkaffoldGCSSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SkaffoldGCSSource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSkaffoldGCSSource(od);
    });
  });

  unittest.group('obj-schema-SkaffoldGitSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSkaffoldGitSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SkaffoldGitSource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSkaffoldGitSource(od);
    });
  });

  unittest.group('obj-schema-SkaffoldModules', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSkaffoldModules();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SkaffoldModules.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSkaffoldModules(od);
    });
  });

  unittest.group('obj-schema-SkaffoldSupportedCondition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSkaffoldSupportedCondition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SkaffoldSupportedCondition.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSkaffoldSupportedCondition(od);
    });
  });

  unittest.group('obj-schema-SkaffoldVersion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSkaffoldVersion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SkaffoldVersion.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSkaffoldVersion(od);
    });
  });

  unittest.group('obj-schema-Stage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Stage.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkStage(od);
    });
  });

  unittest.group('obj-schema-Standard', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStandard();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Standard.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkStandard(od);
    });
  });

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Status.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkStatus(od);
    });
  });

  unittest.group('obj-schema-Strategy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStrategy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Strategy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkStrategy(od);
    });
  });

  unittest.group('obj-schema-Target', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTarget();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Target.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTarget(od);
    });
  });

  unittest.group('obj-schema-TargetArtifact', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTargetArtifact();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TargetArtifact.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTargetArtifact(od);
    });
  });

  unittest.group('obj-schema-TargetAttribute', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTargetAttribute();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TargetAttribute.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTargetAttribute(od);
    });
  });

  unittest.group('obj-schema-TargetRender', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTargetRender();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TargetRender.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTargetRender(od);
    });
  });

  unittest.group('obj-schema-Targets', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTargets();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Targets.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTargets(od);
    });
  });

  unittest.group('obj-schema-TargetsPresentCondition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTargetsPresentCondition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TargetsPresentCondition.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTargetsPresentCondition(od);
    });
  });

  unittest.group('obj-schema-TargetsTypeCondition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTargetsTypeCondition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TargetsTypeCondition.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTargetsTypeCondition(od);
    });
  });

  unittest.group('obj-schema-TerminateJobRunRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTerminateJobRunRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TerminateJobRunRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTerminateJobRunRequest(od);
    });
  });

  unittest.group('obj-schema-TerminateJobRunResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTerminateJobRunResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TerminateJobRunResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTerminateJobRunResponse(od);
    });
  });

  unittest.group('obj-schema-TestIamPermissionsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTestIamPermissionsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TestIamPermissionsRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTestIamPermissionsRequest(od);
    });
  });

  unittest.group('obj-schema-TestIamPermissionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTestIamPermissionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TestIamPermissionsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTestIamPermissionsResponse(od);
    });
  });

  unittest.group('obj-schema-TimeOfDay', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTimeOfDay();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TimeOfDay.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTimeOfDay(od);
    });
  });

  unittest.group('obj-schema-TimeWindows', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTimeWindows();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TimeWindows.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTimeWindows(od);
    });
  });

  unittest.group('obj-schema-TimedPromoteReleaseCondition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTimedPromoteReleaseCondition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TimedPromoteReleaseCondition.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTimedPromoteReleaseCondition(od);
    });
  });

  unittest.group('obj-schema-TimedPromoteReleaseOperation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTimedPromoteReleaseOperation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TimedPromoteReleaseOperation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTimedPromoteReleaseOperation(od);
    });
  });

  unittest.group('obj-schema-TimedPromoteReleaseRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTimedPromoteReleaseRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TimedPromoteReleaseRule.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTimedPromoteReleaseRule(od);
    });
  });

  unittest.group('obj-schema-ToolVersionSupportedCondition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildToolVersionSupportedCondition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ToolVersionSupportedCondition.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkToolVersionSupportedCondition(od);
    });
  });

  unittest.group('obj-schema-ToolVersions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildToolVersions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ToolVersions.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkToolVersions(od);
    });
  });

  unittest.group('obj-schema-VerifyJob', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVerifyJob();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VerifyJob.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkVerifyJob(od);
    });
  });

  unittest.group('obj-schema-VerifyJobRun', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVerifyJobRun();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VerifyJobRun.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkVerifyJobRun(od);
    });
  });

  unittest.group('obj-schema-WeeklyWindow', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWeeklyWindow();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WeeklyWindow.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkWeeklyWindow(od);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudDeployApi(mock).projects.locations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildLocation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkLocation(response as api.Location);
    });

    unittest.test('method--getConfig', () async {
      final mock = HttpServerMock();
      final res = api.CloudDeployApi(mock).projects.locations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildConfig());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getConfig(arg_name, $fields: arg_$fields);
      checkConfig(response as api.Config);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudDeployApi(mock).projects.locations;
      final arg_name = 'foo';
      final arg_extraLocationTypes = buildUnnamed117();
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            queryMap['extraLocationTypes']!,
            unittest.equals(arg_extraLocationTypes),
          );
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListLocationsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_name,
        extraLocationTypes: arg_extraLocationTypes,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListLocationsResponse(response as api.ListLocationsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsCustomTargetTypesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudDeployApi(mock).projects.locations.customTargetTypes;
      final arg_request = buildCustomTargetType();
      final arg_parent = 'foo';
      final arg_customTargetTypeId = 'foo';
      final arg_requestId = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.CustomTargetType.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkCustomTargetType(obj);

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
            queryMap['customTargetTypeId']!.first,
            unittest.equals(arg_customTargetTypeId),
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        customTargetTypeId: arg_customTargetTypeId,
        requestId: arg_requestId,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudDeployApi(mock).projects.locations.customTargetTypes;
      final arg_name = 'foo';
      final arg_allowMissing = true;
      final arg_etag = 'foo';
      final arg_requestId = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            queryMap['allowMissing']!.first,
            unittest.equals('$arg_allowMissing'),
          );
          unittest.expect(queryMap['etag']!.first, unittest.equals(arg_etag));
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        allowMissing: arg_allowMissing,
        etag: arg_etag,
        requestId: arg_requestId,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudDeployApi(mock).projects.locations.customTargetTypes;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildCustomTargetType());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkCustomTargetType(response as api.CustomTargetType);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.CloudDeployApi(mock).projects.locations.customTargetTypes;
      final arg_resource = 'foo';
      final arg_options_requestedPolicyVersion = 42;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getIamPolicy(
        arg_resource,
        options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudDeployApi(mock).projects.locations.customTargetTypes;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildListCustomTargetTypesResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListCustomTargetTypesResponse(
        response as api.ListCustomTargetTypesResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CloudDeployApi(mock).projects.locations.customTargetTypes;
      final arg_request = buildCustomTargetType();
      final arg_name = 'foo';
      final arg_allowMissing = true;
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.CustomTargetType.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkCustomTargetType(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        allowMissing: arg_allowMissing,
        requestId: arg_requestId,
        updateMask: arg_updateMask,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.CloudDeployApi(mock).projects.locations.customTargetTypes;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.setIamPolicy(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
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
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.DeliveryPipeline.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkDeliveryPipeline(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        deliveryPipelineId: arg_deliveryPipelineId,
        requestId: arg_requestId,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
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
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            queryMap['allowMissing']!.first,
            unittest.equals('$arg_allowMissing'),
          );
          unittest.expect(queryMap['etag']!.first, unittest.equals(arg_etag));
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        allowMissing: arg_allowMissing,
        etag: arg_etag,
        force: arg_force,
        requestId: arg_requestId,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudDeployApi(mock).projects.locations.deliveryPipelines;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildDeliveryPipeline());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkDeliveryPipeline(response as api.DeliveryPipeline);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.CloudDeployApi(mock).projects.locations.deliveryPipelines;
      final arg_resource = 'foo';
      final arg_options_requestedPolicyVersion = 42;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getIamPolicy(
        arg_resource,
        options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
        $fields: arg_$fields,
      );
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
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildListDeliveryPipelinesResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListDeliveryPipelinesResponse(
        response as api.ListDeliveryPipelinesResponse,
      );
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
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.DeliveryPipeline.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkDeliveryPipeline(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        allowMissing: arg_allowMissing,
        requestId: arg_requestId,
        updateMask: arg_updateMask,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--rollbackTarget', () async {
      final mock = HttpServerMock();
      final res = api.CloudDeployApi(mock).projects.locations.deliveryPipelines;
      final arg_request = buildRollbackTargetRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.RollbackTargetRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkRollbackTargetRequest(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildRollbackTargetResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.rollbackTarget(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkRollbackTargetResponse(response as api.RollbackTargetResponse);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.CloudDeployApi(mock).projects.locations.deliveryPipelines;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.setIamPolicy(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.CloudDeployApi(mock).projects.locations.deliveryPipelines;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildTestIamPermissionsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.testIamPermissions(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkTestIamPermissionsResponse(
        response as api.TestIamPermissionsResponse,
      );
    });
  });

  unittest.group(
    'resource-ProjectsLocationsDeliveryPipelinesAutomationRunsResource',
    () {
      unittest.test('method--cancel', () async {
        final mock = HttpServerMock();
        final res = api.CloudDeployApi(
          mock,
        ).projects.locations.deliveryPipelines.automationRuns;
        final arg_request = buildCancelAutomationRunRequest();
        final arg_name = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final obj = api.CancelAutomationRunRequest.fromJson(
              json as core.Map<core.String, core.dynamic>,
            );
            checkCancelAutomationRunRequest(obj);

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

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(
              buildCancelAutomationRunResponse(),
            );
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.cancel(
          arg_request,
          arg_name,
          $fields: arg_$fields,
        );
        checkCancelAutomationRunResponse(
          response as api.CancelAutomationRunResponse,
        );
      });

      unittest.test('method--get', () async {
        final mock = HttpServerMock();
        final res = api.CloudDeployApi(
          mock,
        ).projects.locations.deliveryPipelines.automationRuns;
        final arg_name = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
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

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(buildAutomationRun());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.get(arg_name, $fields: arg_$fields);
        checkAutomationRun(response as api.AutomationRun);
      });

      unittest.test('method--list', () async {
        final mock = HttpServerMock();
        final res = api.CloudDeployApi(
          mock,
        ).projects.locations.deliveryPipelines.automationRuns;
        final arg_parent = 'foo';
        final arg_filter = 'foo';
        final arg_orderBy = 'foo';
        final arg_pageSize = 42;
        final arg_pageToken = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
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

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(buildListAutomationRunsResponse());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.list(
          arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields,
        );
        checkListAutomationRunsResponse(
          response as api.ListAutomationRunsResponse,
        );
      });
    },
  );

  unittest.group('resource-ProjectsLocationsDeliveryPipelinesAutomationsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudDeployApi(
        mock,
      ).projects.locations.deliveryPipelines.automations;
      final arg_request = buildAutomation();
      final arg_parent = 'foo';
      final arg_automationId = 'foo';
      final arg_requestId = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Automation.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAutomation(obj);

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
            queryMap['automationId']!.first,
            unittest.equals(arg_automationId),
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        automationId: arg_automationId,
        requestId: arg_requestId,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudDeployApi(
        mock,
      ).projects.locations.deliveryPipelines.automations;
      final arg_name = 'foo';
      final arg_allowMissing = true;
      final arg_etag = 'foo';
      final arg_requestId = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            queryMap['allowMissing']!.first,
            unittest.equals('$arg_allowMissing'),
          );
          unittest.expect(queryMap['etag']!.first, unittest.equals(arg_etag));
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        allowMissing: arg_allowMissing,
        etag: arg_etag,
        requestId: arg_requestId,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudDeployApi(
        mock,
      ).projects.locations.deliveryPipelines.automations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildAutomation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkAutomation(response as api.Automation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudDeployApi(
        mock,
      ).projects.locations.deliveryPipelines.automations;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListAutomationsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListAutomationsResponse(response as api.ListAutomationsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CloudDeployApi(
        mock,
      ).projects.locations.deliveryPipelines.automations;
      final arg_request = buildAutomation();
      final arg_name = 'foo';
      final arg_allowMissing = true;
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Automation.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAutomation(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        allowMissing: arg_allowMissing,
        requestId: arg_requestId,
        updateMask: arg_updateMask,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsDeliveryPipelinesReleasesResource', () {
    unittest.test('method--abandon', () async {
      final mock = HttpServerMock();
      final res = api.CloudDeployApi(
        mock,
      ).projects.locations.deliveryPipelines.releases;
      final arg_request = buildAbandonReleaseRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AbandonReleaseRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAbandonReleaseRequest(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildAbandonReleaseResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.abandon(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkAbandonReleaseResponse(response as api.AbandonReleaseResponse);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudDeployApi(
        mock,
      ).projects.locations.deliveryPipelines.releases;
      final arg_request = buildRelease();
      final arg_parent = 'foo';
      final arg_overrideDeployPolicy = buildUnnamed118();
      final arg_releaseId = 'foo';
      final arg_requestId = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Release.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkRelease(obj);

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
            queryMap['overrideDeployPolicy']!,
            unittest.equals(arg_overrideDeployPolicy),
          );
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        overrideDeployPolicy: arg_overrideDeployPolicy,
        releaseId: arg_releaseId,
        requestId: arg_requestId,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudDeployApi(
        mock,
      ).projects.locations.deliveryPipelines.releases;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildRelease());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkRelease(response as api.Release);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudDeployApi(
        mock,
      ).projects.locations.deliveryPipelines.releases;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListReleasesResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListReleasesResponse(response as api.ListReleasesResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsDeliveryPipelinesReleasesRolloutsResource', () {
    unittest.test('method--advance', () async {
      final mock = HttpServerMock();
      final res = api.CloudDeployApi(
        mock,
      ).projects.locations.deliveryPipelines.releases.rollouts;
      final arg_request = buildAdvanceRolloutRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AdvanceRolloutRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAdvanceRolloutRequest(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildAdvanceRolloutResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.advance(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkAdvanceRolloutResponse(response as api.AdvanceRolloutResponse);
    });

    unittest.test('method--approve', () async {
      final mock = HttpServerMock();
      final res = api.CloudDeployApi(
        mock,
      ).projects.locations.deliveryPipelines.releases.rollouts;
      final arg_request = buildApproveRolloutRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ApproveRolloutRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkApproveRolloutRequest(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildApproveRolloutResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.approve(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkApproveRolloutResponse(response as api.ApproveRolloutResponse);
    });

    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.CloudDeployApi(
        mock,
      ).projects.locations.deliveryPipelines.releases.rollouts;
      final arg_request = buildCancelRolloutRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.CancelRolloutRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkCancelRolloutRequest(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildCancelRolloutResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.cancel(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkCancelRolloutResponse(response as api.CancelRolloutResponse);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudDeployApi(
        mock,
      ).projects.locations.deliveryPipelines.releases.rollouts;
      final arg_request = buildRollout();
      final arg_parent = 'foo';
      final arg_overrideDeployPolicy = buildUnnamed119();
      final arg_requestId = 'foo';
      final arg_rolloutId = 'foo';
      final arg_startingPhaseId = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Rollout.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkRollout(obj);

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
            queryMap['overrideDeployPolicy']!,
            unittest.equals(arg_overrideDeployPolicy),
          );
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        overrideDeployPolicy: arg_overrideDeployPolicy,
        requestId: arg_requestId,
        rolloutId: arg_rolloutId,
        startingPhaseId: arg_startingPhaseId,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudDeployApi(
        mock,
      ).projects.locations.deliveryPipelines.releases.rollouts;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildRollout());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkRollout(response as api.Rollout);
    });

    unittest.test('method--ignoreJob', () async {
      final mock = HttpServerMock();
      final res = api.CloudDeployApi(
        mock,
      ).projects.locations.deliveryPipelines.releases.rollouts;
      final arg_request = buildIgnoreJobRequest();
      final arg_rollout = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.IgnoreJobRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkIgnoreJobRequest(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildIgnoreJobResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.ignoreJob(
        arg_request,
        arg_rollout,
        $fields: arg_$fields,
      );
      checkIgnoreJobResponse(response as api.IgnoreJobResponse);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudDeployApi(
        mock,
      ).projects.locations.deliveryPipelines.releases.rollouts;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListRolloutsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListRolloutsResponse(response as api.ListRolloutsResponse);
    });

    unittest.test('method--retryJob', () async {
      final mock = HttpServerMock();
      final res = api.CloudDeployApi(
        mock,
      ).projects.locations.deliveryPipelines.releases.rollouts;
      final arg_request = buildRetryJobRequest();
      final arg_rollout = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.RetryJobRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkRetryJobRequest(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildRetryJobResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.retryJob(
        arg_request,
        arg_rollout,
        $fields: arg_$fields,
      );
      checkRetryJobResponse(response as api.RetryJobResponse);
    });
  });

  unittest.group(
    'resource-ProjectsLocationsDeliveryPipelinesReleasesRolloutsJobRunsResource',
    () {
      unittest.test('method--get', () async {
        final mock = HttpServerMock();
        final res = api.CloudDeployApi(
          mock,
        ).projects.locations.deliveryPipelines.releases.rollouts.jobRuns;
        final arg_name = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
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

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(buildJobRun());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.get(arg_name, $fields: arg_$fields);
        checkJobRun(response as api.JobRun);
      });

      unittest.test('method--list', () async {
        final mock = HttpServerMock();
        final res = api.CloudDeployApi(
          mock,
        ).projects.locations.deliveryPipelines.releases.rollouts.jobRuns;
        final arg_parent = 'foo';
        final arg_filter = 'foo';
        final arg_orderBy = 'foo';
        final arg_pageSize = 42;
        final arg_pageToken = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
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

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(buildListJobRunsResponse());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.list(
          arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields,
        );
        checkListJobRunsResponse(response as api.ListJobRunsResponse);
      });

      unittest.test('method--terminate', () async {
        final mock = HttpServerMock();
        final res = api.CloudDeployApi(
          mock,
        ).projects.locations.deliveryPipelines.releases.rollouts.jobRuns;
        final arg_request = buildTerminateJobRunRequest();
        final arg_name = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final obj = api.TerminateJobRunRequest.fromJson(
              json as core.Map<core.String, core.dynamic>,
            );
            checkTerminateJobRunRequest(obj);

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

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(buildTerminateJobRunResponse());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.terminate(
          arg_request,
          arg_name,
          $fields: arg_$fields,
        );
        checkTerminateJobRunResponse(response as api.TerminateJobRunResponse);
      });
    },
  );

  unittest.group('resource-ProjectsLocationsDeployPoliciesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudDeployApi(mock).projects.locations.deployPolicies;
      final arg_request = buildDeployPolicy();
      final arg_parent = 'foo';
      final arg_deployPolicyId = 'foo';
      final arg_requestId = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.DeployPolicy.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkDeployPolicy(obj);

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
            queryMap['deployPolicyId']!.first,
            unittest.equals(arg_deployPolicyId),
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        deployPolicyId: arg_deployPolicyId,
        requestId: arg_requestId,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudDeployApi(mock).projects.locations.deployPolicies;
      final arg_name = 'foo';
      final arg_allowMissing = true;
      final arg_etag = 'foo';
      final arg_requestId = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            queryMap['allowMissing']!.first,
            unittest.equals('$arg_allowMissing'),
          );
          unittest.expect(queryMap['etag']!.first, unittest.equals(arg_etag));
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        allowMissing: arg_allowMissing,
        etag: arg_etag,
        requestId: arg_requestId,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudDeployApi(mock).projects.locations.deployPolicies;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildDeployPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkDeployPolicy(response as api.DeployPolicy);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.CloudDeployApi(mock).projects.locations.deployPolicies;
      final arg_resource = 'foo';
      final arg_options_requestedPolicyVersion = 42;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getIamPolicy(
        arg_resource,
        options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudDeployApi(mock).projects.locations.deployPolicies;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListDeployPoliciesResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListDeployPoliciesResponse(
        response as api.ListDeployPoliciesResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CloudDeployApi(mock).projects.locations.deployPolicies;
      final arg_request = buildDeployPolicy();
      final arg_name = 'foo';
      final arg_allowMissing = true;
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.DeployPolicy.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkDeployPolicy(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        allowMissing: arg_allowMissing,
        requestId: arg_requestId,
        updateMask: arg_updateMask,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.CloudDeployApi(mock).projects.locations.deployPolicies;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.setIamPolicy(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });
  });

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.CloudDeployApi(mock).projects.locations.operations;
      final arg_request = buildCancelOperationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.CancelOperationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkCancelOperationRequest(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.cancel(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudDeployApi(mock).projects.locations.operations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudDeployApi(mock).projects.locations.operations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
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
      final arg_returnPartialSuccess = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            queryMap['returnPartialSuccess']!.first,
            unittest.equals('$arg_returnPartialSuccess'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListOperationsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_name,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        returnPartialSuccess: arg_returnPartialSuccess,
        $fields: arg_$fields,
      );
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
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Target.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkTarget(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        requestId: arg_requestId,
        targetId: arg_targetId,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
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
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            queryMap['allowMissing']!.first,
            unittest.equals('$arg_allowMissing'),
          );
          unittest.expect(queryMap['etag']!.first, unittest.equals(arg_etag));
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        allowMissing: arg_allowMissing,
        etag: arg_etag,
        requestId: arg_requestId,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudDeployApi(mock).projects.locations.targets;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildTarget());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkTarget(response as api.Target);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.CloudDeployApi(mock).projects.locations.targets;
      final arg_resource = 'foo';
      final arg_options_requestedPolicyVersion = 42;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getIamPolicy(
        arg_resource,
        options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
        $fields: arg_$fields,
      );
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
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListTargetsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
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
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Target.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkTarget(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        allowMissing: arg_allowMissing,
        requestId: arg_requestId,
        updateMask: arg_updateMask,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.CloudDeployApi(mock).projects.locations.targets;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.setIamPolicy(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.CloudDeployApi(mock).projects.locations.targets;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildTestIamPermissionsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.testIamPermissions(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkTestIamPermissionsResponse(
        response as api.TestIamPermissionsResponse,
      );
    });
  });
}
