// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
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

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;
import 'package:googleapis/cloudasset/v1.dart' as api;

import '../test_shared.dart';

core.List<core.String> buildUnnamed2940() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2940(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2941() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2941(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAccessSelector = 0;
api.AccessSelector buildAccessSelector() {
  var o = api.AccessSelector();
  buildCounterAccessSelector++;
  if (buildCounterAccessSelector < 3) {
    o.permissions = buildUnnamed2940();
    o.roles = buildUnnamed2941();
  }
  buildCounterAccessSelector--;
  return o;
}

void checkAccessSelector(api.AccessSelector o) {
  buildCounterAccessSelector++;
  if (buildCounterAccessSelector < 3) {
    checkUnnamed2940(o.permissions);
    checkUnnamed2941(o.roles);
  }
  buildCounterAccessSelector--;
}

core.int buildCounterAnalyzeIamPolicyLongrunningRequest = 0;
api.AnalyzeIamPolicyLongrunningRequest
    buildAnalyzeIamPolicyLongrunningRequest() {
  var o = api.AnalyzeIamPolicyLongrunningRequest();
  buildCounterAnalyzeIamPolicyLongrunningRequest++;
  if (buildCounterAnalyzeIamPolicyLongrunningRequest < 3) {
    o.analysisQuery = buildIamPolicyAnalysisQuery();
    o.outputConfig = buildIamPolicyAnalysisOutputConfig();
  }
  buildCounterAnalyzeIamPolicyLongrunningRequest--;
  return o;
}

void checkAnalyzeIamPolicyLongrunningRequest(
    api.AnalyzeIamPolicyLongrunningRequest o) {
  buildCounterAnalyzeIamPolicyLongrunningRequest++;
  if (buildCounterAnalyzeIamPolicyLongrunningRequest < 3) {
    checkIamPolicyAnalysisQuery(o.analysisQuery as api.IamPolicyAnalysisQuery);
    checkIamPolicyAnalysisOutputConfig(
        o.outputConfig as api.IamPolicyAnalysisOutputConfig);
  }
  buildCounterAnalyzeIamPolicyLongrunningRequest--;
}

core.List<api.IamPolicyAnalysis> buildUnnamed2942() {
  var o = <api.IamPolicyAnalysis>[];
  o.add(buildIamPolicyAnalysis());
  o.add(buildIamPolicyAnalysis());
  return o;
}

void checkUnnamed2942(core.List<api.IamPolicyAnalysis> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIamPolicyAnalysis(o[0] as api.IamPolicyAnalysis);
  checkIamPolicyAnalysis(o[1] as api.IamPolicyAnalysis);
}

core.int buildCounterAnalyzeIamPolicyResponse = 0;
api.AnalyzeIamPolicyResponse buildAnalyzeIamPolicyResponse() {
  var o = api.AnalyzeIamPolicyResponse();
  buildCounterAnalyzeIamPolicyResponse++;
  if (buildCounterAnalyzeIamPolicyResponse < 3) {
    o.fullyExplored = true;
    o.mainAnalysis = buildIamPolicyAnalysis();
    o.serviceAccountImpersonationAnalysis = buildUnnamed2942();
  }
  buildCounterAnalyzeIamPolicyResponse--;
  return o;
}

void checkAnalyzeIamPolicyResponse(api.AnalyzeIamPolicyResponse o) {
  buildCounterAnalyzeIamPolicyResponse++;
  if (buildCounterAnalyzeIamPolicyResponse < 3) {
    unittest.expect(o.fullyExplored, unittest.isTrue);
    checkIamPolicyAnalysis(o.mainAnalysis as api.IamPolicyAnalysis);
    checkUnnamed2942(o.serviceAccountImpersonationAnalysis);
  }
  buildCounterAnalyzeIamPolicyResponse--;
}

core.List<core.String> buildUnnamed2943() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2943(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleCloudOrgpolicyV1Policy> buildUnnamed2944() {
  var o = <api.GoogleCloudOrgpolicyV1Policy>[];
  o.add(buildGoogleCloudOrgpolicyV1Policy());
  o.add(buildGoogleCloudOrgpolicyV1Policy());
  return o;
}

void checkUnnamed2944(core.List<api.GoogleCloudOrgpolicyV1Policy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudOrgpolicyV1Policy(o[0] as api.GoogleCloudOrgpolicyV1Policy);
  checkGoogleCloudOrgpolicyV1Policy(o[1] as api.GoogleCloudOrgpolicyV1Policy);
}

core.int buildCounterAsset = 0;
api.Asset buildAsset() {
  var o = api.Asset();
  buildCounterAsset++;
  if (buildCounterAsset < 3) {
    o.accessLevel = buildGoogleIdentityAccesscontextmanagerV1AccessLevel();
    o.accessPolicy = buildGoogleIdentityAccesscontextmanagerV1AccessPolicy();
    o.ancestors = buildUnnamed2943();
    o.assetType = 'foo';
    o.iamPolicy = buildPolicy();
    o.name = 'foo';
    o.orgPolicy = buildUnnamed2944();
    o.osInventory = buildInventory();
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
    checkGoogleIdentityAccesscontextmanagerV1AccessLevel(
        o.accessLevel as api.GoogleIdentityAccesscontextmanagerV1AccessLevel);
    checkGoogleIdentityAccesscontextmanagerV1AccessPolicy(
        o.accessPolicy as api.GoogleIdentityAccesscontextmanagerV1AccessPolicy);
    checkUnnamed2943(o.ancestors);
    unittest.expect(o.assetType, unittest.equals('foo'));
    checkPolicy(o.iamPolicy as api.Policy);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed2944(o.orgPolicy);
    checkInventory(o.osInventory as api.Inventory);
    checkResource(o.resource as api.Resource);
    checkGoogleIdentityAccesscontextmanagerV1ServicePerimeter(o.servicePerimeter
        as api.GoogleIdentityAccesscontextmanagerV1ServicePerimeter);
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterAsset--;
}

core.List<api.AuditLogConfig> buildUnnamed2945() {
  var o = <api.AuditLogConfig>[];
  o.add(buildAuditLogConfig());
  o.add(buildAuditLogConfig());
  return o;
}

void checkUnnamed2945(core.List<api.AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditLogConfig(o[0] as api.AuditLogConfig);
  checkAuditLogConfig(o[1] as api.AuditLogConfig);
}

core.int buildCounterAuditConfig = 0;
api.AuditConfig buildAuditConfig() {
  var o = api.AuditConfig();
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed2945();
    o.service = 'foo';
  }
  buildCounterAuditConfig--;
  return o;
}

void checkAuditConfig(api.AuditConfig o) {
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    checkUnnamed2945(o.auditLogConfigs);
    unittest.expect(o.service, unittest.equals('foo'));
  }
  buildCounterAuditConfig--;
}

core.List<core.String> buildUnnamed2946() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2946(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAuditLogConfig = 0;
api.AuditLogConfig buildAuditLogConfig() {
  var o = api.AuditLogConfig();
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    o.exemptedMembers = buildUnnamed2946();
    o.logType = 'foo';
  }
  buildCounterAuditLogConfig--;
  return o;
}

void checkAuditLogConfig(api.AuditLogConfig o) {
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    checkUnnamed2946(o.exemptedMembers);
    unittest.expect(o.logType, unittest.equals('foo'));
  }
  buildCounterAuditLogConfig--;
}

core.List<api.TemporalAsset> buildUnnamed2947() {
  var o = <api.TemporalAsset>[];
  o.add(buildTemporalAsset());
  o.add(buildTemporalAsset());
  return o;
}

void checkUnnamed2947(core.List<api.TemporalAsset> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTemporalAsset(o[0] as api.TemporalAsset);
  checkTemporalAsset(o[1] as api.TemporalAsset);
}

core.int buildCounterBatchGetAssetsHistoryResponse = 0;
api.BatchGetAssetsHistoryResponse buildBatchGetAssetsHistoryResponse() {
  var o = api.BatchGetAssetsHistoryResponse();
  buildCounterBatchGetAssetsHistoryResponse++;
  if (buildCounterBatchGetAssetsHistoryResponse < 3) {
    o.assets = buildUnnamed2947();
  }
  buildCounterBatchGetAssetsHistoryResponse--;
  return o;
}

void checkBatchGetAssetsHistoryResponse(api.BatchGetAssetsHistoryResponse o) {
  buildCounterBatchGetAssetsHistoryResponse++;
  if (buildCounterBatchGetAssetsHistoryResponse < 3) {
    checkUnnamed2947(o.assets);
  }
  buildCounterBatchGetAssetsHistoryResponse--;
}

core.int buildCounterBigQueryDestination = 0;
api.BigQueryDestination buildBigQueryDestination() {
  var o = api.BigQueryDestination();
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
    unittest.expect(o.dataset, unittest.equals('foo'));
    unittest.expect(o.force, unittest.isTrue);
    checkPartitionSpec(o.partitionSpec as api.PartitionSpec);
    unittest.expect(o.separateTablesPerAssetType, unittest.isTrue);
    unittest.expect(o.table, unittest.equals('foo'));
  }
  buildCounterBigQueryDestination--;
}

core.List<core.String> buildUnnamed2948() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2948(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBinding = 0;
api.Binding buildBinding() {
  var o = api.Binding();
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    o.condition = buildExpr();
    o.members = buildUnnamed2948();
    o.role = 'foo';
  }
  buildCounterBinding--;
  return o;
}

void checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition as api.Expr);
    checkUnnamed2948(o.members);
    unittest.expect(o.role, unittest.equals('foo'));
  }
  buildCounterBinding--;
}

core.int buildCounterCreateFeedRequest = 0;
api.CreateFeedRequest buildCreateFeedRequest() {
  var o = api.CreateFeedRequest();
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
    checkFeed(o.feed as api.Feed);
    unittest.expect(o.feedId, unittest.equals('foo'));
  }
  buildCounterCreateFeedRequest--;
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

core.Map<core.String, api.Permissions> buildUnnamed2949() {
  var o = <core.String, api.Permissions>{};
  o['x'] = buildPermissions();
  o['y'] = buildPermissions();
  return o;
}

void checkUnnamed2949(core.Map<core.String, api.Permissions> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPermissions(o['x'] as api.Permissions);
  checkPermissions(o['y'] as api.Permissions);
}

core.int buildCounterExplanation = 0;
api.Explanation buildExplanation() {
  var o = api.Explanation();
  buildCounterExplanation++;
  if (buildCounterExplanation < 3) {
    o.matchedPermissions = buildUnnamed2949();
  }
  buildCounterExplanation--;
  return o;
}

void checkExplanation(api.Explanation o) {
  buildCounterExplanation++;
  if (buildCounterExplanation < 3) {
    checkUnnamed2949(o.matchedPermissions);
  }
  buildCounterExplanation--;
}

