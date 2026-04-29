// Copyright 2021 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

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

core.List<core.String> buildUnnamed2() => ['foo', 'foo'];

void checkUnnamed2(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed3() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed3(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterAlertPolicyCheck = 0;
api.AlertPolicyCheck buildAlertPolicyCheck() {
  final o = api.AlertPolicyCheck();
  buildCounterAlertPolicyCheck++;
  if (buildCounterAlertPolicyCheck < 3) {
    o.alertPolicies = buildUnnamed2();
    o.id = 'foo';
    o.labels = buildUnnamed3();
  }
  buildCounterAlertPolicyCheck--;
  return o;
}

void checkAlertPolicyCheck(api.AlertPolicyCheck o) {
  buildCounterAlertPolicyCheck++;
  if (buildCounterAlertPolicyCheck < 3) {
    checkUnnamed2(o.alertPolicies!);
    unittest.expect(o.id!, unittest.equals('foo'));
    checkUnnamed3(o.labels!);
  }
  buildCounterAlertPolicyCheck--;
}

core.List<core.String> buildUnnamed4() => ['foo', 'foo'];

void checkUnnamed4(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.FailedAlertPolicy> buildUnnamed5() => [
  buildFailedAlertPolicy(),
  buildFailedAlertPolicy(),
];

void checkUnnamed5(core.List<api.FailedAlertPolicy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFailedAlertPolicy(o[0]);
  checkFailedAlertPolicy(o[1]);
}

core.Map<core.String, core.String> buildUnnamed6() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed6(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterAlertPolicyCheckStatus = 0;
api.AlertPolicyCheckStatus buildAlertPolicyCheckStatus() {
  final o = api.AlertPolicyCheckStatus();
  buildCounterAlertPolicyCheckStatus++;
  if (buildCounterAlertPolicyCheckStatus < 3) {
    o.alertPolicies = buildUnnamed4();
    o.failedAlertPolicies = buildUnnamed5();
    o.failureMessage = 'foo';
    o.id = 'foo';
    o.labels = buildUnnamed6();
  }
  buildCounterAlertPolicyCheckStatus--;
  return o;
}

void checkAlertPolicyCheckStatus(api.AlertPolicyCheckStatus o) {
  buildCounterAlertPolicyCheckStatus++;
  if (buildCounterAlertPolicyCheckStatus < 3) {
    checkUnnamed4(o.alertPolicies!);
    checkUnnamed5(o.failedAlertPolicies!);
    unittest.expect(o.failureMessage!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
    checkUnnamed6(o.labels!);
  }
  buildCounterAlertPolicyCheckStatus--;
}

core.List<api.CustomCheck> buildUnnamed7() => [
  buildCustomCheck(),
  buildCustomCheck(),
];

void checkUnnamed7(core.List<api.CustomCheck> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomCheck(o[0]);
  checkCustomCheck(o[1]);
}

core.int buildCounterAnalysis = 0;
api.Analysis buildAnalysis() {
  final o = api.Analysis();
  buildCounterAnalysis++;
  if (buildCounterAnalysis < 3) {
    o.customChecks = buildUnnamed7();
    o.duration = 'foo';
    o.googleCloud = buildGoogleCloudAnalysis();
  }
  buildCounterAnalysis--;
  return o;
}

void checkAnalysis(api.Analysis o) {
  buildCounterAnalysis++;
  if (buildCounterAnalysis < 3) {
    checkUnnamed7(o.customChecks!);
    unittest.expect(o.duration!, unittest.equals('foo'));
    checkGoogleCloudAnalysis(o.googleCloud!);
  }
  buildCounterAnalysis--;
}

core.List<api.CustomCheck> buildUnnamed8() => [
  buildCustomCheck(),
  buildCustomCheck(),
];

void checkUnnamed8(core.List<api.CustomCheck> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomCheck(o[0]);
  checkCustomCheck(o[1]);
}

core.int buildCounterAnalysisJob = 0;
api.AnalysisJob buildAnalysisJob() {
  final o = api.AnalysisJob();
  buildCounterAnalysisJob++;
  if (buildCounterAnalysisJob < 3) {
    o.customChecks = buildUnnamed8();
    o.duration = 'foo';
    o.googleCloud = buildGoogleCloudAnalysis();
  }
  buildCounterAnalysisJob--;
  return o;
}

void checkAnalysisJob(api.AnalysisJob o) {
  buildCounterAnalysisJob++;
  if (buildCounterAnalysisJob < 3) {
    checkUnnamed8(o.customChecks!);
    unittest.expect(o.duration!, unittest.equals('foo'));
    checkGoogleCloudAnalysis(o.googleCloud!);
  }
  buildCounterAnalysisJob--;
}

core.List<api.AlertPolicyCheckStatus> buildUnnamed9() => [
  buildAlertPolicyCheckStatus(),
  buildAlertPolicyCheckStatus(),
];

void checkUnnamed9(core.List<api.AlertPolicyCheckStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAlertPolicyCheckStatus(o[0]);
  checkAlertPolicyCheckStatus(o[1]);
}

core.List<api.CustomCheckStatus> buildUnnamed10() => [
  buildCustomCheckStatus(),
  buildCustomCheckStatus(),
];

void checkUnnamed10(core.List<api.CustomCheckStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomCheckStatus(o[0]);
  checkCustomCheckStatus(o[1]);
}

core.int buildCounterAnalysisJobRun = 0;
api.AnalysisJobRun buildAnalysisJobRun() {
  final o = api.AnalysisJobRun();
  buildCounterAnalysisJobRun++;
  if (buildCounterAnalysisJobRun < 3) {
    o.alertPolicyAnalyses = buildUnnamed9();
    o.customCheckAnalyses = buildUnnamed10();
    o.failedCheckId = 'foo';
  }
  buildCounterAnalysisJobRun--;
  return o;
}

void checkAnalysisJobRun(api.AnalysisJobRun o) {
  buildCounterAnalysisJobRun++;
  if (buildCounterAnalysisJobRun < 3) {
    checkUnnamed9(o.alertPolicyAnalyses!);
    checkUnnamed10(o.customCheckAnalyses!);
    unittest.expect(o.failedCheckId!, unittest.equals('foo'));
  }
  buildCounterAnalysisJobRun--;
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

core.List<core.String> buildUnnamed11() => ['foo', 'foo'];

void checkUnnamed11(core.List<core.String> o) {
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
    o.overrideDeployPolicy = buildUnnamed11();
  }
  buildCounterApproveRolloutRequest--;
  return o;
}

void checkApproveRolloutRequest(api.ApproveRolloutRequest o) {
  buildCounterApproveRolloutRequest++;
  if (buildCounterApproveRolloutRequest < 3) {
    unittest.expect(o.approved!, unittest.isTrue);
    checkUnnamed11(o.overrideDeployPolicy!);
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

core.List<api.AnthosCluster> buildUnnamed12() => [
  buildAnthosCluster(),
  buildAnthosCluster(),
];

void checkUnnamed12(core.List<api.AnthosCluster> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAnthosCluster(o[0]);
  checkAnthosCluster(o[1]);
}

core.List<api.GkeCluster> buildUnnamed13() => [
  buildGkeCluster(),
  buildGkeCluster(),
];

void checkUnnamed13(core.List<api.GkeCluster> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGkeCluster(o[0]);
  checkGkeCluster(o[1]);
}

core.int buildCounterAssociatedEntities = 0;
api.AssociatedEntities buildAssociatedEntities() {
  final o = api.AssociatedEntities();
  buildCounterAssociatedEntities++;
  if (buildCounterAssociatedEntities < 3) {
    o.anthosClusters = buildUnnamed12();
    o.gkeClusters = buildUnnamed13();
  }
  buildCounterAssociatedEntities--;
  return o;
}

void checkAssociatedEntities(api.AssociatedEntities o) {
  buildCounterAssociatedEntities++;
  if (buildCounterAssociatedEntities < 3) {
    checkUnnamed12(o.anthosClusters!);
    checkUnnamed13(o.gkeClusters!);
  }
  buildCounterAssociatedEntities--;
}

core.List<api.AuditLogConfig> buildUnnamed14() => [
  buildAuditLogConfig(),
  buildAuditLogConfig(),
];

void checkUnnamed14(core.List<api.AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditLogConfig(o[0]);
  checkAuditLogConfig(o[1]);
}

core.int buildCounterAuditConfig = 0;
api.AuditConfig buildAuditConfig() {
  final o = api.AuditConfig();
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed14();
    o.service = 'foo';
  }
  buildCounterAuditConfig--;
  return o;
}

void checkAuditConfig(api.AuditConfig o) {
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    checkUnnamed14(o.auditLogConfigs!);
    unittest.expect(o.service!, unittest.equals('foo'));
  }
  buildCounterAuditConfig--;
}

core.List<core.String> buildUnnamed15() => ['foo', 'foo'];

void checkUnnamed15(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAuditLogConfig = 0;
api.AuditLogConfig buildAuditLogConfig() {
  final o = api.AuditLogConfig();
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    o.exemptedMembers = buildUnnamed15();
    o.logType = 'foo';
  }
  buildCounterAuditLogConfig--;
  return o;
}

void checkAuditLogConfig(api.AuditLogConfig o) {
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    checkUnnamed15(o.exemptedMembers!);
    unittest.expect(o.logType!, unittest.equals('foo'));
  }
  buildCounterAuditLogConfig--;
}

core.Map<core.String, core.String> buildUnnamed16() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed16(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed17() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed17(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<api.AutomationRule> buildUnnamed18() => [
  buildAutomationRule(),
  buildAutomationRule(),
];

void checkUnnamed18(core.List<api.AutomationRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAutomationRule(o[0]);
  checkAutomationRule(o[1]);
}

core.int buildCounterAutomation = 0;
api.Automation buildAutomation() {
  final o = api.Automation();
  buildCounterAutomation++;
  if (buildCounterAutomation < 3) {
    o.annotations = buildUnnamed16();
    o.createTime = 'foo';
    o.description = 'foo';
    o.etag = 'foo';
    o.labels = buildUnnamed17();
    o.name = 'foo';
    o.rules = buildUnnamed18();
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
    checkUnnamed16(o.annotations!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.etag!, unittest.equals('foo'));
    checkUnnamed17(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed18(o.rules!);
    checkAutomationResourceSelector(o.selector!);
    unittest.expect(o.serviceAccount!, unittest.equals('foo'));
    unittest.expect(o.suspended!, unittest.isTrue);
    unittest.expect(o.uid!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterAutomation--;
}

core.List<api.TargetAttribute> buildUnnamed19() => [
  buildTargetAttribute(),
  buildTargetAttribute(),
];

void checkUnnamed19(core.List<api.TargetAttribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTargetAttribute(o[0]);
  checkTargetAttribute(o[1]);
}

core.int buildCounterAutomationResourceSelector = 0;
api.AutomationResourceSelector buildAutomationResourceSelector() {
  final o = api.AutomationResourceSelector();
  buildCounterAutomationResourceSelector++;
  if (buildCounterAutomationResourceSelector < 3) {
    o.targets = buildUnnamed19();
  }
  buildCounterAutomationResourceSelector--;
  return o;
}

void checkAutomationResourceSelector(api.AutomationResourceSelector o) {
  buildCounterAutomationResourceSelector++;
  if (buildCounterAutomationResourceSelector < 3) {
    checkUnnamed19(o.targets!);
  }
  buildCounterAutomationResourceSelector--;
}

core.List<core.String> buildUnnamed20() => ['foo', 'foo'];

void checkUnnamed20(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed21() => ['foo', 'foo'];

void checkUnnamed21(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAutomationRolloutMetadata = 0;
api.AutomationRolloutMetadata buildAutomationRolloutMetadata() {
  final o = api.AutomationRolloutMetadata();
  buildCounterAutomationRolloutMetadata++;
  if (buildCounterAutomationRolloutMetadata < 3) {
    o.advanceAutomationRuns = buildUnnamed20();
    o.promoteAutomationRun = 'foo';
    o.repairAutomationRuns = buildUnnamed21();
  }
  buildCounterAutomationRolloutMetadata--;
  return o;
}

void checkAutomationRolloutMetadata(api.AutomationRolloutMetadata o) {
  buildCounterAutomationRolloutMetadata++;
  if (buildCounterAutomationRolloutMetadata < 3) {
    checkUnnamed20(o.advanceAutomationRuns!);
    unittest.expect(o.promoteAutomationRun!, unittest.equals('foo'));
    checkUnnamed21(o.repairAutomationRuns!);
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

core.List<core.String> buildUnnamed22() => ['foo', 'foo'];

void checkUnnamed22(core.List<core.String> o) {
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
    o.members = buildUnnamed22();
    o.role = 'foo';
  }
  buildCounterBinding--;
  return o;
}

void checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition!);
    checkUnnamed22(o.members!);
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

core.List<core.int> buildUnnamed23() => [42, 42];

void checkUnnamed23(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.int buildCounterCanaryDeployment = 0;
api.CanaryDeployment buildCanaryDeployment() {
  final o = api.CanaryDeployment();
  buildCounterCanaryDeployment++;
  if (buildCounterCanaryDeployment < 3) {
    o.analysis = buildAnalysis();
    o.percentages = buildUnnamed23();
    o.postdeploy = buildPostdeploy();
    o.predeploy = buildPredeploy();
    o.verify = true;
    o.verifyConfig = buildVerify();
  }
  buildCounterCanaryDeployment--;
  return o;
}

void checkCanaryDeployment(api.CanaryDeployment o) {
  buildCounterCanaryDeployment++;
  if (buildCounterCanaryDeployment < 3) {
    checkAnalysis(o.analysis!);
    checkUnnamed23(o.percentages!);
    checkPostdeploy(o.postdeploy!);
    checkPredeploy(o.predeploy!);
    unittest.expect(o.verify!, unittest.isTrue);
    checkVerify(o.verifyConfig!);
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

core.List<core.String> buildUnnamed24() => ['foo', 'foo'];

void checkUnnamed24(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCancelRolloutRequest = 0;
api.CancelRolloutRequest buildCancelRolloutRequest() {
  final o = api.CancelRolloutRequest();
  buildCounterCancelRolloutRequest++;
  if (buildCounterCancelRolloutRequest < 3) {
    o.overrideDeployPolicy = buildUnnamed24();
  }
  buildCounterCancelRolloutRequest--;
  return o;
}

void checkCancelRolloutRequest(api.CancelRolloutRequest o) {
  buildCounterCancelRolloutRequest++;
  if (buildCounterCancelRolloutRequest < 3) {
    checkUnnamed24(o.overrideDeployPolicy!);
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

core.List<api.Job> buildUnnamed25() => [buildJob(), buildJob()];

void checkUnnamed25(core.List<api.Job> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJob(o[0]);
  checkJob(o[1]);
}

core.List<api.Job> buildUnnamed26() => [buildJob(), buildJob()];

void checkUnnamed26(core.List<api.Job> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJob(o[0]);
  checkJob(o[1]);
}

core.int buildCounterChildRolloutJobs = 0;
api.ChildRolloutJobs buildChildRolloutJobs() {
  final o = api.ChildRolloutJobs();
  buildCounterChildRolloutJobs++;
  if (buildCounterChildRolloutJobs < 3) {
    o.advanceRolloutJobs = buildUnnamed25();
    o.createRolloutJobs = buildUnnamed26();
  }
  buildCounterChildRolloutJobs--;
  return o;
}

void checkChildRolloutJobs(api.ChildRolloutJobs o) {
  buildCounterChildRolloutJobs++;
  if (buildCounterChildRolloutJobs < 3) {
    checkUnnamed25(o.advanceRolloutJobs!);
    checkUnnamed26(o.createRolloutJobs!);
  }
  buildCounterChildRolloutJobs--;
}

core.List<core.String> buildUnnamed27() => ['foo', 'foo'];

void checkUnnamed27(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed28() => ['foo', 'foo'];

void checkUnnamed28(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed29() => ['foo', 'foo'];

void checkUnnamed29(core.List<core.String> o) {
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
    o.canaryRevisionTags = buildUnnamed27();
    o.priorRevisionTags = buildUnnamed28();
    o.stableRevisionTags = buildUnnamed29();
  }
  buildCounterCloudRunConfig--;
  return o;
}

void checkCloudRunConfig(api.CloudRunConfig o) {
  buildCounterCloudRunConfig++;
  if (buildCounterCloudRunConfig < 3) {
    unittest.expect(o.automaticTrafficControl!, unittest.isTrue);
    checkUnnamed27(o.canaryRevisionTags!);
    checkUnnamed28(o.priorRevisionTags!);
    checkUnnamed29(o.stableRevisionTags!);
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

core.List<core.String> buildUnnamed30() => ['foo', 'foo'];

void checkUnnamed30(core.List<core.String> o) {
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
    o.previousRevision = 'foo';
    o.revision = 'foo';
    o.service = 'foo';
    o.serviceUrls = buildUnnamed30();
    o.workerPool = 'foo';
  }
  buildCounterCloudRunMetadata--;
  return o;
}

void checkCloudRunMetadata(api.CloudRunMetadata o) {
  buildCounterCloudRunMetadata++;
  if (buildCounterCloudRunMetadata < 3) {
    unittest.expect(o.job!, unittest.equals('foo'));
    unittest.expect(o.previousRevision!, unittest.equals('foo'));
    unittest.expect(o.revision!, unittest.equals('foo'));
    unittest.expect(o.service!, unittest.equals('foo'));
    checkUnnamed30(o.serviceUrls!);
    unittest.expect(o.workerPool!, unittest.equals('foo'));
  }
  buildCounterCloudRunMetadata--;
}

core.int buildCounterCloudRunRenderMetadata = 0;
api.CloudRunRenderMetadata buildCloudRunRenderMetadata() {
  final o = api.CloudRunRenderMetadata();
  buildCounterCloudRunRenderMetadata++;
  if (buildCounterCloudRunRenderMetadata < 3) {
    o.job = 'foo';
    o.revision = 'foo';
    o.service = 'foo';
    o.workerPool = 'foo';
  }
  buildCounterCloudRunRenderMetadata--;
  return o;
}

void checkCloudRunRenderMetadata(api.CloudRunRenderMetadata o) {
  buildCounterCloudRunRenderMetadata++;
  if (buildCounterCloudRunRenderMetadata < 3) {
    unittest.expect(o.job!, unittest.equals('foo'));
    unittest.expect(o.revision!, unittest.equals('foo'));
    unittest.expect(o.service!, unittest.equals('foo'));
    unittest.expect(o.workerPool!, unittest.equals('foo'));
  }
  buildCounterCloudRunRenderMetadata--;
}

core.List<api.SkaffoldVersion> buildUnnamed31() => [
  buildSkaffoldVersion(),
  buildSkaffoldVersion(),
];

void checkUnnamed31(core.List<api.SkaffoldVersion> o) {
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
    o.supportedVersions = buildUnnamed31();
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
    checkUnnamed31(o.supportedVersions!);
  }
  buildCounterConfig--;
}

core.List<core.String> buildUnnamed32() => ['foo', 'foo'];

void checkUnnamed32(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed33() => ['foo', 'foo'];

void checkUnnamed33(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed34() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed34(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterContainerTask = 0;
api.ContainerTask buildContainerTask() {
  final o = api.ContainerTask();
  buildCounterContainerTask++;
  if (buildCounterContainerTask < 3) {
    o.args = buildUnnamed32();
    o.command = buildUnnamed33();
    o.env = buildUnnamed34();
    o.image = 'foo';
  }
  buildCounterContainerTask--;
  return o;
}

void checkContainerTask(api.ContainerTask o) {
  buildCounterContainerTask++;
  if (buildCounterContainerTask < 3) {
    checkUnnamed32(o.args!);
    checkUnnamed33(o.command!);
    checkUnnamed34(o.env!);
    unittest.expect(o.image!, unittest.equals('foo'));
  }
  buildCounterContainerTask--;
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

core.List<api.PhaseConfig> buildUnnamed35() => [
  buildPhaseConfig(),
  buildPhaseConfig(),
];

void checkUnnamed35(core.List<api.PhaseConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPhaseConfig(o[0]);
  checkPhaseConfig(o[1]);
}

core.int buildCounterCustomCanaryDeployment = 0;
api.CustomCanaryDeployment buildCustomCanaryDeployment() {
  final o = api.CustomCanaryDeployment();
  buildCounterCustomCanaryDeployment++;
  if (buildCounterCustomCanaryDeployment < 3) {
    o.phaseConfigs = buildUnnamed35();
  }
  buildCounterCustomCanaryDeployment--;
  return o;
}

void checkCustomCanaryDeployment(api.CustomCanaryDeployment o) {
  buildCounterCustomCanaryDeployment++;
  if (buildCounterCustomCanaryDeployment < 3) {
    checkUnnamed35(o.phaseConfigs!);
  }
  buildCounterCustomCanaryDeployment--;
}

core.int buildCounterCustomCheck = 0;
api.CustomCheck buildCustomCheck() {
  final o = api.CustomCheck();
  buildCounterCustomCheck++;
  if (buildCounterCustomCheck < 3) {
    o.frequency = 'foo';
    o.id = 'foo';
    o.task = buildTask();
  }
  buildCounterCustomCheck--;
  return o;
}

void checkCustomCheck(api.CustomCheck o) {
  buildCounterCustomCheck++;
  if (buildCounterCustomCheck < 3) {
    unittest.expect(o.frequency!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
    checkTask(o.task!);
  }
  buildCounterCustomCheck--;
}

core.int buildCounterCustomCheckStatus = 0;
api.CustomCheckStatus buildCustomCheckStatus() {
  final o = api.CustomCheckStatus();
  buildCounterCustomCheckStatus++;
  if (buildCounterCustomCheckStatus < 3) {
    o.failureCause = 'foo';
    o.failureMessage = 'foo';
    o.frequency = 'foo';
    o.id = 'foo';
    o.latestBuild = 'foo';
    o.metadata = buildCustomMetadata();
    o.task = buildTask();
  }
  buildCounterCustomCheckStatus--;
  return o;
}

void checkCustomCheckStatus(api.CustomCheckStatus o) {
  buildCounterCustomCheckStatus++;
  if (buildCounterCustomCheckStatus < 3) {
    unittest.expect(o.failureCause!, unittest.equals('foo'));
    unittest.expect(o.failureMessage!, unittest.equals('foo'));
    unittest.expect(o.frequency!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.latestBuild!, unittest.equals('foo'));
    checkCustomMetadata(o.metadata!);
    checkTask(o.task!);
  }
  buildCounterCustomCheckStatus--;
}

core.Map<core.String, core.String> buildUnnamed36() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed36(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterCustomMetadata = 0;
api.CustomMetadata buildCustomMetadata() {
  final o = api.CustomMetadata();
  buildCounterCustomMetadata++;
  if (buildCounterCustomMetadata < 3) {
    o.values = buildUnnamed36();
  }
  buildCounterCustomMetadata--;
  return o;
}

void checkCustomMetadata(api.CustomMetadata o) {
  buildCounterCustomMetadata++;
  if (buildCounterCustomMetadata < 3) {
    checkUnnamed36(o.values!);
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

core.List<api.SkaffoldModules> buildUnnamed37() => [
  buildSkaffoldModules(),
  buildSkaffoldModules(),
];

void checkUnnamed37(core.List<api.SkaffoldModules> o) {
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
    o.includeSkaffoldModules = buildUnnamed37();
    o.renderAction = 'foo';
  }
  buildCounterCustomTargetSkaffoldActions--;
  return o;
}

void checkCustomTargetSkaffoldActions(api.CustomTargetSkaffoldActions o) {
  buildCounterCustomTargetSkaffoldActions++;
  if (buildCounterCustomTargetSkaffoldActions < 3) {
    unittest.expect(o.deployAction!, unittest.equals('foo'));
    checkUnnamed37(o.includeSkaffoldModules!);
    unittest.expect(o.renderAction!, unittest.equals('foo'));
  }
  buildCounterCustomTargetSkaffoldActions--;
}

core.int buildCounterCustomTargetTasks = 0;
api.CustomTargetTasks buildCustomTargetTasks() {
  final o = api.CustomTargetTasks();
  buildCounterCustomTargetTasks++;
  if (buildCounterCustomTargetTasks < 3) {
    o.deploy = buildTask();
    o.render = buildTask();
  }
  buildCounterCustomTargetTasks--;
  return o;
}

void checkCustomTargetTasks(api.CustomTargetTasks o) {
  buildCounterCustomTargetTasks++;
  if (buildCounterCustomTargetTasks < 3) {
    checkTask(o.deploy!);
    checkTask(o.render!);
  }
  buildCounterCustomTargetTasks--;
}

core.Map<core.String, core.String> buildUnnamed38() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed38(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed39() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed39(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterCustomTargetType = 0;
api.CustomTargetType buildCustomTargetType() {
  final o = api.CustomTargetType();
  buildCounterCustomTargetType++;
  if (buildCounterCustomTargetType < 3) {
    o.annotations = buildUnnamed38();
    o.createTime = 'foo';
    o.customActions = buildCustomTargetSkaffoldActions();
    o.customTargetTypeId = 'foo';
    o.description = 'foo';
    o.etag = 'foo';
    o.labels = buildUnnamed39();
    o.name = 'foo';
    o.tasks = buildCustomTargetTasks();
    o.uid = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterCustomTargetType--;
  return o;
}

void checkCustomTargetType(api.CustomTargetType o) {
  buildCounterCustomTargetType++;
  if (buildCounterCustomTargetType < 3) {
    checkUnnamed38(o.annotations!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkCustomTargetSkaffoldActions(o.customActions!);
    unittest.expect(o.customTargetTypeId!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.etag!, unittest.equals('foo'));
    checkUnnamed39(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkCustomTargetTasks(o.tasks!);
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

core.Map<core.String, core.String> buildUnnamed40() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed40(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed41() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed41(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterDeliveryPipeline = 0;
api.DeliveryPipeline buildDeliveryPipeline() {
  final o = api.DeliveryPipeline();
  buildCounterDeliveryPipeline++;
  if (buildCounterDeliveryPipeline < 3) {
    o.annotations = buildUnnamed40();
    o.condition = buildPipelineCondition();
    o.createTime = 'foo';
    o.description = 'foo';
    o.etag = 'foo';
    o.labels = buildUnnamed41();
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
    checkUnnamed40(o.annotations!);
    checkPipelineCondition(o.condition!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.etag!, unittest.equals('foo'));
    checkUnnamed41(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkSerialPipeline(o.serialPipeline!);
    unittest.expect(o.suspended!, unittest.isTrue);
    unittest.expect(o.uid!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterDeliveryPipeline--;
}

core.Map<core.String, core.String> buildUnnamed42() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed42(core.Map<core.String, core.String> o) {
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
    o.labels = buildUnnamed42();
  }
  buildCounterDeliveryPipelineAttribute--;
  return o;
}

void checkDeliveryPipelineAttribute(api.DeliveryPipelineAttribute o) {
  buildCounterDeliveryPipelineAttribute++;
  if (buildCounterDeliveryPipelineAttribute < 3) {
    unittest.expect(o.id!, unittest.equals('foo'));
    checkUnnamed42(o.labels!);
  }
  buildCounterDeliveryPipelineAttribute--;
}

core.List<core.String> buildUnnamed43() => ['foo', 'foo'];

void checkUnnamed43(core.List<core.String> o) {
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
    o.manifestPaths = buildUnnamed43();
  }
  buildCounterDeployArtifact--;
  return o;
}

void checkDeployArtifact(api.DeployArtifact o) {
  buildCounterDeployArtifact++;
  if (buildCounterDeployArtifact < 3) {
    unittest.expect(o.artifactUri!, unittest.equals('foo'));
    checkUnnamed43(o.manifestPaths!);
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

core.Map<core.String, core.String> buildUnnamed44() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed44(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed45() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed45(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterDeployParameters = 0;
api.DeployParameters buildDeployParameters() {
  final o = api.DeployParameters();
  buildCounterDeployParameters++;
  if (buildCounterDeployParameters < 3) {
    o.matchTargetLabels = buildUnnamed44();
    o.values = buildUnnamed45();
  }
  buildCounterDeployParameters--;
  return o;
}

void checkDeployParameters(api.DeployParameters o) {
  buildCounterDeployParameters++;
  if (buildCounterDeployParameters < 3) {
    checkUnnamed44(o.matchTargetLabels!);
    checkUnnamed45(o.values!);
  }
  buildCounterDeployParameters--;
}

core.Map<core.String, core.String> buildUnnamed46() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed46(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed47() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed47(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<api.PolicyRule> buildUnnamed48() => [
  buildPolicyRule(),
  buildPolicyRule(),
];

void checkUnnamed48(core.List<api.PolicyRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPolicyRule(o[0]);
  checkPolicyRule(o[1]);
}

core.List<api.DeployPolicyResourceSelector> buildUnnamed49() => [
  buildDeployPolicyResourceSelector(),
  buildDeployPolicyResourceSelector(),
];

void checkUnnamed49(core.List<api.DeployPolicyResourceSelector> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeployPolicyResourceSelector(o[0]);
  checkDeployPolicyResourceSelector(o[1]);
}

core.int buildCounterDeployPolicy = 0;
api.DeployPolicy buildDeployPolicy() {
  final o = api.DeployPolicy();
  buildCounterDeployPolicy++;
  if (buildCounterDeployPolicy < 3) {
    o.annotations = buildUnnamed46();
    o.createTime = 'foo';
    o.description = 'foo';
    o.etag = 'foo';
    o.labels = buildUnnamed47();
    o.name = 'foo';
    o.rules = buildUnnamed48();
    o.selectors = buildUnnamed49();
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
    checkUnnamed46(o.annotations!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.etag!, unittest.equals('foo'));
    checkUnnamed47(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed48(o.rules!);
    checkUnnamed49(o.selectors!);
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
    o.analysisJob = buildJob();
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
    checkJob(o.analysisJob!);
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

core.List<core.String> buildUnnamed50() => ['foo', 'foo'];

void checkUnnamed50(core.List<core.String> o) {
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
    o.usages = buildUnnamed50();
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
    checkUnnamed50(o.usages!);
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

core.List<core.String> buildUnnamed51() => ['foo', 'foo'];

void checkUnnamed51(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterFailedAlertPolicy = 0;
api.FailedAlertPolicy buildFailedAlertPolicy() {
  final o = api.FailedAlertPolicy();
  buildCounterFailedAlertPolicy++;
  if (buildCounterFailedAlertPolicy < 3) {
    o.alertPolicy = 'foo';
    o.alerts = buildUnnamed51();
  }
  buildCounterFailedAlertPolicy--;
  return o;
}

void checkFailedAlertPolicy(api.FailedAlertPolicy o) {
  buildCounterFailedAlertPolicy++;
  if (buildCounterFailedAlertPolicy < 3) {
    unittest.expect(o.alertPolicy!, unittest.equals('foo'));
    checkUnnamed51(o.alerts!);
  }
  buildCounterFailedAlertPolicy--;
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

core.List<api.AlertPolicyCheck> buildUnnamed52() => [
  buildAlertPolicyCheck(),
  buildAlertPolicyCheck(),
];

void checkUnnamed52(core.List<api.AlertPolicyCheck> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAlertPolicyCheck(o[0]);
  checkAlertPolicyCheck(o[1]);
}

core.int buildCounterGoogleCloudAnalysis = 0;
api.GoogleCloudAnalysis buildGoogleCloudAnalysis() {
  final o = api.GoogleCloudAnalysis();
  buildCounterGoogleCloudAnalysis++;
  if (buildCounterGoogleCloudAnalysis < 3) {
    o.alertPolicyChecks = buildUnnamed52();
  }
  buildCounterGoogleCloudAnalysis--;
  return o;
}

void checkGoogleCloudAnalysis(api.GoogleCloudAnalysis o) {
  buildCounterGoogleCloudAnalysis++;
  if (buildCounterGoogleCloudAnalysis < 3) {
    checkUnnamed52(o.alertPolicyChecks!);
  }
  buildCounterGoogleCloudAnalysis--;
}

core.List<core.String> buildUnnamed53() => ['foo', 'foo'];

void checkUnnamed53(core.List<core.String> o) {
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
    o.overrideDeployPolicy = buildUnnamed53();
    o.phaseId = 'foo';
  }
  buildCounterIgnoreJobRequest--;
  return o;
}

void checkIgnoreJobRequest(api.IgnoreJobRequest o) {
  buildCounterIgnoreJobRequest++;
  if (buildCounterIgnoreJobRequest < 3) {
    unittest.expect(o.jobId!, unittest.equals('foo'));
    checkUnnamed53(o.overrideDeployPolicy!);
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
    o.analysisJob = buildAnalysisJob();
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
    checkAnalysisJob(o.analysisJob!);
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
    o.analysisJobRun = buildAnalysisJobRun();
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
    checkAnalysisJobRun(o.analysisJobRun!);
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

core.int buildCounterKubernetesRenderMetadata = 0;
api.KubernetesRenderMetadata buildKubernetesRenderMetadata() {
  final o = api.KubernetesRenderMetadata();
  buildCounterKubernetesRenderMetadata++;
  if (buildCounterKubernetesRenderMetadata < 3) {
    o.canaryDeployment = 'foo';
    o.deployment = 'foo';
    o.kubernetesNamespace = 'foo';
  }
  buildCounterKubernetesRenderMetadata--;
  return o;
}

void checkKubernetesRenderMetadata(api.KubernetesRenderMetadata o) {
  buildCounterKubernetesRenderMetadata++;
  if (buildCounterKubernetesRenderMetadata < 3) {
    unittest.expect(o.canaryDeployment!, unittest.equals('foo'));
    unittest.expect(o.deployment!, unittest.equals('foo'));
    unittest.expect(o.kubernetesNamespace!, unittest.equals('foo'));
  }
  buildCounterKubernetesRenderMetadata--;
}

core.List<api.AutomationRun> buildUnnamed54() => [
  buildAutomationRun(),
  buildAutomationRun(),
];

void checkUnnamed54(core.List<api.AutomationRun> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAutomationRun(o[0]);
  checkAutomationRun(o[1]);
}

core.List<core.String> buildUnnamed55() => ['foo', 'foo'];

void checkUnnamed55(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListAutomationRunsResponse = 0;
api.ListAutomationRunsResponse buildListAutomationRunsResponse() {
  final o = api.ListAutomationRunsResponse();
  buildCounterListAutomationRunsResponse++;
  if (buildCounterListAutomationRunsResponse < 3) {
    o.automationRuns = buildUnnamed54();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed55();
  }
  buildCounterListAutomationRunsResponse--;
  return o;
}

void checkListAutomationRunsResponse(api.ListAutomationRunsResponse o) {
  buildCounterListAutomationRunsResponse++;
  if (buildCounterListAutomationRunsResponse < 3) {
    checkUnnamed54(o.automationRuns!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed55(o.unreachable!);
  }
  buildCounterListAutomationRunsResponse--;
}

core.List<api.Automation> buildUnnamed56() => [
  buildAutomation(),
  buildAutomation(),
];

void checkUnnamed56(core.List<api.Automation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAutomation(o[0]);
  checkAutomation(o[1]);
}

core.List<core.String> buildUnnamed57() => ['foo', 'foo'];

void checkUnnamed57(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListAutomationsResponse = 0;
api.ListAutomationsResponse buildListAutomationsResponse() {
  final o = api.ListAutomationsResponse();
  buildCounterListAutomationsResponse++;
  if (buildCounterListAutomationsResponse < 3) {
    o.automations = buildUnnamed56();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed57();
  }
  buildCounterListAutomationsResponse--;
  return o;
}

void checkListAutomationsResponse(api.ListAutomationsResponse o) {
  buildCounterListAutomationsResponse++;
  if (buildCounterListAutomationsResponse < 3) {
    checkUnnamed56(o.automations!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed57(o.unreachable!);
  }
  buildCounterListAutomationsResponse--;
}

core.List<api.CustomTargetType> buildUnnamed58() => [
  buildCustomTargetType(),
  buildCustomTargetType(),
];

void checkUnnamed58(core.List<api.CustomTargetType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomTargetType(o[0]);
  checkCustomTargetType(o[1]);
}

core.List<core.String> buildUnnamed59() => ['foo', 'foo'];

void checkUnnamed59(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListCustomTargetTypesResponse = 0;
api.ListCustomTargetTypesResponse buildListCustomTargetTypesResponse() {
  final o = api.ListCustomTargetTypesResponse();
  buildCounterListCustomTargetTypesResponse++;
  if (buildCounterListCustomTargetTypesResponse < 3) {
    o.customTargetTypes = buildUnnamed58();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed59();
  }
  buildCounterListCustomTargetTypesResponse--;
  return o;
}

void checkListCustomTargetTypesResponse(api.ListCustomTargetTypesResponse o) {
  buildCounterListCustomTargetTypesResponse++;
  if (buildCounterListCustomTargetTypesResponse < 3) {
    checkUnnamed58(o.customTargetTypes!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed59(o.unreachable!);
  }
  buildCounterListCustomTargetTypesResponse--;
}

core.List<api.DeliveryPipeline> buildUnnamed60() => [
  buildDeliveryPipeline(),
  buildDeliveryPipeline(),
];

void checkUnnamed60(core.List<api.DeliveryPipeline> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeliveryPipeline(o[0]);
  checkDeliveryPipeline(o[1]);
}

core.List<core.String> buildUnnamed61() => ['foo', 'foo'];

void checkUnnamed61(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListDeliveryPipelinesResponse = 0;
api.ListDeliveryPipelinesResponse buildListDeliveryPipelinesResponse() {
  final o = api.ListDeliveryPipelinesResponse();
  buildCounterListDeliveryPipelinesResponse++;
  if (buildCounterListDeliveryPipelinesResponse < 3) {
    o.deliveryPipelines = buildUnnamed60();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed61();
  }
  buildCounterListDeliveryPipelinesResponse--;
  return o;
}

void checkListDeliveryPipelinesResponse(api.ListDeliveryPipelinesResponse o) {
  buildCounterListDeliveryPipelinesResponse++;
  if (buildCounterListDeliveryPipelinesResponse < 3) {
    checkUnnamed60(o.deliveryPipelines!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed61(o.unreachable!);
  }
  buildCounterListDeliveryPipelinesResponse--;
}

core.List<api.DeployPolicy> buildUnnamed62() => [
  buildDeployPolicy(),
  buildDeployPolicy(),
];

void checkUnnamed62(core.List<api.DeployPolicy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeployPolicy(o[0]);
  checkDeployPolicy(o[1]);
}

core.List<core.String> buildUnnamed63() => ['foo', 'foo'];

void checkUnnamed63(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListDeployPoliciesResponse = 0;
api.ListDeployPoliciesResponse buildListDeployPoliciesResponse() {
  final o = api.ListDeployPoliciesResponse();
  buildCounterListDeployPoliciesResponse++;
  if (buildCounterListDeployPoliciesResponse < 3) {
    o.deployPolicies = buildUnnamed62();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed63();
  }
  buildCounterListDeployPoliciesResponse--;
  return o;
}

void checkListDeployPoliciesResponse(api.ListDeployPoliciesResponse o) {
  buildCounterListDeployPoliciesResponse++;
  if (buildCounterListDeployPoliciesResponse < 3) {
    checkUnnamed62(o.deployPolicies!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed63(o.unreachable!);
  }
  buildCounterListDeployPoliciesResponse--;
}

core.List<api.JobRun> buildUnnamed64() => [buildJobRun(), buildJobRun()];

void checkUnnamed64(core.List<api.JobRun> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJobRun(o[0]);
  checkJobRun(o[1]);
}

core.List<core.String> buildUnnamed65() => ['foo', 'foo'];

void checkUnnamed65(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListJobRunsResponse = 0;
api.ListJobRunsResponse buildListJobRunsResponse() {
  final o = api.ListJobRunsResponse();
  buildCounterListJobRunsResponse++;
  if (buildCounterListJobRunsResponse < 3) {
    o.jobRuns = buildUnnamed64();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed65();
  }
  buildCounterListJobRunsResponse--;
  return o;
}

void checkListJobRunsResponse(api.ListJobRunsResponse o) {
  buildCounterListJobRunsResponse++;
  if (buildCounterListJobRunsResponse < 3) {
    checkUnnamed64(o.jobRuns!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed65(o.unreachable!);
  }
  buildCounterListJobRunsResponse--;
}

core.List<api.Location> buildUnnamed66() => [buildLocation(), buildLocation()];

void checkUnnamed66(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  final o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed66();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed66(o.locations!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListLocationsResponse--;
}

core.List<api.Operation> buildUnnamed67() => [
  buildOperation(),
  buildOperation(),
];

void checkUnnamed67(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0]);
  checkOperation(o[1]);
}

core.List<core.String> buildUnnamed68() => ['foo', 'foo'];

void checkUnnamed68(core.List<core.String> o) {
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
    o.operations = buildUnnamed67();
    o.unreachable = buildUnnamed68();
  }
  buildCounterListOperationsResponse--;
  return o;
}

void checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed67(o.operations!);
    checkUnnamed68(o.unreachable!);
  }
  buildCounterListOperationsResponse--;
}

core.List<api.Release> buildUnnamed69() => [buildRelease(), buildRelease()];

void checkUnnamed69(core.List<api.Release> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRelease(o[0]);
  checkRelease(o[1]);
}

core.List<core.String> buildUnnamed70() => ['foo', 'foo'];

void checkUnnamed70(core.List<core.String> o) {
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
    o.releases = buildUnnamed69();
    o.unreachable = buildUnnamed70();
  }
  buildCounterListReleasesResponse--;
  return o;
}

void checkListReleasesResponse(api.ListReleasesResponse o) {
  buildCounterListReleasesResponse++;
  if (buildCounterListReleasesResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed69(o.releases!);
    checkUnnamed70(o.unreachable!);
  }
  buildCounterListReleasesResponse--;
}

core.List<api.Rollout> buildUnnamed71() => [buildRollout(), buildRollout()];

void checkUnnamed71(core.List<api.Rollout> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRollout(o[0]);
  checkRollout(o[1]);
}

core.List<core.String> buildUnnamed72() => ['foo', 'foo'];

void checkUnnamed72(core.List<core.String> o) {
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
    o.rollouts = buildUnnamed71();
    o.unreachable = buildUnnamed72();
  }
  buildCounterListRolloutsResponse--;
  return o;
}

void checkListRolloutsResponse(api.ListRolloutsResponse o) {
  buildCounterListRolloutsResponse++;
  if (buildCounterListRolloutsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed71(o.rollouts!);
    checkUnnamed72(o.unreachable!);
  }
  buildCounterListRolloutsResponse--;
}

core.List<api.Target> buildUnnamed73() => [buildTarget(), buildTarget()];

void checkUnnamed73(core.List<api.Target> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTarget(o[0]);
  checkTarget(o[1]);
}

core.List<core.String> buildUnnamed74() => ['foo', 'foo'];

void checkUnnamed74(core.List<core.String> o) {
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
    o.targets = buildUnnamed73();
    o.unreachable = buildUnnamed74();
  }
  buildCounterListTargetsResponse--;
  return o;
}

void checkListTargetsResponse(api.ListTargetsResponse o) {
  buildCounterListTargetsResponse++;
  if (buildCounterListTargetsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed73(o.targets!);
    checkUnnamed74(o.unreachable!);
  }
  buildCounterListTargetsResponse--;
}

core.Map<core.String, core.String> buildUnnamed75() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed75(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.Object?> buildUnnamed76() => {
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

void checkUnnamed76(core.Map<core.String, core.Object?> o) {
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
    o.labels = buildUnnamed75();
    o.locationId = 'foo';
    o.metadata = buildUnnamed76();
    o.name = 'foo';
  }
  buildCounterLocation--;
  return o;
}

void checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkUnnamed75(o.labels!);
    unittest.expect(o.locationId!, unittest.equals('foo'));
    checkUnnamed76(o.metadata!);
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

core.List<core.String> buildUnnamed77() => ['foo', 'foo'];

void checkUnnamed77(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterMultiTarget = 0;
api.MultiTarget buildMultiTarget() {
  final o = api.MultiTarget();
  buildCounterMultiTarget++;
  if (buildCounterMultiTarget < 3) {
    o.targetIds = buildUnnamed77();
  }
  buildCounterMultiTarget--;
  return o;
}

void checkMultiTarget(api.MultiTarget o) {
  buildCounterMultiTarget++;
  if (buildCounterMultiTarget < 3) {
    checkUnnamed77(o.targetIds!);
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

core.Map<core.String, core.Object?> buildUnnamed78() => {
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

void checkUnnamed78(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed79() => {
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

void checkUnnamed79(core.Map<core.String, core.Object?> o) {
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
    o.metadata = buildUnnamed78();
    o.name = 'foo';
    o.response = buildUnnamed79();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed78(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed79(o.response!);
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

core.List<core.String> buildUnnamed80() => ['foo', 'foo'];

void checkUnnamed80(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPhaseConfig = 0;
api.PhaseConfig buildPhaseConfig() {
  final o = api.PhaseConfig();
  buildCounterPhaseConfig++;
  if (buildCounterPhaseConfig < 3) {
    o.analysis = buildAnalysis();
    o.percentage = 42;
    o.phaseId = 'foo';
    o.postdeploy = buildPostdeploy();
    o.predeploy = buildPredeploy();
    o.profiles = buildUnnamed80();
    o.verify = true;
    o.verifyConfig = buildVerify();
  }
  buildCounterPhaseConfig--;
  return o;
}

void checkPhaseConfig(api.PhaseConfig o) {
  buildCounterPhaseConfig++;
  if (buildCounterPhaseConfig < 3) {
    checkAnalysis(o.analysis!);
    unittest.expect(o.percentage!, unittest.equals(42));
    unittest.expect(o.phaseId!, unittest.equals('foo'));
    checkPostdeploy(o.postdeploy!);
    checkPredeploy(o.predeploy!);
    checkUnnamed80(o.profiles!);
    unittest.expect(o.verify!, unittest.isTrue);
    checkVerify(o.verifyConfig!);
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

core.List<api.AuditConfig> buildUnnamed81() => [
  buildAuditConfig(),
  buildAuditConfig(),
];

void checkUnnamed81(core.List<api.AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditConfig(o[0]);
  checkAuditConfig(o[1]);
}

core.List<api.Binding> buildUnnamed82() => [buildBinding(), buildBinding()];

void checkUnnamed82(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  final o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.auditConfigs = buildUnnamed81();
    o.bindings = buildUnnamed82();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed81(o.auditConfigs!);
    checkUnnamed82(o.bindings!);
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

core.List<api.PolicyViolationDetails> buildUnnamed83() => [
  buildPolicyViolationDetails(),
  buildPolicyViolationDetails(),
];

void checkUnnamed83(core.List<api.PolicyViolationDetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPolicyViolationDetails(o[0]);
  checkPolicyViolationDetails(o[1]);
}

core.int buildCounterPolicyViolation = 0;
api.PolicyViolation buildPolicyViolation() {
  final o = api.PolicyViolation();
  buildCounterPolicyViolation++;
  if (buildCounterPolicyViolation < 3) {
    o.policyViolationDetails = buildUnnamed83();
  }
  buildCounterPolicyViolation--;
  return o;
}

void checkPolicyViolation(api.PolicyViolation o) {
  buildCounterPolicyViolation++;
  if (buildCounterPolicyViolation < 3) {
    checkUnnamed83(o.policyViolationDetails!);
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

core.List<core.String> buildUnnamed84() => ['foo', 'foo'];

void checkUnnamed84(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.Task> buildUnnamed85() => [buildTask(), buildTask()];

void checkUnnamed85(core.List<api.Task> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTask(o[0]);
  checkTask(o[1]);
}

core.int buildCounterPostdeploy = 0;
api.Postdeploy buildPostdeploy() {
  final o = api.Postdeploy();
  buildCounterPostdeploy++;
  if (buildCounterPostdeploy < 3) {
    o.actions = buildUnnamed84();
    o.tasks = buildUnnamed85();
  }
  buildCounterPostdeploy--;
  return o;
}

void checkPostdeploy(api.Postdeploy o) {
  buildCounterPostdeploy++;
  if (buildCounterPostdeploy < 3) {
    checkUnnamed84(o.actions!);
    checkUnnamed85(o.tasks!);
  }
  buildCounterPostdeploy--;
}

core.List<core.String> buildUnnamed86() => ['foo', 'foo'];

void checkUnnamed86(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.Task> buildUnnamed87() => [buildTask(), buildTask()];

void checkUnnamed87(core.List<api.Task> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTask(o[0]);
  checkTask(o[1]);
}

core.int buildCounterPostdeployJob = 0;
api.PostdeployJob buildPostdeployJob() {
  final o = api.PostdeployJob();
  buildCounterPostdeployJob++;
  if (buildCounterPostdeployJob < 3) {
    o.actions = buildUnnamed86();
    o.tasks = buildUnnamed87();
  }
  buildCounterPostdeployJob--;
  return o;
}

void checkPostdeployJob(api.PostdeployJob o) {
  buildCounterPostdeployJob++;
  if (buildCounterPostdeployJob < 3) {
    checkUnnamed86(o.actions!);
    checkUnnamed87(o.tasks!);
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
    o.metadata = buildPostdeployJobRunMetadata();
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
    checkPostdeployJobRunMetadata(o.metadata!);
  }
  buildCounterPostdeployJobRun--;
}

core.int buildCounterPostdeployJobRunMetadata = 0;
api.PostdeployJobRunMetadata buildPostdeployJobRunMetadata() {
  final o = api.PostdeployJobRunMetadata();
  buildCounterPostdeployJobRunMetadata++;
  if (buildCounterPostdeployJobRunMetadata < 3) {
    o.custom = buildCustomMetadata();
  }
  buildCounterPostdeployJobRunMetadata--;
  return o;
}

void checkPostdeployJobRunMetadata(api.PostdeployJobRunMetadata o) {
  buildCounterPostdeployJobRunMetadata++;
  if (buildCounterPostdeployJobRunMetadata < 3) {
    checkCustomMetadata(o.custom!);
  }
  buildCounterPostdeployJobRunMetadata--;
}

core.List<core.String> buildUnnamed88() => ['foo', 'foo'];

void checkUnnamed88(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.Task> buildUnnamed89() => [buildTask(), buildTask()];

void checkUnnamed89(core.List<api.Task> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTask(o[0]);
  checkTask(o[1]);
}

core.int buildCounterPredeploy = 0;
api.Predeploy buildPredeploy() {
  final o = api.Predeploy();
  buildCounterPredeploy++;
  if (buildCounterPredeploy < 3) {
    o.actions = buildUnnamed88();
    o.tasks = buildUnnamed89();
  }
  buildCounterPredeploy--;
  return o;
}

void checkPredeploy(api.Predeploy o) {
  buildCounterPredeploy++;
  if (buildCounterPredeploy < 3) {
    checkUnnamed88(o.actions!);
    checkUnnamed89(o.tasks!);
  }
  buildCounterPredeploy--;
}

core.List<core.String> buildUnnamed90() => ['foo', 'foo'];

void checkUnnamed90(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.Task> buildUnnamed91() => [buildTask(), buildTask()];

void checkUnnamed91(core.List<api.Task> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTask(o[0]);
  checkTask(o[1]);
}

core.int buildCounterPredeployJob = 0;
api.PredeployJob buildPredeployJob() {
  final o = api.PredeployJob();
  buildCounterPredeployJob++;
  if (buildCounterPredeployJob < 3) {
    o.actions = buildUnnamed90();
    o.tasks = buildUnnamed91();
  }
  buildCounterPredeployJob--;
  return o;
}

void checkPredeployJob(api.PredeployJob o) {
  buildCounterPredeployJob++;
  if (buildCounterPredeployJob < 3) {
    checkUnnamed90(o.actions!);
    checkUnnamed91(o.tasks!);
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
    o.metadata = buildPredeployJobRunMetadata();
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
    checkPredeployJobRunMetadata(o.metadata!);
  }
  buildCounterPredeployJobRun--;
}

core.int buildCounterPredeployJobRunMetadata = 0;
api.PredeployJobRunMetadata buildPredeployJobRunMetadata() {
  final o = api.PredeployJobRunMetadata();
  buildCounterPredeployJobRunMetadata++;
  if (buildCounterPredeployJobRunMetadata < 3) {
    o.custom = buildCustomMetadata();
  }
  buildCounterPredeployJobRunMetadata--;
  return o;
}

void checkPredeployJobRunMetadata(api.PredeployJobRunMetadata o) {
  buildCounterPredeployJobRunMetadata++;
  if (buildCounterPredeployJobRunMetadata < 3) {
    checkCustomMetadata(o.custom!);
  }
  buildCounterPredeployJobRunMetadata--;
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

core.Map<core.String, core.String> buildUnnamed92() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed92(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<api.BuildArtifact> buildUnnamed93() => [
  buildBuildArtifact(),
  buildBuildArtifact(),
];

void checkUnnamed93(core.List<api.BuildArtifact> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBuildArtifact(o[0]);
  checkBuildArtifact(o[1]);
}

core.List<api.CustomTargetType> buildUnnamed94() => [
  buildCustomTargetType(),
  buildCustomTargetType(),
];

void checkUnnamed94(core.List<api.CustomTargetType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomTargetType(o[0]);
  checkCustomTargetType(o[1]);
}

core.Map<core.String, core.String> buildUnnamed95() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed95(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed96() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed96(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, api.TargetArtifact> buildUnnamed97() => {
  'x': buildTargetArtifact(),
  'y': buildTargetArtifact(),
};

void checkUnnamed97(core.Map<core.String, api.TargetArtifact> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTargetArtifact(o['x']!);
  checkTargetArtifact(o['y']!);
}

core.Map<core.String, api.TargetRender> buildUnnamed98() => {
  'x': buildTargetRender(),
  'y': buildTargetRender(),
};

void checkUnnamed98(core.Map<core.String, api.TargetRender> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTargetRender(o['x']!);
  checkTargetRender(o['y']!);
}

core.List<api.Target> buildUnnamed99() => [buildTarget(), buildTarget()];

void checkUnnamed99(core.List<api.Target> o) {
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
    o.annotations = buildUnnamed92();
    o.buildArtifacts = buildUnnamed93();
    o.condition = buildReleaseCondition();
    o.createTime = 'foo';
    o.customTargetTypeSnapshots = buildUnnamed94();
    o.deliveryPipelineSnapshot = buildDeliveryPipeline();
    o.deployParameters = buildUnnamed95();
    o.description = 'foo';
    o.etag = 'foo';
    o.labels = buildUnnamed96();
    o.name = 'foo';
    o.renderEndTime = 'foo';
    o.renderStartTime = 'foo';
    o.renderState = 'foo';
    o.skaffoldConfigPath = 'foo';
    o.skaffoldConfigUri = 'foo';
    o.skaffoldVersion = 'foo';
    o.targetArtifacts = buildUnnamed97();
    o.targetRenders = buildUnnamed98();
    o.targetSnapshots = buildUnnamed99();
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
    checkUnnamed92(o.annotations!);
    checkUnnamed93(o.buildArtifacts!);
    checkReleaseCondition(o.condition!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkUnnamed94(o.customTargetTypeSnapshots!);
    checkDeliveryPipeline(o.deliveryPipelineSnapshot!);
    checkUnnamed95(o.deployParameters!);
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.etag!, unittest.equals('foo'));
    checkUnnamed96(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.renderEndTime!, unittest.equals('foo'));
    unittest.expect(o.renderStartTime!, unittest.equals('foo'));
    unittest.expect(o.renderState!, unittest.equals('foo'));
    unittest.expect(o.skaffoldConfigPath!, unittest.equals('foo'));
    unittest.expect(o.skaffoldConfigUri!, unittest.equals('foo'));
    unittest.expect(o.skaffoldVersion!, unittest.equals('foo'));
    checkUnnamed97(o.targetArtifacts!);
    checkUnnamed98(o.targetRenders!);
    checkUnnamed99(o.targetSnapshots!);
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
    o.kubernetes = buildKubernetesRenderMetadata();
  }
  buildCounterRenderMetadata--;
  return o;
}

void checkRenderMetadata(api.RenderMetadata o) {
  buildCounterRenderMetadata++;
  if (buildCounterRenderMetadata < 3) {
    checkCloudRunRenderMetadata(o.cloudRun!);
    checkCustomMetadata(o.custom!);
    checkKubernetesRenderMetadata(o.kubernetes!);
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

core.List<api.RepairPhase> buildUnnamed100() => [
  buildRepairPhase(),
  buildRepairPhase(),
];

void checkUnnamed100(core.List<api.RepairPhase> o) {
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
    o.repairPhases = buildUnnamed100();
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
    checkUnnamed100(o.repairPhases!);
    unittest.expect(o.rollout!, unittest.equals('foo'));
  }
  buildCounterRepairRolloutOperation--;
}

core.List<core.String> buildUnnamed101() => ['foo', 'foo'];

void checkUnnamed101(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed102() => ['foo', 'foo'];

void checkUnnamed102(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.RepairPhaseConfig> buildUnnamed103() => [
  buildRepairPhaseConfig(),
  buildRepairPhaseConfig(),
];

void checkUnnamed103(core.List<api.RepairPhaseConfig> o) {
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
    o.jobs = buildUnnamed101();
    o.phases = buildUnnamed102();
    o.repairPhases = buildUnnamed103();
  }
  buildCounterRepairRolloutRule--;
  return o;
}

void checkRepairRolloutRule(api.RepairRolloutRule o) {
  buildCounterRepairRolloutRule++;
  if (buildCounterRepairRolloutRule < 3) {
    checkAutomationRuleCondition(o.condition!);
    unittest.expect(o.id!, unittest.equals('foo'));
    checkUnnamed101(o.jobs!);
    checkUnnamed102(o.phases!);
    checkUnnamed103(o.repairPhases!);
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

core.List<core.String> buildUnnamed104() => ['foo', 'foo'];

void checkUnnamed104(core.List<core.String> o) {
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
    o.overrideDeployPolicy = buildUnnamed104();
    o.phaseId = 'foo';
  }
  buildCounterRetryJobRequest--;
  return o;
}

void checkRetryJobRequest(api.RetryJobRequest o) {
  buildCounterRetryJobRequest++;
  if (buildCounterRetryJobRequest < 3) {
    unittest.expect(o.jobId!, unittest.equals('foo'));
    checkUnnamed104(o.overrideDeployPolicy!);
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

core.List<api.RetryAttempt> buildUnnamed105() => [
  buildRetryAttempt(),
  buildRetryAttempt(),
];

void checkUnnamed105(core.List<api.RetryAttempt> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRetryAttempt(o[0]);
  checkRetryAttempt(o[1]);
}

core.int buildCounterRetryPhase = 0;
api.RetryPhase buildRetryPhase() {
  final o = api.RetryPhase();
  buildCounterRetryPhase++;
  if (buildCounterRetryPhase < 3) {
    o.attempts = buildUnnamed105();
    o.backoffMode = 'foo';
    o.totalAttempts = 'foo';
  }
  buildCounterRetryPhase--;
  return o;
}

void checkRetryPhase(api.RetryPhase o) {
  buildCounterRetryPhase++;
  if (buildCounterRetryPhase < 3) {
    checkUnnamed105(o.attempts!);
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

core.List<core.String> buildUnnamed106() => ['foo', 'foo'];

void checkUnnamed106(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterRollbackTargetRequest = 0;
api.RollbackTargetRequest buildRollbackTargetRequest() {
  final o = api.RollbackTargetRequest();
  buildCounterRollbackTargetRequest++;
  if (buildCounterRollbackTargetRequest < 3) {
    o.overrideDeployPolicy = buildUnnamed106();
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
    checkUnnamed106(o.overrideDeployPolicy!);
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

core.Map<core.String, core.String> buildUnnamed107() => {
  'x': 'foo',
  'y': 'foo',
};

void checkUnnamed107(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
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

core.List<api.Phase> buildUnnamed109() => [buildPhase(), buildPhase()];

void checkUnnamed109(core.List<api.Phase> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPhase(o[0]);
  checkPhase(o[1]);
}

core.List<core.String> buildUnnamed110() => ['foo', 'foo'];

void checkUnnamed110(core.List<core.String> o) {
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
    o.annotations = buildUnnamed107();
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
    o.labels = buildUnnamed108();
    o.metadata = buildMetadata();
    o.name = 'foo';
    o.phases = buildUnnamed109();
    o.rollbackOfRollout = 'foo';
    o.rolledBackByRollouts = buildUnnamed110();
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
    checkUnnamed107(o.annotations!);
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
    checkUnnamed108(o.labels!);
    checkMetadata(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed109(o.phases!);
    unittest.expect(o.rollbackOfRollout!, unittest.equals('foo'));
    checkUnnamed110(o.rolledBackByRollouts!);
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.targetId!, unittest.equals('foo'));
    unittest.expect(o.uid!, unittest.equals('foo'));
  }
  buildCounterRollout--;
}

core.List<core.String> buildUnnamed111() => ['foo', 'foo'];

void checkUnnamed111(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed112() => ['foo', 'foo'];

void checkUnnamed112(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterRolloutRestriction = 0;
api.RolloutRestriction buildRolloutRestriction() {
  final o = api.RolloutRestriction();
  buildCounterRolloutRestriction++;
  if (buildCounterRolloutRestriction < 3) {
    o.actions = buildUnnamed111();
    o.id = 'foo';
    o.invokers = buildUnnamed112();
    o.timeWindows = buildTimeWindows();
  }
  buildCounterRolloutRestriction--;
  return o;
}

void checkRolloutRestriction(api.RolloutRestriction o) {
  buildCounterRolloutRestriction++;
  if (buildCounterRolloutRestriction < 3) {
    checkUnnamed111(o.actions!);
    unittest.expect(o.id!, unittest.equals('foo'));
    checkUnnamed112(o.invokers!);
    checkTimeWindows(o.timeWindows!);
  }
  buildCounterRolloutRestriction--;
}

core.List<core.String> buildUnnamed113() => ['foo', 'foo'];

void checkUnnamed113(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterRouteDestinations = 0;
api.RouteDestinations buildRouteDestinations() {
  final o = api.RouteDestinations();
  buildCounterRouteDestinations++;
  if (buildCounterRouteDestinations < 3) {
    o.destinationIds = buildUnnamed113();
    o.propagateService = true;
  }
  buildCounterRouteDestinations--;
  return o;
}

void checkRouteDestinations(api.RouteDestinations o) {
  buildCounterRouteDestinations++;
  if (buildCounterRouteDestinations < 3) {
    checkUnnamed113(o.destinationIds!);
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

core.List<api.Stage> buildUnnamed114() => [buildStage(), buildStage()];

void checkUnnamed114(core.List<api.Stage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStage(o[0]);
  checkStage(o[1]);
}

core.int buildCounterSerialPipeline = 0;
api.SerialPipeline buildSerialPipeline() {
  final o = api.SerialPipeline();
  buildCounterSerialPipeline++;
  if (buildCounterSerialPipeline < 3) {
    o.stages = buildUnnamed114();
  }
  buildCounterSerialPipeline--;
  return o;
}

void checkSerialPipeline(api.SerialPipeline o) {
  buildCounterSerialPipeline++;
  if (buildCounterSerialPipeline < 3) {
    checkUnnamed114(o.stages!);
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

core.List<core.String> buildUnnamed115() => ['foo', 'foo'];

void checkUnnamed115(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSkaffoldModules = 0;
api.SkaffoldModules buildSkaffoldModules() {
  final o = api.SkaffoldModules();
  buildCounterSkaffoldModules++;
  if (buildCounterSkaffoldModules < 3) {
    o.configs = buildUnnamed115();
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
    checkUnnamed115(o.configs!);
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

core.List<api.DeployParameters> buildUnnamed116() => [
  buildDeployParameters(),
  buildDeployParameters(),
];

void checkUnnamed116(core.List<api.DeployParameters> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeployParameters(o[0]);
  checkDeployParameters(o[1]);
}

core.List<core.String> buildUnnamed117() => ['foo', 'foo'];

void checkUnnamed117(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterStage = 0;
api.Stage buildStage() {
  final o = api.Stage();
  buildCounterStage++;
  if (buildCounterStage < 3) {
    o.deployParameters = buildUnnamed116();
    o.profiles = buildUnnamed117();
    o.strategy = buildStrategy();
    o.targetId = 'foo';
  }
  buildCounterStage--;
  return o;
}

void checkStage(api.Stage o) {
  buildCounterStage++;
  if (buildCounterStage < 3) {
    checkUnnamed116(o.deployParameters!);
    checkUnnamed117(o.profiles!);
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
    o.analysis = buildAnalysis();
    o.postdeploy = buildPostdeploy();
    o.predeploy = buildPredeploy();
    o.verify = true;
    o.verifyConfig = buildVerify();
  }
  buildCounterStandard--;
  return o;
}

void checkStandard(api.Standard o) {
  buildCounterStandard++;
  if (buildCounterStandard < 3) {
    checkAnalysis(o.analysis!);
    checkPostdeploy(o.postdeploy!);
    checkPredeploy(o.predeploy!);
    unittest.expect(o.verify!, unittest.isTrue);
    checkVerify(o.verifyConfig!);
  }
  buildCounterStandard--;
}

core.Map<core.String, core.Object?> buildUnnamed118() => {
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

void checkUnnamed118(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed119() => [
  buildUnnamed118(),
  buildUnnamed118(),
];

void checkUnnamed119(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed118(o[0]);
  checkUnnamed118(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed119();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code!, unittest.equals(42));
    checkUnnamed119(o.details!);
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

core.Map<core.String, core.String> buildUnnamed120() => {
  'x': 'foo',
  'y': 'foo',
};

void checkUnnamed120(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, api.AssociatedEntities> buildUnnamed121() => {
  'x': buildAssociatedEntities(),
  'y': buildAssociatedEntities(),
};

void checkUnnamed121(core.Map<core.String, api.AssociatedEntities> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAssociatedEntities(o['x']!);
  checkAssociatedEntities(o['y']!);
}

core.Map<core.String, core.String> buildUnnamed122() => {
  'x': 'foo',
  'y': 'foo',
};

void checkUnnamed122(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<api.ExecutionConfig> buildUnnamed123() => [
  buildExecutionConfig(),
  buildExecutionConfig(),
];

void checkUnnamed123(core.List<api.ExecutionConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExecutionConfig(o[0]);
  checkExecutionConfig(o[1]);
}

core.Map<core.String, core.String> buildUnnamed124() => {
  'x': 'foo',
  'y': 'foo',
};

void checkUnnamed124(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterTarget = 0;
api.Target buildTarget() {
  final o = api.Target();
  buildCounterTarget++;
  if (buildCounterTarget < 3) {
    o.annotations = buildUnnamed120();
    o.anthosCluster = buildAnthosCluster();
    o.associatedEntities = buildUnnamed121();
    o.createTime = 'foo';
    o.customTarget = buildCustomTarget();
    o.deployParameters = buildUnnamed122();
    o.description = 'foo';
    o.etag = 'foo';
    o.executionConfigs = buildUnnamed123();
    o.gke = buildGkeCluster();
    o.labels = buildUnnamed124();
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
    checkUnnamed120(o.annotations!);
    checkAnthosCluster(o.anthosCluster!);
    checkUnnamed121(o.associatedEntities!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkCustomTarget(o.customTarget!);
    checkUnnamed122(o.deployParameters!);
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.etag!, unittest.equals('foo'));
    checkUnnamed123(o.executionConfigs!);
    checkGkeCluster(o.gke!);
    checkUnnamed124(o.labels!);
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

core.Map<core.String, api.PhaseArtifact> buildUnnamed125() => {
  'x': buildPhaseArtifact(),
  'y': buildPhaseArtifact(),
};

void checkUnnamed125(core.Map<core.String, api.PhaseArtifact> o) {
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
    o.phaseArtifacts = buildUnnamed125();
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
    checkUnnamed125(o.phaseArtifacts!);
    unittest.expect(o.skaffoldConfigPath!, unittest.equals('foo'));
  }
  buildCounterTargetArtifact--;
}

core.Map<core.String, core.String> buildUnnamed126() => {
  'x': 'foo',
  'y': 'foo',
};

void checkUnnamed126(core.Map<core.String, core.String> o) {
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
    o.labels = buildUnnamed126();
  }
  buildCounterTargetAttribute--;
  return o;
}

void checkTargetAttribute(api.TargetAttribute o) {
  buildCounterTargetAttribute++;
  if (buildCounterTargetAttribute < 3) {
    unittest.expect(o.id!, unittest.equals('foo'));
    checkUnnamed126(o.labels!);
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

core.List<core.String> buildUnnamed127() => ['foo', 'foo'];

void checkUnnamed127(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTargetsPresentCondition = 0;
api.TargetsPresentCondition buildTargetsPresentCondition() {
  final o = api.TargetsPresentCondition();
  buildCounterTargetsPresentCondition++;
  if (buildCounterTargetsPresentCondition < 3) {
    o.missingTargets = buildUnnamed127();
    o.status = true;
    o.updateTime = 'foo';
  }
  buildCounterTargetsPresentCondition--;
  return o;
}

void checkTargetsPresentCondition(api.TargetsPresentCondition o) {
  buildCounterTargetsPresentCondition++;
  if (buildCounterTargetsPresentCondition < 3) {
    checkUnnamed127(o.missingTargets!);
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

core.int buildCounterTask = 0;
api.Task buildTask() {
  final o = api.Task();
  buildCounterTask++;
  if (buildCounterTask < 3) {
    o.container = buildContainerTask();
  }
  buildCounterTask--;
  return o;
}

void checkTask(api.Task o) {
  buildCounterTask++;
  if (buildCounterTask < 3) {
    checkContainerTask(o.container!);
  }
  buildCounterTask--;
}

core.List<core.String> buildUnnamed128() => ['foo', 'foo'];

void checkUnnamed128(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTerminateJobRunRequest = 0;
api.TerminateJobRunRequest buildTerminateJobRunRequest() {
  final o = api.TerminateJobRunRequest();
  buildCounterTerminateJobRunRequest++;
  if (buildCounterTerminateJobRunRequest < 3) {
    o.overrideDeployPolicy = buildUnnamed128();
  }
  buildCounterTerminateJobRunRequest--;
  return o;
}

void checkTerminateJobRunRequest(api.TerminateJobRunRequest o) {
  buildCounterTerminateJobRunRequest++;
  if (buildCounterTerminateJobRunRequest < 3) {
    checkUnnamed128(o.overrideDeployPolicy!);
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

core.List<core.String> buildUnnamed129() => ['foo', 'foo'];

void checkUnnamed129(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsRequest = 0;
api.TestIamPermissionsRequest buildTestIamPermissionsRequest() {
  final o = api.TestIamPermissionsRequest();
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed129();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

void checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed129(o.permissions!);
  }
  buildCounterTestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed130() => ['foo', 'foo'];

void checkUnnamed130(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsResponse = 0;
api.TestIamPermissionsResponse buildTestIamPermissionsResponse() {
  final o = api.TestIamPermissionsResponse();
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed130();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed130(o.permissions!);
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

core.List<api.OneTimeWindow> buildUnnamed131() => [
  buildOneTimeWindow(),
  buildOneTimeWindow(),
];

void checkUnnamed131(core.List<api.OneTimeWindow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOneTimeWindow(o[0]);
  checkOneTimeWindow(o[1]);
}

core.List<api.WeeklyWindow> buildUnnamed132() => [
  buildWeeklyWindow(),
  buildWeeklyWindow(),
];

void checkUnnamed132(core.List<api.WeeklyWindow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWeeklyWindow(o[0]);
  checkWeeklyWindow(o[1]);
}

core.int buildCounterTimeWindows = 0;
api.TimeWindows buildTimeWindows() {
  final o = api.TimeWindows();
  buildCounterTimeWindows++;
  if (buildCounterTimeWindows < 3) {
    o.oneTimeWindows = buildUnnamed131();
    o.timeZone = 'foo';
    o.weeklyWindows = buildUnnamed132();
  }
  buildCounterTimeWindows--;
  return o;
}

void checkTimeWindows(api.TimeWindows o) {
  buildCounterTimeWindows++;
  if (buildCounterTimeWindows < 3) {
    checkUnnamed131(o.oneTimeWindows!);
    unittest.expect(o.timeZone!, unittest.equals('foo'));
    checkUnnamed132(o.weeklyWindows!);
  }
  buildCounterTimeWindows--;
}

core.List<api.Targets> buildUnnamed133() => [buildTargets(), buildTargets()];

void checkUnnamed133(core.List<api.Targets> o) {
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
    o.targetsList = buildUnnamed133();
  }
  buildCounterTimedPromoteReleaseCondition--;
  return o;
}

void checkTimedPromoteReleaseCondition(api.TimedPromoteReleaseCondition o) {
  buildCounterTimedPromoteReleaseCondition++;
  if (buildCounterTimedPromoteReleaseCondition < 3) {
    unittest.expect(o.nextPromotionTime!, unittest.equals('foo'));
    checkUnnamed133(o.targetsList!);
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

core.List<api.Task> buildUnnamed134() => [buildTask(), buildTask()];

void checkUnnamed134(core.List<api.Task> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTask(o[0]);
  checkTask(o[1]);
}

core.int buildCounterVerify = 0;
api.Verify buildVerify() {
  final o = api.Verify();
  buildCounterVerify++;
  if (buildCounterVerify < 3) {
    o.tasks = buildUnnamed134();
  }
  buildCounterVerify--;
  return o;
}

void checkVerify(api.Verify o) {
  buildCounterVerify++;
  if (buildCounterVerify < 3) {
    checkUnnamed134(o.tasks!);
  }
  buildCounterVerify--;
}

core.List<api.Task> buildUnnamed135() => [buildTask(), buildTask()];

void checkUnnamed135(core.List<api.Task> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTask(o[0]);
  checkTask(o[1]);
}

core.int buildCounterVerifyJob = 0;
api.VerifyJob buildVerifyJob() {
  final o = api.VerifyJob();
  buildCounterVerifyJob++;
  if (buildCounterVerifyJob < 3) {
    o.tasks = buildUnnamed135();
  }
  buildCounterVerifyJob--;
  return o;
}

void checkVerifyJob(api.VerifyJob o) {
  buildCounterVerifyJob++;
  if (buildCounterVerifyJob < 3) {
    checkUnnamed135(o.tasks!);
  }
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
    o.metadata = buildVerifyJobRunMetadata();
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
    checkVerifyJobRunMetadata(o.metadata!);
  }
  buildCounterVerifyJobRun--;
}

core.int buildCounterVerifyJobRunMetadata = 0;
api.VerifyJobRunMetadata buildVerifyJobRunMetadata() {
  final o = api.VerifyJobRunMetadata();
  buildCounterVerifyJobRunMetadata++;
  if (buildCounterVerifyJobRunMetadata < 3) {
    o.custom = buildCustomMetadata();
  }
  buildCounterVerifyJobRunMetadata--;
  return o;
}

void checkVerifyJobRunMetadata(api.VerifyJobRunMetadata o) {
  buildCounterVerifyJobRunMetadata++;
  if (buildCounterVerifyJobRunMetadata < 3) {
    checkCustomMetadata(o.custom!);
  }
  buildCounterVerifyJobRunMetadata--;
}

core.List<core.String> buildUnnamed136() => ['foo', 'foo'];

void checkUnnamed136(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterWeeklyWindow = 0;
api.WeeklyWindow buildWeeklyWindow() {
  final o = api.WeeklyWindow();
  buildCounterWeeklyWindow++;
  if (buildCounterWeeklyWindow < 3) {
    o.daysOfWeek = buildUnnamed136();
    o.endTime = buildTimeOfDay();
    o.startTime = buildTimeOfDay();
  }
  buildCounterWeeklyWindow--;
  return o;
}

void checkWeeklyWindow(api.WeeklyWindow o) {
  buildCounterWeeklyWindow++;
  if (buildCounterWeeklyWindow < 3) {
    checkUnnamed136(o.daysOfWeek!);
    checkTimeOfDay(o.endTime!);
    checkTimeOfDay(o.startTime!);
  }
  buildCounterWeeklyWindow--;
}

core.List<core.String> buildUnnamed137() => ['foo', 'foo'];

void checkUnnamed137(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed138() => ['foo', 'foo'];

void checkUnnamed138(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed139() => ['foo', 'foo'];

void checkUnnamed139(core.List<core.String> o) {
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

  unittest.group('obj-schema-AlertPolicyCheck', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAlertPolicyCheck();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AlertPolicyCheck.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAlertPolicyCheck(od);
    });
  });

  unittest.group('obj-schema-AlertPolicyCheckStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAlertPolicyCheckStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AlertPolicyCheckStatus.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAlertPolicyCheckStatus(od);
    });
  });

  unittest.group('obj-schema-Analysis', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAnalysis();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Analysis.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAnalysis(od);
    });
  });

  unittest.group('obj-schema-AnalysisJob', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAnalysisJob();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AnalysisJob.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAnalysisJob(od);
    });
  });

  unittest.group('obj-schema-AnalysisJobRun', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAnalysisJobRun();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AnalysisJobRun.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAnalysisJobRun(od);
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

  unittest.group('obj-schema-ContainerTask', () {
    unittest.test('to-json--from-json', () async {
      final o = buildContainerTask();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ContainerTask.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkContainerTask(od);
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

  unittest.group('obj-schema-CustomCheck', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomCheck();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomCheck.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCustomCheck(od);
    });
  });

  unittest.group('obj-schema-CustomCheckStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomCheckStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomCheckStatus.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCustomCheckStatus(od);
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

  unittest.group('obj-schema-CustomTargetTasks', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomTargetTasks();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomTargetTasks.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCustomTargetTasks(od);
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

  unittest.group('obj-schema-FailedAlertPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFailedAlertPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FailedAlertPolicy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFailedAlertPolicy(od);
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

  unittest.group('obj-schema-GoogleCloudAnalysis', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAnalysis();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAnalysis.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudAnalysis(od);
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

  unittest.group('obj-schema-KubernetesRenderMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildKubernetesRenderMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.KubernetesRenderMetadata.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkKubernetesRenderMetadata(od);
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

  unittest.group('obj-schema-PostdeployJobRunMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPostdeployJobRunMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PostdeployJobRunMetadata.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPostdeployJobRunMetadata(od);
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

  unittest.group('obj-schema-PredeployJobRunMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPredeployJobRunMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PredeployJobRunMetadata.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPredeployJobRunMetadata(od);
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

  unittest.group('obj-schema-Task', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTask();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Task.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTask(od);
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

  unittest.group('obj-schema-Verify', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVerify();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Verify.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkVerify(od);
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

  unittest.group('obj-schema-VerifyJobRunMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVerifyJobRunMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VerifyJobRunMetadata.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkVerifyJobRunMetadata(od);
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
      final arg_extraLocationTypes = buildUnnamed137();
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
      final arg_overrideDeployPolicy = buildUnnamed138();
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
      final arg_overrideDeployPolicy = buildUnnamed139();
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
