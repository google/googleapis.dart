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
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unreachable_from_main
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:googleapis/cloudasset/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<core.String> buildUnnamed0() => [
      'foo',
      'foo',
    ];

void checkUnnamed0(core.List<core.String> o) {
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

core.int buildCounterAccessSelector = 0;
api.AccessSelector buildAccessSelector() {
  final o = api.AccessSelector();
  buildCounterAccessSelector++;
  if (buildCounterAccessSelector < 3) {
    o.permissions = buildUnnamed0();
    o.roles = buildUnnamed1();
  }
  buildCounterAccessSelector--;
  return o;
}

void checkAccessSelector(api.AccessSelector o) {
  buildCounterAccessSelector++;
  if (buildCounterAccessSelector < 3) {
    checkUnnamed0(o.permissions!);
    checkUnnamed1(o.roles!);
  }
  buildCounterAccessSelector--;
}

core.int buildCounterAnalyzeIamPolicyLongrunningRequest = 0;
api.AnalyzeIamPolicyLongrunningRequest
    buildAnalyzeIamPolicyLongrunningRequest() {
  final o = api.AnalyzeIamPolicyLongrunningRequest();
  buildCounterAnalyzeIamPolicyLongrunningRequest++;
  if (buildCounterAnalyzeIamPolicyLongrunningRequest < 3) {
    o.analysisQuery = buildIamPolicyAnalysisQuery();
    o.outputConfig = buildIamPolicyAnalysisOutputConfig();
    o.savedAnalysisQuery = 'foo';
  }
  buildCounterAnalyzeIamPolicyLongrunningRequest--;
  return o;
}

void checkAnalyzeIamPolicyLongrunningRequest(
    api.AnalyzeIamPolicyLongrunningRequest o) {
  buildCounterAnalyzeIamPolicyLongrunningRequest++;
  if (buildCounterAnalyzeIamPolicyLongrunningRequest < 3) {
    checkIamPolicyAnalysisQuery(o.analysisQuery!);
    checkIamPolicyAnalysisOutputConfig(o.outputConfig!);
    unittest.expect(
      o.savedAnalysisQuery!,
      unittest.equals('foo'),
    );
  }
  buildCounterAnalyzeIamPolicyLongrunningRequest--;
}

core.List<api.IamPolicyAnalysis> buildUnnamed2() => [
      buildIamPolicyAnalysis(),
      buildIamPolicyAnalysis(),
    ];

void checkUnnamed2(core.List<api.IamPolicyAnalysis> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIamPolicyAnalysis(o[0]);
  checkIamPolicyAnalysis(o[1]);
}

core.int buildCounterAnalyzeIamPolicyResponse = 0;
api.AnalyzeIamPolicyResponse buildAnalyzeIamPolicyResponse() {
  final o = api.AnalyzeIamPolicyResponse();
  buildCounterAnalyzeIamPolicyResponse++;
  if (buildCounterAnalyzeIamPolicyResponse < 3) {
    o.fullyExplored = true;
    o.mainAnalysis = buildIamPolicyAnalysis();
    o.serviceAccountImpersonationAnalysis = buildUnnamed2();
  }
  buildCounterAnalyzeIamPolicyResponse--;
  return o;
}

void checkAnalyzeIamPolicyResponse(api.AnalyzeIamPolicyResponse o) {
  buildCounterAnalyzeIamPolicyResponse++;
  if (buildCounterAnalyzeIamPolicyResponse < 3) {
    unittest.expect(o.fullyExplored!, unittest.isTrue);
    checkIamPolicyAnalysis(o.mainAnalysis!);
    checkUnnamed2(o.serviceAccountImpersonationAnalysis!);
  }
  buildCounterAnalyzeIamPolicyResponse--;
}

core.List<api.MoveAnalysis> buildUnnamed3() => [
      buildMoveAnalysis(),
      buildMoveAnalysis(),
    ];

void checkUnnamed3(core.List<api.MoveAnalysis> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMoveAnalysis(o[0]);
  checkMoveAnalysis(o[1]);
}

core.int buildCounterAnalyzeMoveResponse = 0;
api.AnalyzeMoveResponse buildAnalyzeMoveResponse() {
  final o = api.AnalyzeMoveResponse();
  buildCounterAnalyzeMoveResponse++;
  if (buildCounterAnalyzeMoveResponse < 3) {
    o.moveAnalysis = buildUnnamed3();
  }
  buildCounterAnalyzeMoveResponse--;
  return o;
}

void checkAnalyzeMoveResponse(api.AnalyzeMoveResponse o) {
  buildCounterAnalyzeMoveResponse++;
  if (buildCounterAnalyzeMoveResponse < 3) {
    checkUnnamed3(o.moveAnalysis!);
  }
  buildCounterAnalyzeMoveResponse--;
}

core.List<api.OrgPolicyResult> buildUnnamed4() => [
      buildOrgPolicyResult(),
      buildOrgPolicyResult(),
    ];

void checkUnnamed4(core.List<api.OrgPolicyResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrgPolicyResult(o[0]);
  checkOrgPolicyResult(o[1]);
}

core.int buildCounterAnalyzeOrgPoliciesResponse = 0;
api.AnalyzeOrgPoliciesResponse buildAnalyzeOrgPoliciesResponse() {
  final o = api.AnalyzeOrgPoliciesResponse();
  buildCounterAnalyzeOrgPoliciesResponse++;
  if (buildCounterAnalyzeOrgPoliciesResponse < 3) {
    o.constraint = buildAnalyzerOrgPolicyConstraint();
    o.nextPageToken = 'foo';
    o.orgPolicyResults = buildUnnamed4();
  }
  buildCounterAnalyzeOrgPoliciesResponse--;
  return o;
}

void checkAnalyzeOrgPoliciesResponse(api.AnalyzeOrgPoliciesResponse o) {
  buildCounterAnalyzeOrgPoliciesResponse++;
  if (buildCounterAnalyzeOrgPoliciesResponse < 3) {
    checkAnalyzerOrgPolicyConstraint(o.constraint!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed4(o.orgPolicyResults!);
  }
  buildCounterAnalyzeOrgPoliciesResponse--;
}

core.List<
        api
        .GoogleCloudAssetV1AnalyzeOrgPolicyGovernedAssetsResponseGovernedAsset>
    buildUnnamed5() => [
          buildGoogleCloudAssetV1AnalyzeOrgPolicyGovernedAssetsResponseGovernedAsset(),
          buildGoogleCloudAssetV1AnalyzeOrgPolicyGovernedAssetsResponseGovernedAsset(),
        ];

void checkUnnamed5(
    core.List<
            api
            .GoogleCloudAssetV1AnalyzeOrgPolicyGovernedAssetsResponseGovernedAsset>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAssetV1AnalyzeOrgPolicyGovernedAssetsResponseGovernedAsset(
      o[0]);
  checkGoogleCloudAssetV1AnalyzeOrgPolicyGovernedAssetsResponseGovernedAsset(
      o[1]);
}

core.int buildCounterAnalyzeOrgPolicyGovernedAssetsResponse = 0;
api.AnalyzeOrgPolicyGovernedAssetsResponse
    buildAnalyzeOrgPolicyGovernedAssetsResponse() {
  final o = api.AnalyzeOrgPolicyGovernedAssetsResponse();
  buildCounterAnalyzeOrgPolicyGovernedAssetsResponse++;
  if (buildCounterAnalyzeOrgPolicyGovernedAssetsResponse < 3) {
    o.constraint = buildAnalyzerOrgPolicyConstraint();
    o.governedAssets = buildUnnamed5();
    o.nextPageToken = 'foo';
  }
  buildCounterAnalyzeOrgPolicyGovernedAssetsResponse--;
  return o;
}

void checkAnalyzeOrgPolicyGovernedAssetsResponse(
    api.AnalyzeOrgPolicyGovernedAssetsResponse o) {
  buildCounterAnalyzeOrgPolicyGovernedAssetsResponse++;
  if (buildCounterAnalyzeOrgPolicyGovernedAssetsResponse < 3) {
    checkAnalyzerOrgPolicyConstraint(o.constraint!);
    checkUnnamed5(o.governedAssets!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterAnalyzeOrgPolicyGovernedAssetsResponse--;
}

core.List<api.GoogleCloudAssetV1GovernedContainer> buildUnnamed6() => [
      buildGoogleCloudAssetV1GovernedContainer(),
      buildGoogleCloudAssetV1GovernedContainer(),
    ];

void checkUnnamed6(core.List<api.GoogleCloudAssetV1GovernedContainer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAssetV1GovernedContainer(o[0]);
  checkGoogleCloudAssetV1GovernedContainer(o[1]);
}

core.int buildCounterAnalyzeOrgPolicyGovernedContainersResponse = 0;
api.AnalyzeOrgPolicyGovernedContainersResponse
    buildAnalyzeOrgPolicyGovernedContainersResponse() {
  final o = api.AnalyzeOrgPolicyGovernedContainersResponse();
  buildCounterAnalyzeOrgPolicyGovernedContainersResponse++;
  if (buildCounterAnalyzeOrgPolicyGovernedContainersResponse < 3) {
    o.constraint = buildAnalyzerOrgPolicyConstraint();
    o.governedContainers = buildUnnamed6();
    o.nextPageToken = 'foo';
  }
  buildCounterAnalyzeOrgPolicyGovernedContainersResponse--;
  return o;
}

void checkAnalyzeOrgPolicyGovernedContainersResponse(
    api.AnalyzeOrgPolicyGovernedContainersResponse o) {
  buildCounterAnalyzeOrgPolicyGovernedContainersResponse++;
  if (buildCounterAnalyzeOrgPolicyGovernedContainersResponse < 3) {
    checkAnalyzerOrgPolicyConstraint(o.constraint!);
    checkUnnamed6(o.governedContainers!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterAnalyzeOrgPolicyGovernedContainersResponse--;
}

core.List<api.GoogleCloudAssetV1Rule> buildUnnamed7() => [
      buildGoogleCloudAssetV1Rule(),
      buildGoogleCloudAssetV1Rule(),
    ];

void checkUnnamed7(core.List<api.GoogleCloudAssetV1Rule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAssetV1Rule(o[0]);
  checkGoogleCloudAssetV1Rule(o[1]);
}

core.int buildCounterAnalyzerOrgPolicy = 0;
api.AnalyzerOrgPolicy buildAnalyzerOrgPolicy() {
  final o = api.AnalyzerOrgPolicy();
  buildCounterAnalyzerOrgPolicy++;
  if (buildCounterAnalyzerOrgPolicy < 3) {
    o.appliedResource = 'foo';
    o.attachedResource = 'foo';
    o.inheritFromParent = true;
    o.reset = true;
    o.rules = buildUnnamed7();
  }
  buildCounterAnalyzerOrgPolicy--;
  return o;
}

void checkAnalyzerOrgPolicy(api.AnalyzerOrgPolicy o) {
  buildCounterAnalyzerOrgPolicy++;
  if (buildCounterAnalyzerOrgPolicy < 3) {
    unittest.expect(
      o.appliedResource!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.attachedResource!,
      unittest.equals('foo'),
    );
    unittest.expect(o.inheritFromParent!, unittest.isTrue);
    unittest.expect(o.reset!, unittest.isTrue);
    checkUnnamed7(o.rules!);
  }
  buildCounterAnalyzerOrgPolicy--;
}

core.int buildCounterAnalyzerOrgPolicyConstraint = 0;
api.AnalyzerOrgPolicyConstraint buildAnalyzerOrgPolicyConstraint() {
  final o = api.AnalyzerOrgPolicyConstraint();
  buildCounterAnalyzerOrgPolicyConstraint++;
  if (buildCounterAnalyzerOrgPolicyConstraint < 3) {
    o.customConstraint = buildGoogleCloudAssetV1CustomConstraint();
    o.googleDefinedConstraint = buildGoogleCloudAssetV1Constraint();
  }
  buildCounterAnalyzerOrgPolicyConstraint--;
  return o;
}

void checkAnalyzerOrgPolicyConstraint(api.AnalyzerOrgPolicyConstraint o) {
  buildCounterAnalyzerOrgPolicyConstraint++;
  if (buildCounterAnalyzerOrgPolicyConstraint < 3) {
    checkGoogleCloudAssetV1CustomConstraint(o.customConstraint!);
    checkGoogleCloudAssetV1Constraint(o.googleDefinedConstraint!);
  }
  buildCounterAnalyzerOrgPolicyConstraint--;
}

core.List<core.String> buildUnnamed8() => [
      'foo',
      'foo',
    ];

void checkUnnamed8(core.List<core.String> o) {
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

core.List<api.GoogleCloudOrgpolicyV1Policy> buildUnnamed9() => [
      buildGoogleCloudOrgpolicyV1Policy(),
      buildGoogleCloudOrgpolicyV1Policy(),
    ];

void checkUnnamed9(core.List<api.GoogleCloudOrgpolicyV1Policy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudOrgpolicyV1Policy(o[0]);
  checkGoogleCloudOrgpolicyV1Policy(o[1]);
}

core.int buildCounterAsset = 0;
api.Asset buildAsset() {
  final o = api.Asset();
  buildCounterAsset++;
  if (buildCounterAsset < 3) {
    o.accessLevel = buildGoogleIdentityAccesscontextmanagerV1AccessLevel();
    o.accessPolicy = buildGoogleIdentityAccesscontextmanagerV1AccessPolicy();
    o.ancestors = buildUnnamed8();
    o.assetType = 'foo';
    o.iamPolicy = buildPolicy();
    o.name = 'foo';
    o.orgPolicy = buildUnnamed9();
    o.osInventory = buildInventory();
    o.relatedAsset = buildRelatedAsset();
    o.relatedAssets = buildRelatedAssets();
    o.resource = buildResource();
    o.servicePerimeter =
        buildGoogleIdentityAccesscontextmanagerV1ServicePerimeter();
    o.updateTime = 'foo';
  }
  buildCounterAsset--;
  return o;
}

void checkAsset(api.Asset o) {
  buildCounterAsset++;
  if (buildCounterAsset < 3) {
    checkGoogleIdentityAccesscontextmanagerV1AccessLevel(o.accessLevel!);
    checkGoogleIdentityAccesscontextmanagerV1AccessPolicy(o.accessPolicy!);
    checkUnnamed8(o.ancestors!);
    unittest.expect(
      o.assetType!,
      unittest.equals('foo'),
    );
    checkPolicy(o.iamPolicy!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed9(o.orgPolicy!);
    checkInventory(o.osInventory!);
    checkRelatedAsset(o.relatedAsset!);
    checkRelatedAssets(o.relatedAssets!);
    checkResource(o.resource!);
    checkGoogleIdentityAccesscontextmanagerV1ServicePerimeter(
        o.servicePerimeter!);
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterAsset--;
}

core.List<api.VersionedResource> buildUnnamed10() => [
      buildVersionedResource(),
      buildVersionedResource(),
    ];

void checkUnnamed10(core.List<api.VersionedResource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVersionedResource(o[0]);
  checkVersionedResource(o[1]);
}

core.int buildCounterAttachedResource = 0;
api.AttachedResource buildAttachedResource() {
  final o = api.AttachedResource();
  buildCounterAttachedResource++;
  if (buildCounterAttachedResource < 3) {
    o.assetType = 'foo';
    o.versionedResources = buildUnnamed10();
  }
  buildCounterAttachedResource--;
  return o;
}

void checkAttachedResource(api.AttachedResource o) {
  buildCounterAttachedResource++;
  if (buildCounterAttachedResource < 3) {
    unittest.expect(
      o.assetType!,
      unittest.equals('foo'),
    );
    checkUnnamed10(o.versionedResources!);
  }
  buildCounterAttachedResource--;
}

core.List<api.AuditLogConfig> buildUnnamed11() => [
      buildAuditLogConfig(),
      buildAuditLogConfig(),
    ];

void checkUnnamed11(core.List<api.AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditLogConfig(o[0]);
  checkAuditLogConfig(o[1]);
}

core.int buildCounterAuditConfig = 0;
api.AuditConfig buildAuditConfig() {
  final o = api.AuditConfig();
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed11();
    o.service = 'foo';
  }
  buildCounterAuditConfig--;
  return o;
}

void checkAuditConfig(api.AuditConfig o) {
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    checkUnnamed11(o.auditLogConfigs!);
    unittest.expect(
      o.service!,
      unittest.equals('foo'),
    );
  }
  buildCounterAuditConfig--;
}

core.List<core.String> buildUnnamed12() => [
      'foo',
      'foo',
    ];

void checkUnnamed12(core.List<core.String> o) {
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
    o.exemptedMembers = buildUnnamed12();
    o.logType = 'foo';
  }
  buildCounterAuditLogConfig--;
  return o;
}

void checkAuditLogConfig(api.AuditLogConfig o) {
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    checkUnnamed12(o.exemptedMembers!);
    unittest.expect(
      o.logType!,
      unittest.equals('foo'),
    );
  }
  buildCounterAuditLogConfig--;
}

core.List<api.TemporalAsset> buildUnnamed13() => [
      buildTemporalAsset(),
      buildTemporalAsset(),
    ];

void checkUnnamed13(core.List<api.TemporalAsset> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTemporalAsset(o[0]);
  checkTemporalAsset(o[1]);
}

core.int buildCounterBatchGetAssetsHistoryResponse = 0;
api.BatchGetAssetsHistoryResponse buildBatchGetAssetsHistoryResponse() {
  final o = api.BatchGetAssetsHistoryResponse();
  buildCounterBatchGetAssetsHistoryResponse++;
  if (buildCounterBatchGetAssetsHistoryResponse < 3) {
    o.assets = buildUnnamed13();
  }
  buildCounterBatchGetAssetsHistoryResponse--;
  return o;
}

void checkBatchGetAssetsHistoryResponse(api.BatchGetAssetsHistoryResponse o) {
  buildCounterBatchGetAssetsHistoryResponse++;
  if (buildCounterBatchGetAssetsHistoryResponse < 3) {
    checkUnnamed13(o.assets!);
  }
  buildCounterBatchGetAssetsHistoryResponse--;
}

core.List<api.EffectiveIamPolicy> buildUnnamed14() => [
      buildEffectiveIamPolicy(),
      buildEffectiveIamPolicy(),
    ];

void checkUnnamed14(core.List<api.EffectiveIamPolicy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEffectiveIamPolicy(o[0]);
  checkEffectiveIamPolicy(o[1]);
}

core.int buildCounterBatchGetEffectiveIamPoliciesResponse = 0;
api.BatchGetEffectiveIamPoliciesResponse
    buildBatchGetEffectiveIamPoliciesResponse() {
  final o = api.BatchGetEffectiveIamPoliciesResponse();
  buildCounterBatchGetEffectiveIamPoliciesResponse++;
  if (buildCounterBatchGetEffectiveIamPoliciesResponse < 3) {
    o.policyResults = buildUnnamed14();
  }
  buildCounterBatchGetEffectiveIamPoliciesResponse--;
  return o;
}

void checkBatchGetEffectiveIamPoliciesResponse(
    api.BatchGetEffectiveIamPoliciesResponse o) {
  buildCounterBatchGetEffectiveIamPoliciesResponse++;
  if (buildCounterBatchGetEffectiveIamPoliciesResponse < 3) {
    checkUnnamed14(o.policyResults!);
  }
  buildCounterBatchGetEffectiveIamPoliciesResponse--;
}

core.int buildCounterBigQueryDestination = 0;
api.BigQueryDestination buildBigQueryDestination() {
  final o = api.BigQueryDestination();
  buildCounterBigQueryDestination++;
  if (buildCounterBigQueryDestination < 3) {
    o.dataset = 'foo';
    o.force = true;
    o.partitionSpec = buildPartitionSpec();
    o.separateTablesPerAssetType = true;
    o.table = 'foo';
  }
  buildCounterBigQueryDestination--;
  return o;
}

void checkBigQueryDestination(api.BigQueryDestination o) {
  buildCounterBigQueryDestination++;
  if (buildCounterBigQueryDestination < 3) {
    unittest.expect(
      o.dataset!,
      unittest.equals('foo'),
    );
    unittest.expect(o.force!, unittest.isTrue);
    checkPartitionSpec(o.partitionSpec!);
    unittest.expect(o.separateTablesPerAssetType!, unittest.isTrue);
    unittest.expect(
      o.table!,
      unittest.equals('foo'),
    );
  }
  buildCounterBigQueryDestination--;
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

core.int buildCounterBinding = 0;
api.Binding buildBinding() {
  final o = api.Binding();
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    o.condition = buildExpr();
    o.members = buildUnnamed15();
    o.role = 'foo';
  }
  buildCounterBinding--;
  return o;
}

void checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition!);
    checkUnnamed15(o.members!);
    unittest.expect(
      o.role!,
      unittest.equals('foo'),
    );
  }
  buildCounterBinding--;
}

core.int buildCounterConditionContext = 0;
api.ConditionContext buildConditionContext() {
  final o = api.ConditionContext();
  buildCounterConditionContext++;
  if (buildCounterConditionContext < 3) {
    o.accessTime = 'foo';
  }
  buildCounterConditionContext--;
  return o;
}

void checkConditionContext(api.ConditionContext o) {
  buildCounterConditionContext++;
  if (buildCounterConditionContext < 3) {
    unittest.expect(
      o.accessTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterConditionContext--;
}

core.int buildCounterConditionEvaluation = 0;
api.ConditionEvaluation buildConditionEvaluation() {
  final o = api.ConditionEvaluation();
  buildCounterConditionEvaluation++;
  if (buildCounterConditionEvaluation < 3) {
    o.evaluationValue = 'foo';
  }
  buildCounterConditionEvaluation--;
  return o;
}

void checkConditionEvaluation(api.ConditionEvaluation o) {
  buildCounterConditionEvaluation++;
  if (buildCounterConditionEvaluation < 3) {
    unittest.expect(
      o.evaluationValue!,
      unittest.equals('foo'),
    );
  }
  buildCounterConditionEvaluation--;
}

core.int buildCounterCreateFeedRequest = 0;
api.CreateFeedRequest buildCreateFeedRequest() {
  final o = api.CreateFeedRequest();
  buildCounterCreateFeedRequest++;
  if (buildCounterCreateFeedRequest < 3) {
    o.feed = buildFeed();
    o.feedId = 'foo';
  }
  buildCounterCreateFeedRequest--;
  return o;
}

void checkCreateFeedRequest(api.CreateFeedRequest o) {
  buildCounterCreateFeedRequest++;
  if (buildCounterCreateFeedRequest < 3) {
    checkFeed(o.feed!);
    unittest.expect(
      o.feedId!,
      unittest.equals('foo'),
    );
  }
  buildCounterCreateFeedRequest--;
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

core.List<api.PolicyInfo> buildUnnamed16() => [
      buildPolicyInfo(),
      buildPolicyInfo(),
    ];

void checkUnnamed16(core.List<api.PolicyInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPolicyInfo(o[0]);
  checkPolicyInfo(o[1]);
}

core.int buildCounterEffectiveIamPolicy = 0;
api.EffectiveIamPolicy buildEffectiveIamPolicy() {
  final o = api.EffectiveIamPolicy();
  buildCounterEffectiveIamPolicy++;
  if (buildCounterEffectiveIamPolicy < 3) {
    o.fullResourceName = 'foo';
    o.policies = buildUnnamed16();
  }
  buildCounterEffectiveIamPolicy--;
  return o;
}

void checkEffectiveIamPolicy(api.EffectiveIamPolicy o) {
  buildCounterEffectiveIamPolicy++;
  if (buildCounterEffectiveIamPolicy < 3) {
    unittest.expect(
      o.fullResourceName!,
      unittest.equals('foo'),
    );
    checkUnnamed16(o.policies!);
  }
  buildCounterEffectiveIamPolicy--;
}

core.List<api.Tag> buildUnnamed17() => [
      buildTag(),
      buildTag(),
    ];

void checkUnnamed17(core.List<api.Tag> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTag(o[0]);
  checkTag(o[1]);
}

core.int buildCounterEffectiveTagDetails = 0;
api.EffectiveTagDetails buildEffectiveTagDetails() {
  final o = api.EffectiveTagDetails();
  buildCounterEffectiveTagDetails++;
  if (buildCounterEffectiveTagDetails < 3) {
    o.attachedResource = 'foo';
    o.effectiveTags = buildUnnamed17();
  }
  buildCounterEffectiveTagDetails--;
  return o;
}

void checkEffectiveTagDetails(api.EffectiveTagDetails o) {
  buildCounterEffectiveTagDetails++;
  if (buildCounterEffectiveTagDetails < 3) {
    unittest.expect(
      o.attachedResource!,
      unittest.equals('foo'),
    );
    checkUnnamed17(o.effectiveTags!);
  }
  buildCounterEffectiveTagDetails--;
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

core.Map<core.String, api.Permissions> buildUnnamed18() => {
      'x': buildPermissions(),
      'y': buildPermissions(),
    };

void checkUnnamed18(core.Map<core.String, api.Permissions> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPermissions(o['x']!);
  checkPermissions(o['y']!);
}

core.int buildCounterExplanation = 0;
api.Explanation buildExplanation() {
  final o = api.Explanation();
  buildCounterExplanation++;
  if (buildCounterExplanation < 3) {
    o.matchedPermissions = buildUnnamed18();
  }
  buildCounterExplanation--;
  return o;
}

void checkExplanation(api.Explanation o) {
  buildCounterExplanation++;
  if (buildCounterExplanation < 3) {
    checkUnnamed18(o.matchedPermissions!);
  }
  buildCounterExplanation--;
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

core.int buildCounterExportAssetsRequest = 0;
api.ExportAssetsRequest buildExportAssetsRequest() {
  final o = api.ExportAssetsRequest();
  buildCounterExportAssetsRequest++;
  if (buildCounterExportAssetsRequest < 3) {
    o.assetTypes = buildUnnamed19();
    o.contentType = 'foo';
    o.outputConfig = buildOutputConfig();
    o.readTime = 'foo';
    o.relationshipTypes = buildUnnamed20();
  }
  buildCounterExportAssetsRequest--;
  return o;
}

void checkExportAssetsRequest(api.ExportAssetsRequest o) {
  buildCounterExportAssetsRequest++;
  if (buildCounterExportAssetsRequest < 3) {
    checkUnnamed19(o.assetTypes!);
    unittest.expect(
      o.contentType!,
      unittest.equals('foo'),
    );
    checkOutputConfig(o.outputConfig!);
    unittest.expect(
      o.readTime!,
      unittest.equals('foo'),
    );
    checkUnnamed20(o.relationshipTypes!);
  }
  buildCounterExportAssetsRequest--;
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

core.int buildCounterFeed = 0;
api.Feed buildFeed() {
  final o = api.Feed();
  buildCounterFeed++;
  if (buildCounterFeed < 3) {
    o.assetNames = buildUnnamed21();
    o.assetTypes = buildUnnamed22();
    o.condition = buildExpr();
    o.contentType = 'foo';
    o.feedOutputConfig = buildFeedOutputConfig();
    o.name = 'foo';
    o.relationshipTypes = buildUnnamed23();
  }
  buildCounterFeed--;
  return o;
}

void checkFeed(api.Feed o) {
  buildCounterFeed++;
  if (buildCounterFeed < 3) {
    checkUnnamed21(o.assetNames!);
    checkUnnamed22(o.assetTypes!);
    checkExpr(o.condition!);
    unittest.expect(
      o.contentType!,
      unittest.equals('foo'),
    );
    checkFeedOutputConfig(o.feedOutputConfig!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed23(o.relationshipTypes!);
  }
  buildCounterFeed--;
}

core.int buildCounterFeedOutputConfig = 0;
api.FeedOutputConfig buildFeedOutputConfig() {
  final o = api.FeedOutputConfig();
  buildCounterFeedOutputConfig++;
  if (buildCounterFeedOutputConfig < 3) {
    o.pubsubDestination = buildPubsubDestination();
  }
  buildCounterFeedOutputConfig--;
  return o;
}

void checkFeedOutputConfig(api.FeedOutputConfig o) {
  buildCounterFeedOutputConfig++;
  if (buildCounterFeedOutputConfig < 3) {
    checkPubsubDestination(o.pubsubDestination!);
  }
  buildCounterFeedOutputConfig--;
}

core.int buildCounterGcsDestination = 0;
api.GcsDestination buildGcsDestination() {
  final o = api.GcsDestination();
  buildCounterGcsDestination++;
  if (buildCounterGcsDestination < 3) {
    o.uri = 'foo';
    o.uriPrefix = 'foo';
  }
  buildCounterGcsDestination--;
  return o;
}

void checkGcsDestination(api.GcsDestination o) {
  buildCounterGcsDestination++;
  if (buildCounterGcsDestination < 3) {
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uriPrefix!,
      unittest.equals('foo'),
    );
  }
  buildCounterGcsDestination--;
}

core.int buildCounterGoogleCloudAssetV1Access = 0;
api.GoogleCloudAssetV1Access buildGoogleCloudAssetV1Access() {
  final o = api.GoogleCloudAssetV1Access();
  buildCounterGoogleCloudAssetV1Access++;
  if (buildCounterGoogleCloudAssetV1Access < 3) {
    o.analysisState = buildIamPolicyAnalysisState();
    o.permission = 'foo';
    o.role = 'foo';
  }
  buildCounterGoogleCloudAssetV1Access--;
  return o;
}

void checkGoogleCloudAssetV1Access(api.GoogleCloudAssetV1Access o) {
  buildCounterGoogleCloudAssetV1Access++;
  if (buildCounterGoogleCloudAssetV1Access < 3) {
    checkIamPolicyAnalysisState(o.analysisState!);
    unittest.expect(
      o.permission!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.role!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudAssetV1Access--;
}

core.List<api.GoogleCloudAssetV1Access> buildUnnamed24() => [
      buildGoogleCloudAssetV1Access(),
      buildGoogleCloudAssetV1Access(),
    ];

void checkUnnamed24(core.List<api.GoogleCloudAssetV1Access> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAssetV1Access(o[0]);
  checkGoogleCloudAssetV1Access(o[1]);
}

core.List<api.GoogleCloudAssetV1Edge> buildUnnamed25() => [
      buildGoogleCloudAssetV1Edge(),
      buildGoogleCloudAssetV1Edge(),
    ];

void checkUnnamed25(core.List<api.GoogleCloudAssetV1Edge> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAssetV1Edge(o[0]);
  checkGoogleCloudAssetV1Edge(o[1]);
}

core.List<api.GoogleCloudAssetV1Resource> buildUnnamed26() => [
      buildGoogleCloudAssetV1Resource(),
      buildGoogleCloudAssetV1Resource(),
    ];

void checkUnnamed26(core.List<api.GoogleCloudAssetV1Resource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAssetV1Resource(o[0]);
  checkGoogleCloudAssetV1Resource(o[1]);
}

core.int buildCounterGoogleCloudAssetV1AccessControlList = 0;
api.GoogleCloudAssetV1AccessControlList
    buildGoogleCloudAssetV1AccessControlList() {
  final o = api.GoogleCloudAssetV1AccessControlList();
  buildCounterGoogleCloudAssetV1AccessControlList++;
  if (buildCounterGoogleCloudAssetV1AccessControlList < 3) {
    o.accesses = buildUnnamed24();
    o.conditionEvaluation = buildConditionEvaluation();
    o.resourceEdges = buildUnnamed25();
    o.resources = buildUnnamed26();
  }
  buildCounterGoogleCloudAssetV1AccessControlList--;
  return o;
}

void checkGoogleCloudAssetV1AccessControlList(
    api.GoogleCloudAssetV1AccessControlList o) {
  buildCounterGoogleCloudAssetV1AccessControlList++;
  if (buildCounterGoogleCloudAssetV1AccessControlList < 3) {
    checkUnnamed24(o.accesses!);
    checkConditionEvaluation(o.conditionEvaluation!);
    checkUnnamed25(o.resourceEdges!);
    checkUnnamed26(o.resources!);
  }
  buildCounterGoogleCloudAssetV1AccessControlList--;
}

core.List<api.AnalyzerOrgPolicy> buildUnnamed27() => [
      buildAnalyzerOrgPolicy(),
      buildAnalyzerOrgPolicy(),
    ];

void checkUnnamed27(core.List<api.AnalyzerOrgPolicy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAnalyzerOrgPolicy(o[0]);
  checkAnalyzerOrgPolicy(o[1]);
}

core.int
    buildCounterGoogleCloudAssetV1AnalyzeOrgPolicyGovernedAssetsResponseGovernedAsset =
    0;
api.GoogleCloudAssetV1AnalyzeOrgPolicyGovernedAssetsResponseGovernedAsset
    buildGoogleCloudAssetV1AnalyzeOrgPolicyGovernedAssetsResponseGovernedAsset() {
  final o = api
      .GoogleCloudAssetV1AnalyzeOrgPolicyGovernedAssetsResponseGovernedAsset();
  buildCounterGoogleCloudAssetV1AnalyzeOrgPolicyGovernedAssetsResponseGovernedAsset++;
  if (buildCounterGoogleCloudAssetV1AnalyzeOrgPolicyGovernedAssetsResponseGovernedAsset <
      3) {
    o.consolidatedPolicy = buildAnalyzerOrgPolicy();
    o.governedIamPolicy =
        buildGoogleCloudAssetV1AnalyzeOrgPolicyGovernedAssetsResponseGovernedIamPolicy();
    o.governedResource =
        buildGoogleCloudAssetV1AnalyzeOrgPolicyGovernedAssetsResponseGovernedResource();
    o.policyBundle = buildUnnamed27();
  }
  buildCounterGoogleCloudAssetV1AnalyzeOrgPolicyGovernedAssetsResponseGovernedAsset--;
  return o;
}

void checkGoogleCloudAssetV1AnalyzeOrgPolicyGovernedAssetsResponseGovernedAsset(
    api.GoogleCloudAssetV1AnalyzeOrgPolicyGovernedAssetsResponseGovernedAsset
        o) {
  buildCounterGoogleCloudAssetV1AnalyzeOrgPolicyGovernedAssetsResponseGovernedAsset++;
  if (buildCounterGoogleCloudAssetV1AnalyzeOrgPolicyGovernedAssetsResponseGovernedAsset <
      3) {
    checkAnalyzerOrgPolicy(o.consolidatedPolicy!);
    checkGoogleCloudAssetV1AnalyzeOrgPolicyGovernedAssetsResponseGovernedIamPolicy(
        o.governedIamPolicy!);
    checkGoogleCloudAssetV1AnalyzeOrgPolicyGovernedAssetsResponseGovernedResource(
        o.governedResource!);
    checkUnnamed27(o.policyBundle!);
  }
  buildCounterGoogleCloudAssetV1AnalyzeOrgPolicyGovernedAssetsResponseGovernedAsset--;
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

core.int
    buildCounterGoogleCloudAssetV1AnalyzeOrgPolicyGovernedAssetsResponseGovernedIamPolicy =
    0;
api.GoogleCloudAssetV1AnalyzeOrgPolicyGovernedAssetsResponseGovernedIamPolicy
    buildGoogleCloudAssetV1AnalyzeOrgPolicyGovernedAssetsResponseGovernedIamPolicy() {
  final o = api
      .GoogleCloudAssetV1AnalyzeOrgPolicyGovernedAssetsResponseGovernedIamPolicy();
  buildCounterGoogleCloudAssetV1AnalyzeOrgPolicyGovernedAssetsResponseGovernedIamPolicy++;
  if (buildCounterGoogleCloudAssetV1AnalyzeOrgPolicyGovernedAssetsResponseGovernedIamPolicy <
      3) {
    o.assetType = 'foo';
    o.attachedResource = 'foo';
    o.folders = buildUnnamed28();
    o.organization = 'foo';
    o.policy = buildPolicy();
    o.project = 'foo';
  }
  buildCounterGoogleCloudAssetV1AnalyzeOrgPolicyGovernedAssetsResponseGovernedIamPolicy--;
  return o;
}

void checkGoogleCloudAssetV1AnalyzeOrgPolicyGovernedAssetsResponseGovernedIamPolicy(
    api.GoogleCloudAssetV1AnalyzeOrgPolicyGovernedAssetsResponseGovernedIamPolicy
        o) {
  buildCounterGoogleCloudAssetV1AnalyzeOrgPolicyGovernedAssetsResponseGovernedIamPolicy++;
  if (buildCounterGoogleCloudAssetV1AnalyzeOrgPolicyGovernedAssetsResponseGovernedIamPolicy <
      3) {
    unittest.expect(
      o.assetType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.attachedResource!,
      unittest.equals('foo'),
    );
    checkUnnamed28(o.folders!);
    unittest.expect(
      o.organization!,
      unittest.equals('foo'),
    );
    checkPolicy(o.policy!);
    unittest.expect(
      o.project!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudAssetV1AnalyzeOrgPolicyGovernedAssetsResponseGovernedIamPolicy--;
}

core.List<api.EffectiveTagDetails> buildUnnamed29() => [
      buildEffectiveTagDetails(),
      buildEffectiveTagDetails(),
    ];

void checkUnnamed29(core.List<api.EffectiveTagDetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEffectiveTagDetails(o[0]);
  checkEffectiveTagDetails(o[1]);
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

core.int
    buildCounterGoogleCloudAssetV1AnalyzeOrgPolicyGovernedAssetsResponseGovernedResource =
    0;
api.GoogleCloudAssetV1AnalyzeOrgPolicyGovernedAssetsResponseGovernedResource
    buildGoogleCloudAssetV1AnalyzeOrgPolicyGovernedAssetsResponseGovernedResource() {
  final o = api
      .GoogleCloudAssetV1AnalyzeOrgPolicyGovernedAssetsResponseGovernedResource();
  buildCounterGoogleCloudAssetV1AnalyzeOrgPolicyGovernedAssetsResponseGovernedResource++;
  if (buildCounterGoogleCloudAssetV1AnalyzeOrgPolicyGovernedAssetsResponseGovernedResource <
      3) {
    o.assetType = 'foo';
    o.effectiveTags = buildUnnamed29();
    o.folders = buildUnnamed30();
    o.fullResourceName = 'foo';
    o.organization = 'foo';
    o.parent = 'foo';
    o.project = 'foo';
  }
  buildCounterGoogleCloudAssetV1AnalyzeOrgPolicyGovernedAssetsResponseGovernedResource--;
  return o;
}

void checkGoogleCloudAssetV1AnalyzeOrgPolicyGovernedAssetsResponseGovernedResource(
    api.GoogleCloudAssetV1AnalyzeOrgPolicyGovernedAssetsResponseGovernedResource
        o) {
  buildCounterGoogleCloudAssetV1AnalyzeOrgPolicyGovernedAssetsResponseGovernedResource++;
  if (buildCounterGoogleCloudAssetV1AnalyzeOrgPolicyGovernedAssetsResponseGovernedResource <
      3) {
    unittest.expect(
      o.assetType!,
      unittest.equals('foo'),
    );
    checkUnnamed29(o.effectiveTags!);
    checkUnnamed30(o.folders!);
    unittest.expect(
      o.fullResourceName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.organization!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.parent!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.project!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudAssetV1AnalyzeOrgPolicyGovernedAssetsResponseGovernedResource--;
}

core.int buildCounterGoogleCloudAssetV1BigQueryDestination = 0;
api.GoogleCloudAssetV1BigQueryDestination
    buildGoogleCloudAssetV1BigQueryDestination() {
  final o = api.GoogleCloudAssetV1BigQueryDestination();
  buildCounterGoogleCloudAssetV1BigQueryDestination++;
  if (buildCounterGoogleCloudAssetV1BigQueryDestination < 3) {
    o.dataset = 'foo';
    o.partitionKey = 'foo';
    o.tablePrefix = 'foo';
    o.writeDisposition = 'foo';
  }
  buildCounterGoogleCloudAssetV1BigQueryDestination--;
  return o;
}

void checkGoogleCloudAssetV1BigQueryDestination(
    api.GoogleCloudAssetV1BigQueryDestination o) {
  buildCounterGoogleCloudAssetV1BigQueryDestination++;
  if (buildCounterGoogleCloudAssetV1BigQueryDestination < 3) {
    unittest.expect(
      o.dataset!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.partitionKey!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tablePrefix!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.writeDisposition!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudAssetV1BigQueryDestination--;
}

core.int buildCounterGoogleCloudAssetV1BooleanConstraint = 0;
api.GoogleCloudAssetV1BooleanConstraint
    buildGoogleCloudAssetV1BooleanConstraint() {
  final o = api.GoogleCloudAssetV1BooleanConstraint();
  buildCounterGoogleCloudAssetV1BooleanConstraint++;
  if (buildCounterGoogleCloudAssetV1BooleanConstraint < 3) {}
  buildCounterGoogleCloudAssetV1BooleanConstraint--;
  return o;
}

void checkGoogleCloudAssetV1BooleanConstraint(
    api.GoogleCloudAssetV1BooleanConstraint o) {
  buildCounterGoogleCloudAssetV1BooleanConstraint++;
  if (buildCounterGoogleCloudAssetV1BooleanConstraint < 3) {}
  buildCounterGoogleCloudAssetV1BooleanConstraint--;
}

core.int buildCounterGoogleCloudAssetV1Constraint = 0;
api.GoogleCloudAssetV1Constraint buildGoogleCloudAssetV1Constraint() {
  final o = api.GoogleCloudAssetV1Constraint();
  buildCounterGoogleCloudAssetV1Constraint++;
  if (buildCounterGoogleCloudAssetV1Constraint < 3) {
    o.booleanConstraint = buildGoogleCloudAssetV1BooleanConstraint();
    o.constraintDefault = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.listConstraint = buildGoogleCloudAssetV1ListConstraint();
    o.name = 'foo';
  }
  buildCounterGoogleCloudAssetV1Constraint--;
  return o;
}

void checkGoogleCloudAssetV1Constraint(api.GoogleCloudAssetV1Constraint o) {
  buildCounterGoogleCloudAssetV1Constraint++;
  if (buildCounterGoogleCloudAssetV1Constraint < 3) {
    checkGoogleCloudAssetV1BooleanConstraint(o.booleanConstraint!);
    unittest.expect(
      o.constraintDefault!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkGoogleCloudAssetV1ListConstraint(o.listConstraint!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudAssetV1Constraint--;
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

core.int buildCounterGoogleCloudAssetV1CustomConstraint = 0;
api.GoogleCloudAssetV1CustomConstraint
    buildGoogleCloudAssetV1CustomConstraint() {
  final o = api.GoogleCloudAssetV1CustomConstraint();
  buildCounterGoogleCloudAssetV1CustomConstraint++;
  if (buildCounterGoogleCloudAssetV1CustomConstraint < 3) {
    o.actionType = 'foo';
    o.condition = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.methodTypes = buildUnnamed31();
    o.name = 'foo';
    o.resourceTypes = buildUnnamed32();
  }
  buildCounterGoogleCloudAssetV1CustomConstraint--;
  return o;
}

void checkGoogleCloudAssetV1CustomConstraint(
    api.GoogleCloudAssetV1CustomConstraint o) {
  buildCounterGoogleCloudAssetV1CustomConstraint++;
  if (buildCounterGoogleCloudAssetV1CustomConstraint < 3) {
    unittest.expect(
      o.actionType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.condition!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkUnnamed31(o.methodTypes!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed32(o.resourceTypes!);
  }
  buildCounterGoogleCloudAssetV1CustomConstraint--;
}

core.int buildCounterGoogleCloudAssetV1Edge = 0;
api.GoogleCloudAssetV1Edge buildGoogleCloudAssetV1Edge() {
  final o = api.GoogleCloudAssetV1Edge();
  buildCounterGoogleCloudAssetV1Edge++;
  if (buildCounterGoogleCloudAssetV1Edge < 3) {
    o.sourceNode = 'foo';
    o.targetNode = 'foo';
  }
  buildCounterGoogleCloudAssetV1Edge--;
  return o;
}

void checkGoogleCloudAssetV1Edge(api.GoogleCloudAssetV1Edge o) {
  buildCounterGoogleCloudAssetV1Edge++;
  if (buildCounterGoogleCloudAssetV1Edge < 3) {
    unittest.expect(
      o.sourceNode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.targetNode!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudAssetV1Edge--;
}

core.int buildCounterGoogleCloudAssetV1GcsDestination = 0;
api.GoogleCloudAssetV1GcsDestination buildGoogleCloudAssetV1GcsDestination() {
  final o = api.GoogleCloudAssetV1GcsDestination();
  buildCounterGoogleCloudAssetV1GcsDestination++;
  if (buildCounterGoogleCloudAssetV1GcsDestination < 3) {
    o.uri = 'foo';
  }
  buildCounterGoogleCloudAssetV1GcsDestination--;
  return o;
}

void checkGoogleCloudAssetV1GcsDestination(
    api.GoogleCloudAssetV1GcsDestination o) {
  buildCounterGoogleCloudAssetV1GcsDestination++;
  if (buildCounterGoogleCloudAssetV1GcsDestination < 3) {
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudAssetV1GcsDestination--;
}

core.List<api.EffectiveTagDetails> buildUnnamed33() => [
      buildEffectiveTagDetails(),
      buildEffectiveTagDetails(),
    ];

void checkUnnamed33(core.List<api.EffectiveTagDetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEffectiveTagDetails(o[0]);
  checkEffectiveTagDetails(o[1]);
}

core.List<core.String> buildUnnamed34() => [
      'foo',
      'foo',
    ];

void checkUnnamed34(core.List<core.String> o) {
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

core.List<api.AnalyzerOrgPolicy> buildUnnamed35() => [
      buildAnalyzerOrgPolicy(),
      buildAnalyzerOrgPolicy(),
    ];

void checkUnnamed35(core.List<api.AnalyzerOrgPolicy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAnalyzerOrgPolicy(o[0]);
  checkAnalyzerOrgPolicy(o[1]);
}

core.int buildCounterGoogleCloudAssetV1GovernedContainer = 0;
api.GoogleCloudAssetV1GovernedContainer
    buildGoogleCloudAssetV1GovernedContainer() {
  final o = api.GoogleCloudAssetV1GovernedContainer();
  buildCounterGoogleCloudAssetV1GovernedContainer++;
  if (buildCounterGoogleCloudAssetV1GovernedContainer < 3) {
    o.consolidatedPolicy = buildAnalyzerOrgPolicy();
    o.effectiveTags = buildUnnamed33();
    o.folders = buildUnnamed34();
    o.fullResourceName = 'foo';
    o.organization = 'foo';
    o.parent = 'foo';
    o.policyBundle = buildUnnamed35();
    o.project = 'foo';
  }
  buildCounterGoogleCloudAssetV1GovernedContainer--;
  return o;
}

void checkGoogleCloudAssetV1GovernedContainer(
    api.GoogleCloudAssetV1GovernedContainer o) {
  buildCounterGoogleCloudAssetV1GovernedContainer++;
  if (buildCounterGoogleCloudAssetV1GovernedContainer < 3) {
    checkAnalyzerOrgPolicy(o.consolidatedPolicy!);
    checkUnnamed33(o.effectiveTags!);
    checkUnnamed34(o.folders!);
    unittest.expect(
      o.fullResourceName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.organization!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.parent!,
      unittest.equals('foo'),
    );
    checkUnnamed35(o.policyBundle!);
    unittest.expect(
      o.project!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudAssetV1GovernedContainer--;
}

core.int buildCounterGoogleCloudAssetV1Identity = 0;
api.GoogleCloudAssetV1Identity buildGoogleCloudAssetV1Identity() {
  final o = api.GoogleCloudAssetV1Identity();
  buildCounterGoogleCloudAssetV1Identity++;
  if (buildCounterGoogleCloudAssetV1Identity < 3) {
    o.analysisState = buildIamPolicyAnalysisState();
    o.name = 'foo';
  }
  buildCounterGoogleCloudAssetV1Identity--;
  return o;
}

void checkGoogleCloudAssetV1Identity(api.GoogleCloudAssetV1Identity o) {
  buildCounterGoogleCloudAssetV1Identity++;
  if (buildCounterGoogleCloudAssetV1Identity < 3) {
    checkIamPolicyAnalysisState(o.analysisState!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudAssetV1Identity--;
}

core.List<api.GoogleCloudAssetV1Edge> buildUnnamed36() => [
      buildGoogleCloudAssetV1Edge(),
      buildGoogleCloudAssetV1Edge(),
    ];

void checkUnnamed36(core.List<api.GoogleCloudAssetV1Edge> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAssetV1Edge(o[0]);
  checkGoogleCloudAssetV1Edge(o[1]);
}

core.List<api.GoogleCloudAssetV1Identity> buildUnnamed37() => [
      buildGoogleCloudAssetV1Identity(),
      buildGoogleCloudAssetV1Identity(),
    ];

void checkUnnamed37(core.List<api.GoogleCloudAssetV1Identity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAssetV1Identity(o[0]);
  checkGoogleCloudAssetV1Identity(o[1]);
}

core.int buildCounterGoogleCloudAssetV1IdentityList = 0;
api.GoogleCloudAssetV1IdentityList buildGoogleCloudAssetV1IdentityList() {
  final o = api.GoogleCloudAssetV1IdentityList();
  buildCounterGoogleCloudAssetV1IdentityList++;
  if (buildCounterGoogleCloudAssetV1IdentityList < 3) {
    o.groupEdges = buildUnnamed36();
    o.identities = buildUnnamed37();
  }
  buildCounterGoogleCloudAssetV1IdentityList--;
  return o;
}

void checkGoogleCloudAssetV1IdentityList(api.GoogleCloudAssetV1IdentityList o) {
  buildCounterGoogleCloudAssetV1IdentityList++;
  if (buildCounterGoogleCloudAssetV1IdentityList < 3) {
    checkUnnamed36(o.groupEdges!);
    checkUnnamed37(o.identities!);
  }
  buildCounterGoogleCloudAssetV1IdentityList--;
}

core.int buildCounterGoogleCloudAssetV1ListConstraint = 0;
api.GoogleCloudAssetV1ListConstraint buildGoogleCloudAssetV1ListConstraint() {
  final o = api.GoogleCloudAssetV1ListConstraint();
  buildCounterGoogleCloudAssetV1ListConstraint++;
  if (buildCounterGoogleCloudAssetV1ListConstraint < 3) {
    o.supportsIn = true;
    o.supportsUnder = true;
  }
  buildCounterGoogleCloudAssetV1ListConstraint--;
  return o;
}

void checkGoogleCloudAssetV1ListConstraint(
    api.GoogleCloudAssetV1ListConstraint o) {
  buildCounterGoogleCloudAssetV1ListConstraint++;
  if (buildCounterGoogleCloudAssetV1ListConstraint < 3) {
    unittest.expect(o.supportsIn!, unittest.isTrue);
    unittest.expect(o.supportsUnder!, unittest.isTrue);
  }
  buildCounterGoogleCloudAssetV1ListConstraint--;
}

core.int
    buildCounterGoogleCloudAssetV1QueryAssetsOutputConfigBigQueryDestination =
    0;
api.GoogleCloudAssetV1QueryAssetsOutputConfigBigQueryDestination
    buildGoogleCloudAssetV1QueryAssetsOutputConfigBigQueryDestination() {
  final o = api.GoogleCloudAssetV1QueryAssetsOutputConfigBigQueryDestination();
  buildCounterGoogleCloudAssetV1QueryAssetsOutputConfigBigQueryDestination++;
  if (buildCounterGoogleCloudAssetV1QueryAssetsOutputConfigBigQueryDestination <
      3) {
    o.dataset = 'foo';
    o.table = 'foo';
    o.writeDisposition = 'foo';
  }
  buildCounterGoogleCloudAssetV1QueryAssetsOutputConfigBigQueryDestination--;
  return o;
}

void checkGoogleCloudAssetV1QueryAssetsOutputConfigBigQueryDestination(
    api.GoogleCloudAssetV1QueryAssetsOutputConfigBigQueryDestination o) {
  buildCounterGoogleCloudAssetV1QueryAssetsOutputConfigBigQueryDestination++;
  if (buildCounterGoogleCloudAssetV1QueryAssetsOutputConfigBigQueryDestination <
      3) {
    unittest.expect(
      o.dataset!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.table!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.writeDisposition!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudAssetV1QueryAssetsOutputConfigBigQueryDestination--;
}

core.int buildCounterGoogleCloudAssetV1Resource = 0;
api.GoogleCloudAssetV1Resource buildGoogleCloudAssetV1Resource() {
  final o = api.GoogleCloudAssetV1Resource();
  buildCounterGoogleCloudAssetV1Resource++;
  if (buildCounterGoogleCloudAssetV1Resource < 3) {
    o.analysisState = buildIamPolicyAnalysisState();
    o.fullResourceName = 'foo';
  }
  buildCounterGoogleCloudAssetV1Resource--;
  return o;
}

void checkGoogleCloudAssetV1Resource(api.GoogleCloudAssetV1Resource o) {
  buildCounterGoogleCloudAssetV1Resource++;
  if (buildCounterGoogleCloudAssetV1Resource < 3) {
    checkIamPolicyAnalysisState(o.analysisState!);
    unittest.expect(
      o.fullResourceName!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudAssetV1Resource--;
}

core.int buildCounterGoogleCloudAssetV1Rule = 0;
api.GoogleCloudAssetV1Rule buildGoogleCloudAssetV1Rule() {
  final o = api.GoogleCloudAssetV1Rule();
  buildCounterGoogleCloudAssetV1Rule++;
  if (buildCounterGoogleCloudAssetV1Rule < 3) {
    o.allowAll = true;
    o.condition = buildExpr();
    o.conditionEvaluation = buildConditionEvaluation();
    o.denyAll = true;
    o.enforce = true;
    o.values = buildGoogleCloudAssetV1StringValues();
  }
  buildCounterGoogleCloudAssetV1Rule--;
  return o;
}

void checkGoogleCloudAssetV1Rule(api.GoogleCloudAssetV1Rule o) {
  buildCounterGoogleCloudAssetV1Rule++;
  if (buildCounterGoogleCloudAssetV1Rule < 3) {
    unittest.expect(o.allowAll!, unittest.isTrue);
    checkExpr(o.condition!);
    checkConditionEvaluation(o.conditionEvaluation!);
    unittest.expect(o.denyAll!, unittest.isTrue);
    unittest.expect(o.enforce!, unittest.isTrue);
    checkGoogleCloudAssetV1StringValues(o.values!);
  }
  buildCounterGoogleCloudAssetV1Rule--;
}

core.List<core.String> buildUnnamed38() => [
      'foo',
      'foo',
    ];

void checkUnnamed38(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudAssetV1StringValues = 0;
api.GoogleCloudAssetV1StringValues buildGoogleCloudAssetV1StringValues() {
  final o = api.GoogleCloudAssetV1StringValues();
  buildCounterGoogleCloudAssetV1StringValues++;
  if (buildCounterGoogleCloudAssetV1StringValues < 3) {
    o.allowedValues = buildUnnamed38();
    o.deniedValues = buildUnnamed39();
  }
  buildCounterGoogleCloudAssetV1StringValues--;
  return o;
}

void checkGoogleCloudAssetV1StringValues(api.GoogleCloudAssetV1StringValues o) {
  buildCounterGoogleCloudAssetV1StringValues++;
  if (buildCounterGoogleCloudAssetV1StringValues < 3) {
    checkUnnamed38(o.allowedValues!);
    checkUnnamed39(o.deniedValues!);
  }
  buildCounterGoogleCloudAssetV1StringValues--;
}

core.int buildCounterGoogleCloudOrgpolicyV1BooleanPolicy = 0;
api.GoogleCloudOrgpolicyV1BooleanPolicy
    buildGoogleCloudOrgpolicyV1BooleanPolicy() {
  final o = api.GoogleCloudOrgpolicyV1BooleanPolicy();
  buildCounterGoogleCloudOrgpolicyV1BooleanPolicy++;
  if (buildCounterGoogleCloudOrgpolicyV1BooleanPolicy < 3) {
    o.enforced = true;
  }
  buildCounterGoogleCloudOrgpolicyV1BooleanPolicy--;
  return o;
}

void checkGoogleCloudOrgpolicyV1BooleanPolicy(
    api.GoogleCloudOrgpolicyV1BooleanPolicy o) {
  buildCounterGoogleCloudOrgpolicyV1BooleanPolicy++;
  if (buildCounterGoogleCloudOrgpolicyV1BooleanPolicy < 3) {
    unittest.expect(o.enforced!, unittest.isTrue);
  }
  buildCounterGoogleCloudOrgpolicyV1BooleanPolicy--;
}

core.List<core.String> buildUnnamed40() => [
      'foo',
      'foo',
    ];

void checkUnnamed40(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudOrgpolicyV1ListPolicy = 0;
api.GoogleCloudOrgpolicyV1ListPolicy buildGoogleCloudOrgpolicyV1ListPolicy() {
  final o = api.GoogleCloudOrgpolicyV1ListPolicy();
  buildCounterGoogleCloudOrgpolicyV1ListPolicy++;
  if (buildCounterGoogleCloudOrgpolicyV1ListPolicy < 3) {
    o.allValues = 'foo';
    o.allowedValues = buildUnnamed40();
    o.deniedValues = buildUnnamed41();
    o.inheritFromParent = true;
    o.suggestedValue = 'foo';
  }
  buildCounterGoogleCloudOrgpolicyV1ListPolicy--;
  return o;
}

void checkGoogleCloudOrgpolicyV1ListPolicy(
    api.GoogleCloudOrgpolicyV1ListPolicy o) {
  buildCounterGoogleCloudOrgpolicyV1ListPolicy++;
  if (buildCounterGoogleCloudOrgpolicyV1ListPolicy < 3) {
    unittest.expect(
      o.allValues!,
      unittest.equals('foo'),
    );
    checkUnnamed40(o.allowedValues!);
    checkUnnamed41(o.deniedValues!);
    unittest.expect(o.inheritFromParent!, unittest.isTrue);
    unittest.expect(
      o.suggestedValue!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudOrgpolicyV1ListPolicy--;
}

core.int buildCounterGoogleCloudOrgpolicyV1Policy = 0;
api.GoogleCloudOrgpolicyV1Policy buildGoogleCloudOrgpolicyV1Policy() {
  final o = api.GoogleCloudOrgpolicyV1Policy();
  buildCounterGoogleCloudOrgpolicyV1Policy++;
  if (buildCounterGoogleCloudOrgpolicyV1Policy < 3) {
    o.booleanPolicy = buildGoogleCloudOrgpolicyV1BooleanPolicy();
    o.constraint = 'foo';
    o.etag = 'foo';
    o.listPolicy = buildGoogleCloudOrgpolicyV1ListPolicy();
    o.restoreDefault = buildGoogleCloudOrgpolicyV1RestoreDefault();
    o.updateTime = 'foo';
    o.version = 42;
  }
  buildCounterGoogleCloudOrgpolicyV1Policy--;
  return o;
}

void checkGoogleCloudOrgpolicyV1Policy(api.GoogleCloudOrgpolicyV1Policy o) {
  buildCounterGoogleCloudOrgpolicyV1Policy++;
  if (buildCounterGoogleCloudOrgpolicyV1Policy < 3) {
    checkGoogleCloudOrgpolicyV1BooleanPolicy(o.booleanPolicy!);
    unittest.expect(
      o.constraint!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    checkGoogleCloudOrgpolicyV1ListPolicy(o.listPolicy!);
    checkGoogleCloudOrgpolicyV1RestoreDefault(o.restoreDefault!);
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudOrgpolicyV1Policy--;
}

core.int buildCounterGoogleCloudOrgpolicyV1RestoreDefault = 0;
api.GoogleCloudOrgpolicyV1RestoreDefault
    buildGoogleCloudOrgpolicyV1RestoreDefault() {
  final o = api.GoogleCloudOrgpolicyV1RestoreDefault();
  buildCounterGoogleCloudOrgpolicyV1RestoreDefault++;
  if (buildCounterGoogleCloudOrgpolicyV1RestoreDefault < 3) {}
  buildCounterGoogleCloudOrgpolicyV1RestoreDefault--;
  return o;
}

void checkGoogleCloudOrgpolicyV1RestoreDefault(
    api.GoogleCloudOrgpolicyV1RestoreDefault o) {
  buildCounterGoogleCloudOrgpolicyV1RestoreDefault++;
  if (buildCounterGoogleCloudOrgpolicyV1RestoreDefault < 3) {}
  buildCounterGoogleCloudOrgpolicyV1RestoreDefault--;
}

core.int buildCounterGoogleIdentityAccesscontextmanagerV1AccessLevel = 0;
api.GoogleIdentityAccesscontextmanagerV1AccessLevel
    buildGoogleIdentityAccesscontextmanagerV1AccessLevel() {
  final o = api.GoogleIdentityAccesscontextmanagerV1AccessLevel();
  buildCounterGoogleIdentityAccesscontextmanagerV1AccessLevel++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1AccessLevel < 3) {
    o.basic = buildGoogleIdentityAccesscontextmanagerV1BasicLevel();
    o.custom = buildGoogleIdentityAccesscontextmanagerV1CustomLevel();
    o.description = 'foo';
    o.name = 'foo';
    o.title = 'foo';
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1AccessLevel--;
  return o;
}

void checkGoogleIdentityAccesscontextmanagerV1AccessLevel(
    api.GoogleIdentityAccesscontextmanagerV1AccessLevel o) {
  buildCounterGoogleIdentityAccesscontextmanagerV1AccessLevel++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1AccessLevel < 3) {
    checkGoogleIdentityAccesscontextmanagerV1BasicLevel(o.basic!);
    checkGoogleIdentityAccesscontextmanagerV1CustomLevel(o.custom!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1AccessLevel--;
}

core.List<core.String> buildUnnamed42() => [
      'foo',
      'foo',
    ];

void checkUnnamed42(core.List<core.String> o) {
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

core.int buildCounterGoogleIdentityAccesscontextmanagerV1AccessPolicy = 0;
api.GoogleIdentityAccesscontextmanagerV1AccessPolicy
    buildGoogleIdentityAccesscontextmanagerV1AccessPolicy() {
  final o = api.GoogleIdentityAccesscontextmanagerV1AccessPolicy();
  buildCounterGoogleIdentityAccesscontextmanagerV1AccessPolicy++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1AccessPolicy < 3) {
    o.etag = 'foo';
    o.name = 'foo';
    o.parent = 'foo';
    o.scopes = buildUnnamed42();
    o.title = 'foo';
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1AccessPolicy--;
  return o;
}

void checkGoogleIdentityAccesscontextmanagerV1AccessPolicy(
    api.GoogleIdentityAccesscontextmanagerV1AccessPolicy o) {
  buildCounterGoogleIdentityAccesscontextmanagerV1AccessPolicy++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1AccessPolicy < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.parent!,
      unittest.equals('foo'),
    );
    checkUnnamed42(o.scopes!);
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1AccessPolicy--;
}

core.List<api.GoogleIdentityAccesscontextmanagerV1MethodSelector>
    buildUnnamed43() => [
          buildGoogleIdentityAccesscontextmanagerV1MethodSelector(),
          buildGoogleIdentityAccesscontextmanagerV1MethodSelector(),
        ];

void checkUnnamed43(
    core.List<api.GoogleIdentityAccesscontextmanagerV1MethodSelector> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIdentityAccesscontextmanagerV1MethodSelector(o[0]);
  checkGoogleIdentityAccesscontextmanagerV1MethodSelector(o[1]);
}

core.int buildCounterGoogleIdentityAccesscontextmanagerV1ApiOperation = 0;
api.GoogleIdentityAccesscontextmanagerV1ApiOperation
    buildGoogleIdentityAccesscontextmanagerV1ApiOperation() {
  final o = api.GoogleIdentityAccesscontextmanagerV1ApiOperation();
  buildCounterGoogleIdentityAccesscontextmanagerV1ApiOperation++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1ApiOperation < 3) {
    o.methodSelectors = buildUnnamed43();
    o.serviceName = 'foo';
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1ApiOperation--;
  return o;
}

void checkGoogleIdentityAccesscontextmanagerV1ApiOperation(
    api.GoogleIdentityAccesscontextmanagerV1ApiOperation o) {
  buildCounterGoogleIdentityAccesscontextmanagerV1ApiOperation++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1ApiOperation < 3) {
    checkUnnamed43(o.methodSelectors!);
    unittest.expect(
      o.serviceName!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1ApiOperation--;
}

core.List<api.GoogleIdentityAccesscontextmanagerV1Condition> buildUnnamed44() =>
    [
      buildGoogleIdentityAccesscontextmanagerV1Condition(),
      buildGoogleIdentityAccesscontextmanagerV1Condition(),
    ];

void checkUnnamed44(
    core.List<api.GoogleIdentityAccesscontextmanagerV1Condition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIdentityAccesscontextmanagerV1Condition(o[0]);
  checkGoogleIdentityAccesscontextmanagerV1Condition(o[1]);
}

core.int buildCounterGoogleIdentityAccesscontextmanagerV1BasicLevel = 0;
api.GoogleIdentityAccesscontextmanagerV1BasicLevel
    buildGoogleIdentityAccesscontextmanagerV1BasicLevel() {
  final o = api.GoogleIdentityAccesscontextmanagerV1BasicLevel();
  buildCounterGoogleIdentityAccesscontextmanagerV1BasicLevel++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1BasicLevel < 3) {
    o.combiningFunction = 'foo';
    o.conditions = buildUnnamed44();
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1BasicLevel--;
  return o;
}

void checkGoogleIdentityAccesscontextmanagerV1BasicLevel(
    api.GoogleIdentityAccesscontextmanagerV1BasicLevel o) {
  buildCounterGoogleIdentityAccesscontextmanagerV1BasicLevel++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1BasicLevel < 3) {
    unittest.expect(
      o.combiningFunction!,
      unittest.equals('foo'),
    );
    checkUnnamed44(o.conditions!);
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1BasicLevel--;
}

core.List<core.String> buildUnnamed45() => [
      'foo',
      'foo',
    ];

void checkUnnamed45(core.List<core.String> o) {
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

core.List<api.GoogleIdentityAccesscontextmanagerV1VpcNetworkSource>
    buildUnnamed49() => [
          buildGoogleIdentityAccesscontextmanagerV1VpcNetworkSource(),
          buildGoogleIdentityAccesscontextmanagerV1VpcNetworkSource(),
        ];

void checkUnnamed49(
    core.List<api.GoogleIdentityAccesscontextmanagerV1VpcNetworkSource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIdentityAccesscontextmanagerV1VpcNetworkSource(o[0]);
  checkGoogleIdentityAccesscontextmanagerV1VpcNetworkSource(o[1]);
}

core.int buildCounterGoogleIdentityAccesscontextmanagerV1Condition = 0;
api.GoogleIdentityAccesscontextmanagerV1Condition
    buildGoogleIdentityAccesscontextmanagerV1Condition() {
  final o = api.GoogleIdentityAccesscontextmanagerV1Condition();
  buildCounterGoogleIdentityAccesscontextmanagerV1Condition++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1Condition < 3) {
    o.devicePolicy = buildGoogleIdentityAccesscontextmanagerV1DevicePolicy();
    o.ipSubnetworks = buildUnnamed45();
    o.members = buildUnnamed46();
    o.negate = true;
    o.regions = buildUnnamed47();
    o.requiredAccessLevels = buildUnnamed48();
    o.vpcNetworkSources = buildUnnamed49();
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1Condition--;
  return o;
}

void checkGoogleIdentityAccesscontextmanagerV1Condition(
    api.GoogleIdentityAccesscontextmanagerV1Condition o) {
  buildCounterGoogleIdentityAccesscontextmanagerV1Condition++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1Condition < 3) {
    checkGoogleIdentityAccesscontextmanagerV1DevicePolicy(o.devicePolicy!);
    checkUnnamed45(o.ipSubnetworks!);
    checkUnnamed46(o.members!);
    unittest.expect(o.negate!, unittest.isTrue);
    checkUnnamed47(o.regions!);
    checkUnnamed48(o.requiredAccessLevels!);
    checkUnnamed49(o.vpcNetworkSources!);
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1Condition--;
}

core.int buildCounterGoogleIdentityAccesscontextmanagerV1CustomLevel = 0;
api.GoogleIdentityAccesscontextmanagerV1CustomLevel
    buildGoogleIdentityAccesscontextmanagerV1CustomLevel() {
  final o = api.GoogleIdentityAccesscontextmanagerV1CustomLevel();
  buildCounterGoogleIdentityAccesscontextmanagerV1CustomLevel++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1CustomLevel < 3) {
    o.expr = buildExpr();
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1CustomLevel--;
  return o;
}

void checkGoogleIdentityAccesscontextmanagerV1CustomLevel(
    api.GoogleIdentityAccesscontextmanagerV1CustomLevel o) {
  buildCounterGoogleIdentityAccesscontextmanagerV1CustomLevel++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1CustomLevel < 3) {
    checkExpr(o.expr!);
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1CustomLevel--;
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

core.List<api.GoogleIdentityAccesscontextmanagerV1OsConstraint>
    buildUnnamed52() => [
          buildGoogleIdentityAccesscontextmanagerV1OsConstraint(),
          buildGoogleIdentityAccesscontextmanagerV1OsConstraint(),
        ];

void checkUnnamed52(
    core.List<api.GoogleIdentityAccesscontextmanagerV1OsConstraint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIdentityAccesscontextmanagerV1OsConstraint(o[0]);
  checkGoogleIdentityAccesscontextmanagerV1OsConstraint(o[1]);
}

core.int buildCounterGoogleIdentityAccesscontextmanagerV1DevicePolicy = 0;
api.GoogleIdentityAccesscontextmanagerV1DevicePolicy
    buildGoogleIdentityAccesscontextmanagerV1DevicePolicy() {
  final o = api.GoogleIdentityAccesscontextmanagerV1DevicePolicy();
  buildCounterGoogleIdentityAccesscontextmanagerV1DevicePolicy++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1DevicePolicy < 3) {
    o.allowedDeviceManagementLevels = buildUnnamed50();
    o.allowedEncryptionStatuses = buildUnnamed51();
    o.osConstraints = buildUnnamed52();
    o.requireAdminApproval = true;
    o.requireCorpOwned = true;
    o.requireScreenlock = true;
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1DevicePolicy--;
  return o;
}

void checkGoogleIdentityAccesscontextmanagerV1DevicePolicy(
    api.GoogleIdentityAccesscontextmanagerV1DevicePolicy o) {
  buildCounterGoogleIdentityAccesscontextmanagerV1DevicePolicy++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1DevicePolicy < 3) {
    checkUnnamed50(o.allowedDeviceManagementLevels!);
    checkUnnamed51(o.allowedEncryptionStatuses!);
    checkUnnamed52(o.osConstraints!);
    unittest.expect(o.requireAdminApproval!, unittest.isTrue);
    unittest.expect(o.requireCorpOwned!, unittest.isTrue);
    unittest.expect(o.requireScreenlock!, unittest.isTrue);
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1DevicePolicy--;
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

core.List<api.GoogleIdentityAccesscontextmanagerV1EgressSource>
    buildUnnamed54() => [
          buildGoogleIdentityAccesscontextmanagerV1EgressSource(),
          buildGoogleIdentityAccesscontextmanagerV1EgressSource(),
        ];

void checkUnnamed54(
    core.List<api.GoogleIdentityAccesscontextmanagerV1EgressSource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIdentityAccesscontextmanagerV1EgressSource(o[0]);
  checkGoogleIdentityAccesscontextmanagerV1EgressSource(o[1]);
}

core.int buildCounterGoogleIdentityAccesscontextmanagerV1EgressFrom = 0;
api.GoogleIdentityAccesscontextmanagerV1EgressFrom
    buildGoogleIdentityAccesscontextmanagerV1EgressFrom() {
  final o = api.GoogleIdentityAccesscontextmanagerV1EgressFrom();
  buildCounterGoogleIdentityAccesscontextmanagerV1EgressFrom++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1EgressFrom < 3) {
    o.identities = buildUnnamed53();
    o.identityType = 'foo';
    o.sourceRestriction = 'foo';
    o.sources = buildUnnamed54();
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1EgressFrom--;
  return o;
}

void checkGoogleIdentityAccesscontextmanagerV1EgressFrom(
    api.GoogleIdentityAccesscontextmanagerV1EgressFrom o) {
  buildCounterGoogleIdentityAccesscontextmanagerV1EgressFrom++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1EgressFrom < 3) {
    checkUnnamed53(o.identities!);
    unittest.expect(
      o.identityType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sourceRestriction!,
      unittest.equals('foo'),
    );
    checkUnnamed54(o.sources!);
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1EgressFrom--;
}

core.int buildCounterGoogleIdentityAccesscontextmanagerV1EgressPolicy = 0;
api.GoogleIdentityAccesscontextmanagerV1EgressPolicy
    buildGoogleIdentityAccesscontextmanagerV1EgressPolicy() {
  final o = api.GoogleIdentityAccesscontextmanagerV1EgressPolicy();
  buildCounterGoogleIdentityAccesscontextmanagerV1EgressPolicy++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1EgressPolicy < 3) {
    o.egressFrom = buildGoogleIdentityAccesscontextmanagerV1EgressFrom();
    o.egressTo = buildGoogleIdentityAccesscontextmanagerV1EgressTo();
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1EgressPolicy--;
  return o;
}

void checkGoogleIdentityAccesscontextmanagerV1EgressPolicy(
    api.GoogleIdentityAccesscontextmanagerV1EgressPolicy o) {
  buildCounterGoogleIdentityAccesscontextmanagerV1EgressPolicy++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1EgressPolicy < 3) {
    checkGoogleIdentityAccesscontextmanagerV1EgressFrom(o.egressFrom!);
    checkGoogleIdentityAccesscontextmanagerV1EgressTo(o.egressTo!);
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1EgressPolicy--;
}

core.int buildCounterGoogleIdentityAccesscontextmanagerV1EgressSource = 0;
api.GoogleIdentityAccesscontextmanagerV1EgressSource
    buildGoogleIdentityAccesscontextmanagerV1EgressSource() {
  final o = api.GoogleIdentityAccesscontextmanagerV1EgressSource();
  buildCounterGoogleIdentityAccesscontextmanagerV1EgressSource++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1EgressSource < 3) {
    o.accessLevel = 'foo';
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1EgressSource--;
  return o;
}

void checkGoogleIdentityAccesscontextmanagerV1EgressSource(
    api.GoogleIdentityAccesscontextmanagerV1EgressSource o) {
  buildCounterGoogleIdentityAccesscontextmanagerV1EgressSource++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1EgressSource < 3) {
    unittest.expect(
      o.accessLevel!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1EgressSource--;
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

core.List<api.GoogleIdentityAccesscontextmanagerV1ApiOperation>
    buildUnnamed56() => [
          buildGoogleIdentityAccesscontextmanagerV1ApiOperation(),
          buildGoogleIdentityAccesscontextmanagerV1ApiOperation(),
        ];

void checkUnnamed56(
    core.List<api.GoogleIdentityAccesscontextmanagerV1ApiOperation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIdentityAccesscontextmanagerV1ApiOperation(o[0]);
  checkGoogleIdentityAccesscontextmanagerV1ApiOperation(o[1]);
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

core.int buildCounterGoogleIdentityAccesscontextmanagerV1EgressTo = 0;
api.GoogleIdentityAccesscontextmanagerV1EgressTo
    buildGoogleIdentityAccesscontextmanagerV1EgressTo() {
  final o = api.GoogleIdentityAccesscontextmanagerV1EgressTo();
  buildCounterGoogleIdentityAccesscontextmanagerV1EgressTo++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1EgressTo < 3) {
    o.externalResources = buildUnnamed55();
    o.operations = buildUnnamed56();
    o.resources = buildUnnamed57();
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1EgressTo--;
  return o;
}

void checkGoogleIdentityAccesscontextmanagerV1EgressTo(
    api.GoogleIdentityAccesscontextmanagerV1EgressTo o) {
  buildCounterGoogleIdentityAccesscontextmanagerV1EgressTo++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1EgressTo < 3) {
    checkUnnamed55(o.externalResources!);
    checkUnnamed56(o.operations!);
    checkUnnamed57(o.resources!);
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1EgressTo--;
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

core.List<api.GoogleIdentityAccesscontextmanagerV1IngressSource>
    buildUnnamed59() => [
          buildGoogleIdentityAccesscontextmanagerV1IngressSource(),
          buildGoogleIdentityAccesscontextmanagerV1IngressSource(),
        ];

void checkUnnamed59(
    core.List<api.GoogleIdentityAccesscontextmanagerV1IngressSource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIdentityAccesscontextmanagerV1IngressSource(o[0]);
  checkGoogleIdentityAccesscontextmanagerV1IngressSource(o[1]);
}

core.int buildCounterGoogleIdentityAccesscontextmanagerV1IngressFrom = 0;
api.GoogleIdentityAccesscontextmanagerV1IngressFrom
    buildGoogleIdentityAccesscontextmanagerV1IngressFrom() {
  final o = api.GoogleIdentityAccesscontextmanagerV1IngressFrom();
  buildCounterGoogleIdentityAccesscontextmanagerV1IngressFrom++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1IngressFrom < 3) {
    o.identities = buildUnnamed58();
    o.identityType = 'foo';
    o.sources = buildUnnamed59();
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1IngressFrom--;
  return o;
}

void checkGoogleIdentityAccesscontextmanagerV1IngressFrom(
    api.GoogleIdentityAccesscontextmanagerV1IngressFrom o) {
  buildCounterGoogleIdentityAccesscontextmanagerV1IngressFrom++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1IngressFrom < 3) {
    checkUnnamed58(o.identities!);
    unittest.expect(
      o.identityType!,
      unittest.equals('foo'),
    );
    checkUnnamed59(o.sources!);
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1IngressFrom--;
}

core.int buildCounterGoogleIdentityAccesscontextmanagerV1IngressPolicy = 0;
api.GoogleIdentityAccesscontextmanagerV1IngressPolicy
    buildGoogleIdentityAccesscontextmanagerV1IngressPolicy() {
  final o = api.GoogleIdentityAccesscontextmanagerV1IngressPolicy();
  buildCounterGoogleIdentityAccesscontextmanagerV1IngressPolicy++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1IngressPolicy < 3) {
    o.ingressFrom = buildGoogleIdentityAccesscontextmanagerV1IngressFrom();
    o.ingressTo = buildGoogleIdentityAccesscontextmanagerV1IngressTo();
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1IngressPolicy--;
  return o;
}

void checkGoogleIdentityAccesscontextmanagerV1IngressPolicy(
    api.GoogleIdentityAccesscontextmanagerV1IngressPolicy o) {
  buildCounterGoogleIdentityAccesscontextmanagerV1IngressPolicy++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1IngressPolicy < 3) {
    checkGoogleIdentityAccesscontextmanagerV1IngressFrom(o.ingressFrom!);
    checkGoogleIdentityAccesscontextmanagerV1IngressTo(o.ingressTo!);
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1IngressPolicy--;
}

core.int buildCounterGoogleIdentityAccesscontextmanagerV1IngressSource = 0;
api.GoogleIdentityAccesscontextmanagerV1IngressSource
    buildGoogleIdentityAccesscontextmanagerV1IngressSource() {
  final o = api.GoogleIdentityAccesscontextmanagerV1IngressSource();
  buildCounterGoogleIdentityAccesscontextmanagerV1IngressSource++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1IngressSource < 3) {
    o.accessLevel = 'foo';
    o.resource = 'foo';
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1IngressSource--;
  return o;
}

void checkGoogleIdentityAccesscontextmanagerV1IngressSource(
    api.GoogleIdentityAccesscontextmanagerV1IngressSource o) {
  buildCounterGoogleIdentityAccesscontextmanagerV1IngressSource++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1IngressSource < 3) {
    unittest.expect(
      o.accessLevel!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resource!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1IngressSource--;
}

core.List<api.GoogleIdentityAccesscontextmanagerV1ApiOperation>
    buildUnnamed60() => [
          buildGoogleIdentityAccesscontextmanagerV1ApiOperation(),
          buildGoogleIdentityAccesscontextmanagerV1ApiOperation(),
        ];

void checkUnnamed60(
    core.List<api.GoogleIdentityAccesscontextmanagerV1ApiOperation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIdentityAccesscontextmanagerV1ApiOperation(o[0]);
  checkGoogleIdentityAccesscontextmanagerV1ApiOperation(o[1]);
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

core.int buildCounterGoogleIdentityAccesscontextmanagerV1IngressTo = 0;
api.GoogleIdentityAccesscontextmanagerV1IngressTo
    buildGoogleIdentityAccesscontextmanagerV1IngressTo() {
  final o = api.GoogleIdentityAccesscontextmanagerV1IngressTo();
  buildCounterGoogleIdentityAccesscontextmanagerV1IngressTo++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1IngressTo < 3) {
    o.operations = buildUnnamed60();
    o.resources = buildUnnamed61();
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1IngressTo--;
  return o;
}

void checkGoogleIdentityAccesscontextmanagerV1IngressTo(
    api.GoogleIdentityAccesscontextmanagerV1IngressTo o) {
  buildCounterGoogleIdentityAccesscontextmanagerV1IngressTo++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1IngressTo < 3) {
    checkUnnamed60(o.operations!);
    checkUnnamed61(o.resources!);
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1IngressTo--;
}

core.int buildCounterGoogleIdentityAccesscontextmanagerV1MethodSelector = 0;
api.GoogleIdentityAccesscontextmanagerV1MethodSelector
    buildGoogleIdentityAccesscontextmanagerV1MethodSelector() {
  final o = api.GoogleIdentityAccesscontextmanagerV1MethodSelector();
  buildCounterGoogleIdentityAccesscontextmanagerV1MethodSelector++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1MethodSelector < 3) {
    o.method = 'foo';
    o.permission = 'foo';
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1MethodSelector--;
  return o;
}

void checkGoogleIdentityAccesscontextmanagerV1MethodSelector(
    api.GoogleIdentityAccesscontextmanagerV1MethodSelector o) {
  buildCounterGoogleIdentityAccesscontextmanagerV1MethodSelector++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1MethodSelector < 3) {
    unittest.expect(
      o.method!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.permission!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1MethodSelector--;
}

core.int buildCounterGoogleIdentityAccesscontextmanagerV1OsConstraint = 0;
api.GoogleIdentityAccesscontextmanagerV1OsConstraint
    buildGoogleIdentityAccesscontextmanagerV1OsConstraint() {
  final o = api.GoogleIdentityAccesscontextmanagerV1OsConstraint();
  buildCounterGoogleIdentityAccesscontextmanagerV1OsConstraint++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1OsConstraint < 3) {
    o.minimumVersion = 'foo';
    o.osType = 'foo';
    o.requireVerifiedChromeOs = true;
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1OsConstraint--;
  return o;
}

void checkGoogleIdentityAccesscontextmanagerV1OsConstraint(
    api.GoogleIdentityAccesscontextmanagerV1OsConstraint o) {
  buildCounterGoogleIdentityAccesscontextmanagerV1OsConstraint++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1OsConstraint < 3) {
    unittest.expect(
      o.minimumVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.osType!,
      unittest.equals('foo'),
    );
    unittest.expect(o.requireVerifiedChromeOs!, unittest.isTrue);
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1OsConstraint--;
}

core.int buildCounterGoogleIdentityAccesscontextmanagerV1ServicePerimeter = 0;
api.GoogleIdentityAccesscontextmanagerV1ServicePerimeter
    buildGoogleIdentityAccesscontextmanagerV1ServicePerimeter() {
  final o = api.GoogleIdentityAccesscontextmanagerV1ServicePerimeter();
  buildCounterGoogleIdentityAccesscontextmanagerV1ServicePerimeter++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1ServicePerimeter < 3) {
    o.description = 'foo';
    o.name = 'foo';
    o.perimeterType = 'foo';
    o.spec = buildGoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig();
    o.status =
        buildGoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig();
    o.title = 'foo';
    o.useExplicitDryRunSpec = true;
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1ServicePerimeter--;
  return o;
}

void checkGoogleIdentityAccesscontextmanagerV1ServicePerimeter(
    api.GoogleIdentityAccesscontextmanagerV1ServicePerimeter o) {
  buildCounterGoogleIdentityAccesscontextmanagerV1ServicePerimeter++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1ServicePerimeter < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.perimeterType!,
      unittest.equals('foo'),
    );
    checkGoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig(o.spec!);
    checkGoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig(o.status!);
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
    unittest.expect(o.useExplicitDryRunSpec!, unittest.isTrue);
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1ServicePerimeter--;
}

core.List<core.String> buildUnnamed62() => [
      'foo',
      'foo',
    ];

void checkUnnamed62(core.List<core.String> o) {
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

core.List<api.GoogleIdentityAccesscontextmanagerV1EgressPolicy>
    buildUnnamed63() => [
          buildGoogleIdentityAccesscontextmanagerV1EgressPolicy(),
          buildGoogleIdentityAccesscontextmanagerV1EgressPolicy(),
        ];

void checkUnnamed63(
    core.List<api.GoogleIdentityAccesscontextmanagerV1EgressPolicy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIdentityAccesscontextmanagerV1EgressPolicy(o[0]);
  checkGoogleIdentityAccesscontextmanagerV1EgressPolicy(o[1]);
}

core.List<api.GoogleIdentityAccesscontextmanagerV1IngressPolicy>
    buildUnnamed64() => [
          buildGoogleIdentityAccesscontextmanagerV1IngressPolicy(),
          buildGoogleIdentityAccesscontextmanagerV1IngressPolicy(),
        ];

void checkUnnamed64(
    core.List<api.GoogleIdentityAccesscontextmanagerV1IngressPolicy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIdentityAccesscontextmanagerV1IngressPolicy(o[0]);
  checkGoogleIdentityAccesscontextmanagerV1IngressPolicy(o[1]);
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

core.int
    buildCounterGoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig = 0;
api.GoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig
    buildGoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig() {
  final o = api.GoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig();
  buildCounterGoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig <
      3) {
    o.accessLevels = buildUnnamed62();
    o.egressPolicies = buildUnnamed63();
    o.ingressPolicies = buildUnnamed64();
    o.resources = buildUnnamed65();
    o.restrictedServices = buildUnnamed66();
    o.vpcAccessibleServices =
        buildGoogleIdentityAccesscontextmanagerV1VpcAccessibleServices();
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig--;
  return o;
}

void checkGoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig(
    api.GoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig o) {
  buildCounterGoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig <
      3) {
    checkUnnamed62(o.accessLevels!);
    checkUnnamed63(o.egressPolicies!);
    checkUnnamed64(o.ingressPolicies!);
    checkUnnamed65(o.resources!);
    checkUnnamed66(o.restrictedServices!);
    checkGoogleIdentityAccesscontextmanagerV1VpcAccessibleServices(
        o.vpcAccessibleServices!);
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig--;
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

core.int buildCounterGoogleIdentityAccesscontextmanagerV1VpcAccessibleServices =
    0;
api.GoogleIdentityAccesscontextmanagerV1VpcAccessibleServices
    buildGoogleIdentityAccesscontextmanagerV1VpcAccessibleServices() {
  final o = api.GoogleIdentityAccesscontextmanagerV1VpcAccessibleServices();
  buildCounterGoogleIdentityAccesscontextmanagerV1VpcAccessibleServices++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1VpcAccessibleServices <
      3) {
    o.allowedServices = buildUnnamed67();
    o.enableRestriction = true;
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1VpcAccessibleServices--;
  return o;
}

void checkGoogleIdentityAccesscontextmanagerV1VpcAccessibleServices(
    api.GoogleIdentityAccesscontextmanagerV1VpcAccessibleServices o) {
  buildCounterGoogleIdentityAccesscontextmanagerV1VpcAccessibleServices++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1VpcAccessibleServices <
      3) {
    checkUnnamed67(o.allowedServices!);
    unittest.expect(o.enableRestriction!, unittest.isTrue);
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1VpcAccessibleServices--;
}

core.int buildCounterGoogleIdentityAccesscontextmanagerV1VpcNetworkSource = 0;
api.GoogleIdentityAccesscontextmanagerV1VpcNetworkSource
    buildGoogleIdentityAccesscontextmanagerV1VpcNetworkSource() {
  final o = api.GoogleIdentityAccesscontextmanagerV1VpcNetworkSource();
  buildCounterGoogleIdentityAccesscontextmanagerV1VpcNetworkSource++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1VpcNetworkSource < 3) {
    o.vpcSubnetwork = buildGoogleIdentityAccesscontextmanagerV1VpcSubNetwork();
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1VpcNetworkSource--;
  return o;
}

void checkGoogleIdentityAccesscontextmanagerV1VpcNetworkSource(
    api.GoogleIdentityAccesscontextmanagerV1VpcNetworkSource o) {
  buildCounterGoogleIdentityAccesscontextmanagerV1VpcNetworkSource++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1VpcNetworkSource < 3) {
    checkGoogleIdentityAccesscontextmanagerV1VpcSubNetwork(o.vpcSubnetwork!);
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1VpcNetworkSource--;
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

core.int buildCounterGoogleIdentityAccesscontextmanagerV1VpcSubNetwork = 0;
api.GoogleIdentityAccesscontextmanagerV1VpcSubNetwork
    buildGoogleIdentityAccesscontextmanagerV1VpcSubNetwork() {
  final o = api.GoogleIdentityAccesscontextmanagerV1VpcSubNetwork();
  buildCounterGoogleIdentityAccesscontextmanagerV1VpcSubNetwork++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1VpcSubNetwork < 3) {
    o.network = 'foo';
    o.vpcIpSubnetworks = buildUnnamed68();
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1VpcSubNetwork--;
  return o;
}

void checkGoogleIdentityAccesscontextmanagerV1VpcSubNetwork(
    api.GoogleIdentityAccesscontextmanagerV1VpcSubNetwork o) {
  buildCounterGoogleIdentityAccesscontextmanagerV1VpcSubNetwork++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1VpcSubNetwork < 3) {
    unittest.expect(
      o.network!,
      unittest.equals('foo'),
    );
    checkUnnamed68(o.vpcIpSubnetworks!);
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1VpcSubNetwork--;
}

core.List<api.IamPolicyAnalysisResult> buildUnnamed69() => [
      buildIamPolicyAnalysisResult(),
      buildIamPolicyAnalysisResult(),
    ];

void checkUnnamed69(core.List<api.IamPolicyAnalysisResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIamPolicyAnalysisResult(o[0]);
  checkIamPolicyAnalysisResult(o[1]);
}

core.List<api.IamPolicyAnalysisState> buildUnnamed70() => [
      buildIamPolicyAnalysisState(),
      buildIamPolicyAnalysisState(),
    ];

void checkUnnamed70(core.List<api.IamPolicyAnalysisState> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIamPolicyAnalysisState(o[0]);
  checkIamPolicyAnalysisState(o[1]);
}

core.int buildCounterIamPolicyAnalysis = 0;
api.IamPolicyAnalysis buildIamPolicyAnalysis() {
  final o = api.IamPolicyAnalysis();
  buildCounterIamPolicyAnalysis++;
  if (buildCounterIamPolicyAnalysis < 3) {
    o.analysisQuery = buildIamPolicyAnalysisQuery();
    o.analysisResults = buildUnnamed69();
    o.fullyExplored = true;
    o.nonCriticalErrors = buildUnnamed70();
  }
  buildCounterIamPolicyAnalysis--;
  return o;
}

void checkIamPolicyAnalysis(api.IamPolicyAnalysis o) {
  buildCounterIamPolicyAnalysis++;
  if (buildCounterIamPolicyAnalysis < 3) {
    checkIamPolicyAnalysisQuery(o.analysisQuery!);
    checkUnnamed69(o.analysisResults!);
    unittest.expect(o.fullyExplored!, unittest.isTrue);
    checkUnnamed70(o.nonCriticalErrors!);
  }
  buildCounterIamPolicyAnalysis--;
}

core.int buildCounterIamPolicyAnalysisOutputConfig = 0;
api.IamPolicyAnalysisOutputConfig buildIamPolicyAnalysisOutputConfig() {
  final o = api.IamPolicyAnalysisOutputConfig();
  buildCounterIamPolicyAnalysisOutputConfig++;
  if (buildCounterIamPolicyAnalysisOutputConfig < 3) {
    o.bigqueryDestination = buildGoogleCloudAssetV1BigQueryDestination();
    o.gcsDestination = buildGoogleCloudAssetV1GcsDestination();
  }
  buildCounterIamPolicyAnalysisOutputConfig--;
  return o;
}

void checkIamPolicyAnalysisOutputConfig(api.IamPolicyAnalysisOutputConfig o) {
  buildCounterIamPolicyAnalysisOutputConfig++;
  if (buildCounterIamPolicyAnalysisOutputConfig < 3) {
    checkGoogleCloudAssetV1BigQueryDestination(o.bigqueryDestination!);
    checkGoogleCloudAssetV1GcsDestination(o.gcsDestination!);
  }
  buildCounterIamPolicyAnalysisOutputConfig--;
}

core.int buildCounterIamPolicyAnalysisQuery = 0;
api.IamPolicyAnalysisQuery buildIamPolicyAnalysisQuery() {
  final o = api.IamPolicyAnalysisQuery();
  buildCounterIamPolicyAnalysisQuery++;
  if (buildCounterIamPolicyAnalysisQuery < 3) {
    o.accessSelector = buildAccessSelector();
    o.conditionContext = buildConditionContext();
    o.identitySelector = buildIdentitySelector();
    o.options = buildOptions();
    o.resourceSelector = buildResourceSelector();
    o.scope = 'foo';
  }
  buildCounterIamPolicyAnalysisQuery--;
  return o;
}

void checkIamPolicyAnalysisQuery(api.IamPolicyAnalysisQuery o) {
  buildCounterIamPolicyAnalysisQuery++;
  if (buildCounterIamPolicyAnalysisQuery < 3) {
    checkAccessSelector(o.accessSelector!);
    checkConditionContext(o.conditionContext!);
    checkIdentitySelector(o.identitySelector!);
    checkOptions(o.options!);
    checkResourceSelector(o.resourceSelector!);
    unittest.expect(
      o.scope!,
      unittest.equals('foo'),
    );
  }
  buildCounterIamPolicyAnalysisQuery--;
}

core.List<api.GoogleCloudAssetV1AccessControlList> buildUnnamed71() => [
      buildGoogleCloudAssetV1AccessControlList(),
      buildGoogleCloudAssetV1AccessControlList(),
    ];

void checkUnnamed71(core.List<api.GoogleCloudAssetV1AccessControlList> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAssetV1AccessControlList(o[0]);
  checkGoogleCloudAssetV1AccessControlList(o[1]);
}

core.int buildCounterIamPolicyAnalysisResult = 0;
api.IamPolicyAnalysisResult buildIamPolicyAnalysisResult() {
  final o = api.IamPolicyAnalysisResult();
  buildCounterIamPolicyAnalysisResult++;
  if (buildCounterIamPolicyAnalysisResult < 3) {
    o.accessControlLists = buildUnnamed71();
    o.attachedResourceFullName = 'foo';
    o.fullyExplored = true;
    o.iamBinding = buildBinding();
    o.identityList = buildGoogleCloudAssetV1IdentityList();
  }
  buildCounterIamPolicyAnalysisResult--;
  return o;
}

void checkIamPolicyAnalysisResult(api.IamPolicyAnalysisResult o) {
  buildCounterIamPolicyAnalysisResult++;
  if (buildCounterIamPolicyAnalysisResult < 3) {
    checkUnnamed71(o.accessControlLists!);
    unittest.expect(
      o.attachedResourceFullName!,
      unittest.equals('foo'),
    );
    unittest.expect(o.fullyExplored!, unittest.isTrue);
    checkBinding(o.iamBinding!);
    checkGoogleCloudAssetV1IdentityList(o.identityList!);
  }
  buildCounterIamPolicyAnalysisResult--;
}

core.int buildCounterIamPolicyAnalysisState = 0;
api.IamPolicyAnalysisState buildIamPolicyAnalysisState() {
  final o = api.IamPolicyAnalysisState();
  buildCounterIamPolicyAnalysisState++;
  if (buildCounterIamPolicyAnalysisState < 3) {
    o.cause = 'foo';
    o.code = 'foo';
  }
  buildCounterIamPolicyAnalysisState--;
  return o;
}

void checkIamPolicyAnalysisState(api.IamPolicyAnalysisState o) {
  buildCounterIamPolicyAnalysisState++;
  if (buildCounterIamPolicyAnalysisState < 3) {
    unittest.expect(
      o.cause!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.code!,
      unittest.equals('foo'),
    );
  }
  buildCounterIamPolicyAnalysisState--;
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

core.int buildCounterIamPolicySearchResult = 0;
api.IamPolicySearchResult buildIamPolicySearchResult() {
  final o = api.IamPolicySearchResult();
  buildCounterIamPolicySearchResult++;
  if (buildCounterIamPolicySearchResult < 3) {
    o.assetType = 'foo';
    o.explanation = buildExplanation();
    o.folders = buildUnnamed72();
    o.organization = 'foo';
    o.policy = buildPolicy();
    o.project = 'foo';
    o.resource = 'foo';
  }
  buildCounterIamPolicySearchResult--;
  return o;
}

void checkIamPolicySearchResult(api.IamPolicySearchResult o) {
  buildCounterIamPolicySearchResult++;
  if (buildCounterIamPolicySearchResult < 3) {
    unittest.expect(
      o.assetType!,
      unittest.equals('foo'),
    );
    checkExplanation(o.explanation!);
    checkUnnamed72(o.folders!);
    unittest.expect(
      o.organization!,
      unittest.equals('foo'),
    );
    checkPolicy(o.policy!);
    unittest.expect(
      o.project!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resource!,
      unittest.equals('foo'),
    );
  }
  buildCounterIamPolicySearchResult--;
}

core.int buildCounterIdentitySelector = 0;
api.IdentitySelector buildIdentitySelector() {
  final o = api.IdentitySelector();
  buildCounterIdentitySelector++;
  if (buildCounterIdentitySelector < 3) {
    o.identity = 'foo';
  }
  buildCounterIdentitySelector--;
  return o;
}

void checkIdentitySelector(api.IdentitySelector o) {
  buildCounterIdentitySelector++;
  if (buildCounterIdentitySelector < 3) {
    unittest.expect(
      o.identity!,
      unittest.equals('foo'),
    );
  }
  buildCounterIdentitySelector--;
}

core.Map<core.String, api.Item> buildUnnamed73() => {
      'x': buildItem(),
      'y': buildItem(),
    };

void checkUnnamed73(core.Map<core.String, api.Item> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkItem(o['x']!);
  checkItem(o['y']!);
}

core.int buildCounterInventory = 0;
api.Inventory buildInventory() {
  final o = api.Inventory();
  buildCounterInventory++;
  if (buildCounterInventory < 3) {
    o.items = buildUnnamed73();
    o.name = 'foo';
    o.osInfo = buildOsInfo();
    o.updateTime = 'foo';
  }
  buildCounterInventory--;
  return o;
}

void checkInventory(api.Inventory o) {
  buildCounterInventory++;
  if (buildCounterInventory < 3) {
    checkUnnamed73(o.items!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkOsInfo(o.osInfo!);
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterInventory--;
}

core.int buildCounterItem = 0;
api.Item buildItem() {
  final o = api.Item();
  buildCounterItem++;
  if (buildCounterItem < 3) {
    o.availablePackage = buildSoftwarePackage();
    o.createTime = 'foo';
    o.id = 'foo';
    o.installedPackage = buildSoftwarePackage();
    o.originType = 'foo';
    o.type = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterItem--;
  return o;
}

void checkItem(api.Item o) {
  buildCounterItem++;
  if (buildCounterItem < 3) {
    checkSoftwarePackage(o.availablePackage!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkSoftwarePackage(o.installedPackage!);
    unittest.expect(
      o.originType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterItem--;
}

core.List<api.Asset> buildUnnamed74() => [
      buildAsset(),
      buildAsset(),
    ];

void checkUnnamed74(core.List<api.Asset> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAsset(o[0]);
  checkAsset(o[1]);
}

core.int buildCounterListAssetsResponse = 0;
api.ListAssetsResponse buildListAssetsResponse() {
  final o = api.ListAssetsResponse();
  buildCounterListAssetsResponse++;
  if (buildCounterListAssetsResponse < 3) {
    o.assets = buildUnnamed74();
    o.nextPageToken = 'foo';
    o.readTime = 'foo';
  }
  buildCounterListAssetsResponse--;
  return o;
}

void checkListAssetsResponse(api.ListAssetsResponse o) {
  buildCounterListAssetsResponse++;
  if (buildCounterListAssetsResponse < 3) {
    checkUnnamed74(o.assets!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.readTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterListAssetsResponse--;
}

core.List<api.Feed> buildUnnamed75() => [
      buildFeed(),
      buildFeed(),
    ];

void checkUnnamed75(core.List<api.Feed> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFeed(o[0]);
  checkFeed(o[1]);
}

core.int buildCounterListFeedsResponse = 0;
api.ListFeedsResponse buildListFeedsResponse() {
  final o = api.ListFeedsResponse();
  buildCounterListFeedsResponse++;
  if (buildCounterListFeedsResponse < 3) {
    o.feeds = buildUnnamed75();
  }
  buildCounterListFeedsResponse--;
  return o;
}

void checkListFeedsResponse(api.ListFeedsResponse o) {
  buildCounterListFeedsResponse++;
  if (buildCounterListFeedsResponse < 3) {
    checkUnnamed75(o.feeds!);
  }
  buildCounterListFeedsResponse--;
}

core.List<api.SavedQuery> buildUnnamed76() => [
      buildSavedQuery(),
      buildSavedQuery(),
    ];

void checkUnnamed76(core.List<api.SavedQuery> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSavedQuery(o[0]);
  checkSavedQuery(o[1]);
}

core.int buildCounterListSavedQueriesResponse = 0;
api.ListSavedQueriesResponse buildListSavedQueriesResponse() {
  final o = api.ListSavedQueriesResponse();
  buildCounterListSavedQueriesResponse++;
  if (buildCounterListSavedQueriesResponse < 3) {
    o.nextPageToken = 'foo';
    o.savedQueries = buildUnnamed76();
  }
  buildCounterListSavedQueriesResponse--;
  return o;
}

void checkListSavedQueriesResponse(api.ListSavedQueriesResponse o) {
  buildCounterListSavedQueriesResponse++;
  if (buildCounterListSavedQueriesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed76(o.savedQueries!);
  }
  buildCounterListSavedQueriesResponse--;
}

core.int buildCounterMoveAnalysis = 0;
api.MoveAnalysis buildMoveAnalysis() {
  final o = api.MoveAnalysis();
  buildCounterMoveAnalysis++;
  if (buildCounterMoveAnalysis < 3) {
    o.analysis = buildMoveAnalysisResult();
    o.displayName = 'foo';
    o.error = buildStatus();
  }
  buildCounterMoveAnalysis--;
  return o;
}

void checkMoveAnalysis(api.MoveAnalysis o) {
  buildCounterMoveAnalysis++;
  if (buildCounterMoveAnalysis < 3) {
    checkMoveAnalysisResult(o.analysis!);
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkStatus(o.error!);
  }
  buildCounterMoveAnalysis--;
}

core.List<api.MoveImpact> buildUnnamed77() => [
      buildMoveImpact(),
      buildMoveImpact(),
    ];

void checkUnnamed77(core.List<api.MoveImpact> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMoveImpact(o[0]);
  checkMoveImpact(o[1]);
}

core.List<api.MoveImpact> buildUnnamed78() => [
      buildMoveImpact(),
      buildMoveImpact(),
    ];

void checkUnnamed78(core.List<api.MoveImpact> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMoveImpact(o[0]);
  checkMoveImpact(o[1]);
}

core.int buildCounterMoveAnalysisResult = 0;
api.MoveAnalysisResult buildMoveAnalysisResult() {
  final o = api.MoveAnalysisResult();
  buildCounterMoveAnalysisResult++;
  if (buildCounterMoveAnalysisResult < 3) {
    o.blockers = buildUnnamed77();
    o.warnings = buildUnnamed78();
  }
  buildCounterMoveAnalysisResult--;
  return o;
}

void checkMoveAnalysisResult(api.MoveAnalysisResult o) {
  buildCounterMoveAnalysisResult++;
  if (buildCounterMoveAnalysisResult < 3) {
    checkUnnamed77(o.blockers!);
    checkUnnamed78(o.warnings!);
  }
  buildCounterMoveAnalysisResult--;
}

core.int buildCounterMoveImpact = 0;
api.MoveImpact buildMoveImpact() {
  final o = api.MoveImpact();
  buildCounterMoveImpact++;
  if (buildCounterMoveImpact < 3) {
    o.detail = 'foo';
  }
  buildCounterMoveImpact--;
  return o;
}

void checkMoveImpact(api.MoveImpact o) {
  buildCounterMoveImpact++;
  if (buildCounterMoveImpact < 3) {
    unittest.expect(
      o.detail!,
      unittest.equals('foo'),
    );
  }
  buildCounterMoveImpact--;
}

core.Map<core.String, core.Object?> buildUnnamed79() => {
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

void checkUnnamed79(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed80() => {
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

void checkUnnamed80(core.Map<core.String, core.Object?> o) {
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
    o.metadata = buildUnnamed79();
    o.name = 'foo';
    o.response = buildUnnamed80();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed79(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed80(o.response!);
  }
  buildCounterOperation--;
}

core.int buildCounterOptions = 0;
api.Options buildOptions() {
  final o = api.Options();
  buildCounterOptions++;
  if (buildCounterOptions < 3) {
    o.analyzeServiceAccountImpersonation = true;
    o.expandGroups = true;
    o.expandResources = true;
    o.expandRoles = true;
    o.outputGroupEdges = true;
    o.outputResourceEdges = true;
  }
  buildCounterOptions--;
  return o;
}

void checkOptions(api.Options o) {
  buildCounterOptions++;
  if (buildCounterOptions < 3) {
    unittest.expect(o.analyzeServiceAccountImpersonation!, unittest.isTrue);
    unittest.expect(o.expandGroups!, unittest.isTrue);
    unittest.expect(o.expandResources!, unittest.isTrue);
    unittest.expect(o.expandRoles!, unittest.isTrue);
    unittest.expect(o.outputGroupEdges!, unittest.isTrue);
    unittest.expect(o.outputResourceEdges!, unittest.isTrue);
  }
  buildCounterOptions--;
}

core.List<core.String> buildUnnamed81() => [
      'foo',
      'foo',
    ];

void checkUnnamed81(core.List<core.String> o) {
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

core.List<api.AnalyzerOrgPolicy> buildUnnamed82() => [
      buildAnalyzerOrgPolicy(),
      buildAnalyzerOrgPolicy(),
    ];

void checkUnnamed82(core.List<api.AnalyzerOrgPolicy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAnalyzerOrgPolicy(o[0]);
  checkAnalyzerOrgPolicy(o[1]);
}

core.int buildCounterOrgPolicyResult = 0;
api.OrgPolicyResult buildOrgPolicyResult() {
  final o = api.OrgPolicyResult();
  buildCounterOrgPolicyResult++;
  if (buildCounterOrgPolicyResult < 3) {
    o.consolidatedPolicy = buildAnalyzerOrgPolicy();
    o.folders = buildUnnamed81();
    o.organization = 'foo';
    o.policyBundle = buildUnnamed82();
    o.project = 'foo';
  }
  buildCounterOrgPolicyResult--;
  return o;
}

void checkOrgPolicyResult(api.OrgPolicyResult o) {
  buildCounterOrgPolicyResult++;
  if (buildCounterOrgPolicyResult < 3) {
    checkAnalyzerOrgPolicy(o.consolidatedPolicy!);
    checkUnnamed81(o.folders!);
    unittest.expect(
      o.organization!,
      unittest.equals('foo'),
    );
    checkUnnamed82(o.policyBundle!);
    unittest.expect(
      o.project!,
      unittest.equals('foo'),
    );
  }
  buildCounterOrgPolicyResult--;
}

core.int buildCounterOsInfo = 0;
api.OsInfo buildOsInfo() {
  final o = api.OsInfo();
  buildCounterOsInfo++;
  if (buildCounterOsInfo < 3) {
    o.architecture = 'foo';
    o.hostname = 'foo';
    o.kernelRelease = 'foo';
    o.kernelVersion = 'foo';
    o.longName = 'foo';
    o.osconfigAgentVersion = 'foo';
    o.shortName = 'foo';
    o.version = 'foo';
  }
  buildCounterOsInfo--;
  return o;
}

void checkOsInfo(api.OsInfo o) {
  buildCounterOsInfo++;
  if (buildCounterOsInfo < 3) {
    unittest.expect(
      o.architecture!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.hostname!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kernelRelease!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kernelVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.longName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.osconfigAgentVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.shortName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterOsInfo--;
}

core.int buildCounterOutputConfig = 0;
api.OutputConfig buildOutputConfig() {
  final o = api.OutputConfig();
  buildCounterOutputConfig++;
  if (buildCounterOutputConfig < 3) {
    o.bigqueryDestination = buildBigQueryDestination();
    o.gcsDestination = buildGcsDestination();
  }
  buildCounterOutputConfig--;
  return o;
}

void checkOutputConfig(api.OutputConfig o) {
  buildCounterOutputConfig++;
  if (buildCounterOutputConfig < 3) {
    checkBigQueryDestination(o.bigqueryDestination!);
    checkGcsDestination(o.gcsDestination!);
  }
  buildCounterOutputConfig--;
}

core.int buildCounterPartitionSpec = 0;
api.PartitionSpec buildPartitionSpec() {
  final o = api.PartitionSpec();
  buildCounterPartitionSpec++;
  if (buildCounterPartitionSpec < 3) {
    o.partitionKey = 'foo';
  }
  buildCounterPartitionSpec--;
  return o;
}

void checkPartitionSpec(api.PartitionSpec o) {
  buildCounterPartitionSpec++;
  if (buildCounterPartitionSpec < 3) {
    unittest.expect(
      o.partitionKey!,
      unittest.equals('foo'),
    );
  }
  buildCounterPartitionSpec--;
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

core.int buildCounterPermissions = 0;
api.Permissions buildPermissions() {
  final o = api.Permissions();
  buildCounterPermissions++;
  if (buildCounterPermissions < 3) {
    o.permissions = buildUnnamed83();
  }
  buildCounterPermissions--;
  return o;
}

void checkPermissions(api.Permissions o) {
  buildCounterPermissions++;
  if (buildCounterPermissions < 3) {
    checkUnnamed83(o.permissions!);
  }
  buildCounterPermissions--;
}

core.List<api.AuditConfig> buildUnnamed84() => [
      buildAuditConfig(),
      buildAuditConfig(),
    ];

void checkUnnamed84(core.List<api.AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditConfig(o[0]);
  checkAuditConfig(o[1]);
}

core.List<api.Binding> buildUnnamed85() => [
      buildBinding(),
      buildBinding(),
    ];

void checkUnnamed85(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  final o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.auditConfigs = buildUnnamed84();
    o.bindings = buildUnnamed85();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed84(o.auditConfigs!);
    checkUnnamed85(o.bindings!);
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

core.int buildCounterPolicyInfo = 0;
api.PolicyInfo buildPolicyInfo() {
  final o = api.PolicyInfo();
  buildCounterPolicyInfo++;
  if (buildCounterPolicyInfo < 3) {
    o.attachedResource = 'foo';
    o.policy = buildPolicy();
  }
  buildCounterPolicyInfo--;
  return o;
}

void checkPolicyInfo(api.PolicyInfo o) {
  buildCounterPolicyInfo++;
  if (buildCounterPolicyInfo < 3) {
    unittest.expect(
      o.attachedResource!,
      unittest.equals('foo'),
    );
    checkPolicy(o.policy!);
  }
  buildCounterPolicyInfo--;
}

core.int buildCounterPubsubDestination = 0;
api.PubsubDestination buildPubsubDestination() {
  final o = api.PubsubDestination();
  buildCounterPubsubDestination++;
  if (buildCounterPubsubDestination < 3) {
    o.topic = 'foo';
  }
  buildCounterPubsubDestination--;
  return o;
}

void checkPubsubDestination(api.PubsubDestination o) {
  buildCounterPubsubDestination++;
  if (buildCounterPubsubDestination < 3) {
    unittest.expect(
      o.topic!,
      unittest.equals('foo'),
    );
  }
  buildCounterPubsubDestination--;
}

core.int buildCounterQueryAssetsOutputConfig = 0;
api.QueryAssetsOutputConfig buildQueryAssetsOutputConfig() {
  final o = api.QueryAssetsOutputConfig();
  buildCounterQueryAssetsOutputConfig++;
  if (buildCounterQueryAssetsOutputConfig < 3) {
    o.bigqueryDestination =
        buildGoogleCloudAssetV1QueryAssetsOutputConfigBigQueryDestination();
  }
  buildCounterQueryAssetsOutputConfig--;
  return o;
}

void checkQueryAssetsOutputConfig(api.QueryAssetsOutputConfig o) {
  buildCounterQueryAssetsOutputConfig++;
  if (buildCounterQueryAssetsOutputConfig < 3) {
    checkGoogleCloudAssetV1QueryAssetsOutputConfigBigQueryDestination(
        o.bigqueryDestination!);
  }
  buildCounterQueryAssetsOutputConfig--;
}

core.int buildCounterQueryAssetsRequest = 0;
api.QueryAssetsRequest buildQueryAssetsRequest() {
  final o = api.QueryAssetsRequest();
  buildCounterQueryAssetsRequest++;
  if (buildCounterQueryAssetsRequest < 3) {
    o.jobReference = 'foo';
    o.outputConfig = buildQueryAssetsOutputConfig();
    o.pageSize = 42;
    o.pageToken = 'foo';
    o.readTime = 'foo';
    o.readTimeWindow = buildTimeWindow();
    o.statement = 'foo';
    o.timeout = 'foo';
  }
  buildCounterQueryAssetsRequest--;
  return o;
}

void checkQueryAssetsRequest(api.QueryAssetsRequest o) {
  buildCounterQueryAssetsRequest++;
  if (buildCounterQueryAssetsRequest < 3) {
    unittest.expect(
      o.jobReference!,
      unittest.equals('foo'),
    );
    checkQueryAssetsOutputConfig(o.outputConfig!);
    unittest.expect(
      o.pageSize!,
      unittest.equals(42),
    );
    unittest.expect(
      o.pageToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.readTime!,
      unittest.equals('foo'),
    );
    checkTimeWindow(o.readTimeWindow!);
    unittest.expect(
      o.statement!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.timeout!,
      unittest.equals('foo'),
    );
  }
  buildCounterQueryAssetsRequest--;
}

core.int buildCounterQueryAssetsResponse = 0;
api.QueryAssetsResponse buildQueryAssetsResponse() {
  final o = api.QueryAssetsResponse();
  buildCounterQueryAssetsResponse++;
  if (buildCounterQueryAssetsResponse < 3) {
    o.done = true;
    o.error = buildStatus();
    o.jobReference = 'foo';
    o.outputConfig = buildQueryAssetsOutputConfig();
    o.queryResult = buildQueryResult();
  }
  buildCounterQueryAssetsResponse--;
  return o;
}

void checkQueryAssetsResponse(api.QueryAssetsResponse o) {
  buildCounterQueryAssetsResponse++;
  if (buildCounterQueryAssetsResponse < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    unittest.expect(
      o.jobReference!,
      unittest.equals('foo'),
    );
    checkQueryAssetsOutputConfig(o.outputConfig!);
    checkQueryResult(o.queryResult!);
  }
  buildCounterQueryAssetsResponse--;
}

core.int buildCounterQueryContent = 0;
api.QueryContent buildQueryContent() {
  final o = api.QueryContent();
  buildCounterQueryContent++;
  if (buildCounterQueryContent < 3) {
    o.iamPolicyAnalysisQuery = buildIamPolicyAnalysisQuery();
  }
  buildCounterQueryContent--;
  return o;
}

void checkQueryContent(api.QueryContent o) {
  buildCounterQueryContent++;
  if (buildCounterQueryContent < 3) {
    checkIamPolicyAnalysisQuery(o.iamPolicyAnalysisQuery!);
  }
  buildCounterQueryContent--;
}

core.Map<core.String, core.Object?> buildUnnamed86() => {
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

void checkUnnamed86(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed87() => [
      buildUnnamed86(),
      buildUnnamed86(),
    ];

void checkUnnamed87(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed86(o[0]);
  checkUnnamed86(o[1]);
}

core.int buildCounterQueryResult = 0;
api.QueryResult buildQueryResult() {
  final o = api.QueryResult();
  buildCounterQueryResult++;
  if (buildCounterQueryResult < 3) {
    o.nextPageToken = 'foo';
    o.rows = buildUnnamed87();
    o.schema = buildTableSchema();
    o.totalRows = 'foo';
  }
  buildCounterQueryResult--;
  return o;
}

void checkQueryResult(api.QueryResult o) {
  buildCounterQueryResult++;
  if (buildCounterQueryResult < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed87(o.rows!);
    checkTableSchema(o.schema!);
    unittest.expect(
      o.totalRows!,
      unittest.equals('foo'),
    );
  }
  buildCounterQueryResult--;
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

core.int buildCounterRelatedAsset = 0;
api.RelatedAsset buildRelatedAsset() {
  final o = api.RelatedAsset();
  buildCounterRelatedAsset++;
  if (buildCounterRelatedAsset < 3) {
    o.ancestors = buildUnnamed88();
    o.asset = 'foo';
    o.assetType = 'foo';
    o.relationshipType = 'foo';
  }
  buildCounterRelatedAsset--;
  return o;
}

void checkRelatedAsset(api.RelatedAsset o) {
  buildCounterRelatedAsset++;
  if (buildCounterRelatedAsset < 3) {
    checkUnnamed88(o.ancestors!);
    unittest.expect(
      o.asset!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.assetType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.relationshipType!,
      unittest.equals('foo'),
    );
  }
  buildCounterRelatedAsset--;
}

core.List<api.RelatedAsset> buildUnnamed89() => [
      buildRelatedAsset(),
      buildRelatedAsset(),
    ];

void checkUnnamed89(core.List<api.RelatedAsset> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRelatedAsset(o[0]);
  checkRelatedAsset(o[1]);
}

core.int buildCounterRelatedAssets = 0;
api.RelatedAssets buildRelatedAssets() {
  final o = api.RelatedAssets();
  buildCounterRelatedAssets++;
  if (buildCounterRelatedAssets < 3) {
    o.assets = buildUnnamed89();
    o.relationshipAttributes = buildRelationshipAttributes();
  }
  buildCounterRelatedAssets--;
  return o;
}

void checkRelatedAssets(api.RelatedAssets o) {
  buildCounterRelatedAssets++;
  if (buildCounterRelatedAssets < 3) {
    checkUnnamed89(o.assets!);
    checkRelationshipAttributes(o.relationshipAttributes!);
  }
  buildCounterRelatedAssets--;
}

core.int buildCounterRelatedResource = 0;
api.RelatedResource buildRelatedResource() {
  final o = api.RelatedResource();
  buildCounterRelatedResource++;
  if (buildCounterRelatedResource < 3) {
    o.assetType = 'foo';
    o.fullResourceName = 'foo';
  }
  buildCounterRelatedResource--;
  return o;
}

void checkRelatedResource(api.RelatedResource o) {
  buildCounterRelatedResource++;
  if (buildCounterRelatedResource < 3) {
    unittest.expect(
      o.assetType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fullResourceName!,
      unittest.equals('foo'),
    );
  }
  buildCounterRelatedResource--;
}

core.List<api.RelatedResource> buildUnnamed90() => [
      buildRelatedResource(),
      buildRelatedResource(),
    ];

void checkUnnamed90(core.List<api.RelatedResource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRelatedResource(o[0]);
  checkRelatedResource(o[1]);
}

core.int buildCounterRelatedResources = 0;
api.RelatedResources buildRelatedResources() {
  final o = api.RelatedResources();
  buildCounterRelatedResources++;
  if (buildCounterRelatedResources < 3) {
    o.relatedResources = buildUnnamed90();
  }
  buildCounterRelatedResources--;
  return o;
}

void checkRelatedResources(api.RelatedResources o) {
  buildCounterRelatedResources++;
  if (buildCounterRelatedResources < 3) {
    checkUnnamed90(o.relatedResources!);
  }
  buildCounterRelatedResources--;
}

core.int buildCounterRelationshipAttributes = 0;
api.RelationshipAttributes buildRelationshipAttributes() {
  final o = api.RelationshipAttributes();
  buildCounterRelationshipAttributes++;
  if (buildCounterRelationshipAttributes < 3) {
    o.action = 'foo';
    o.sourceResourceType = 'foo';
    o.targetResourceType = 'foo';
    o.type = 'foo';
  }
  buildCounterRelationshipAttributes--;
  return o;
}

void checkRelationshipAttributes(api.RelationshipAttributes o) {
  buildCounterRelationshipAttributes++;
  if (buildCounterRelationshipAttributes < 3) {
    unittest.expect(
      o.action!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sourceResourceType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.targetResourceType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterRelationshipAttributes--;
}

core.Map<core.String, core.Object?> buildUnnamed91() => {
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

void checkUnnamed91(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterResource = 0;
api.Resource buildResource() {
  final o = api.Resource();
  buildCounterResource++;
  if (buildCounterResource < 3) {
    o.data = buildUnnamed91();
    o.discoveryDocumentUri = 'foo';
    o.discoveryName = 'foo';
    o.location = 'foo';
    o.parent = 'foo';
    o.resourceUrl = 'foo';
    o.version = 'foo';
  }
  buildCounterResource--;
  return o;
}

void checkResource(api.Resource o) {
  buildCounterResource++;
  if (buildCounterResource < 3) {
    checkUnnamed91(o.data!);
    unittest.expect(
      o.discoveryDocumentUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.discoveryName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.parent!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resourceUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterResource--;
}

core.Map<core.String, core.Object?> buildUnnamed92() => {
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

void checkUnnamed92(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted9 = (o['x']!) as core.Map;
  unittest.expect(casted9, unittest.hasLength(3));
  unittest.expect(
    casted9['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted9['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted9['string'],
    unittest.equals('foo'),
  );
  var casted10 = (o['y']!) as core.Map;
  unittest.expect(casted10, unittest.hasLength(3));
  unittest.expect(
    casted10['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted10['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted10['string'],
    unittest.equals('foo'),
  );
}

core.List<api.AttachedResource> buildUnnamed93() => [
      buildAttachedResource(),
      buildAttachedResource(),
    ];

void checkUnnamed93(core.List<api.AttachedResource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAttachedResource(o[0]);
  checkAttachedResource(o[1]);
}

core.List<api.EffectiveTagDetails> buildUnnamed94() => [
      buildEffectiveTagDetails(),
      buildEffectiveTagDetails(),
    ];

void checkUnnamed94(core.List<api.EffectiveTagDetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEffectiveTagDetails(o[0]);
  checkEffectiveTagDetails(o[1]);
}

core.List<core.String> buildUnnamed95() => [
      'foo',
      'foo',
    ];

void checkUnnamed95(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed96() => [
      'foo',
      'foo',
    ];

void checkUnnamed96(core.List<core.String> o) {
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

core.Map<core.String, core.String> buildUnnamed97() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed97(core.Map<core.String, core.String> o) {
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

core.List<core.String> buildUnnamed98() => [
      'foo',
      'foo',
    ];

void checkUnnamed98(core.List<core.String> o) {
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

core.Map<core.String, api.RelatedResources> buildUnnamed99() => {
      'x': buildRelatedResources(),
      'y': buildRelatedResources(),
    };

void checkUnnamed99(core.Map<core.String, api.RelatedResources> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRelatedResources(o['x']!);
  checkRelatedResources(o['y']!);
}

core.Map<core.String, core.String> buildUnnamed100() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed100(core.Map<core.String, core.String> o) {
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

core.List<core.String> buildUnnamed101() => [
      'foo',
      'foo',
    ];

void checkUnnamed101(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed102() => [
      'foo',
      'foo',
    ];

void checkUnnamed102(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed103() => [
      'foo',
      'foo',
    ];

void checkUnnamed103(core.List<core.String> o) {
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

core.List<api.Tag> buildUnnamed104() => [
      buildTag(),
      buildTag(),
    ];

void checkUnnamed104(core.List<api.Tag> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTag(o[0]);
  checkTag(o[1]);
}

core.List<api.VersionedResource> buildUnnamed105() => [
      buildVersionedResource(),
      buildVersionedResource(),
    ];

void checkUnnamed105(core.List<api.VersionedResource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVersionedResource(o[0]);
  checkVersionedResource(o[1]);
}

core.int buildCounterResourceSearchResult = 0;
api.ResourceSearchResult buildResourceSearchResult() {
  final o = api.ResourceSearchResult();
  buildCounterResourceSearchResult++;
  if (buildCounterResourceSearchResult < 3) {
    o.additionalAttributes = buildUnnamed92();
    o.assetType = 'foo';
    o.attachedResources = buildUnnamed93();
    o.createTime = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.effectiveTags = buildUnnamed94();
    o.folders = buildUnnamed95();
    o.kmsKey = 'foo';
    o.kmsKeys = buildUnnamed96();
    o.labels = buildUnnamed97();
    o.location = 'foo';
    o.name = 'foo';
    o.networkTags = buildUnnamed98();
    o.organization = 'foo';
    o.parentAssetType = 'foo';
    o.parentFullResourceName = 'foo';
    o.project = 'foo';
    o.relationships = buildUnnamed99();
    o.sccSecurityMarks = buildUnnamed100();
    o.state = 'foo';
    o.tagKeys = buildUnnamed101();
    o.tagValueIds = buildUnnamed102();
    o.tagValues = buildUnnamed103();
    o.tags = buildUnnamed104();
    o.updateTime = 'foo';
    o.versionedResources = buildUnnamed105();
  }
  buildCounterResourceSearchResult--;
  return o;
}

void checkResourceSearchResult(api.ResourceSearchResult o) {
  buildCounterResourceSearchResult++;
  if (buildCounterResourceSearchResult < 3) {
    checkUnnamed92(o.additionalAttributes!);
    unittest.expect(
      o.assetType!,
      unittest.equals('foo'),
    );
    checkUnnamed93(o.attachedResources!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkUnnamed94(o.effectiveTags!);
    checkUnnamed95(o.folders!);
    unittest.expect(
      o.kmsKey!,
      unittest.equals('foo'),
    );
    checkUnnamed96(o.kmsKeys!);
    checkUnnamed97(o.labels!);
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed98(o.networkTags!);
    unittest.expect(
      o.organization!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.parentAssetType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.parentFullResourceName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.project!,
      unittest.equals('foo'),
    );
    checkUnnamed99(o.relationships!);
    checkUnnamed100(o.sccSecurityMarks!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    checkUnnamed101(o.tagKeys!);
    checkUnnamed102(o.tagValueIds!);
    checkUnnamed103(o.tagValues!);
    checkUnnamed104(o.tags!);
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
    checkUnnamed105(o.versionedResources!);
  }
  buildCounterResourceSearchResult--;
}

core.int buildCounterResourceSelector = 0;
api.ResourceSelector buildResourceSelector() {
  final o = api.ResourceSelector();
  buildCounterResourceSelector++;
  if (buildCounterResourceSelector < 3) {
    o.fullResourceName = 'foo';
  }
  buildCounterResourceSelector--;
  return o;
}

void checkResourceSelector(api.ResourceSelector o) {
  buildCounterResourceSelector++;
  if (buildCounterResourceSelector < 3) {
    unittest.expect(
      o.fullResourceName!,
      unittest.equals('foo'),
    );
  }
  buildCounterResourceSelector--;
}

core.Map<core.String, core.String> buildUnnamed106() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed106(core.Map<core.String, core.String> o) {
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

core.int buildCounterSavedQuery = 0;
api.SavedQuery buildSavedQuery() {
  final o = api.SavedQuery();
  buildCounterSavedQuery++;
  if (buildCounterSavedQuery < 3) {
    o.content = buildQueryContent();
    o.createTime = 'foo';
    o.creator = 'foo';
    o.description = 'foo';
    o.labels = buildUnnamed106();
    o.lastUpdateTime = 'foo';
    o.lastUpdater = 'foo';
    o.name = 'foo';
  }
  buildCounterSavedQuery--;
  return o;
}

void checkSavedQuery(api.SavedQuery o) {
  buildCounterSavedQuery++;
  if (buildCounterSavedQuery < 3) {
    checkQueryContent(o.content!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.creator!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkUnnamed106(o.labels!);
    unittest.expect(
      o.lastUpdateTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastUpdater!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterSavedQuery--;
}

core.List<api.IamPolicySearchResult> buildUnnamed107() => [
      buildIamPolicySearchResult(),
      buildIamPolicySearchResult(),
    ];

void checkUnnamed107(core.List<api.IamPolicySearchResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIamPolicySearchResult(o[0]);
  checkIamPolicySearchResult(o[1]);
}

core.int buildCounterSearchAllIamPoliciesResponse = 0;
api.SearchAllIamPoliciesResponse buildSearchAllIamPoliciesResponse() {
  final o = api.SearchAllIamPoliciesResponse();
  buildCounterSearchAllIamPoliciesResponse++;
  if (buildCounterSearchAllIamPoliciesResponse < 3) {
    o.nextPageToken = 'foo';
    o.results = buildUnnamed107();
  }
  buildCounterSearchAllIamPoliciesResponse--;
  return o;
}

void checkSearchAllIamPoliciesResponse(api.SearchAllIamPoliciesResponse o) {
  buildCounterSearchAllIamPoliciesResponse++;
  if (buildCounterSearchAllIamPoliciesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed107(o.results!);
  }
  buildCounterSearchAllIamPoliciesResponse--;
}

core.List<api.ResourceSearchResult> buildUnnamed108() => [
      buildResourceSearchResult(),
      buildResourceSearchResult(),
    ];

void checkUnnamed108(core.List<api.ResourceSearchResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResourceSearchResult(o[0]);
  checkResourceSearchResult(o[1]);
}

core.int buildCounterSearchAllResourcesResponse = 0;
api.SearchAllResourcesResponse buildSearchAllResourcesResponse() {
  final o = api.SearchAllResourcesResponse();
  buildCounterSearchAllResourcesResponse++;
  if (buildCounterSearchAllResourcesResponse < 3) {
    o.nextPageToken = 'foo';
    o.results = buildUnnamed108();
  }
  buildCounterSearchAllResourcesResponse--;
  return o;
}

void checkSearchAllResourcesResponse(api.SearchAllResourcesResponse o) {
  buildCounterSearchAllResourcesResponse++;
  if (buildCounterSearchAllResourcesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed108(o.results!);
  }
  buildCounterSearchAllResourcesResponse--;
}

core.int buildCounterSoftwarePackage = 0;
api.SoftwarePackage buildSoftwarePackage() {
  final o = api.SoftwarePackage();
  buildCounterSoftwarePackage++;
  if (buildCounterSoftwarePackage < 3) {
    o.aptPackage = buildVersionedPackage();
    o.cosPackage = buildVersionedPackage();
    o.googetPackage = buildVersionedPackage();
    o.qfePackage = buildWindowsQuickFixEngineeringPackage();
    o.windowsApplication = buildWindowsApplication();
    o.wuaPackage = buildWindowsUpdatePackage();
    o.yumPackage = buildVersionedPackage();
    o.zypperPackage = buildVersionedPackage();
    o.zypperPatch = buildZypperPatch();
  }
  buildCounterSoftwarePackage--;
  return o;
}

void checkSoftwarePackage(api.SoftwarePackage o) {
  buildCounterSoftwarePackage++;
  if (buildCounterSoftwarePackage < 3) {
    checkVersionedPackage(o.aptPackage!);
    checkVersionedPackage(o.cosPackage!);
    checkVersionedPackage(o.googetPackage!);
    checkWindowsQuickFixEngineeringPackage(o.qfePackage!);
    checkWindowsApplication(o.windowsApplication!);
    checkWindowsUpdatePackage(o.wuaPackage!);
    checkVersionedPackage(o.yumPackage!);
    checkVersionedPackage(o.zypperPackage!);
    checkZypperPatch(o.zypperPatch!);
  }
  buildCounterSoftwarePackage--;
}

core.Map<core.String, core.Object?> buildUnnamed109() => {
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

void checkUnnamed109(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted11 = (o['x']!) as core.Map;
  unittest.expect(casted11, unittest.hasLength(3));
  unittest.expect(
    casted11['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted11['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted11['string'],
    unittest.equals('foo'),
  );
  var casted12 = (o['y']!) as core.Map;
  unittest.expect(casted12, unittest.hasLength(3));
  unittest.expect(
    casted12['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted12['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted12['string'],
    unittest.equals('foo'),
  );
}

core.List<core.Map<core.String, core.Object?>> buildUnnamed110() => [
      buildUnnamed109(),
      buildUnnamed109(),
    ];

void checkUnnamed110(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed109(o[0]);
  checkUnnamed109(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed110();
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
    checkUnnamed110(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.List<api.TableFieldSchema> buildUnnamed111() => [
      buildTableFieldSchema(),
      buildTableFieldSchema(),
    ];

void checkUnnamed111(core.List<api.TableFieldSchema> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTableFieldSchema(o[0]);
  checkTableFieldSchema(o[1]);
}

core.int buildCounterTableFieldSchema = 0;
api.TableFieldSchema buildTableFieldSchema() {
  final o = api.TableFieldSchema();
  buildCounterTableFieldSchema++;
  if (buildCounterTableFieldSchema < 3) {
    o.field = 'foo';
    o.fields = buildUnnamed111();
    o.mode = 'foo';
    o.type = 'foo';
  }
  buildCounterTableFieldSchema--;
  return o;
}

void checkTableFieldSchema(api.TableFieldSchema o) {
  buildCounterTableFieldSchema++;
  if (buildCounterTableFieldSchema < 3) {
    unittest.expect(
      o.field!,
      unittest.equals('foo'),
    );
    checkUnnamed111(o.fields!);
    unittest.expect(
      o.mode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterTableFieldSchema--;
}

core.List<api.TableFieldSchema> buildUnnamed112() => [
      buildTableFieldSchema(),
      buildTableFieldSchema(),
    ];

void checkUnnamed112(core.List<api.TableFieldSchema> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTableFieldSchema(o[0]);
  checkTableFieldSchema(o[1]);
}

core.int buildCounterTableSchema = 0;
api.TableSchema buildTableSchema() {
  final o = api.TableSchema();
  buildCounterTableSchema++;
  if (buildCounterTableSchema < 3) {
    o.fields = buildUnnamed112();
  }
  buildCounterTableSchema--;
  return o;
}

void checkTableSchema(api.TableSchema o) {
  buildCounterTableSchema++;
  if (buildCounterTableSchema < 3) {
    checkUnnamed112(o.fields!);
  }
  buildCounterTableSchema--;
}

core.int buildCounterTag = 0;
api.Tag buildTag() {
  final o = api.Tag();
  buildCounterTag++;
  if (buildCounterTag < 3) {
    o.tagKey = 'foo';
    o.tagKeyId = 'foo';
    o.tagValue = 'foo';
    o.tagValueId = 'foo';
  }
  buildCounterTag--;
  return o;
}

void checkTag(api.Tag o) {
  buildCounterTag++;
  if (buildCounterTag < 3) {
    unittest.expect(
      o.tagKey!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tagKeyId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tagValue!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tagValueId!,
      unittest.equals('foo'),
    );
  }
  buildCounterTag--;
}

core.int buildCounterTemporalAsset = 0;
api.TemporalAsset buildTemporalAsset() {
  final o = api.TemporalAsset();
  buildCounterTemporalAsset++;
  if (buildCounterTemporalAsset < 3) {
    o.asset = buildAsset();
    o.deleted = true;
    o.priorAsset = buildAsset();
    o.priorAssetState = 'foo';
    o.window = buildTimeWindow();
  }
  buildCounterTemporalAsset--;
  return o;
}

void checkTemporalAsset(api.TemporalAsset o) {
  buildCounterTemporalAsset++;
  if (buildCounterTemporalAsset < 3) {
    checkAsset(o.asset!);
    unittest.expect(o.deleted!, unittest.isTrue);
    checkAsset(o.priorAsset!);
    unittest.expect(
      o.priorAssetState!,
      unittest.equals('foo'),
    );
    checkTimeWindow(o.window!);
  }
  buildCounterTemporalAsset--;
}

core.int buildCounterTimeWindow = 0;
api.TimeWindow buildTimeWindow() {
  final o = api.TimeWindow();
  buildCounterTimeWindow++;
  if (buildCounterTimeWindow < 3) {
    o.endTime = 'foo';
    o.startTime = 'foo';
  }
  buildCounterTimeWindow--;
  return o;
}

void checkTimeWindow(api.TimeWindow o) {
  buildCounterTimeWindow++;
  if (buildCounterTimeWindow < 3) {
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterTimeWindow--;
}

core.int buildCounterUpdateFeedRequest = 0;
api.UpdateFeedRequest buildUpdateFeedRequest() {
  final o = api.UpdateFeedRequest();
  buildCounterUpdateFeedRequest++;
  if (buildCounterUpdateFeedRequest < 3) {
    o.feed = buildFeed();
    o.updateMask = 'foo';
  }
  buildCounterUpdateFeedRequest--;
  return o;
}

void checkUpdateFeedRequest(api.UpdateFeedRequest o) {
  buildCounterUpdateFeedRequest++;
  if (buildCounterUpdateFeedRequest < 3) {
    checkFeed(o.feed!);
    unittest.expect(
      o.updateMask!,
      unittest.equals('foo'),
    );
  }
  buildCounterUpdateFeedRequest--;
}

core.int buildCounterVersionedPackage = 0;
api.VersionedPackage buildVersionedPackage() {
  final o = api.VersionedPackage();
  buildCounterVersionedPackage++;
  if (buildCounterVersionedPackage < 3) {
    o.architecture = 'foo';
    o.packageName = 'foo';
    o.version = 'foo';
  }
  buildCounterVersionedPackage--;
  return o;
}

void checkVersionedPackage(api.VersionedPackage o) {
  buildCounterVersionedPackage++;
  if (buildCounterVersionedPackage < 3) {
    unittest.expect(
      o.architecture!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.packageName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterVersionedPackage--;
}

core.Map<core.String, core.Object?> buildUnnamed113() => {
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

void checkUnnamed113(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted13 = (o['x']!) as core.Map;
  unittest.expect(casted13, unittest.hasLength(3));
  unittest.expect(
    casted13['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted13['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted13['string'],
    unittest.equals('foo'),
  );
  var casted14 = (o['y']!) as core.Map;
  unittest.expect(casted14, unittest.hasLength(3));
  unittest.expect(
    casted14['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted14['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted14['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterVersionedResource = 0;
api.VersionedResource buildVersionedResource() {
  final o = api.VersionedResource();
  buildCounterVersionedResource++;
  if (buildCounterVersionedResource < 3) {
    o.resource = buildUnnamed113();
    o.version = 'foo';
  }
  buildCounterVersionedResource--;
  return o;
}

void checkVersionedResource(api.VersionedResource o) {
  buildCounterVersionedResource++;
  if (buildCounterVersionedResource < 3) {
    checkUnnamed113(o.resource!);
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterVersionedResource--;
}

core.int buildCounterWindowsApplication = 0;
api.WindowsApplication buildWindowsApplication() {
  final o = api.WindowsApplication();
  buildCounterWindowsApplication++;
  if (buildCounterWindowsApplication < 3) {
    o.displayName = 'foo';
    o.displayVersion = 'foo';
    o.helpLink = 'foo';
    o.installDate = buildDate();
    o.publisher = 'foo';
  }
  buildCounterWindowsApplication--;
  return o;
}

void checkWindowsApplication(api.WindowsApplication o) {
  buildCounterWindowsApplication++;
  if (buildCounterWindowsApplication < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.helpLink!,
      unittest.equals('foo'),
    );
    checkDate(o.installDate!);
    unittest.expect(
      o.publisher!,
      unittest.equals('foo'),
    );
  }
  buildCounterWindowsApplication--;
}

core.int buildCounterWindowsQuickFixEngineeringPackage = 0;
api.WindowsQuickFixEngineeringPackage buildWindowsQuickFixEngineeringPackage() {
  final o = api.WindowsQuickFixEngineeringPackage();
  buildCounterWindowsQuickFixEngineeringPackage++;
  if (buildCounterWindowsQuickFixEngineeringPackage < 3) {
    o.caption = 'foo';
    o.description = 'foo';
    o.hotFixId = 'foo';
    o.installTime = 'foo';
  }
  buildCounterWindowsQuickFixEngineeringPackage--;
  return o;
}

void checkWindowsQuickFixEngineeringPackage(
    api.WindowsQuickFixEngineeringPackage o) {
  buildCounterWindowsQuickFixEngineeringPackage++;
  if (buildCounterWindowsQuickFixEngineeringPackage < 3) {
    unittest.expect(
      o.caption!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.hotFixId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.installTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterWindowsQuickFixEngineeringPackage--;
}

core.int buildCounterWindowsUpdateCategory = 0;
api.WindowsUpdateCategory buildWindowsUpdateCategory() {
  final o = api.WindowsUpdateCategory();
  buildCounterWindowsUpdateCategory++;
  if (buildCounterWindowsUpdateCategory < 3) {
    o.id = 'foo';
    o.name = 'foo';
  }
  buildCounterWindowsUpdateCategory--;
  return o;
}

void checkWindowsUpdateCategory(api.WindowsUpdateCategory o) {
  buildCounterWindowsUpdateCategory++;
  if (buildCounterWindowsUpdateCategory < 3) {
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterWindowsUpdateCategory--;
}

core.List<api.WindowsUpdateCategory> buildUnnamed114() => [
      buildWindowsUpdateCategory(),
      buildWindowsUpdateCategory(),
    ];

void checkUnnamed114(core.List<api.WindowsUpdateCategory> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWindowsUpdateCategory(o[0]);
  checkWindowsUpdateCategory(o[1]);
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

core.int buildCounterWindowsUpdatePackage = 0;
api.WindowsUpdatePackage buildWindowsUpdatePackage() {
  final o = api.WindowsUpdatePackage();
  buildCounterWindowsUpdatePackage++;
  if (buildCounterWindowsUpdatePackage < 3) {
    o.categories = buildUnnamed114();
    o.description = 'foo';
    o.kbArticleIds = buildUnnamed115();
    o.lastDeploymentChangeTime = 'foo';
    o.moreInfoUrls = buildUnnamed116();
    o.revisionNumber = 42;
    o.supportUrl = 'foo';
    o.title = 'foo';
    o.updateId = 'foo';
  }
  buildCounterWindowsUpdatePackage--;
  return o;
}

void checkWindowsUpdatePackage(api.WindowsUpdatePackage o) {
  buildCounterWindowsUpdatePackage++;
  if (buildCounterWindowsUpdatePackage < 3) {
    checkUnnamed114(o.categories!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkUnnamed115(o.kbArticleIds!);
    unittest.expect(
      o.lastDeploymentChangeTime!,
      unittest.equals('foo'),
    );
    checkUnnamed116(o.moreInfoUrls!);
    unittest.expect(
      o.revisionNumber!,
      unittest.equals(42),
    );
    unittest.expect(
      o.supportUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateId!,
      unittest.equals('foo'),
    );
  }
  buildCounterWindowsUpdatePackage--;
}

core.int buildCounterZypperPatch = 0;
api.ZypperPatch buildZypperPatch() {
  final o = api.ZypperPatch();
  buildCounterZypperPatch++;
  if (buildCounterZypperPatch < 3) {
    o.category = 'foo';
    o.patchName = 'foo';
    o.severity = 'foo';
    o.summary = 'foo';
  }
  buildCounterZypperPatch--;
  return o;
}

void checkZypperPatch(api.ZypperPatch o) {
  buildCounterZypperPatch++;
  if (buildCounterZypperPatch < 3) {
    unittest.expect(
      o.category!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.patchName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.severity!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.summary!,
      unittest.equals('foo'),
    );
  }
  buildCounterZypperPatch--;
}

core.List<core.String> buildUnnamed117() => [
      'foo',
      'foo',
    ];

void checkUnnamed117(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed118() => [
      'foo',
      'foo',
    ];

void checkUnnamed118(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed119() => [
      'foo',
      'foo',
    ];

void checkUnnamed119(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed121() => [
      'foo',
      'foo',
    ];

void checkUnnamed121(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed122() => [
      'foo',
      'foo',
    ];

void checkUnnamed122(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed123() => [
      'foo',
      'foo',
    ];

void checkUnnamed123(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed124() => [
      'foo',
      'foo',
    ];

void checkUnnamed124(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed125() => [
      'foo',
      'foo',
    ];

void checkUnnamed125(core.List<core.String> o) {
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
  unittest.group('obj-schema-AccessSelector', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccessSelector();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccessSelector.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccessSelector(od);
    });
  });

  unittest.group('obj-schema-AnalyzeIamPolicyLongrunningRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAnalyzeIamPolicyLongrunningRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AnalyzeIamPolicyLongrunningRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAnalyzeIamPolicyLongrunningRequest(od);
    });
  });

  unittest.group('obj-schema-AnalyzeIamPolicyResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAnalyzeIamPolicyResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AnalyzeIamPolicyResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAnalyzeIamPolicyResponse(od);
    });
  });

  unittest.group('obj-schema-AnalyzeMoveResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAnalyzeMoveResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AnalyzeMoveResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAnalyzeMoveResponse(od);
    });
  });

  unittest.group('obj-schema-AnalyzeOrgPoliciesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAnalyzeOrgPoliciesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AnalyzeOrgPoliciesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAnalyzeOrgPoliciesResponse(od);
    });
  });

  unittest.group('obj-schema-AnalyzeOrgPolicyGovernedAssetsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAnalyzeOrgPolicyGovernedAssetsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AnalyzeOrgPolicyGovernedAssetsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAnalyzeOrgPolicyGovernedAssetsResponse(od);
    });
  });

  unittest.group('obj-schema-AnalyzeOrgPolicyGovernedContainersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAnalyzeOrgPolicyGovernedContainersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AnalyzeOrgPolicyGovernedContainersResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAnalyzeOrgPolicyGovernedContainersResponse(od);
    });
  });

  unittest.group('obj-schema-AnalyzerOrgPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAnalyzerOrgPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AnalyzerOrgPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAnalyzerOrgPolicy(od);
    });
  });

  unittest.group('obj-schema-AnalyzerOrgPolicyConstraint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAnalyzerOrgPolicyConstraint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AnalyzerOrgPolicyConstraint.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAnalyzerOrgPolicyConstraint(od);
    });
  });

  unittest.group('obj-schema-Asset', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAsset();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Asset.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAsset(od);
    });
  });

  unittest.group('obj-schema-AttachedResource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAttachedResource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AttachedResource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAttachedResource(od);
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

  unittest.group('obj-schema-BatchGetAssetsHistoryResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchGetAssetsHistoryResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchGetAssetsHistoryResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchGetAssetsHistoryResponse(od);
    });
  });

  unittest.group('obj-schema-BatchGetEffectiveIamPoliciesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchGetEffectiveIamPoliciesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchGetEffectiveIamPoliciesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchGetEffectiveIamPoliciesResponse(od);
    });
  });

  unittest.group('obj-schema-BigQueryDestination', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBigQueryDestination();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BigQueryDestination.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBigQueryDestination(od);
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

  unittest.group('obj-schema-ConditionContext', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConditionContext();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConditionContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConditionContext(od);
    });
  });

  unittest.group('obj-schema-ConditionEvaluation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConditionEvaluation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConditionEvaluation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConditionEvaluation(od);
    });
  });

  unittest.group('obj-schema-CreateFeedRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateFeedRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateFeedRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreateFeedRequest(od);
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

  unittest.group('obj-schema-EffectiveIamPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEffectiveIamPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EffectiveIamPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEffectiveIamPolicy(od);
    });
  });

  unittest.group('obj-schema-EffectiveTagDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEffectiveTagDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EffectiveTagDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEffectiveTagDetails(od);
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

  unittest.group('obj-schema-Explanation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExplanation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Explanation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExplanation(od);
    });
  });

  unittest.group('obj-schema-ExportAssetsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExportAssetsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExportAssetsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExportAssetsRequest(od);
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

  unittest.group('obj-schema-Feed', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFeed();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Feed.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkFeed(od);
    });
  });

  unittest.group('obj-schema-FeedOutputConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFeedOutputConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FeedOutputConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFeedOutputConfig(od);
    });
  });

  unittest.group('obj-schema-GcsDestination', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGcsDestination();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GcsDestination.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGcsDestination(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudAssetV1Access', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAssetV1Access();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAssetV1Access.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudAssetV1Access(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudAssetV1AccessControlList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAssetV1AccessControlList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAssetV1AccessControlList.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudAssetV1AccessControlList(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudAssetV1AnalyzeOrgPolicyGovernedAssetsResponseGovernedAsset',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudAssetV1AnalyzeOrgPolicyGovernedAssetsResponseGovernedAsset();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudAssetV1AnalyzeOrgPolicyGovernedAssetsResponseGovernedAsset
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudAssetV1AnalyzeOrgPolicyGovernedAssetsResponseGovernedAsset(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudAssetV1AnalyzeOrgPolicyGovernedAssetsResponseGovernedIamPolicy',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudAssetV1AnalyzeOrgPolicyGovernedAssetsResponseGovernedIamPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudAssetV1AnalyzeOrgPolicyGovernedAssetsResponseGovernedIamPolicy
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudAssetV1AnalyzeOrgPolicyGovernedAssetsResponseGovernedIamPolicy(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudAssetV1AnalyzeOrgPolicyGovernedAssetsResponseGovernedResource',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudAssetV1AnalyzeOrgPolicyGovernedAssetsResponseGovernedResource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudAssetV1AnalyzeOrgPolicyGovernedAssetsResponseGovernedResource
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudAssetV1AnalyzeOrgPolicyGovernedAssetsResponseGovernedResource(
          od);
    });
  });

  unittest.group('obj-schema-GoogleCloudAssetV1BigQueryDestination', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAssetV1BigQueryDestination();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAssetV1BigQueryDestination.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudAssetV1BigQueryDestination(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudAssetV1BooleanConstraint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAssetV1BooleanConstraint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAssetV1BooleanConstraint.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudAssetV1BooleanConstraint(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudAssetV1Constraint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAssetV1Constraint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAssetV1Constraint.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudAssetV1Constraint(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudAssetV1CustomConstraint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAssetV1CustomConstraint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAssetV1CustomConstraint.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudAssetV1CustomConstraint(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudAssetV1Edge', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAssetV1Edge();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAssetV1Edge.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudAssetV1Edge(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudAssetV1GcsDestination', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAssetV1GcsDestination();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAssetV1GcsDestination.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudAssetV1GcsDestination(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudAssetV1GovernedContainer', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAssetV1GovernedContainer();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAssetV1GovernedContainer.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudAssetV1GovernedContainer(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudAssetV1Identity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAssetV1Identity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAssetV1Identity.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudAssetV1Identity(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudAssetV1IdentityList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAssetV1IdentityList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAssetV1IdentityList.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudAssetV1IdentityList(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudAssetV1ListConstraint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAssetV1ListConstraint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAssetV1ListConstraint.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudAssetV1ListConstraint(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudAssetV1QueryAssetsOutputConfigBigQueryDestination',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudAssetV1QueryAssetsOutputConfigBigQueryDestination();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudAssetV1QueryAssetsOutputConfigBigQueryDestination
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudAssetV1QueryAssetsOutputConfigBigQueryDestination(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudAssetV1Resource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAssetV1Resource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAssetV1Resource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudAssetV1Resource(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudAssetV1Rule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAssetV1Rule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAssetV1Rule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudAssetV1Rule(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudAssetV1StringValues', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAssetV1StringValues();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAssetV1StringValues.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudAssetV1StringValues(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudOrgpolicyV1BooleanPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudOrgpolicyV1BooleanPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudOrgpolicyV1BooleanPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudOrgpolicyV1BooleanPolicy(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudOrgpolicyV1ListPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudOrgpolicyV1ListPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudOrgpolicyV1ListPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudOrgpolicyV1ListPolicy(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudOrgpolicyV1Policy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudOrgpolicyV1Policy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudOrgpolicyV1Policy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudOrgpolicyV1Policy(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudOrgpolicyV1RestoreDefault', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudOrgpolicyV1RestoreDefault();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudOrgpolicyV1RestoreDefault.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudOrgpolicyV1RestoreDefault(od);
    });
  });

  unittest.group('obj-schema-GoogleIdentityAccesscontextmanagerV1AccessLevel',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIdentityAccesscontextmanagerV1AccessLevel();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIdentityAccesscontextmanagerV1AccessLevel.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleIdentityAccesscontextmanagerV1AccessLevel(od);
    });
  });

  unittest.group('obj-schema-GoogleIdentityAccesscontextmanagerV1AccessPolicy',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIdentityAccesscontextmanagerV1AccessPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIdentityAccesscontextmanagerV1AccessPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleIdentityAccesscontextmanagerV1AccessPolicy(od);
    });
  });

  unittest.group('obj-schema-GoogleIdentityAccesscontextmanagerV1ApiOperation',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIdentityAccesscontextmanagerV1ApiOperation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIdentityAccesscontextmanagerV1ApiOperation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleIdentityAccesscontextmanagerV1ApiOperation(od);
    });
  });

  unittest.group('obj-schema-GoogleIdentityAccesscontextmanagerV1BasicLevel',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIdentityAccesscontextmanagerV1BasicLevel();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIdentityAccesscontextmanagerV1BasicLevel.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleIdentityAccesscontextmanagerV1BasicLevel(od);
    });
  });

  unittest.group('obj-schema-GoogleIdentityAccesscontextmanagerV1Condition',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIdentityAccesscontextmanagerV1Condition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIdentityAccesscontextmanagerV1Condition.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleIdentityAccesscontextmanagerV1Condition(od);
    });
  });

  unittest.group('obj-schema-GoogleIdentityAccesscontextmanagerV1CustomLevel',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIdentityAccesscontextmanagerV1CustomLevel();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIdentityAccesscontextmanagerV1CustomLevel.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleIdentityAccesscontextmanagerV1CustomLevel(od);
    });
  });

  unittest.group('obj-schema-GoogleIdentityAccesscontextmanagerV1DevicePolicy',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIdentityAccesscontextmanagerV1DevicePolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIdentityAccesscontextmanagerV1DevicePolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleIdentityAccesscontextmanagerV1DevicePolicy(od);
    });
  });

  unittest.group('obj-schema-GoogleIdentityAccesscontextmanagerV1EgressFrom',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIdentityAccesscontextmanagerV1EgressFrom();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIdentityAccesscontextmanagerV1EgressFrom.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleIdentityAccesscontextmanagerV1EgressFrom(od);
    });
  });

  unittest.group('obj-schema-GoogleIdentityAccesscontextmanagerV1EgressPolicy',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIdentityAccesscontextmanagerV1EgressPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIdentityAccesscontextmanagerV1EgressPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleIdentityAccesscontextmanagerV1EgressPolicy(od);
    });
  });

  unittest.group('obj-schema-GoogleIdentityAccesscontextmanagerV1EgressSource',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIdentityAccesscontextmanagerV1EgressSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIdentityAccesscontextmanagerV1EgressSource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleIdentityAccesscontextmanagerV1EgressSource(od);
    });
  });

  unittest.group('obj-schema-GoogleIdentityAccesscontextmanagerV1EgressTo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIdentityAccesscontextmanagerV1EgressTo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIdentityAccesscontextmanagerV1EgressTo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleIdentityAccesscontextmanagerV1EgressTo(od);
    });
  });

  unittest.group('obj-schema-GoogleIdentityAccesscontextmanagerV1IngressFrom',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIdentityAccesscontextmanagerV1IngressFrom();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIdentityAccesscontextmanagerV1IngressFrom.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleIdentityAccesscontextmanagerV1IngressFrom(od);
    });
  });

  unittest.group('obj-schema-GoogleIdentityAccesscontextmanagerV1IngressPolicy',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIdentityAccesscontextmanagerV1IngressPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIdentityAccesscontextmanagerV1IngressPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleIdentityAccesscontextmanagerV1IngressPolicy(od);
    });
  });

  unittest.group('obj-schema-GoogleIdentityAccesscontextmanagerV1IngressSource',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIdentityAccesscontextmanagerV1IngressSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIdentityAccesscontextmanagerV1IngressSource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleIdentityAccesscontextmanagerV1IngressSource(od);
    });
  });

  unittest.group('obj-schema-GoogleIdentityAccesscontextmanagerV1IngressTo',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIdentityAccesscontextmanagerV1IngressTo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIdentityAccesscontextmanagerV1IngressTo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleIdentityAccesscontextmanagerV1IngressTo(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleIdentityAccesscontextmanagerV1MethodSelector', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIdentityAccesscontextmanagerV1MethodSelector();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleIdentityAccesscontextmanagerV1MethodSelector.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleIdentityAccesscontextmanagerV1MethodSelector(od);
    });
  });

  unittest.group('obj-schema-GoogleIdentityAccesscontextmanagerV1OsConstraint',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIdentityAccesscontextmanagerV1OsConstraint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIdentityAccesscontextmanagerV1OsConstraint.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleIdentityAccesscontextmanagerV1OsConstraint(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleIdentityAccesscontextmanagerV1ServicePerimeter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIdentityAccesscontextmanagerV1ServicePerimeter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleIdentityAccesscontextmanagerV1ServicePerimeter.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleIdentityAccesscontextmanagerV1ServicePerimeter(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleIdentityAccesscontextmanagerV1VpcAccessibleServices',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleIdentityAccesscontextmanagerV1VpcAccessibleServices();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIdentityAccesscontextmanagerV1VpcAccessibleServices
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleIdentityAccesscontextmanagerV1VpcAccessibleServices(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleIdentityAccesscontextmanagerV1VpcNetworkSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIdentityAccesscontextmanagerV1VpcNetworkSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleIdentityAccesscontextmanagerV1VpcNetworkSource.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleIdentityAccesscontextmanagerV1VpcNetworkSource(od);
    });
  });

  unittest.group('obj-schema-GoogleIdentityAccesscontextmanagerV1VpcSubNetwork',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIdentityAccesscontextmanagerV1VpcSubNetwork();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIdentityAccesscontextmanagerV1VpcSubNetwork.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleIdentityAccesscontextmanagerV1VpcSubNetwork(od);
    });
  });

  unittest.group('obj-schema-IamPolicyAnalysis', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIamPolicyAnalysis();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IamPolicyAnalysis.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIamPolicyAnalysis(od);
    });
  });

  unittest.group('obj-schema-IamPolicyAnalysisOutputConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIamPolicyAnalysisOutputConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IamPolicyAnalysisOutputConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIamPolicyAnalysisOutputConfig(od);
    });
  });

  unittest.group('obj-schema-IamPolicyAnalysisQuery', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIamPolicyAnalysisQuery();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IamPolicyAnalysisQuery.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIamPolicyAnalysisQuery(od);
    });
  });

  unittest.group('obj-schema-IamPolicyAnalysisResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIamPolicyAnalysisResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IamPolicyAnalysisResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIamPolicyAnalysisResult(od);
    });
  });

  unittest.group('obj-schema-IamPolicyAnalysisState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIamPolicyAnalysisState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IamPolicyAnalysisState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIamPolicyAnalysisState(od);
    });
  });

  unittest.group('obj-schema-IamPolicySearchResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIamPolicySearchResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IamPolicySearchResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIamPolicySearchResult(od);
    });
  });

  unittest.group('obj-schema-IdentitySelector', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIdentitySelector();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IdentitySelector.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIdentitySelector(od);
    });
  });

  unittest.group('obj-schema-Inventory', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInventory();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Inventory.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkInventory(od);
    });
  });

  unittest.group('obj-schema-Item', () {
    unittest.test('to-json--from-json', () async {
      final o = buildItem();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Item.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkItem(od);
    });
  });

  unittest.group('obj-schema-ListAssetsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAssetsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAssetsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListAssetsResponse(od);
    });
  });

  unittest.group('obj-schema-ListFeedsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListFeedsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListFeedsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListFeedsResponse(od);
    });
  });

  unittest.group('obj-schema-ListSavedQueriesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListSavedQueriesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListSavedQueriesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListSavedQueriesResponse(od);
    });
  });

  unittest.group('obj-schema-MoveAnalysis', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMoveAnalysis();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MoveAnalysis.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMoveAnalysis(od);
    });
  });

  unittest.group('obj-schema-MoveAnalysisResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMoveAnalysisResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MoveAnalysisResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMoveAnalysisResult(od);
    });
  });

  unittest.group('obj-schema-MoveImpact', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMoveImpact();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.MoveImpact.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMoveImpact(od);
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

  unittest.group('obj-schema-Options', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Options.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOptions(od);
    });
  });

  unittest.group('obj-schema-OrgPolicyResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrgPolicyResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrgPolicyResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrgPolicyResult(od);
    });
  });

  unittest.group('obj-schema-OsInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOsInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.OsInfo.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOsInfo(od);
    });
  });

  unittest.group('obj-schema-OutputConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOutputConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OutputConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOutputConfig(od);
    });
  });

  unittest.group('obj-schema-PartitionSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPartitionSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PartitionSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPartitionSpec(od);
    });
  });

  unittest.group('obj-schema-Permissions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPermissions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Permissions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPermissions(od);
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

  unittest.group('obj-schema-PolicyInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPolicyInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.PolicyInfo.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPolicyInfo(od);
    });
  });

  unittest.group('obj-schema-PubsubDestination', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPubsubDestination();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PubsubDestination.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPubsubDestination(od);
    });
  });

  unittest.group('obj-schema-QueryAssetsOutputConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQueryAssetsOutputConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.QueryAssetsOutputConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkQueryAssetsOutputConfig(od);
    });
  });

  unittest.group('obj-schema-QueryAssetsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQueryAssetsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.QueryAssetsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkQueryAssetsRequest(od);
    });
  });

  unittest.group('obj-schema-QueryAssetsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQueryAssetsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.QueryAssetsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkQueryAssetsResponse(od);
    });
  });

  unittest.group('obj-schema-QueryContent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQueryContent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.QueryContent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkQueryContent(od);
    });
  });

  unittest.group('obj-schema-QueryResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQueryResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.QueryResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkQueryResult(od);
    });
  });

  unittest.group('obj-schema-RelatedAsset', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRelatedAsset();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RelatedAsset.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRelatedAsset(od);
    });
  });

  unittest.group('obj-schema-RelatedAssets', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRelatedAssets();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RelatedAssets.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRelatedAssets(od);
    });
  });

  unittest.group('obj-schema-RelatedResource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRelatedResource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RelatedResource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRelatedResource(od);
    });
  });

  unittest.group('obj-schema-RelatedResources', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRelatedResources();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RelatedResources.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRelatedResources(od);
    });
  });

  unittest.group('obj-schema-RelationshipAttributes', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRelationshipAttributes();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RelationshipAttributes.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRelationshipAttributes(od);
    });
  });

  unittest.group('obj-schema-Resource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Resource.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkResource(od);
    });
  });

  unittest.group('obj-schema-ResourceSearchResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResourceSearchResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResourceSearchResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResourceSearchResult(od);
    });
  });

  unittest.group('obj-schema-ResourceSelector', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResourceSelector();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResourceSelector.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResourceSelector(od);
    });
  });

  unittest.group('obj-schema-SavedQuery', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSavedQuery();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.SavedQuery.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSavedQuery(od);
    });
  });

  unittest.group('obj-schema-SearchAllIamPoliciesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchAllIamPoliciesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SearchAllIamPoliciesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSearchAllIamPoliciesResponse(od);
    });
  });

  unittest.group('obj-schema-SearchAllResourcesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchAllResourcesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SearchAllResourcesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSearchAllResourcesResponse(od);
    });
  });

  unittest.group('obj-schema-SoftwarePackage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSoftwarePackage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SoftwarePackage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSoftwarePackage(od);
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

  unittest.group('obj-schema-TableFieldSchema', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTableFieldSchema();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TableFieldSchema.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTableFieldSchema(od);
    });
  });

  unittest.group('obj-schema-TableSchema', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTableSchema();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TableSchema.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTableSchema(od);
    });
  });

  unittest.group('obj-schema-Tag', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTag();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Tag.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTag(od);
    });
  });

  unittest.group('obj-schema-TemporalAsset', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTemporalAsset();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TemporalAsset.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTemporalAsset(od);
    });
  });

  unittest.group('obj-schema-TimeWindow', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTimeWindow();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.TimeWindow.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTimeWindow(od);
    });
  });

  unittest.group('obj-schema-UpdateFeedRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateFeedRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateFeedRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateFeedRequest(od);
    });
  });

  unittest.group('obj-schema-VersionedPackage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVersionedPackage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VersionedPackage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVersionedPackage(od);
    });
  });

  unittest.group('obj-schema-VersionedResource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVersionedResource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VersionedResource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVersionedResource(od);
    });
  });

  unittest.group('obj-schema-WindowsApplication', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWindowsApplication();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WindowsApplication.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWindowsApplication(od);
    });
  });

  unittest.group('obj-schema-WindowsQuickFixEngineeringPackage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWindowsQuickFixEngineeringPackage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WindowsQuickFixEngineeringPackage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWindowsQuickFixEngineeringPackage(od);
    });
  });

  unittest.group('obj-schema-WindowsUpdateCategory', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWindowsUpdateCategory();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WindowsUpdateCategory.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWindowsUpdateCategory(od);
    });
  });

  unittest.group('obj-schema-WindowsUpdatePackage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWindowsUpdatePackage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WindowsUpdatePackage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWindowsUpdatePackage(od);
    });
  });

  unittest.group('obj-schema-ZypperPatch', () {
    unittest.test('to-json--from-json', () async {
      final o = buildZypperPatch();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ZypperPatch.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkZypperPatch(od);
    });
  });

  unittest.group('resource-AssetsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudAssetApi(mock).assets;
      final arg_parent = 'foo';
      final arg_assetTypes = buildUnnamed117();
      final arg_contentType = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_readTime = 'foo';
      final arg_relationshipTypes = buildUnnamed118();
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
          queryMap['assetTypes']!,
          unittest.equals(arg_assetTypes),
        );
        unittest.expect(
          queryMap['contentType']!.first,
          unittest.equals(arg_contentType),
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
          queryMap['readTime']!.first,
          unittest.equals(arg_readTime),
        );
        unittest.expect(
          queryMap['relationshipTypes']!,
          unittest.equals(arg_relationshipTypes),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListAssetsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          assetTypes: arg_assetTypes,
          contentType: arg_contentType,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          readTime: arg_readTime,
          relationshipTypes: arg_relationshipTypes,
          $fields: arg_$fields);
      checkListAssetsResponse(response as api.ListAssetsResponse);
    });
  });

  unittest.group('resource-EffectiveIamPoliciesResource', () {
    unittest.test('method--batchGet', () async {
      final mock = HttpServerMock();
      final res = api.CloudAssetApi(mock).effectiveIamPolicies;
      final arg_scope = 'foo';
      final arg_names = buildUnnamed119();
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
          queryMap['names']!,
          unittest.equals(arg_names),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildBatchGetEffectiveIamPoliciesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.batchGet(arg_scope, names: arg_names, $fields: arg_$fields);
      checkBatchGetEffectiveIamPoliciesResponse(
          response as api.BatchGetEffectiveIamPoliciesResponse);
    });
  });

  unittest.group('resource-FeedsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudAssetApi(mock).feeds;
      final arg_request = buildCreateFeedRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CreateFeedRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCreateFeedRequest(obj);

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
        final resp = convert.json.encode(buildFeed());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkFeed(response as api.Feed);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudAssetApi(mock).feeds;
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
      final res = api.CloudAssetApi(mock).feeds;
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
        final resp = convert.json.encode(buildFeed());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkFeed(response as api.Feed);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudAssetApi(mock).feeds;
      final arg_parent = 'foo';
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
        final resp = convert.json.encode(buildListFeedsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent, $fields: arg_$fields);
      checkListFeedsResponse(response as api.ListFeedsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CloudAssetApi(mock).feeds;
      final arg_request = buildUpdateFeedRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.UpdateFeedRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUpdateFeedRequest(obj);

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
        final resp = convert.json.encode(buildFeed());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.patch(arg_request, arg_name, $fields: arg_$fields);
      checkFeed(response as api.Feed);
    });
  });

  unittest.group('resource-OperationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudAssetApi(mock).operations;
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-SavedQueriesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudAssetApi(mock).savedQueries;
      final arg_request = buildSavedQuery();
      final arg_parent = 'foo';
      final arg_savedQueryId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SavedQuery.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSavedQuery(obj);

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
          queryMap['savedQueryId']!.first,
          unittest.equals(arg_savedQueryId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildSavedQuery());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          savedQueryId: arg_savedQueryId, $fields: arg_$fields);
      checkSavedQuery(response as api.SavedQuery);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudAssetApi(mock).savedQueries;
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
      final res = api.CloudAssetApi(mock).savedQueries;
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
        final resp = convert.json.encode(buildSavedQuery());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkSavedQuery(response as api.SavedQuery);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudAssetApi(mock).savedQueries;
      final arg_parent = 'foo';
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
        final resp = convert.json.encode(buildListSavedQueriesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListSavedQueriesResponse(response as api.ListSavedQueriesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CloudAssetApi(mock).savedQueries;
      final arg_request = buildSavedQuery();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SavedQuery.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSavedQuery(obj);

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
        final resp = convert.json.encode(buildSavedQuery());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkSavedQuery(response as api.SavedQuery);
    });
  });

  unittest.group('resource-V1Resource', () {
    unittest.test('method--analyzeIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.CloudAssetApi(mock).v1;
      final arg_scope = 'foo';
      final arg_analysisQuery_accessSelector_permissions = buildUnnamed120();
      final arg_analysisQuery_accessSelector_roles = buildUnnamed121();
      final arg_analysisQuery_conditionContext_accessTime = 'foo';
      final arg_analysisQuery_identitySelector_identity = 'foo';
      final arg_analysisQuery_options_analyzeServiceAccountImpersonation = true;
      final arg_analysisQuery_options_expandGroups = true;
      final arg_analysisQuery_options_expandResources = true;
      final arg_analysisQuery_options_expandRoles = true;
      final arg_analysisQuery_options_outputGroupEdges = true;
      final arg_analysisQuery_options_outputResourceEdges = true;
      final arg_analysisQuery_resourceSelector_fullResourceName = 'foo';
      final arg_executionTimeout = 'foo';
      final arg_savedAnalysisQuery = 'foo';
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
          queryMap['analysisQuery.accessSelector.permissions']!,
          unittest.equals(arg_analysisQuery_accessSelector_permissions),
        );
        unittest.expect(
          queryMap['analysisQuery.accessSelector.roles']!,
          unittest.equals(arg_analysisQuery_accessSelector_roles),
        );
        unittest.expect(
          queryMap['analysisQuery.conditionContext.accessTime']!.first,
          unittest.equals(arg_analysisQuery_conditionContext_accessTime),
        );
        unittest.expect(
          queryMap['analysisQuery.identitySelector.identity']!.first,
          unittest.equals(arg_analysisQuery_identitySelector_identity),
        );
        unittest.expect(
          queryMap['analysisQuery.options.analyzeServiceAccountImpersonation']!
              .first,
          unittest.equals(
              '$arg_analysisQuery_options_analyzeServiceAccountImpersonation'),
        );
        unittest.expect(
          queryMap['analysisQuery.options.expandGroups']!.first,
          unittest.equals('$arg_analysisQuery_options_expandGroups'),
        );
        unittest.expect(
          queryMap['analysisQuery.options.expandResources']!.first,
          unittest.equals('$arg_analysisQuery_options_expandResources'),
        );
        unittest.expect(
          queryMap['analysisQuery.options.expandRoles']!.first,
          unittest.equals('$arg_analysisQuery_options_expandRoles'),
        );
        unittest.expect(
          queryMap['analysisQuery.options.outputGroupEdges']!.first,
          unittest.equals('$arg_analysisQuery_options_outputGroupEdges'),
        );
        unittest.expect(
          queryMap['analysisQuery.options.outputResourceEdges']!.first,
          unittest.equals('$arg_analysisQuery_options_outputResourceEdges'),
        );
        unittest.expect(
          queryMap['analysisQuery.resourceSelector.fullResourceName']!.first,
          unittest.equals(arg_analysisQuery_resourceSelector_fullResourceName),
        );
        unittest.expect(
          queryMap['executionTimeout']!.first,
          unittest.equals(arg_executionTimeout),
        );
        unittest.expect(
          queryMap['savedAnalysisQuery']!.first,
          unittest.equals(arg_savedAnalysisQuery),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAnalyzeIamPolicyResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.analyzeIamPolicy(arg_scope,
          analysisQuery_accessSelector_permissions:
              arg_analysisQuery_accessSelector_permissions,
          analysisQuery_accessSelector_roles:
              arg_analysisQuery_accessSelector_roles,
          analysisQuery_conditionContext_accessTime:
              arg_analysisQuery_conditionContext_accessTime,
          analysisQuery_identitySelector_identity:
              arg_analysisQuery_identitySelector_identity,
          analysisQuery_options_analyzeServiceAccountImpersonation:
              arg_analysisQuery_options_analyzeServiceAccountImpersonation,
          analysisQuery_options_expandGroups:
              arg_analysisQuery_options_expandGroups,
          analysisQuery_options_expandResources:
              arg_analysisQuery_options_expandResources,
          analysisQuery_options_expandRoles:
              arg_analysisQuery_options_expandRoles,
          analysisQuery_options_outputGroupEdges:
              arg_analysisQuery_options_outputGroupEdges,
          analysisQuery_options_outputResourceEdges:
              arg_analysisQuery_options_outputResourceEdges,
          analysisQuery_resourceSelector_fullResourceName:
              arg_analysisQuery_resourceSelector_fullResourceName,
          executionTimeout: arg_executionTimeout,
          savedAnalysisQuery: arg_savedAnalysisQuery,
          $fields: arg_$fields);
      checkAnalyzeIamPolicyResponse(response as api.AnalyzeIamPolicyResponse);
    });

    unittest.test('method--analyzeIamPolicyLongrunning', () async {
      final mock = HttpServerMock();
      final res = api.CloudAssetApi(mock).v1;
      final arg_request = buildAnalyzeIamPolicyLongrunningRequest();
      final arg_scope = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AnalyzeIamPolicyLongrunningRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAnalyzeIamPolicyLongrunningRequest(obj);

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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.analyzeIamPolicyLongrunning(
          arg_request, arg_scope,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--analyzeMove', () async {
      final mock = HttpServerMock();
      final res = api.CloudAssetApi(mock).v1;
      final arg_resource = 'foo';
      final arg_destinationParent = 'foo';
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
          queryMap['destinationParent']!.first,
          unittest.equals(arg_destinationParent),
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
        final resp = convert.json.encode(buildAnalyzeMoveResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.analyzeMove(arg_resource,
          destinationParent: arg_destinationParent,
          view: arg_view,
          $fields: arg_$fields);
      checkAnalyzeMoveResponse(response as api.AnalyzeMoveResponse);
    });

    unittest.test('method--analyzeOrgPolicies', () async {
      final mock = HttpServerMock();
      final res = api.CloudAssetApi(mock).v1;
      final arg_scope = 'foo';
      final arg_constraint = 'foo';
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
          queryMap['constraint']!.first,
          unittest.equals(arg_constraint),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAnalyzeOrgPoliciesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.analyzeOrgPolicies(arg_scope,
          constraint: arg_constraint,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkAnalyzeOrgPoliciesResponse(
          response as api.AnalyzeOrgPoliciesResponse);
    });

    unittest.test('method--analyzeOrgPolicyGovernedAssets', () async {
      final mock = HttpServerMock();
      final res = api.CloudAssetApi(mock).v1;
      final arg_scope = 'foo';
      final arg_constraint = 'foo';
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
          queryMap['constraint']!.first,
          unittest.equals(arg_constraint),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildAnalyzeOrgPolicyGovernedAssetsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.analyzeOrgPolicyGovernedAssets(arg_scope,
          constraint: arg_constraint,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkAnalyzeOrgPolicyGovernedAssetsResponse(
          response as api.AnalyzeOrgPolicyGovernedAssetsResponse);
    });

    unittest.test('method--analyzeOrgPolicyGovernedContainers', () async {
      final mock = HttpServerMock();
      final res = api.CloudAssetApi(mock).v1;
      final arg_scope = 'foo';
      final arg_constraint = 'foo';
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
          queryMap['constraint']!.first,
          unittest.equals(arg_constraint),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildAnalyzeOrgPolicyGovernedContainersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.analyzeOrgPolicyGovernedContainers(arg_scope,
          constraint: arg_constraint,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkAnalyzeOrgPolicyGovernedContainersResponse(
          response as api.AnalyzeOrgPolicyGovernedContainersResponse);
    });

    unittest.test('method--batchGetAssetsHistory', () async {
      final mock = HttpServerMock();
      final res = api.CloudAssetApi(mock).v1;
      final arg_parent = 'foo';
      final arg_assetNames = buildUnnamed122();
      final arg_contentType = 'foo';
      final arg_readTimeWindow_endTime = 'foo';
      final arg_readTimeWindow_startTime = 'foo';
      final arg_relationshipTypes = buildUnnamed123();
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
          queryMap['assetNames']!,
          unittest.equals(arg_assetNames),
        );
        unittest.expect(
          queryMap['contentType']!.first,
          unittest.equals(arg_contentType),
        );
        unittest.expect(
          queryMap['readTimeWindow.endTime']!.first,
          unittest.equals(arg_readTimeWindow_endTime),
        );
        unittest.expect(
          queryMap['readTimeWindow.startTime']!.first,
          unittest.equals(arg_readTimeWindow_startTime),
        );
        unittest.expect(
          queryMap['relationshipTypes']!,
          unittest.equals(arg_relationshipTypes),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildBatchGetAssetsHistoryResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.batchGetAssetsHistory(arg_parent,
          assetNames: arg_assetNames,
          contentType: arg_contentType,
          readTimeWindow_endTime: arg_readTimeWindow_endTime,
          readTimeWindow_startTime: arg_readTimeWindow_startTime,
          relationshipTypes: arg_relationshipTypes,
          $fields: arg_$fields);
      checkBatchGetAssetsHistoryResponse(
          response as api.BatchGetAssetsHistoryResponse);
    });

    unittest.test('method--exportAssets', () async {
      final mock = HttpServerMock();
      final res = api.CloudAssetApi(mock).v1;
      final arg_request = buildExportAssetsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ExportAssetsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkExportAssetsRequest(obj);

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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.exportAssets(arg_request, arg_parent, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--queryAssets', () async {
      final mock = HttpServerMock();
      final res = api.CloudAssetApi(mock).v1;
      final arg_request = buildQueryAssetsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.QueryAssetsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkQueryAssetsRequest(obj);

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
        final resp = convert.json.encode(buildQueryAssetsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.queryAssets(arg_request, arg_parent, $fields: arg_$fields);
      checkQueryAssetsResponse(response as api.QueryAssetsResponse);
    });

    unittest.test('method--searchAllIamPolicies', () async {
      final mock = HttpServerMock();
      final res = api.CloudAssetApi(mock).v1;
      final arg_scope = 'foo';
      final arg_assetTypes = buildUnnamed124();
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_query = 'foo';
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
          queryMap['assetTypes']!,
          unittest.equals(arg_assetTypes),
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
          queryMap['query']!.first,
          unittest.equals(arg_query),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildSearchAllIamPoliciesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.searchAllIamPolicies(arg_scope,
          assetTypes: arg_assetTypes,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          query: arg_query,
          $fields: arg_$fields);
      checkSearchAllIamPoliciesResponse(
          response as api.SearchAllIamPoliciesResponse);
    });

    unittest.test('method--searchAllResources', () async {
      final mock = HttpServerMock();
      final res = api.CloudAssetApi(mock).v1;
      final arg_scope = 'foo';
      final arg_assetTypes = buildUnnamed125();
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_query = 'foo';
      final arg_readMask = 'foo';
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
          queryMap['assetTypes']!,
          unittest.equals(arg_assetTypes),
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
          queryMap['query']!.first,
          unittest.equals(arg_query),
        );
        unittest.expect(
          queryMap['readMask']!.first,
          unittest.equals(arg_readMask),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildSearchAllResourcesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.searchAllResources(arg_scope,
          assetTypes: arg_assetTypes,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          query: arg_query,
          readMask: arg_readMask,
          $fields: arg_$fields);
      checkSearchAllResourcesResponse(
          response as api.SearchAllResourcesResponse);
    });
  });
}