core.List<core.String> buildUnnamed2950() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2950(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterExportAssetsRequest = 0;
api.ExportAssetsRequest buildExportAssetsRequest() {
  var o = api.ExportAssetsRequest();
  buildCounterExportAssetsRequest++;
  if (buildCounterExportAssetsRequest < 3) {
    o.assetTypes = buildUnnamed2950();
    o.contentType = 'foo';
    o.outputConfig = buildOutputConfig();
    o.readTime = 'foo';
  }
  buildCounterExportAssetsRequest--;
  return o;
}

void checkExportAssetsRequest(api.ExportAssetsRequest o) {
  buildCounterExportAssetsRequest++;
  if (buildCounterExportAssetsRequest < 3) {
    checkUnnamed2950(o.assetTypes);
    unittest.expect(o.contentType, unittest.equals('foo'));
    checkOutputConfig(o.outputConfig as api.OutputConfig);
    unittest.expect(o.readTime, unittest.equals('foo'));
  }
  buildCounterExportAssetsRequest--;
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

core.List<core.String> buildUnnamed2951() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2951(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2952() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2952(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterFeed = 0;
api.Feed buildFeed() {
  var o = api.Feed();
  buildCounterFeed++;
  if (buildCounterFeed < 3) {
    o.assetNames = buildUnnamed2951();
    o.assetTypes = buildUnnamed2952();
    o.condition = buildExpr();
    o.contentType = 'foo';
    o.feedOutputConfig = buildFeedOutputConfig();
    o.name = 'foo';
  }
  buildCounterFeed--;
  return o;
}

void checkFeed(api.Feed o) {
  buildCounterFeed++;
  if (buildCounterFeed < 3) {
    checkUnnamed2951(o.assetNames);
    checkUnnamed2952(o.assetTypes);
    checkExpr(o.condition as api.Expr);
    unittest.expect(o.contentType, unittest.equals('foo'));
    checkFeedOutputConfig(o.feedOutputConfig as api.FeedOutputConfig);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterFeed--;
}

core.int buildCounterFeedOutputConfig = 0;
api.FeedOutputConfig buildFeedOutputConfig() {
  var o = api.FeedOutputConfig();
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
    checkPubsubDestination(o.pubsubDestination as api.PubsubDestination);
  }
  buildCounterFeedOutputConfig--;
}

core.int buildCounterGcsDestination = 0;
api.GcsDestination buildGcsDestination() {
  var o = api.GcsDestination();
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
    unittest.expect(o.uri, unittest.equals('foo'));
    unittest.expect(o.uriPrefix, unittest.equals('foo'));
  }
  buildCounterGcsDestination--;
}

core.int buildCounterGoogleCloudAssetV1Access = 0;
api.GoogleCloudAssetV1Access buildGoogleCloudAssetV1Access() {
  var o = api.GoogleCloudAssetV1Access();
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
    checkIamPolicyAnalysisState(o.analysisState as api.IamPolicyAnalysisState);
    unittest.expect(o.permission, unittest.equals('foo'));
    unittest.expect(o.role, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAssetV1Access--;
}

core.List<api.GoogleCloudAssetV1Access> buildUnnamed2953() {
  var o = <api.GoogleCloudAssetV1Access>[];
  o.add(buildGoogleCloudAssetV1Access());
  o.add(buildGoogleCloudAssetV1Access());
  return o;
}

void checkUnnamed2953(core.List<api.GoogleCloudAssetV1Access> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAssetV1Access(o[0] as api.GoogleCloudAssetV1Access);
  checkGoogleCloudAssetV1Access(o[1] as api.GoogleCloudAssetV1Access);
}

core.List<api.GoogleCloudAssetV1Edge> buildUnnamed2954() {
  var o = <api.GoogleCloudAssetV1Edge>[];
  o.add(buildGoogleCloudAssetV1Edge());
  o.add(buildGoogleCloudAssetV1Edge());
  return o;
}

void checkUnnamed2954(core.List<api.GoogleCloudAssetV1Edge> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAssetV1Edge(o[0] as api.GoogleCloudAssetV1Edge);
  checkGoogleCloudAssetV1Edge(o[1] as api.GoogleCloudAssetV1Edge);
}

core.List<api.GoogleCloudAssetV1Resource> buildUnnamed2955() {
  var o = <api.GoogleCloudAssetV1Resource>[];
  o.add(buildGoogleCloudAssetV1Resource());
  o.add(buildGoogleCloudAssetV1Resource());
  return o;
}

void checkUnnamed2955(core.List<api.GoogleCloudAssetV1Resource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAssetV1Resource(o[0] as api.GoogleCloudAssetV1Resource);
  checkGoogleCloudAssetV1Resource(o[1] as api.GoogleCloudAssetV1Resource);
}

core.int buildCounterGoogleCloudAssetV1AccessControlList = 0;
api.GoogleCloudAssetV1AccessControlList
    buildGoogleCloudAssetV1AccessControlList() {
  var o = api.GoogleCloudAssetV1AccessControlList();
  buildCounterGoogleCloudAssetV1AccessControlList++;
  if (buildCounterGoogleCloudAssetV1AccessControlList < 3) {
    o.accesses = buildUnnamed2953();
    o.resourceEdges = buildUnnamed2954();
    o.resources = buildUnnamed2955();
  }
  buildCounterGoogleCloudAssetV1AccessControlList--;
  return o;
}

void checkGoogleCloudAssetV1AccessControlList(
    api.GoogleCloudAssetV1AccessControlList o) {
  buildCounterGoogleCloudAssetV1AccessControlList++;
  if (buildCounterGoogleCloudAssetV1AccessControlList < 3) {
    checkUnnamed2953(o.accesses);
    checkUnnamed2954(o.resourceEdges);
    checkUnnamed2955(o.resources);
  }
  buildCounterGoogleCloudAssetV1AccessControlList--;
}

core.int buildCounterGoogleCloudAssetV1BigQueryDestination = 0;
api.GoogleCloudAssetV1BigQueryDestination
    buildGoogleCloudAssetV1BigQueryDestination() {
  var o = api.GoogleCloudAssetV1BigQueryDestination();
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
    unittest.expect(o.dataset, unittest.equals('foo'));
    unittest.expect(o.partitionKey, unittest.equals('foo'));
    unittest.expect(o.tablePrefix, unittest.equals('foo'));
    unittest.expect(o.writeDisposition, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAssetV1BigQueryDestination--;
}

core.int buildCounterGoogleCloudAssetV1Edge = 0;
api.GoogleCloudAssetV1Edge buildGoogleCloudAssetV1Edge() {
  var o = api.GoogleCloudAssetV1Edge();
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
    unittest.expect(o.sourceNode, unittest.equals('foo'));
    unittest.expect(o.targetNode, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAssetV1Edge--;
}

core.int buildCounterGoogleCloudAssetV1GcsDestination = 0;
api.GoogleCloudAssetV1GcsDestination buildGoogleCloudAssetV1GcsDestination() {
  var o = api.GoogleCloudAssetV1GcsDestination();
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
    unittest.expect(o.uri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAssetV1GcsDestination--;
}

core.int buildCounterGoogleCloudAssetV1Identity = 0;
api.GoogleCloudAssetV1Identity buildGoogleCloudAssetV1Identity() {
  var o = api.GoogleCloudAssetV1Identity();
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
    checkIamPolicyAnalysisState(o.analysisState as api.IamPolicyAnalysisState);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAssetV1Identity--;
}

core.List<api.GoogleCloudAssetV1Edge> buildUnnamed2956() {
  var o = <api.GoogleCloudAssetV1Edge>[];
  o.add(buildGoogleCloudAssetV1Edge());
  o.add(buildGoogleCloudAssetV1Edge());
  return o;
}

void checkUnnamed2956(core.List<api.GoogleCloudAssetV1Edge> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAssetV1Edge(o[0] as api.GoogleCloudAssetV1Edge);
  checkGoogleCloudAssetV1Edge(o[1] as api.GoogleCloudAssetV1Edge);
}

core.List<api.GoogleCloudAssetV1Identity> buildUnnamed2957() {
  var o = <api.GoogleCloudAssetV1Identity>[];
  o.add(buildGoogleCloudAssetV1Identity());
  o.add(buildGoogleCloudAssetV1Identity());
  return o;
}

void checkUnnamed2957(core.List<api.GoogleCloudAssetV1Identity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAssetV1Identity(o[0] as api.GoogleCloudAssetV1Identity);
  checkGoogleCloudAssetV1Identity(o[1] as api.GoogleCloudAssetV1Identity);
}

core.int buildCounterGoogleCloudAssetV1IdentityList = 0;
api.GoogleCloudAssetV1IdentityList buildGoogleCloudAssetV1IdentityList() {
  var o = api.GoogleCloudAssetV1IdentityList();
  buildCounterGoogleCloudAssetV1IdentityList++;
  if (buildCounterGoogleCloudAssetV1IdentityList < 3) {
    o.groupEdges = buildUnnamed2956();
    o.identities = buildUnnamed2957();
  }
  buildCounterGoogleCloudAssetV1IdentityList--;
  return o;
}

void checkGoogleCloudAssetV1IdentityList(api.GoogleCloudAssetV1IdentityList o) {
  buildCounterGoogleCloudAssetV1IdentityList++;
  if (buildCounterGoogleCloudAssetV1IdentityList < 3) {
    checkUnnamed2956(o.groupEdges);
    checkUnnamed2957(o.identities);
  }
  buildCounterGoogleCloudAssetV1IdentityList--;
}

core.int buildCounterGoogleCloudAssetV1Resource = 0;
api.GoogleCloudAssetV1Resource buildGoogleCloudAssetV1Resource() {
  var o = api.GoogleCloudAssetV1Resource();
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
    checkIamPolicyAnalysisState(o.analysisState as api.IamPolicyAnalysisState);
    unittest.expect(o.fullResourceName, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAssetV1Resource--;
}

core.int buildCounterGoogleCloudOrgpolicyV1BooleanPolicy = 0;
api.GoogleCloudOrgpolicyV1BooleanPolicy
    buildGoogleCloudOrgpolicyV1BooleanPolicy() {
  var o = api.GoogleCloudOrgpolicyV1BooleanPolicy();
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
    unittest.expect(o.enforced, unittest.isTrue);
  }
  buildCounterGoogleCloudOrgpolicyV1BooleanPolicy--;
}

core.List<core.String> buildUnnamed2958() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2958(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2959() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2959(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudOrgpolicyV1ListPolicy = 0;
api.GoogleCloudOrgpolicyV1ListPolicy buildGoogleCloudOrgpolicyV1ListPolicy() {
  var o = api.GoogleCloudOrgpolicyV1ListPolicy();
  buildCounterGoogleCloudOrgpolicyV1ListPolicy++;
  if (buildCounterGoogleCloudOrgpolicyV1ListPolicy < 3) {
    o.allValues = 'foo';
    o.allowedValues = buildUnnamed2958();
    o.deniedValues = buildUnnamed2959();
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
    unittest.expect(o.allValues, unittest.equals('foo'));
    checkUnnamed2958(o.allowedValues);
    checkUnnamed2959(o.deniedValues);
    unittest.expect(o.inheritFromParent, unittest.isTrue);
    unittest.expect(o.suggestedValue, unittest.equals('foo'));
  }
  buildCounterGoogleCloudOrgpolicyV1ListPolicy--;
}

core.int buildCounterGoogleCloudOrgpolicyV1Policy = 0;
api.GoogleCloudOrgpolicyV1Policy buildGoogleCloudOrgpolicyV1Policy() {
  var o = api.GoogleCloudOrgpolicyV1Policy();
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
    checkGoogleCloudOrgpolicyV1BooleanPolicy(
        o.booleanPolicy as api.GoogleCloudOrgpolicyV1BooleanPolicy);
    unittest.expect(o.constraint, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    checkGoogleCloudOrgpolicyV1ListPolicy(
        o.listPolicy as api.GoogleCloudOrgpolicyV1ListPolicy);
    checkGoogleCloudOrgpolicyV1RestoreDefault(
        o.restoreDefault as api.GoogleCloudOrgpolicyV1RestoreDefault);
    unittest.expect(o.updateTime, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals(42));
  }
  buildCounterGoogleCloudOrgpolicyV1Policy--;
}

core.int buildCounterGoogleCloudOrgpolicyV1RestoreDefault = 0;
api.GoogleCloudOrgpolicyV1RestoreDefault
    buildGoogleCloudOrgpolicyV1RestoreDefault() {
  var o = api.GoogleCloudOrgpolicyV1RestoreDefault();
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
  var o = api.GoogleIdentityAccesscontextmanagerV1AccessLevel();
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
    checkGoogleIdentityAccesscontextmanagerV1BasicLevel(
        o.basic as api.GoogleIdentityAccesscontextmanagerV1BasicLevel);
    checkGoogleIdentityAccesscontextmanagerV1CustomLevel(
        o.custom as api.GoogleIdentityAccesscontextmanagerV1CustomLevel);
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1AccessLevel--;
}

core.int buildCounterGoogleIdentityAccesscontextmanagerV1AccessPolicy = 0;
api.GoogleIdentityAccesscontextmanagerV1AccessPolicy
    buildGoogleIdentityAccesscontextmanagerV1AccessPolicy() {
  var o = api.GoogleIdentityAccesscontextmanagerV1AccessPolicy();
  buildCounterGoogleIdentityAccesscontextmanagerV1AccessPolicy++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1AccessPolicy < 3) {
    o.etag = 'foo';
    o.name = 'foo';
    o.parent = 'foo';
    o.title = 'foo';
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1AccessPolicy--;
  return o;
}

void checkGoogleIdentityAccesscontextmanagerV1AccessPolicy(
    api.GoogleIdentityAccesscontextmanagerV1AccessPolicy o) {
  buildCounterGoogleIdentityAccesscontextmanagerV1AccessPolicy++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1AccessPolicy < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.parent, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1AccessPolicy--;
}

core.List<api.GoogleIdentityAccesscontextmanagerV1MethodSelector>
    buildUnnamed2960() {
  var o = <api.GoogleIdentityAccesscontextmanagerV1MethodSelector>[];
  o.add(buildGoogleIdentityAccesscontextmanagerV1MethodSelector());
  o.add(buildGoogleIdentityAccesscontextmanagerV1MethodSelector());
  return o;
}

void checkUnnamed2960(
    core.List<api.GoogleIdentityAccesscontextmanagerV1MethodSelector> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIdentityAccesscontextmanagerV1MethodSelector(
      o[0] as api.GoogleIdentityAccesscontextmanagerV1MethodSelector);
  checkGoogleIdentityAccesscontextmanagerV1MethodSelector(
      o[1] as api.GoogleIdentityAccesscontextmanagerV1MethodSelector);
}

core.int buildCounterGoogleIdentityAccesscontextmanagerV1ApiOperation = 0;
api.GoogleIdentityAccesscontextmanagerV1ApiOperation
    buildGoogleIdentityAccesscontextmanagerV1ApiOperation() {
  var o = api.GoogleIdentityAccesscontextmanagerV1ApiOperation();
  buildCounterGoogleIdentityAccesscontextmanagerV1ApiOperation++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1ApiOperation < 3) {
    o.methodSelectors = buildUnnamed2960();
    o.serviceName = 'foo';
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1ApiOperation--;
  return o;
}

void checkGoogleIdentityAccesscontextmanagerV1ApiOperation(
    api.GoogleIdentityAccesscontextmanagerV1ApiOperation o) {
  buildCounterGoogleIdentityAccesscontextmanagerV1ApiOperation++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1ApiOperation < 3) {
    checkUnnamed2960(o.methodSelectors);
    unittest.expect(o.serviceName, unittest.equals('foo'));
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1ApiOperation--;
}

core.List<api.GoogleIdentityAccesscontextmanagerV1Condition>
    buildUnnamed2961() {
  var o = <api.GoogleIdentityAccesscontextmanagerV1Condition>[];
  o.add(buildGoogleIdentityAccesscontextmanagerV1Condition());
  o.add(buildGoogleIdentityAccesscontextmanagerV1Condition());
  return o;
}

void checkUnnamed2961(
    core.List<api.GoogleIdentityAccesscontextmanagerV1Condition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIdentityAccesscontextmanagerV1Condition(
      o[0] as api.GoogleIdentityAccesscontextmanagerV1Condition);
  checkGoogleIdentityAccesscontextmanagerV1Condition(
      o[1] as api.GoogleIdentityAccesscontextmanagerV1Condition);
}

core.int buildCounterGoogleIdentityAccesscontextmanagerV1BasicLevel = 0;
api.GoogleIdentityAccesscontextmanagerV1BasicLevel
    buildGoogleIdentityAccesscontextmanagerV1BasicLevel() {
  var o = api.GoogleIdentityAccesscontextmanagerV1BasicLevel();
  buildCounterGoogleIdentityAccesscontextmanagerV1BasicLevel++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1BasicLevel < 3) {
    o.combiningFunction = 'foo';
    o.conditions = buildUnnamed2961();
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1BasicLevel--;
  return o;
}

void checkGoogleIdentityAccesscontextmanagerV1BasicLevel(
    api.GoogleIdentityAccesscontextmanagerV1BasicLevel o) {
  buildCounterGoogleIdentityAccesscontextmanagerV1BasicLevel++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1BasicLevel < 3) {
    unittest.expect(o.combiningFunction, unittest.equals('foo'));
    checkUnnamed2961(o.conditions);
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1BasicLevel--;
}

core.List<core.String> buildUnnamed2962() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2962(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2963() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2963(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2964() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2964(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2965() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2965(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleIdentityAccesscontextmanagerV1Condition = 0;
api.GoogleIdentityAccesscontextmanagerV1Condition
    buildGoogleIdentityAccesscontextmanagerV1Condition() {
  var o = api.GoogleIdentityAccesscontextmanagerV1Condition();
  buildCounterGoogleIdentityAccesscontextmanagerV1Condition++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1Condition < 3) {
    o.devicePolicy = buildGoogleIdentityAccesscontextmanagerV1DevicePolicy();
    o.ipSubnetworks = buildUnnamed2962();
    o.members = buildUnnamed2963();
    o.negate = true;
    o.regions = buildUnnamed2964();
    o.requiredAccessLevels = buildUnnamed2965();
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1Condition--;
  return o;
}

void checkGoogleIdentityAccesscontextmanagerV1Condition(
    api.GoogleIdentityAccesscontextmanagerV1Condition o) {
  buildCounterGoogleIdentityAccesscontextmanagerV1Condition++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1Condition < 3) {
    checkGoogleIdentityAccesscontextmanagerV1DevicePolicy(
        o.devicePolicy as api.GoogleIdentityAccesscontextmanagerV1DevicePolicy);
    checkUnnamed2962(o.ipSubnetworks);
    checkUnnamed2963(o.members);
    unittest.expect(o.negate, unittest.isTrue);
    checkUnnamed2964(o.regions);
    checkUnnamed2965(o.requiredAccessLevels);
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1Condition--;
}

core.int buildCounterGoogleIdentityAccesscontextmanagerV1CustomLevel = 0;
api.GoogleIdentityAccesscontextmanagerV1CustomLevel
    buildGoogleIdentityAccesscontextmanagerV1CustomLevel() {
  var o = api.GoogleIdentityAccesscontextmanagerV1CustomLevel();
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
    checkExpr(o.expr as api.Expr);
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1CustomLevel--;
}

core.List<core.String> buildUnnamed2966() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2966(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2967() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2967(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleIdentityAccesscontextmanagerV1OsConstraint>
    buildUnnamed2968() {
  var o = <api.GoogleIdentityAccesscontextmanagerV1OsConstraint>[];
  o.add(buildGoogleIdentityAccesscontextmanagerV1OsConstraint());
  o.add(buildGoogleIdentityAccesscontextmanagerV1OsConstraint());
  return o;
}

void checkUnnamed2968(
    core.List<api.GoogleIdentityAccesscontextmanagerV1OsConstraint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIdentityAccesscontextmanagerV1OsConstraint(
      o[0] as api.GoogleIdentityAccesscontextmanagerV1OsConstraint);
  checkGoogleIdentityAccesscontextmanagerV1OsConstraint(
      o[1] as api.GoogleIdentityAccesscontextmanagerV1OsConstraint);
}

core.int buildCounterGoogleIdentityAccesscontextmanagerV1DevicePolicy = 0;
api.GoogleIdentityAccesscontextmanagerV1DevicePolicy
    buildGoogleIdentityAccesscontextmanagerV1DevicePolicy() {
  var o = api.GoogleIdentityAccesscontextmanagerV1DevicePolicy();
  buildCounterGoogleIdentityAccesscontextmanagerV1DevicePolicy++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1DevicePolicy < 3) {
    o.allowedDeviceManagementLevels = buildUnnamed2966();
    o.allowedEncryptionStatuses = buildUnnamed2967();
    o.osConstraints = buildUnnamed2968();
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
    checkUnnamed2966(o.allowedDeviceManagementLevels);
    checkUnnamed2967(o.allowedEncryptionStatuses);
    checkUnnamed2968(o.osConstraints);
    unittest.expect(o.requireAdminApproval, unittest.isTrue);
    unittest.expect(o.requireCorpOwned, unittest.isTrue);
    unittest.expect(o.requireScreenlock, unittest.isTrue);
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1DevicePolicy--;
}

core.List<core.String> buildUnnamed2969() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2969(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleIdentityAccesscontextmanagerV1EgressFrom = 0;
api.GoogleIdentityAccesscontextmanagerV1EgressFrom
    buildGoogleIdentityAccesscontextmanagerV1EgressFrom() {
  var o = api.GoogleIdentityAccesscontextmanagerV1EgressFrom();
  buildCounterGoogleIdentityAccesscontextmanagerV1EgressFrom++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1EgressFrom < 3) {
    o.identities = buildUnnamed2969();
    o.identityType = 'foo';
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1EgressFrom--;
  return o;
}

void checkGoogleIdentityAccesscontextmanagerV1EgressFrom(
    api.GoogleIdentityAccesscontextmanagerV1EgressFrom o) {
  buildCounterGoogleIdentityAccesscontextmanagerV1EgressFrom++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1EgressFrom < 3) {
    checkUnnamed2969(o.identities);
    unittest.expect(o.identityType, unittest.equals('foo'));
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1EgressFrom--;
}

core.int buildCounterGoogleIdentityAccesscontextmanagerV1EgressPolicy = 0;
api.GoogleIdentityAccesscontextmanagerV1EgressPolicy
    buildGoogleIdentityAccesscontextmanagerV1EgressPolicy() {
  var o = api.GoogleIdentityAccesscontextmanagerV1EgressPolicy();
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
    checkGoogleIdentityAccesscontextmanagerV1EgressFrom(
        o.egressFrom as api.GoogleIdentityAccesscontextmanagerV1EgressFrom);
    checkGoogleIdentityAccesscontextmanagerV1EgressTo(
        o.egressTo as api.GoogleIdentityAccesscontextmanagerV1EgressTo);
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1EgressPolicy--;
}

core.List<api.GoogleIdentityAccesscontextmanagerV1ApiOperation>
    buildUnnamed2970() {
  var o = <api.GoogleIdentityAccesscontextmanagerV1ApiOperation>[];
  o.add(buildGoogleIdentityAccesscontextmanagerV1ApiOperation());
  o.add(buildGoogleIdentityAccesscontextmanagerV1ApiOperation());
  return o;
}

void checkUnnamed2970(
    core.List<api.GoogleIdentityAccesscontextmanagerV1ApiOperation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIdentityAccesscontextmanagerV1ApiOperation(
      o[0] as api.GoogleIdentityAccesscontextmanagerV1ApiOperation);
  checkGoogleIdentityAccesscontextmanagerV1ApiOperation(
      o[1] as api.GoogleIdentityAccesscontextmanagerV1ApiOperation);
}

core.List<core.String> buildUnnamed2971() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2971(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleIdentityAccesscontextmanagerV1EgressTo = 0;
api.GoogleIdentityAccesscontextmanagerV1EgressTo
    buildGoogleIdentityAccesscontextmanagerV1EgressTo() {
  var o = api.GoogleIdentityAccesscontextmanagerV1EgressTo();
  buildCounterGoogleIdentityAccesscontextmanagerV1EgressTo++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1EgressTo < 3) {
    o.operations = buildUnnamed2970();
    o.resources = buildUnnamed2971();
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1EgressTo--;
  return o;
}

void checkGoogleIdentityAccesscontextmanagerV1EgressTo(
    api.GoogleIdentityAccesscontextmanagerV1EgressTo o) {
  buildCounterGoogleIdentityAccesscontextmanagerV1EgressTo++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1EgressTo < 3) {
    checkUnnamed2970(o.operations);
    checkUnnamed2971(o.resources);
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1EgressTo--;
}

core.List<core.String> buildUnnamed2972() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2972(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleIdentityAccesscontextmanagerV1IngressSource>
    buildUnnamed2973() {
  var o = <api.GoogleIdentityAccesscontextmanagerV1IngressSource>[];
  o.add(buildGoogleIdentityAccesscontextmanagerV1IngressSource());
  o.add(buildGoogleIdentityAccesscontextmanagerV1IngressSource());
  return o;
}

void checkUnnamed2973(
    core.List<api.GoogleIdentityAccesscontextmanagerV1IngressSource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIdentityAccesscontextmanagerV1IngressSource(
      o[0] as api.GoogleIdentityAccesscontextmanagerV1IngressSource);
  checkGoogleIdentityAccesscontextmanagerV1IngressSource(
      o[1] as api.GoogleIdentityAccesscontextmanagerV1IngressSource);
}

core.int buildCounterGoogleIdentityAccesscontextmanagerV1IngressFrom = 0;
api.GoogleIdentityAccesscontextmanagerV1IngressFrom
    buildGoogleIdentityAccesscontextmanagerV1IngressFrom() {
  var o = api.GoogleIdentityAccesscontextmanagerV1IngressFrom();
  buildCounterGoogleIdentityAccesscontextmanagerV1IngressFrom++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1IngressFrom < 3) {
    o.identities = buildUnnamed2972();
    o.identityType = 'foo';
    o.sources = buildUnnamed2973();
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1IngressFrom--;
  return o;
}

void checkGoogleIdentityAccesscontextmanagerV1IngressFrom(
    api.GoogleIdentityAccesscontextmanagerV1IngressFrom o) {
  buildCounterGoogleIdentityAccesscontextmanagerV1IngressFrom++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1IngressFrom < 3) {
    checkUnnamed2972(o.identities);
    unittest.expect(o.identityType, unittest.equals('foo'));
    checkUnnamed2973(o.sources);
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1IngressFrom--;
}

core.int buildCounterGoogleIdentityAccesscontextmanagerV1IngressPolicy = 0;
api.GoogleIdentityAccesscontextmanagerV1IngressPolicy
    buildGoogleIdentityAccesscontextmanagerV1IngressPolicy() {
  var o = api.GoogleIdentityAccesscontextmanagerV1IngressPolicy();
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
    checkGoogleIdentityAccesscontextmanagerV1IngressFrom(
        o.ingressFrom as api.GoogleIdentityAccesscontextmanagerV1IngressFrom);
    checkGoogleIdentityAccesscontextmanagerV1IngressTo(
        o.ingressTo as api.GoogleIdentityAccesscontextmanagerV1IngressTo);
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1IngressPolicy--;
}

core.int buildCounterGoogleIdentityAccesscontextmanagerV1IngressSource = 0;
api.GoogleIdentityAccesscontextmanagerV1IngressSource
    buildGoogleIdentityAccesscontextmanagerV1IngressSource() {
  var o = api.GoogleIdentityAccesscontextmanagerV1IngressSource();
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
    unittest.expect(o.accessLevel, unittest.equals('foo'));
    unittest.expect(o.resource, unittest.equals('foo'));
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1IngressSource--;
}

core.List<api.GoogleIdentityAccesscontextmanagerV1ApiOperation>
    buildUnnamed2974() {
  var o = <api.GoogleIdentityAccesscontextmanagerV1ApiOperation>[];
  o.add(buildGoogleIdentityAccesscontextmanagerV1ApiOperation());
  o.add(buildGoogleIdentityAccesscontextmanagerV1ApiOperation());
  return o;
}

void checkUnnamed2974(
    core.List<api.GoogleIdentityAccesscontextmanagerV1ApiOperation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIdentityAccesscontextmanagerV1ApiOperation(
      o[0] as api.GoogleIdentityAccesscontextmanagerV1ApiOperation);
  checkGoogleIdentityAccesscontextmanagerV1ApiOperation(
      o[1] as api.GoogleIdentityAccesscontextmanagerV1ApiOperation);
}

core.List<core.String> buildUnnamed2975() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2975(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleIdentityAccesscontextmanagerV1IngressTo = 0;
api.GoogleIdentityAccesscontextmanagerV1IngressTo
    buildGoogleIdentityAccesscontextmanagerV1IngressTo() {
  var o = api.GoogleIdentityAccesscontextmanagerV1IngressTo();
  buildCounterGoogleIdentityAccesscontextmanagerV1IngressTo++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1IngressTo < 3) {
    o.operations = buildUnnamed2974();
    o.resources = buildUnnamed2975();
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1IngressTo--;
  return o;
}

void checkGoogleIdentityAccesscontextmanagerV1IngressTo(
    api.GoogleIdentityAccesscontextmanagerV1IngressTo o) {
  buildCounterGoogleIdentityAccesscontextmanagerV1IngressTo++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1IngressTo < 3) {
    checkUnnamed2974(o.operations);
    checkUnnamed2975(o.resources);
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1IngressTo--;
}

core.int buildCounterGoogleIdentityAccesscontextmanagerV1MethodSelector = 0;
api.GoogleIdentityAccesscontextmanagerV1MethodSelector
    buildGoogleIdentityAccesscontextmanagerV1MethodSelector() {
  var o = api.GoogleIdentityAccesscontextmanagerV1MethodSelector();
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
    unittest.expect(o.method, unittest.equals('foo'));
    unittest.expect(o.permission, unittest.equals('foo'));
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1MethodSelector--;
}

core.int buildCounterGoogleIdentityAccesscontextmanagerV1OsConstraint = 0;
api.GoogleIdentityAccesscontextmanagerV1OsConstraint
    buildGoogleIdentityAccesscontextmanagerV1OsConstraint() {
  var o = api.GoogleIdentityAccesscontextmanagerV1OsConstraint();
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
    unittest.expect(o.minimumVersion, unittest.equals('foo'));
    unittest.expect(o.osType, unittest.equals('foo'));
    unittest.expect(o.requireVerifiedChromeOs, unittest.isTrue);
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1OsConstraint--;
}

core.int buildCounterGoogleIdentityAccesscontextmanagerV1ServicePerimeter = 0;
api.GoogleIdentityAccesscontextmanagerV1ServicePerimeter
    buildGoogleIdentityAccesscontextmanagerV1ServicePerimeter() {
  var o = api.GoogleIdentityAccesscontextmanagerV1ServicePerimeter();
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
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.perimeterType, unittest.equals('foo'));
    checkGoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig(o.spec
        as api.GoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig);
    checkGoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig(o.status
        as api.GoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig);
    unittest.expect(o.title, unittest.equals('foo'));
    unittest.expect(o.useExplicitDryRunSpec, unittest.isTrue);
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1ServicePerimeter--;
}

core.List<core.String> buildUnnamed2976() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2976(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleIdentityAccesscontextmanagerV1EgressPolicy>
    buildUnnamed2977() {
  var o = <api.GoogleIdentityAccesscontextmanagerV1EgressPolicy>[];
  o.add(buildGoogleIdentityAccesscontextmanagerV1EgressPolicy());
  o.add(buildGoogleIdentityAccesscontextmanagerV1EgressPolicy());
  return o;
}

void checkUnnamed2977(
    core.List<api.GoogleIdentityAccesscontextmanagerV1EgressPolicy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIdentityAccesscontextmanagerV1EgressPolicy(
      o[0] as api.GoogleIdentityAccesscontextmanagerV1EgressPolicy);
  checkGoogleIdentityAccesscontextmanagerV1EgressPolicy(
      o[1] as api.GoogleIdentityAccesscontextmanagerV1EgressPolicy);
}

core.List<api.GoogleIdentityAccesscontextmanagerV1IngressPolicy>
    buildUnnamed2978() {
  var o = <api.GoogleIdentityAccesscontextmanagerV1IngressPolicy>[];
  o.add(buildGoogleIdentityAccesscontextmanagerV1IngressPolicy());
  o.add(buildGoogleIdentityAccesscontextmanagerV1IngressPolicy());
  return o;
}

void checkUnnamed2978(
    core.List<api.GoogleIdentityAccesscontextmanagerV1IngressPolicy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIdentityAccesscontextmanagerV1IngressPolicy(
      o[0] as api.GoogleIdentityAccesscontextmanagerV1IngressPolicy);
  checkGoogleIdentityAccesscontextmanagerV1IngressPolicy(
      o[1] as api.GoogleIdentityAccesscontextmanagerV1IngressPolicy);
}

core.List<core.String> buildUnnamed2979() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2979(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2980() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2980(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int
    buildCounterGoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig = 0;
api.GoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig
    buildGoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig() {
  var o = api.GoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig();
  buildCounterGoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig <
      3) {
    o.accessLevels = buildUnnamed2976();
    o.egressPolicies = buildUnnamed2977();
    o.ingressPolicies = buildUnnamed2978();
    o.resources = buildUnnamed2979();
    o.restrictedServices = buildUnnamed2980();
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
    checkUnnamed2976(o.accessLevels);
    checkUnnamed2977(o.egressPolicies);
    checkUnnamed2978(o.ingressPolicies);
    checkUnnamed2979(o.resources);
    checkUnnamed2980(o.restrictedServices);
    checkGoogleIdentityAccesscontextmanagerV1VpcAccessibleServices(
        o.vpcAccessibleServices
            as api.GoogleIdentityAccesscontextmanagerV1VpcAccessibleServices);
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig--;
}

core.List<core.String> buildUnnamed2981() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2981(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleIdentityAccesscontextmanagerV1VpcAccessibleServices =
    0;
api.GoogleIdentityAccesscontextmanagerV1VpcAccessibleServices
    buildGoogleIdentityAccesscontextmanagerV1VpcAccessibleServices() {
  var o = api.GoogleIdentityAccesscontextmanagerV1VpcAccessibleServices();
  buildCounterGoogleIdentityAccesscontextmanagerV1VpcAccessibleServices++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1VpcAccessibleServices <
      3) {
    o.allowedServices = buildUnnamed2981();
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
    checkUnnamed2981(o.allowedServices);
    unittest.expect(o.enableRestriction, unittest.isTrue);
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1VpcAccessibleServices--;
}

core.List<api.IamPolicyAnalysisResult> buildUnnamed2982() {
  var o = <api.IamPolicyAnalysisResult>[];
  o.add(buildIamPolicyAnalysisResult());
  o.add(buildIamPolicyAnalysisResult());
  return o;
}

void checkUnnamed2982(core.List<api.IamPolicyAnalysisResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIamPolicyAnalysisResult(o[0] as api.IamPolicyAnalysisResult);
  checkIamPolicyAnalysisResult(o[1] as api.IamPolicyAnalysisResult);
}

core.List<api.IamPolicyAnalysisState> buildUnnamed2983() {
  var o = <api.IamPolicyAnalysisState>[];
  o.add(buildIamPolicyAnalysisState());
  o.add(buildIamPolicyAnalysisState());
  return o;
}

void checkUnnamed2983(core.List<api.IamPolicyAnalysisState> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIamPolicyAnalysisState(o[0] as api.IamPolicyAnalysisState);
  checkIamPolicyAnalysisState(o[1] as api.IamPolicyAnalysisState);
}

core.int buildCounterIamPolicyAnalysis = 0;
api.IamPolicyAnalysis buildIamPolicyAnalysis() {
  var o = api.IamPolicyAnalysis();
  buildCounterIamPolicyAnalysis++;
  if (buildCounterIamPolicyAnalysis < 3) {
    o.analysisQuery = buildIamPolicyAnalysisQuery();
    o.analysisResults = buildUnnamed2982();
    o.fullyExplored = true;
    o.nonCriticalErrors = buildUnnamed2983();
  }
  buildCounterIamPolicyAnalysis--;
  return o;
}

void checkIamPolicyAnalysis(api.IamPolicyAnalysis o) {
  buildCounterIamPolicyAnalysis++;
  if (buildCounterIamPolicyAnalysis < 3) {
    checkIamPolicyAnalysisQuery(o.analysisQuery as api.IamPolicyAnalysisQuery);
    checkUnnamed2982(o.analysisResults);
    unittest.expect(o.fullyExplored, unittest.isTrue);
    checkUnnamed2983(o.nonCriticalErrors);
  }
  buildCounterIamPolicyAnalysis--;
}

core.int buildCounterIamPolicyAnalysisOutputConfig = 0;
api.IamPolicyAnalysisOutputConfig buildIamPolicyAnalysisOutputConfig() {
  var o = api.IamPolicyAnalysisOutputConfig();
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
    checkGoogleCloudAssetV1BigQueryDestination(
        o.bigqueryDestination as api.GoogleCloudAssetV1BigQueryDestination);
    checkGoogleCloudAssetV1GcsDestination(
        o.gcsDestination as api.GoogleCloudAssetV1GcsDestination);
  }
  buildCounterIamPolicyAnalysisOutputConfig--;
}

core.int buildCounterIamPolicyAnalysisQuery = 0;
api.IamPolicyAnalysisQuery buildIamPolicyAnalysisQuery() {
  var o = api.IamPolicyAnalysisQuery();
  buildCounterIamPolicyAnalysisQuery++;
  if (buildCounterIamPolicyAnalysisQuery < 3) {
    o.accessSelector = buildAccessSelector();
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
    checkAccessSelector(o.accessSelector as api.AccessSelector);
    checkIdentitySelector(o.identitySelector as api.IdentitySelector);
    checkOptions(o.options as api.Options);
    checkResourceSelector(o.resourceSelector as api.ResourceSelector);
    unittest.expect(o.scope, unittest.equals('foo'));
  }
  buildCounterIamPolicyAnalysisQuery--;
}

core.List<api.GoogleCloudAssetV1AccessControlList> buildUnnamed2984() {
  var o = <api.GoogleCloudAssetV1AccessControlList>[];
  o.add(buildGoogleCloudAssetV1AccessControlList());
  o.add(buildGoogleCloudAssetV1AccessControlList());
  return o;
}

void checkUnnamed2984(core.List<api.GoogleCloudAssetV1AccessControlList> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAssetV1AccessControlList(
      o[0] as api.GoogleCloudAssetV1AccessControlList);
  checkGoogleCloudAssetV1AccessControlList(
      o[1] as api.GoogleCloudAssetV1AccessControlList);
}

core.int buildCounterIamPolicyAnalysisResult = 0;
api.IamPolicyAnalysisResult buildIamPolicyAnalysisResult() {
  var o = api.IamPolicyAnalysisResult();
  buildCounterIamPolicyAnalysisResult++;
  if (buildCounterIamPolicyAnalysisResult < 3) {
    o.accessControlLists = buildUnnamed2984();
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
    checkUnnamed2984(o.accessControlLists);
    unittest.expect(o.attachedResourceFullName, unittest.equals('foo'));
    unittest.expect(o.fullyExplored, unittest.isTrue);
    checkBinding(o.iamBinding as api.Binding);
    checkGoogleCloudAssetV1IdentityList(
        o.identityList as api.GoogleCloudAssetV1IdentityList);
  }
  buildCounterIamPolicyAnalysisResult--;
}

core.int buildCounterIamPolicyAnalysisState = 0;
api.IamPolicyAnalysisState buildIamPolicyAnalysisState() {
  var o = api.IamPolicyAnalysisState();
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
    unittest.expect(o.cause, unittest.equals('foo'));
    unittest.expect(o.code, unittest.equals('foo'));
  }
  buildCounterIamPolicyAnalysisState--;
}

core.int buildCounterIamPolicySearchResult = 0;
api.IamPolicySearchResult buildIamPolicySearchResult() {
  var o = api.IamPolicySearchResult();
  buildCounterIamPolicySearchResult++;
  if (buildCounterIamPolicySearchResult < 3) {
    o.explanation = buildExplanation();
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
    checkExplanation(o.explanation as api.Explanation);
    checkPolicy(o.policy as api.Policy);
    unittest.expect(o.project, unittest.equals('foo'));
    unittest.expect(o.resource, unittest.equals('foo'));
  }
  buildCounterIamPolicySearchResult--;
}

core.int buildCounterIdentitySelector = 0;
api.IdentitySelector buildIdentitySelector() {
  var o = api.IdentitySelector();
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
    unittest.expect(o.identity, unittest.equals('foo'));
  }
  buildCounterIdentitySelector--;
}

core.Map<core.String, api.Item> buildUnnamed2985() {
  var o = <core.String, api.Item>{};
  o['x'] = buildItem();
  o['y'] = buildItem();
  return o;
}

void checkUnnamed2985(core.Map<core.String, api.Item> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkItem(o['x'] as api.Item);
  checkItem(o['y'] as api.Item);
}

core.int buildCounterInventory = 0;
api.Inventory buildInventory() {
  var o = api.Inventory();
  buildCounterInventory++;
  if (buildCounterInventory < 3) {
    o.items = buildUnnamed2985();
    o.osInfo = buildOsInfo();
  }
  buildCounterInventory--;
  return o;
}

void checkInventory(api.Inventory o) {
  buildCounterInventory++;
  if (buildCounterInventory < 3) {
    checkUnnamed2985(o.items);
    checkOsInfo(o.osInfo as api.OsInfo);
  }
  buildCounterInventory--;
}

core.int buildCounterItem = 0;
api.Item buildItem() {
  var o = api.Item();
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
    checkSoftwarePackage(o.availablePackage as api.SoftwarePackage);
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    checkSoftwarePackage(o.installedPackage as api.SoftwarePackage);
    unittest.expect(o.originType, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterItem--;
}

core.List<api.Feed> buildUnnamed2986() {
  var o = <api.Feed>[];
  o.add(buildFeed());
  o.add(buildFeed());
  return o;
}

void checkUnnamed2986(core.List<api.Feed> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFeed(o[0] as api.Feed);
  checkFeed(o[1] as api.Feed);
}

core.int buildCounterListFeedsResponse = 0;
api.ListFeedsResponse buildListFeedsResponse() {
  var o = api.ListFeedsResponse();
  buildCounterListFeedsResponse++;
  if (buildCounterListFeedsResponse < 3) {
    o.feeds = buildUnnamed2986();
  }
  buildCounterListFeedsResponse--;
  return o;
}

void checkListFeedsResponse(api.ListFeedsResponse o) {
  buildCounterListFeedsResponse++;
  if (buildCounterListFeedsResponse < 3) {
    checkUnnamed2986(o.feeds);
  }
  buildCounterListFeedsResponse--;
}

core.Map<core.String, core.Object> buildUnnamed2987() {
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

void checkUnnamed2987(core.Map<core.String, core.Object> o) {
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

core.Map<core.String, core.Object> buildUnnamed2988() {
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

void checkUnnamed2988(core.Map<core.String, core.Object> o) {
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
    o.metadata = buildUnnamed2987();
    o.name = 'foo';
    o.response = buildUnnamed2988();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkStatus(o.error as api.Status);
    checkUnnamed2987(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed2988(o.response);
  }
  buildCounterOperation--;
}

core.int buildCounterOptions = 0;
api.Options buildOptions() {
  var o = api.Options();
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
    unittest.expect(o.analyzeServiceAccountImpersonation, unittest.isTrue);
    unittest.expect(o.expandGroups, unittest.isTrue);
    unittest.expect(o.expandResources, unittest.isTrue);
    unittest.expect(o.expandRoles, unittest.isTrue);
    unittest.expect(o.outputGroupEdges, unittest.isTrue);
    unittest.expect(o.outputResourceEdges, unittest.isTrue);
  }
  buildCounterOptions--;
}

core.int buildCounterOsInfo = 0;
api.OsInfo buildOsInfo() {
  var o = api.OsInfo();
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
    unittest.expect(o.architecture, unittest.equals('foo'));
    unittest.expect(o.hostname, unittest.equals('foo'));
    unittest.expect(o.kernelRelease, unittest.equals('foo'));
    unittest.expect(o.kernelVersion, unittest.equals('foo'));
    unittest.expect(o.longName, unittest.equals('foo'));
    unittest.expect(o.osconfigAgentVersion, unittest.equals('foo'));
    unittest.expect(o.shortName, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterOsInfo--;
}

core.int buildCounterOutputConfig = 0;
api.OutputConfig buildOutputConfig() {
  var o = api.OutputConfig();
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
    checkBigQueryDestination(o.bigqueryDestination as api.BigQueryDestination);
    checkGcsDestination(o.gcsDestination as api.GcsDestination);
  }
  buildCounterOutputConfig--;
}

core.int buildCounterPartitionSpec = 0;
api.PartitionSpec buildPartitionSpec() {
  var o = api.PartitionSpec();
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
    unittest.expect(o.partitionKey, unittest.equals('foo'));
  }
  buildCounterPartitionSpec--;
}

core.List<core.String> buildUnnamed2989() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2989(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPermissions = 0;
api.Permissions buildPermissions() {
  var o = api.Permissions();
  buildCounterPermissions++;
  if (buildCounterPermissions < 3) {
    o.permissions = buildUnnamed2989();
  }
  buildCounterPermissions--;
  return o;
}

void checkPermissions(api.Permissions o) {
  buildCounterPermissions++;
  if (buildCounterPermissions < 3) {
    checkUnnamed2989(o.permissions);
  }
  buildCounterPermissions--;
}

core.List<api.AuditConfig> buildUnnamed2990() {
  var o = <api.AuditConfig>[];
  o.add(buildAuditConfig());
  o.add(buildAuditConfig());
  return o;
}

void checkUnnamed2990(core.List<api.AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditConfig(o[0] as api.AuditConfig);
  checkAuditConfig(o[1] as api.AuditConfig);
}

core.List<api.Binding> buildUnnamed2991() {
  var o = <api.Binding>[];
  o.add(buildBinding());
  o.add(buildBinding());
  return o;
}

void checkUnnamed2991(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0] as api.Binding);
  checkBinding(o[1] as api.Binding);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  var o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.auditConfigs = buildUnnamed2990();
    o.bindings = buildUnnamed2991();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed2990(o.auditConfigs);
    checkUnnamed2991(o.bindings);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals(42));
  }
  buildCounterPolicy--;
}

core.int buildCounterPubsubDestination = 0;
api.PubsubDestination buildPubsubDestination() {
  var o = api.PubsubDestination();
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
    unittest.expect(o.topic, unittest.equals('foo'));
  }
  buildCounterPubsubDestination--;
}

core.Map<core.String, core.Object> buildUnnamed2992() {
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

void checkUnnamed2992(core.Map<core.String, core.Object> o) {
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

core.int buildCounterResource = 0;
api.Resource buildResource() {
  var o = api.Resource();
  buildCounterResource++;
  if (buildCounterResource < 3) {
    o.data = buildUnnamed2992();
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
    checkUnnamed2992(o.data);
    unittest.expect(o.discoveryDocumentUri, unittest.equals('foo'));
    unittest.expect(o.discoveryName, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.parent, unittest.equals('foo'));
    unittest.expect(o.resourceUrl, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterResource--;
}

core.Map<core.String, core.Object> buildUnnamed2993() {
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

void checkUnnamed2993(core.Map<core.String, core.Object> o) {
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

core.List<core.String> buildUnnamed2994() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2994(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed2995() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed2995(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2996() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2996(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterResourceSearchResult = 0;
api.ResourceSearchResult buildResourceSearchResult() {
  var o = api.ResourceSearchResult();
  buildCounterResourceSearchResult++;
  if (buildCounterResourceSearchResult < 3) {
    o.additionalAttributes = buildUnnamed2993();
    o.assetType = 'foo';
    o.createTime = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.folders = buildUnnamed2994();
    o.kmsKey = 'foo';
    o.labels = buildUnnamed2995();
    o.location = 'foo';
    o.name = 'foo';
    o.networkTags = buildUnnamed2996();
    o.organization = 'foo';
    o.project = 'foo';
    o.state = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterResourceSearchResult--;
  return o;
}

void checkResourceSearchResult(api.ResourceSearchResult o) {
  buildCounterResourceSearchResult++;
  if (buildCounterResourceSearchResult < 3) {
    checkUnnamed2993(o.additionalAttributes);
    unittest.expect(o.assetType, unittest.equals('foo'));
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed2994(o.folders);
    unittest.expect(o.kmsKey, unittest.equals('foo'));
    checkUnnamed2995(o.labels);
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed2996(o.networkTags);
    unittest.expect(o.organization, unittest.equals('foo'));
    unittest.expect(o.project, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterResourceSearchResult--;
}

core.int buildCounterResourceSelector = 0;
api.ResourceSelector buildResourceSelector() {
  var o = api.ResourceSelector();
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
    unittest.expect(o.fullResourceName, unittest.equals('foo'));
  }
  buildCounterResourceSelector--;
}

core.List<api.IamPolicySearchResult> buildUnnamed2997() {
  var o = <api.IamPolicySearchResult>[];
  o.add(buildIamPolicySearchResult());
  o.add(buildIamPolicySearchResult());
  return o;
}

void checkUnnamed2997(core.List<api.IamPolicySearchResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIamPolicySearchResult(o[0] as api.IamPolicySearchResult);
  checkIamPolicySearchResult(o[1] as api.IamPolicySearchResult);
}

core.int buildCounterSearchAllIamPoliciesResponse = 0;
api.SearchAllIamPoliciesResponse buildSearchAllIamPoliciesResponse() {
  var o = api.SearchAllIamPoliciesResponse();
  buildCounterSearchAllIamPoliciesResponse++;
  if (buildCounterSearchAllIamPoliciesResponse < 3) {
    o.nextPageToken = 'foo';
    o.results = buildUnnamed2997();
  }
  buildCounterSearchAllIamPoliciesResponse--;
  return o;
}

void checkSearchAllIamPoliciesResponse(api.SearchAllIamPoliciesResponse o) {
  buildCounterSearchAllIamPoliciesResponse++;
  if (buildCounterSearchAllIamPoliciesResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed2997(o.results);
  }
  buildCounterSearchAllIamPoliciesResponse--;
}

core.List<api.ResourceSearchResult> buildUnnamed2998() {
  var o = <api.ResourceSearchResult>[];
  o.add(buildResourceSearchResult());
  o.add(buildResourceSearchResult());
  return o;
}

void checkUnnamed2998(core.List<api.ResourceSearchResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResourceSearchResult(o[0] as api.ResourceSearchResult);
  checkResourceSearchResult(o[1] as api.ResourceSearchResult);
}

core.int buildCounterSearchAllResourcesResponse = 0;
api.SearchAllResourcesResponse buildSearchAllResourcesResponse() {
  var o = api.SearchAllResourcesResponse();
  buildCounterSearchAllResourcesResponse++;
  if (buildCounterSearchAllResourcesResponse < 3) {
    o.nextPageToken = 'foo';
    o.results = buildUnnamed2998();
  }
  buildCounterSearchAllResourcesResponse--;
  return o;
}

void checkSearchAllResourcesResponse(api.SearchAllResourcesResponse o) {
  buildCounterSearchAllResourcesResponse++;
  if (buildCounterSearchAllResourcesResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed2998(o.results);
  }
  buildCounterSearchAllResourcesResponse--;
}

core.int buildCounterSoftwarePackage = 0;
api.SoftwarePackage buildSoftwarePackage() {
  var o = api.SoftwarePackage();
  buildCounterSoftwarePackage++;
  if (buildCounterSoftwarePackage < 3) {
    o.aptPackage = buildVersionedPackage();
    o.cosPackage = buildVersionedPackage();
    o.googetPackage = buildVersionedPackage();
    o.qfePackage = buildWindowsQuickFixEngineeringPackage();
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
    checkVersionedPackage(o.aptPackage as api.VersionedPackage);
    checkVersionedPackage(o.cosPackage as api.VersionedPackage);
    checkVersionedPackage(o.googetPackage as api.VersionedPackage);
    checkWindowsQuickFixEngineeringPackage(
        o.qfePackage as api.WindowsQuickFixEngineeringPackage);
    checkWindowsUpdatePackage(o.wuaPackage as api.WindowsUpdatePackage);
    checkVersionedPackage(o.yumPackage as api.VersionedPackage);
    checkVersionedPackage(o.zypperPackage as api.VersionedPackage);
    checkZypperPatch(o.zypperPatch as api.ZypperPatch);
  }
  buildCounterSoftwarePackage--;
}

core.Map<core.String, core.Object> buildUnnamed2999() {
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

void checkUnnamed2999(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted9 = (o['x']) as core.Map;
  unittest.expect(casted9, unittest.hasLength(3));
  unittest.expect(casted9['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted9['bool'], unittest.equals(true));
  unittest.expect(casted9['string'], unittest.equals('foo'));
  var casted10 = (o['y']) as core.Map;
  unittest.expect(casted10, unittest.hasLength(3));
  unittest.expect(casted10['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted10['bool'], unittest.equals(true));
  unittest.expect(casted10['string'], unittest.equals('foo'));
}

core.List<core.Map<core.String, core.Object>> buildUnnamed3000() {
  var o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed2999());
  o.add(buildUnnamed2999());
  return o;
}

void checkUnnamed3000(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed2999(o[0]);
  checkUnnamed2999(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  var o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed3000();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed3000(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.int buildCounterTemporalAsset = 0;
api.TemporalAsset buildTemporalAsset() {
  var o = api.TemporalAsset();
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
    checkAsset(o.asset as api.Asset);
    unittest.expect(o.deleted, unittest.isTrue);
    checkAsset(o.priorAsset as api.Asset);
    unittest.expect(o.priorAssetState, unittest.equals('foo'));
    checkTimeWindow(o.window as api.TimeWindow);
  }
  buildCounterTemporalAsset--;
}

core.int buildCounterTimeWindow = 0;
api.TimeWindow buildTimeWindow() {
  var o = api.TimeWindow();
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
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.startTime, unittest.equals('foo'));
  }
  buildCounterTimeWindow--;
}

core.int buildCounterUpdateFeedRequest = 0;
api.UpdateFeedRequest buildUpdateFeedRequest() {
  var o = api.UpdateFeedRequest();
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
    checkFeed(o.feed as api.Feed);
    unittest.expect(o.updateMask, unittest.equals('foo'));
  }
  buildCounterUpdateFeedRequest--;
}

core.int buildCounterVersionedPackage = 0;
api.VersionedPackage buildVersionedPackage() {
  var o = api.VersionedPackage();
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
    unittest.expect(o.architecture, unittest.equals('foo'));
    unittest.expect(o.packageName, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterVersionedPackage--;
}

core.int buildCounterWindowsQuickFixEngineeringPackage = 0;
api.WindowsQuickFixEngineeringPackage buildWindowsQuickFixEngineeringPackage() {
  var o = api.WindowsQuickFixEngineeringPackage();
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
    unittest.expect(o.caption, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.hotFixId, unittest.equals('foo'));
    unittest.expect(o.installTime, unittest.equals('foo'));
  }
  buildCounterWindowsQuickFixEngineeringPackage--;
}

core.int buildCounterWindowsUpdateCategory = 0;
api.WindowsUpdateCategory buildWindowsUpdateCategory() {
  var o = api.WindowsUpdateCategory();
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
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterWindowsUpdateCategory--;
}

core.List<api.WindowsUpdateCategory> buildUnnamed3001() {
  var o = <api.WindowsUpdateCategory>[];
  o.add(buildWindowsUpdateCategory());
  o.add(buildWindowsUpdateCategory());
  return o;
}

void checkUnnamed3001(core.List<api.WindowsUpdateCategory> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWindowsUpdateCategory(o[0] as api.WindowsUpdateCategory);
  checkWindowsUpdateCategory(o[1] as api.WindowsUpdateCategory);
}

core.List<core.String> buildUnnamed3002() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3002(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed3003() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3003(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterWindowsUpdatePackage = 0;
api.WindowsUpdatePackage buildWindowsUpdatePackage() {
  var o = api.WindowsUpdatePackage();
  buildCounterWindowsUpdatePackage++;
  if (buildCounterWindowsUpdatePackage < 3) {
    o.categories = buildUnnamed3001();
    o.description = 'foo';
    o.kbArticleIds = buildUnnamed3002();
    o.lastDeploymentChangeTime = 'foo';
    o.moreInfoUrls = buildUnnamed3003();
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
    checkUnnamed3001(o.categories);
    unittest.expect(o.description, unittest.equals('foo'));
    checkUnnamed3002(o.kbArticleIds);
    unittest.expect(o.lastDeploymentChangeTime, unittest.equals('foo'));
    checkUnnamed3003(o.moreInfoUrls);
    unittest.expect(o.revisionNumber, unittest.equals(42));
    unittest.expect(o.supportUrl, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
    unittest.expect(o.updateId, unittest.equals('foo'));
  }
  buildCounterWindowsUpdatePackage--;
}

core.int buildCounterZypperPatch = 0;
api.ZypperPatch buildZypperPatch() {
  var o = api.ZypperPatch();
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
    unittest.expect(o.category, unittest.equals('foo'));
    unittest.expect(o.patchName, unittest.equals('foo'));
    unittest.expect(o.severity, unittest.equals('foo'));
    unittest.expect(o.summary, unittest.equals('foo'));
  }
  buildCounterZypperPatch--;
}

core.List<core.String> buildUnnamed3004() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3004(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed3005() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3005(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed3006() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3006(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed3007() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3007(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

void main() {
  unittest.group('obj-schema-AccessSelector', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccessSelector();
      var od = api.AccessSelector.fromJson(o.toJson());
      checkAccessSelector(od as api.AccessSelector);
    });
  });

  unittest.group('obj-schema-AnalyzeIamPolicyLongrunningRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildAnalyzeIamPolicyLongrunningRequest();
      var od = api.AnalyzeIamPolicyLongrunningRequest.fromJson(o.toJson());
      checkAnalyzeIamPolicyLongrunningRequest(
          od as api.AnalyzeIamPolicyLongrunningRequest);
    });
  });

  unittest.group('obj-schema-AnalyzeIamPolicyResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildAnalyzeIamPolicyResponse();
      var od = api.AnalyzeIamPolicyResponse.fromJson(o.toJson());
      checkAnalyzeIamPolicyResponse(od as api.AnalyzeIamPolicyResponse);
    });
  });

  unittest.group('obj-schema-Asset', () {
    unittest.test('to-json--from-json', () {
      var o = buildAsset();
      var od = api.Asset.fromJson(o.toJson());
      checkAsset(od as api.Asset);
    });
  });

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

  unittest.group('obj-schema-BatchGetAssetsHistoryResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildBatchGetAssetsHistoryResponse();
      var od = api.BatchGetAssetsHistoryResponse.fromJson(o.toJson());
      checkBatchGetAssetsHistoryResponse(
          od as api.BatchGetAssetsHistoryResponse);
    });
  });

  unittest.group('obj-schema-BigQueryDestination', () {
    unittest.test('to-json--from-json', () {
      var o = buildBigQueryDestination();
      var od = api.BigQueryDestination.fromJson(o.toJson());
      checkBigQueryDestination(od as api.BigQueryDestination);
    });
  });

  unittest.group('obj-schema-Binding', () {
    unittest.test('to-json--from-json', () {
      var o = buildBinding();
      var od = api.Binding.fromJson(o.toJson());
      checkBinding(od as api.Binding);
    });
  });

  unittest.group('obj-schema-CreateFeedRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildCreateFeedRequest();
      var od = api.CreateFeedRequest.fromJson(o.toJson());
      checkCreateFeedRequest(od as api.CreateFeedRequest);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () {
      var o = buildEmpty();
      var od = api.Empty.fromJson(o.toJson());
      checkEmpty(od as api.Empty);
    });
  });

  unittest.group('obj-schema-Explanation', () {
    unittest.test('to-json--from-json', () {
      var o = buildExplanation();
      var od = api.Explanation.fromJson(o.toJson());
      checkExplanation(od as api.Explanation);
    });
  });

  unittest.group('obj-schema-ExportAssetsRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildExportAssetsRequest();
      var od = api.ExportAssetsRequest.fromJson(o.toJson());
      checkExportAssetsRequest(od as api.ExportAssetsRequest);
    });
  });

  unittest.group('obj-schema-Expr', () {
    unittest.test('to-json--from-json', () {
      var o = buildExpr();
      var od = api.Expr.fromJson(o.toJson());
      checkExpr(od as api.Expr);
    });
  });

  unittest.group('obj-schema-Feed', () {
    unittest.test('to-json--from-json', () {
      var o = buildFeed();
      var od = api.Feed.fromJson(o.toJson());
      checkFeed(od as api.Feed);
    });
  });

  unittest.group('obj-schema-FeedOutputConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildFeedOutputConfig();
      var od = api.FeedOutputConfig.fromJson(o.toJson());
      checkFeedOutputConfig(od as api.FeedOutputConfig);
    });
  });

  unittest.group('obj-schema-GcsDestination', () {
    unittest.test('to-json--from-json', () {
      var o = buildGcsDestination();
      var od = api.GcsDestination.fromJson(o.toJson());
      checkGcsDestination(od as api.GcsDestination);
    });
  });

  unittest.group('obj-schema-GoogleCloudAssetV1Access', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudAssetV1Access();
      var od = api.GoogleCloudAssetV1Access.fromJson(o.toJson());
      checkGoogleCloudAssetV1Access(od as api.GoogleCloudAssetV1Access);
    });
  });

  unittest.group('obj-schema-GoogleCloudAssetV1AccessControlList', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudAssetV1AccessControlList();
      var od = api.GoogleCloudAssetV1AccessControlList.fromJson(o.toJson());
      checkGoogleCloudAssetV1AccessControlList(
          od as api.GoogleCloudAssetV1AccessControlList);
    });
  });

  unittest.group('obj-schema-GoogleCloudAssetV1BigQueryDestination', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudAssetV1BigQueryDestination();
      var od = api.GoogleCloudAssetV1BigQueryDestination.fromJson(o.toJson());
      checkGoogleCloudAssetV1BigQueryDestination(
          od as api.GoogleCloudAssetV1BigQueryDestination);
    });
  });

  unittest.group('obj-schema-GoogleCloudAssetV1Edge', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudAssetV1Edge();
      var od = api.GoogleCloudAssetV1Edge.fromJson(o.toJson());
      checkGoogleCloudAssetV1Edge(od as api.GoogleCloudAssetV1Edge);
    });
  });

  unittest.group('obj-schema-GoogleCloudAssetV1GcsDestination', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudAssetV1GcsDestination();
      var od = api.GoogleCloudAssetV1GcsDestination.fromJson(o.toJson());
      checkGoogleCloudAssetV1GcsDestination(
          od as api.GoogleCloudAssetV1GcsDestination);
    });
  });

  unittest.group('obj-schema-GoogleCloudAssetV1Identity', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudAssetV1Identity();
      var od = api.GoogleCloudAssetV1Identity.fromJson(o.toJson());
      checkGoogleCloudAssetV1Identity(od as api.GoogleCloudAssetV1Identity);
    });
  });

  unittest.group('obj-schema-GoogleCloudAssetV1IdentityList', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudAssetV1IdentityList();
      var od = api.GoogleCloudAssetV1IdentityList.fromJson(o.toJson());
      checkGoogleCloudAssetV1IdentityList(
          od as api.GoogleCloudAssetV1IdentityList);
    });
  });

  unittest.group('obj-schema-GoogleCloudAssetV1Resource', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudAssetV1Resource();
      var od = api.GoogleCloudAssetV1Resource.fromJson(o.toJson());
      checkGoogleCloudAssetV1Resource(od as api.GoogleCloudAssetV1Resource);
    });
  });

  unittest.group('obj-schema-GoogleCloudOrgpolicyV1BooleanPolicy', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudOrgpolicyV1BooleanPolicy();
      var od = api.GoogleCloudOrgpolicyV1BooleanPolicy.fromJson(o.toJson());
      checkGoogleCloudOrgpolicyV1BooleanPolicy(
          od as api.GoogleCloudOrgpolicyV1BooleanPolicy);
    });
  });

  unittest.group('obj-schema-GoogleCloudOrgpolicyV1ListPolicy', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudOrgpolicyV1ListPolicy();
      var od = api.GoogleCloudOrgpolicyV1ListPolicy.fromJson(o.toJson());
      checkGoogleCloudOrgpolicyV1ListPolicy(
          od as api.GoogleCloudOrgpolicyV1ListPolicy);
    });
  });

  unittest.group('obj-schema-GoogleCloudOrgpolicyV1Policy', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudOrgpolicyV1Policy();
      var od = api.GoogleCloudOrgpolicyV1Policy.fromJson(o.toJson());
      checkGoogleCloudOrgpolicyV1Policy(od as api.GoogleCloudOrgpolicyV1Policy);
    });
  });

  unittest.group('obj-schema-GoogleCloudOrgpolicyV1RestoreDefault', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudOrgpolicyV1RestoreDefault();
      var od = api.GoogleCloudOrgpolicyV1RestoreDefault.fromJson(o.toJson());
      checkGoogleCloudOrgpolicyV1RestoreDefault(
          od as api.GoogleCloudOrgpolicyV1RestoreDefault);
    });
  });

  unittest.group('obj-schema-GoogleIdentityAccesscontextmanagerV1AccessLevel',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleIdentityAccesscontextmanagerV1AccessLevel();
      var od = api.GoogleIdentityAccesscontextmanagerV1AccessLevel.fromJson(
          o.toJson());
      checkGoogleIdentityAccesscontextmanagerV1AccessLevel(
          od as api.GoogleIdentityAccesscontextmanagerV1AccessLevel);
    });
  });

  unittest.group('obj-schema-GoogleIdentityAccesscontextmanagerV1AccessPolicy',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleIdentityAccesscontextmanagerV1AccessPolicy();
      var od = api.GoogleIdentityAccesscontextmanagerV1AccessPolicy.fromJson(
          o.toJson());
      checkGoogleIdentityAccesscontextmanagerV1AccessPolicy(
          od as api.GoogleIdentityAccesscontextmanagerV1AccessPolicy);
    });
  });

  unittest.group('obj-schema-GoogleIdentityAccesscontextmanagerV1ApiOperation',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleIdentityAccesscontextmanagerV1ApiOperation();
      var od = api.GoogleIdentityAccesscontextmanagerV1ApiOperation.fromJson(
          o.toJson());
      checkGoogleIdentityAccesscontextmanagerV1ApiOperation(
          od as api.GoogleIdentityAccesscontextmanagerV1ApiOperation);
    });
  });

  unittest.group('obj-schema-GoogleIdentityAccesscontextmanagerV1BasicLevel',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleIdentityAccesscontextmanagerV1BasicLevel();
      var od = api.GoogleIdentityAccesscontextmanagerV1BasicLevel.fromJson(
          o.toJson());
      checkGoogleIdentityAccesscontextmanagerV1BasicLevel(
          od as api.GoogleIdentityAccesscontextmanagerV1BasicLevel);
    });
  });

  unittest.group('obj-schema-GoogleIdentityAccesscontextmanagerV1Condition',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleIdentityAccesscontextmanagerV1Condition();
      var od = api.GoogleIdentityAccesscontextmanagerV1Condition.fromJson(
          o.toJson());
      checkGoogleIdentityAccesscontextmanagerV1Condition(
          od as api.GoogleIdentityAccesscontextmanagerV1Condition);
    });
  });

  unittest.group('obj-schema-GoogleIdentityAccesscontextmanagerV1CustomLevel',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleIdentityAccesscontextmanagerV1CustomLevel();
      var od = api.GoogleIdentityAccesscontextmanagerV1CustomLevel.fromJson(
          o.toJson());
      checkGoogleIdentityAccesscontextmanagerV1CustomLevel(
          od as api.GoogleIdentityAccesscontextmanagerV1CustomLevel);
    });
  });

  unittest.group('obj-schema-GoogleIdentityAccesscontextmanagerV1DevicePolicy',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleIdentityAccesscontextmanagerV1DevicePolicy();
      var od = api.GoogleIdentityAccesscontextmanagerV1DevicePolicy.fromJson(
          o.toJson());
      checkGoogleIdentityAccesscontextmanagerV1DevicePolicy(
          od as api.GoogleIdentityAccesscontextmanagerV1DevicePolicy);
    });
  });

  unittest.group('obj-schema-GoogleIdentityAccesscontextmanagerV1EgressFrom',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleIdentityAccesscontextmanagerV1EgressFrom();
      var od = api.GoogleIdentityAccesscontextmanagerV1EgressFrom.fromJson(
          o.toJson());
      checkGoogleIdentityAccesscontextmanagerV1EgressFrom(
          od as api.GoogleIdentityAccesscontextmanagerV1EgressFrom);
    });
  });

  unittest.group('obj-schema-GoogleIdentityAccesscontextmanagerV1EgressPolicy',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleIdentityAccesscontextmanagerV1EgressPolicy();
      var od = api.GoogleIdentityAccesscontextmanagerV1EgressPolicy.fromJson(
          o.toJson());
      checkGoogleIdentityAccesscontextmanagerV1EgressPolicy(
          od as api.GoogleIdentityAccesscontextmanagerV1EgressPolicy);
    });
  });

  unittest.group('obj-schema-GoogleIdentityAccesscontextmanagerV1EgressTo', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleIdentityAccesscontextmanagerV1EgressTo();
      var od =
          api.GoogleIdentityAccesscontextmanagerV1EgressTo.fromJson(o.toJson());
      checkGoogleIdentityAccesscontextmanagerV1EgressTo(
          od as api.GoogleIdentityAccesscontextmanagerV1EgressTo);
    });
  });

  unittest.group('obj-schema-GoogleIdentityAccesscontextmanagerV1IngressFrom',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleIdentityAccesscontextmanagerV1IngressFrom();
      var od = api.GoogleIdentityAccesscontextmanagerV1IngressFrom.fromJson(
          o.toJson());
      checkGoogleIdentityAccesscontextmanagerV1IngressFrom(
          od as api.GoogleIdentityAccesscontextmanagerV1IngressFrom);
    });
  });

  unittest.group('obj-schema-GoogleIdentityAccesscontextmanagerV1IngressPolicy',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleIdentityAccesscontextmanagerV1IngressPolicy();
      var od = api.GoogleIdentityAccesscontextmanagerV1IngressPolicy.fromJson(
          o.toJson());
      checkGoogleIdentityAccesscontextmanagerV1IngressPolicy(
          od as api.GoogleIdentityAccesscontextmanagerV1IngressPolicy);
    });
  });

  unittest.group('obj-schema-GoogleIdentityAccesscontextmanagerV1IngressSource',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleIdentityAccesscontextmanagerV1IngressSource();
      var od = api.GoogleIdentityAccesscontextmanagerV1IngressSource.fromJson(
          o.toJson());
      checkGoogleIdentityAccesscontextmanagerV1IngressSource(
          od as api.GoogleIdentityAccesscontextmanagerV1IngressSource);
    });
  });

  unittest.group('obj-schema-GoogleIdentityAccesscontextmanagerV1IngressTo',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleIdentityAccesscontextmanagerV1IngressTo();
      var od = api.GoogleIdentityAccesscontextmanagerV1IngressTo.fromJson(
          o.toJson());
      checkGoogleIdentityAccesscontextmanagerV1IngressTo(
          od as api.GoogleIdentityAccesscontextmanagerV1IngressTo);
    });
  });

  unittest.group(
      'obj-schema-GoogleIdentityAccesscontextmanagerV1MethodSelector', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleIdentityAccesscontextmanagerV1MethodSelector();
      var od = api.GoogleIdentityAccesscontextmanagerV1MethodSelector.fromJson(
          o.toJson());
      checkGoogleIdentityAccesscontextmanagerV1MethodSelector(
          od as api.GoogleIdentityAccesscontextmanagerV1MethodSelector);
    });
  });

  unittest.group('obj-schema-GoogleIdentityAccesscontextmanagerV1OsConstraint',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleIdentityAccesscontextmanagerV1OsConstraint();
      var od = api.GoogleIdentityAccesscontextmanagerV1OsConstraint.fromJson(
          o.toJson());
      checkGoogleIdentityAccesscontextmanagerV1OsConstraint(
          od as api.GoogleIdentityAccesscontextmanagerV1OsConstraint);
    });
  });

  unittest.group(
      'obj-schema-GoogleIdentityAccesscontextmanagerV1ServicePerimeter', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleIdentityAccesscontextmanagerV1ServicePerimeter();
      var od =
          api.GoogleIdentityAccesscontextmanagerV1ServicePerimeter.fromJson(
              o.toJson());
      checkGoogleIdentityAccesscontextmanagerV1ServicePerimeter(
          od as api.GoogleIdentityAccesscontextmanagerV1ServicePerimeter);
    });
  });

  unittest.group(
      'obj-schema-GoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig();
      var od = api.GoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig
          .fromJson(o.toJson());
      checkGoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig(
          od as api.GoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig);
    });
  });

  unittest.group(
      'obj-schema-GoogleIdentityAccesscontextmanagerV1VpcAccessibleServices',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleIdentityAccesscontextmanagerV1VpcAccessibleServices();
      var od = api.GoogleIdentityAccesscontextmanagerV1VpcAccessibleServices
          .fromJson(o.toJson());
      checkGoogleIdentityAccesscontextmanagerV1VpcAccessibleServices(
          od as api.GoogleIdentityAccesscontextmanagerV1VpcAccessibleServices);
    });
  });

  unittest.group('obj-schema-IamPolicyAnalysis', () {
    unittest.test('to-json--from-json', () {
      var o = buildIamPolicyAnalysis();
      var od = api.IamPolicyAnalysis.fromJson(o.toJson());
      checkIamPolicyAnalysis(od as api.IamPolicyAnalysis);
    });
  });

  unittest.group('obj-schema-IamPolicyAnalysisOutputConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildIamPolicyAnalysisOutputConfig();
      var od = api.IamPolicyAnalysisOutputConfig.fromJson(o.toJson());
      checkIamPolicyAnalysisOutputConfig(
          od as api.IamPolicyAnalysisOutputConfig);
    });
  });

  unittest.group('obj-schema-IamPolicyAnalysisQuery', () {
    unittest.test('to-json--from-json', () {
      var o = buildIamPolicyAnalysisQuery();
      var od = api.IamPolicyAnalysisQuery.fromJson(o.toJson());
      checkIamPolicyAnalysisQuery(od as api.IamPolicyAnalysisQuery);
    });
  });

  unittest.group('obj-schema-IamPolicyAnalysisResult', () {
    unittest.test('to-json--from-json', () {
      var o = buildIamPolicyAnalysisResult();
      var od = api.IamPolicyAnalysisResult.fromJson(o.toJson());
      checkIamPolicyAnalysisResult(od as api.IamPolicyAnalysisResult);
    });
  });

  unittest.group('obj-schema-IamPolicyAnalysisState', () {
    unittest.test('to-json--from-json', () {
      var o = buildIamPolicyAnalysisState();
      var od = api.IamPolicyAnalysisState.fromJson(o.toJson());
      checkIamPolicyAnalysisState(od as api.IamPolicyAnalysisState);
    });
  });

  unittest.group('obj-schema-IamPolicySearchResult', () {
    unittest.test('to-json--from-json', () {
      var o = buildIamPolicySearchResult();
      var od = api.IamPolicySearchResult.fromJson(o.toJson());
      checkIamPolicySearchResult(od as api.IamPolicySearchResult);
    });
  });

  unittest.group('obj-schema-IdentitySelector', () {
    unittest.test('to-json--from-json', () {
      var o = buildIdentitySelector();
      var od = api.IdentitySelector.fromJson(o.toJson());
      checkIdentitySelector(od as api.IdentitySelector);
    });
  });

  unittest.group('obj-schema-Inventory', () {
    unittest.test('to-json--from-json', () {
      var o = buildInventory();
      var od = api.Inventory.fromJson(o.toJson());
      checkInventory(od as api.Inventory);
    });
  });

  unittest.group('obj-schema-Item', () {
    unittest.test('to-json--from-json', () {
      var o = buildItem();
      var od = api.Item.fromJson(o.toJson());
      checkItem(od as api.Item);
    });
  });

  unittest.group('obj-schema-ListFeedsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListFeedsResponse();
      var od = api.ListFeedsResponse.fromJson(o.toJson());
      checkListFeedsResponse(od as api.ListFeedsResponse);
    });
  });

  unittest.group('obj-schema-Operation', () {
    unittest.test('to-json--from-json', () {
      var o = buildOperation();
      var od = api.Operation.fromJson(o.toJson());
      checkOperation(od as api.Operation);
    });
  });

  unittest.group('obj-schema-Options', () {
    unittest.test('to-json--from-json', () {
      var o = buildOptions();
      var od = api.Options.fromJson(o.toJson());
      checkOptions(od as api.Options);
    });
  });

  unittest.group('obj-schema-OsInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildOsInfo();
      var od = api.OsInfo.fromJson(o.toJson());
      checkOsInfo(od as api.OsInfo);
    });
  });

  unittest.group('obj-schema-OutputConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildOutputConfig();
      var od = api.OutputConfig.fromJson(o.toJson());
      checkOutputConfig(od as api.OutputConfig);
    });
  });

  unittest.group('obj-schema-PartitionSpec', () {
    unittest.test('to-json--from-json', () {
      var o = buildPartitionSpec();
      var od = api.PartitionSpec.fromJson(o.toJson());
      checkPartitionSpec(od as api.PartitionSpec);
    });
  });

  unittest.group('obj-schema-Permissions', () {
    unittest.test('to-json--from-json', () {
      var o = buildPermissions();
      var od = api.Permissions.fromJson(o.toJson());
      checkPermissions(od as api.Permissions);
    });
  });

  unittest.group('obj-schema-Policy', () {
    unittest.test('to-json--from-json', () {
      var o = buildPolicy();
      var od = api.Policy.fromJson(o.toJson());
      checkPolicy(od as api.Policy);
    });
  });

  unittest.group('obj-schema-PubsubDestination', () {
    unittest.test('to-json--from-json', () {
      var o = buildPubsubDestination();
      var od = api.PubsubDestination.fromJson(o.toJson());
      checkPubsubDestination(od as api.PubsubDestination);
    });
  });

  unittest.group('obj-schema-Resource', () {
    unittest.test('to-json--from-json', () {
      var o = buildResource();
      var od = api.Resource.fromJson(o.toJson());
      checkResource(od as api.Resource);
    });
  });

  unittest.group('obj-schema-ResourceSearchResult', () {
    unittest.test('to-json--from-json', () {
      var o = buildResourceSearchResult();
      var od = api.ResourceSearchResult.fromJson(o.toJson());
      checkResourceSearchResult(od as api.ResourceSearchResult);
    });
  });

  unittest.group('obj-schema-ResourceSelector', () {
    unittest.test('to-json--from-json', () {
      var o = buildResourceSelector();
      var od = api.ResourceSelector.fromJson(o.toJson());
      checkResourceSelector(od as api.ResourceSelector);
    });
  });

  unittest.group('obj-schema-SearchAllIamPoliciesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildSearchAllIamPoliciesResponse();
      var od = api.SearchAllIamPoliciesResponse.fromJson(o.toJson());
      checkSearchAllIamPoliciesResponse(od as api.SearchAllIamPoliciesResponse);
    });
  });

  unittest.group('obj-schema-SearchAllResourcesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildSearchAllResourcesResponse();
      var od = api.SearchAllResourcesResponse.fromJson(o.toJson());
      checkSearchAllResourcesResponse(od as api.SearchAllResourcesResponse);
    });
  });

  unittest.group('obj-schema-SoftwarePackage', () {
    unittest.test('to-json--from-json', () {
      var o = buildSoftwarePackage();
      var od = api.SoftwarePackage.fromJson(o.toJson());
      checkSoftwarePackage(od as api.SoftwarePackage);
    });
  });

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () {
      var o = buildStatus();
      var od = api.Status.fromJson(o.toJson());
      checkStatus(od as api.Status);
    });
  });

  unittest.group('obj-schema-TemporalAsset', () {
    unittest.test('to-json--from-json', () {
      var o = buildTemporalAsset();
      var od = api.TemporalAsset.fromJson(o.toJson());
      checkTemporalAsset(od as api.TemporalAsset);
    });
  });

  unittest.group('obj-schema-TimeWindow', () {
    unittest.test('to-json--from-json', () {
      var o = buildTimeWindow();
      var od = api.TimeWindow.fromJson(o.toJson());
      checkTimeWindow(od as api.TimeWindow);
    });
  });

  unittest.group('obj-schema-UpdateFeedRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildUpdateFeedRequest();
      var od = api.UpdateFeedRequest.fromJson(o.toJson());
      checkUpdateFeedRequest(od as api.UpdateFeedRequest);
    });
  });

  unittest.group('obj-schema-VersionedPackage', () {
    unittest.test('to-json--from-json', () {
      var o = buildVersionedPackage();
      var od = api.VersionedPackage.fromJson(o.toJson());
      checkVersionedPackage(od as api.VersionedPackage);
    });
  });

  unittest.group('obj-schema-WindowsQuickFixEngineeringPackage', () {
    unittest.test('to-json--from-json', () {
      var o = buildWindowsQuickFixEngineeringPackage();
      var od = api.WindowsQuickFixEngineeringPackage.fromJson(o.toJson());
      checkWindowsQuickFixEngineeringPackage(
          od as api.WindowsQuickFixEngineeringPackage);
    });
  });

  unittest.group('obj-schema-WindowsUpdateCategory', () {
    unittest.test('to-json--from-json', () {
      var o = buildWindowsUpdateCategory();
      var od = api.WindowsUpdateCategory.fromJson(o.toJson());
      checkWindowsUpdateCategory(od as api.WindowsUpdateCategory);
    });
  });

  unittest.group('obj-schema-WindowsUpdatePackage', () {
    unittest.test('to-json--from-json', () {
      var o = buildWindowsUpdatePackage();
      var od = api.WindowsUpdatePackage.fromJson(o.toJson());
      checkWindowsUpdatePackage(od as api.WindowsUpdatePackage);
    });
  });

  unittest.group('obj-schema-ZypperPatch', () {
    unittest.test('to-json--from-json', () {
      var o = buildZypperPatch();
      var od = api.ZypperPatch.fromJson(o.toJson());
      checkZypperPatch(od as api.ZypperPatch);
    });
  });

  unittest.group('resource-FeedsResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.CloudAssetApi(mock).feeds;
      var arg_request = buildCreateFeedRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CreateFeedRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCreateFeedRequest(obj as api.CreateFeedRequest);

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
        var resp = convert.json.encode(buildFeed());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkFeed(response as api.Feed);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.CloudAssetApi(mock).feeds;
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
      var res = api.CloudAssetApi(mock).feeds;
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
        var resp = convert.json.encode(buildFeed());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkFeed(response as api.Feed);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.CloudAssetApi(mock).feeds;
      var arg_parent = 'foo';
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
        var resp = convert.json.encode(buildListFeedsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListFeedsResponse(response as api.ListFeedsResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.CloudAssetApi(mock).feeds;
      var arg_request = buildUpdateFeedRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.UpdateFeedRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUpdateFeedRequest(obj as api.UpdateFeedRequest);

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
        var resp = convert.json.encode(buildFeed());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkFeed(response as api.Feed);
      })));
    });
  });

  unittest.group('resource-OperationsResource', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.CloudAssetApi(mock).operations;
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
  });

  unittest.group('resource-V1Resource', () {
    unittest.test('method--analyzeIamPolicy', () {
      var mock = HttpServerMock();
      var res = api.CloudAssetApi(mock).v1;
      var arg_scope = 'foo';
      var arg_analysisQuery_accessSelector_permissions = buildUnnamed3004();
      var arg_analysisQuery_accessSelector_roles = buildUnnamed3005();
      var arg_analysisQuery_identitySelector_identity = 'foo';
      var arg_analysisQuery_options_analyzeServiceAccountImpersonation = true;
      var arg_analysisQuery_options_expandGroups = true;
      var arg_analysisQuery_options_expandResources = true;
      var arg_analysisQuery_options_expandRoles = true;
      var arg_analysisQuery_options_outputGroupEdges = true;
      var arg_analysisQuery_options_outputResourceEdges = true;
      var arg_analysisQuery_resourceSelector_fullResourceName = 'foo';
      var arg_executionTimeout = 'foo';
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
        unittest.expect(queryMap["analysisQuery.accessSelector.permissions"],
            unittest.equals(arg_analysisQuery_accessSelector_permissions));
        unittest.expect(queryMap["analysisQuery.accessSelector.roles"],
            unittest.equals(arg_analysisQuery_accessSelector_roles));
        unittest.expect(
            queryMap["analysisQuery.identitySelector.identity"].first,
            unittest.equals(arg_analysisQuery_identitySelector_identity));
        unittest.expect(
            queryMap["analysisQuery.options.analyzeServiceAccountImpersonation"]
                .first,
            unittest.equals(
                "$arg_analysisQuery_options_analyzeServiceAccountImpersonation"));
        unittest.expect(queryMap["analysisQuery.options.expandGroups"].first,
            unittest.equals("$arg_analysisQuery_options_expandGroups"));
        unittest.expect(queryMap["analysisQuery.options.expandResources"].first,
            unittest.equals("$arg_analysisQuery_options_expandResources"));
        unittest.expect(queryMap["analysisQuery.options.expandRoles"].first,
            unittest.equals("$arg_analysisQuery_options_expandRoles"));
        unittest.expect(
            queryMap["analysisQuery.options.outputGroupEdges"].first,
            unittest.equals("$arg_analysisQuery_options_outputGroupEdges"));
        unittest.expect(
            queryMap["analysisQuery.options.outputResourceEdges"].first,
            unittest.equals("$arg_analysisQuery_options_outputResourceEdges"));
        unittest.expect(
            queryMap["analysisQuery.resourceSelector.fullResourceName"].first,
            unittest
                .equals(arg_analysisQuery_resourceSelector_fullResourceName));
        unittest.expect(queryMap["executionTimeout"].first,
            unittest.equals(arg_executionTimeout));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAnalyzeIamPolicyResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .analyzeIamPolicy(arg_scope,
              analysisQuery_accessSelector_permissions:
                  arg_analysisQuery_accessSelector_permissions,
              analysisQuery_accessSelector_roles:
                  arg_analysisQuery_accessSelector_roles,
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
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAnalyzeIamPolicyResponse(response as api.AnalyzeIamPolicyResponse);
      })));
    });

    unittest.test('method--analyzeIamPolicyLongrunning', () {
      var mock = HttpServerMock();
      var res = api.CloudAssetApi(mock).v1;
      var arg_request = buildAnalyzeIamPolicyLongrunningRequest();
      var arg_scope = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.AnalyzeIamPolicyLongrunningRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAnalyzeIamPolicyLongrunningRequest(
            obj as api.AnalyzeIamPolicyLongrunningRequest);

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
          .analyzeIamPolicyLongrunning(arg_request, arg_scope,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--batchGetAssetsHistory', () {
      var mock = HttpServerMock();
      var res = api.CloudAssetApi(mock).v1;
      var arg_parent = 'foo';
      var arg_assetNames = buildUnnamed3006();
      var arg_contentType = 'foo';
      var arg_readTimeWindow_endTime = 'foo';
      var arg_readTimeWindow_startTime = 'foo';
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
            queryMap["assetNames"], unittest.equals(arg_assetNames));
        unittest.expect(
            queryMap["contentType"].first, unittest.equals(arg_contentType));
        unittest.expect(queryMap["readTimeWindow.endTime"].first,
            unittest.equals(arg_readTimeWindow_endTime));
        unittest.expect(queryMap["readTimeWindow.startTime"].first,
            unittest.equals(arg_readTimeWindow_startTime));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildBatchGetAssetsHistoryResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .batchGetAssetsHistory(arg_parent,
              assetNames: arg_assetNames,
              contentType: arg_contentType,
              readTimeWindow_endTime: arg_readTimeWindow_endTime,
              readTimeWindow_startTime: arg_readTimeWindow_startTime,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBatchGetAssetsHistoryResponse(
            response as api.BatchGetAssetsHistoryResponse);
      })));
    });

    unittest.test('method--exportAssets', () {
      var mock = HttpServerMock();
      var res = api.CloudAssetApi(mock).v1;
      var arg_request = buildExportAssetsRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ExportAssetsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkExportAssetsRequest(obj as api.ExportAssetsRequest);

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
          .exportAssets(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--searchAllIamPolicies', () {
      var mock = HttpServerMock();
      var res = api.CloudAssetApi(mock).v1;
      var arg_scope = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_query = 'foo';
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
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["query"].first, unittest.equals(arg_query));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSearchAllIamPoliciesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .searchAllIamPolicies(arg_scope,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              query: arg_query,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSearchAllIamPoliciesResponse(
            response as api.SearchAllIamPoliciesResponse);
      })));
    });

    unittest.test('method--searchAllResources', () {
      var mock = HttpServerMock();
      var res = api.CloudAssetApi(mock).v1;
      var arg_scope = 'foo';
      var arg_assetTypes = buildUnnamed3007();
      var arg_orderBy = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_query = 'foo';
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
            queryMap["assetTypes"], unittest.equals(arg_assetTypes));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["query"].first, unittest.equals(arg_query));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSearchAllResourcesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .searchAllResources(arg_scope,
              assetTypes: arg_assetTypes,
              orderBy: arg_orderBy,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              query: arg_query,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSearchAllResourcesResponse(
            response as api.SearchAllResourcesResponse);
      })));
    });
  });
}
