library googleapis.cloudasset.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/cloudasset/v1.dart' as api;

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

buildUnnamed3468() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3468(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3469() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3469(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAccessSelector = 0;
buildAccessSelector() {
  var o = new api.AccessSelector();
  buildCounterAccessSelector++;
  if (buildCounterAccessSelector < 3) {
    o.permissions = buildUnnamed3468();
    o.roles = buildUnnamed3469();
  }
  buildCounterAccessSelector--;
  return o;
}

checkAccessSelector(api.AccessSelector o) {
  buildCounterAccessSelector++;
  if (buildCounterAccessSelector < 3) {
    checkUnnamed3468(o.permissions);
    checkUnnamed3469(o.roles);
  }
  buildCounterAccessSelector--;
}

core.int buildCounterAnalyzeIamPolicyLongrunningRequest = 0;
buildAnalyzeIamPolicyLongrunningRequest() {
  var o = new api.AnalyzeIamPolicyLongrunningRequest();
  buildCounterAnalyzeIamPolicyLongrunningRequest++;
  if (buildCounterAnalyzeIamPolicyLongrunningRequest < 3) {
    o.analysisQuery = buildIamPolicyAnalysisQuery();
    o.outputConfig = buildIamPolicyAnalysisOutputConfig();
  }
  buildCounterAnalyzeIamPolicyLongrunningRequest--;
  return o;
}

checkAnalyzeIamPolicyLongrunningRequest(
    api.AnalyzeIamPolicyLongrunningRequest o) {
  buildCounterAnalyzeIamPolicyLongrunningRequest++;
  if (buildCounterAnalyzeIamPolicyLongrunningRequest < 3) {
    checkIamPolicyAnalysisQuery(o.analysisQuery);
    checkIamPolicyAnalysisOutputConfig(o.outputConfig);
  }
  buildCounterAnalyzeIamPolicyLongrunningRequest--;
}

buildUnnamed3470() {
  var o = new core.List<api.IamPolicyAnalysis>();
  o.add(buildIamPolicyAnalysis());
  o.add(buildIamPolicyAnalysis());
  return o;
}

checkUnnamed3470(core.List<api.IamPolicyAnalysis> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIamPolicyAnalysis(o[0]);
  checkIamPolicyAnalysis(o[1]);
}

core.int buildCounterAnalyzeIamPolicyResponse = 0;
buildAnalyzeIamPolicyResponse() {
  var o = new api.AnalyzeIamPolicyResponse();
  buildCounterAnalyzeIamPolicyResponse++;
  if (buildCounterAnalyzeIamPolicyResponse < 3) {
    o.fullyExplored = true;
    o.mainAnalysis = buildIamPolicyAnalysis();
    o.serviceAccountImpersonationAnalysis = buildUnnamed3470();
  }
  buildCounterAnalyzeIamPolicyResponse--;
  return o;
}

checkAnalyzeIamPolicyResponse(api.AnalyzeIamPolicyResponse o) {
  buildCounterAnalyzeIamPolicyResponse++;
  if (buildCounterAnalyzeIamPolicyResponse < 3) {
    unittest.expect(o.fullyExplored, unittest.isTrue);
    checkIamPolicyAnalysis(o.mainAnalysis);
    checkUnnamed3470(o.serviceAccountImpersonationAnalysis);
  }
  buildCounterAnalyzeIamPolicyResponse--;
}

buildUnnamed3471() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3471(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3472() {
  var o = new core.List<api.GoogleCloudOrgpolicyV1Policy>();
  o.add(buildGoogleCloudOrgpolicyV1Policy());
  o.add(buildGoogleCloudOrgpolicyV1Policy());
  return o;
}

checkUnnamed3472(core.List<api.GoogleCloudOrgpolicyV1Policy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudOrgpolicyV1Policy(o[0]);
  checkGoogleCloudOrgpolicyV1Policy(o[1]);
}

core.int buildCounterAsset = 0;
buildAsset() {
  var o = new api.Asset();
  buildCounterAsset++;
  if (buildCounterAsset < 3) {
    o.accessLevel = buildGoogleIdentityAccesscontextmanagerV1AccessLevel();
    o.accessPolicy = buildGoogleIdentityAccesscontextmanagerV1AccessPolicy();
    o.ancestors = buildUnnamed3471();
    o.assetType = "foo";
    o.iamPolicy = buildPolicy();
    o.name = "foo";
    o.orgPolicy = buildUnnamed3472();
    o.osInventory = buildInventory();
    o.resource = buildResource();
    o.servicePerimeter =
        buildGoogleIdentityAccesscontextmanagerV1ServicePerimeter();
    o.updateTime = "foo";
  }
  buildCounterAsset--;
  return o;
}

checkAsset(api.Asset o) {
  buildCounterAsset++;
  if (buildCounterAsset < 3) {
    checkGoogleIdentityAccesscontextmanagerV1AccessLevel(o.accessLevel);
    checkGoogleIdentityAccesscontextmanagerV1AccessPolicy(o.accessPolicy);
    checkUnnamed3471(o.ancestors);
    unittest.expect(o.assetType, unittest.equals('foo'));
    checkPolicy(o.iamPolicy);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed3472(o.orgPolicy);
    checkInventory(o.osInventory);
    checkResource(o.resource);
    checkGoogleIdentityAccesscontextmanagerV1ServicePerimeter(
        o.servicePerimeter);
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterAsset--;
}

buildUnnamed3473() {
  var o = new core.List<api.AuditLogConfig>();
  o.add(buildAuditLogConfig());
  o.add(buildAuditLogConfig());
  return o;
}

checkUnnamed3473(core.List<api.AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditLogConfig(o[0]);
  checkAuditLogConfig(o[1]);
}

core.int buildCounterAuditConfig = 0;
buildAuditConfig() {
  var o = new api.AuditConfig();
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed3473();
    o.service = "foo";
  }
  buildCounterAuditConfig--;
  return o;
}

checkAuditConfig(api.AuditConfig o) {
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    checkUnnamed3473(o.auditLogConfigs);
    unittest.expect(o.service, unittest.equals('foo'));
  }
  buildCounterAuditConfig--;
}

buildUnnamed3474() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3474(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAuditLogConfig = 0;
buildAuditLogConfig() {
  var o = new api.AuditLogConfig();
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    o.exemptedMembers = buildUnnamed3474();
    o.logType = "foo";
  }
  buildCounterAuditLogConfig--;
  return o;
}

checkAuditLogConfig(api.AuditLogConfig o) {
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    checkUnnamed3474(o.exemptedMembers);
    unittest.expect(o.logType, unittest.equals('foo'));
  }
  buildCounterAuditLogConfig--;
}

buildUnnamed3475() {
  var o = new core.List<api.TemporalAsset>();
  o.add(buildTemporalAsset());
  o.add(buildTemporalAsset());
  return o;
}

checkUnnamed3475(core.List<api.TemporalAsset> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTemporalAsset(o[0]);
  checkTemporalAsset(o[1]);
}

core.int buildCounterBatchGetAssetsHistoryResponse = 0;
buildBatchGetAssetsHistoryResponse() {
  var o = new api.BatchGetAssetsHistoryResponse();
  buildCounterBatchGetAssetsHistoryResponse++;
  if (buildCounterBatchGetAssetsHistoryResponse < 3) {
    o.assets = buildUnnamed3475();
  }
  buildCounterBatchGetAssetsHistoryResponse--;
  return o;
}

checkBatchGetAssetsHistoryResponse(api.BatchGetAssetsHistoryResponse o) {
  buildCounterBatchGetAssetsHistoryResponse++;
  if (buildCounterBatchGetAssetsHistoryResponse < 3) {
    checkUnnamed3475(o.assets);
  }
  buildCounterBatchGetAssetsHistoryResponse--;
}

core.int buildCounterBigQueryDestination = 0;
buildBigQueryDestination() {
  var o = new api.BigQueryDestination();
  buildCounterBigQueryDestination++;
  if (buildCounterBigQueryDestination < 3) {
    o.dataset = "foo";
    o.force = true;
    o.partitionSpec = buildPartitionSpec();
    o.separateTablesPerAssetType = true;
    o.table = "foo";
  }
  buildCounterBigQueryDestination--;
  return o;
}

checkBigQueryDestination(api.BigQueryDestination o) {
  buildCounterBigQueryDestination++;
  if (buildCounterBigQueryDestination < 3) {
    unittest.expect(o.dataset, unittest.equals('foo'));
    unittest.expect(o.force, unittest.isTrue);
    checkPartitionSpec(o.partitionSpec);
    unittest.expect(o.separateTablesPerAssetType, unittest.isTrue);
    unittest.expect(o.table, unittest.equals('foo'));
  }
  buildCounterBigQueryDestination--;
}

buildUnnamed3476() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3476(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBinding = 0;
buildBinding() {
  var o = new api.Binding();
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    o.condition = buildExpr();
    o.members = buildUnnamed3476();
    o.role = "foo";
  }
  buildCounterBinding--;
  return o;
}

checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition);
    checkUnnamed3476(o.members);
    unittest.expect(o.role, unittest.equals('foo'));
  }
  buildCounterBinding--;
}

core.int buildCounterCreateFeedRequest = 0;
buildCreateFeedRequest() {
  var o = new api.CreateFeedRequest();
  buildCounterCreateFeedRequest++;
  if (buildCounterCreateFeedRequest < 3) {
    o.feed = buildFeed();
    o.feedId = "foo";
  }
  buildCounterCreateFeedRequest--;
  return o;
}

checkCreateFeedRequest(api.CreateFeedRequest o) {
  buildCounterCreateFeedRequest++;
  if (buildCounterCreateFeedRequest < 3) {
    checkFeed(o.feed);
    unittest.expect(o.feedId, unittest.equals('foo'));
  }
  buildCounterCreateFeedRequest--;
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

buildUnnamed3477() {
  var o = new core.Map<core.String, api.Permissions>();
  o["x"] = buildPermissions();
  o["y"] = buildPermissions();
  return o;
}

checkUnnamed3477(core.Map<core.String, api.Permissions> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPermissions(o["x"]);
  checkPermissions(o["y"]);
}

core.int buildCounterExplanation = 0;
buildExplanation() {
  var o = new api.Explanation();
  buildCounterExplanation++;
  if (buildCounterExplanation < 3) {
    o.matchedPermissions = buildUnnamed3477();
  }
  buildCounterExplanation--;
  return o;
}

checkExplanation(api.Explanation o) {
  buildCounterExplanation++;
  if (buildCounterExplanation < 3) {
    checkUnnamed3477(o.matchedPermissions);
  }
  buildCounterExplanation--;
}

buildUnnamed3478() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3478(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterExportAssetsRequest = 0;
buildExportAssetsRequest() {
  var o = new api.ExportAssetsRequest();
  buildCounterExportAssetsRequest++;
  if (buildCounterExportAssetsRequest < 3) {
    o.assetTypes = buildUnnamed3478();
    o.contentType = "foo";
    o.outputConfig = buildOutputConfig();
    o.readTime = "foo";
  }
  buildCounterExportAssetsRequest--;
  return o;
}

checkExportAssetsRequest(api.ExportAssetsRequest o) {
  buildCounterExportAssetsRequest++;
  if (buildCounterExportAssetsRequest < 3) {
    checkUnnamed3478(o.assetTypes);
    unittest.expect(o.contentType, unittest.equals('foo'));
    checkOutputConfig(o.outputConfig);
    unittest.expect(o.readTime, unittest.equals('foo'));
  }
  buildCounterExportAssetsRequest--;
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

buildUnnamed3479() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3479(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3480() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3480(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterFeed = 0;
buildFeed() {
  var o = new api.Feed();
  buildCounterFeed++;
  if (buildCounterFeed < 3) {
    o.assetNames = buildUnnamed3479();
    o.assetTypes = buildUnnamed3480();
    o.condition = buildExpr();
    o.contentType = "foo";
    o.feedOutputConfig = buildFeedOutputConfig();
    o.name = "foo";
  }
  buildCounterFeed--;
  return o;
}

checkFeed(api.Feed o) {
  buildCounterFeed++;
  if (buildCounterFeed < 3) {
    checkUnnamed3479(o.assetNames);
    checkUnnamed3480(o.assetTypes);
    checkExpr(o.condition);
    unittest.expect(o.contentType, unittest.equals('foo'));
    checkFeedOutputConfig(o.feedOutputConfig);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterFeed--;
}

core.int buildCounterFeedOutputConfig = 0;
buildFeedOutputConfig() {
  var o = new api.FeedOutputConfig();
  buildCounterFeedOutputConfig++;
  if (buildCounterFeedOutputConfig < 3) {
    o.pubsubDestination = buildPubsubDestination();
  }
  buildCounterFeedOutputConfig--;
  return o;
}

checkFeedOutputConfig(api.FeedOutputConfig o) {
  buildCounterFeedOutputConfig++;
  if (buildCounterFeedOutputConfig < 3) {
    checkPubsubDestination(o.pubsubDestination);
  }
  buildCounterFeedOutputConfig--;
}

core.int buildCounterGcsDestination = 0;
buildGcsDestination() {
  var o = new api.GcsDestination();
  buildCounterGcsDestination++;
  if (buildCounterGcsDestination < 3) {
    o.uri = "foo";
    o.uriPrefix = "foo";
  }
  buildCounterGcsDestination--;
  return o;
}

checkGcsDestination(api.GcsDestination o) {
  buildCounterGcsDestination++;
  if (buildCounterGcsDestination < 3) {
    unittest.expect(o.uri, unittest.equals('foo'));
    unittest.expect(o.uriPrefix, unittest.equals('foo'));
  }
  buildCounterGcsDestination--;
}

core.int buildCounterGoogleCloudAssetV1Access = 0;
buildGoogleCloudAssetV1Access() {
  var o = new api.GoogleCloudAssetV1Access();
  buildCounterGoogleCloudAssetV1Access++;
  if (buildCounterGoogleCloudAssetV1Access < 3) {
    o.analysisState = buildIamPolicyAnalysisState();
    o.permission = "foo";
    o.role = "foo";
  }
  buildCounterGoogleCloudAssetV1Access--;
  return o;
}

checkGoogleCloudAssetV1Access(api.GoogleCloudAssetV1Access o) {
  buildCounterGoogleCloudAssetV1Access++;
  if (buildCounterGoogleCloudAssetV1Access < 3) {
    checkIamPolicyAnalysisState(o.analysisState);
    unittest.expect(o.permission, unittest.equals('foo'));
    unittest.expect(o.role, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAssetV1Access--;
}

buildUnnamed3481() {
  var o = new core.List<api.GoogleCloudAssetV1Access>();
  o.add(buildGoogleCloudAssetV1Access());
  o.add(buildGoogleCloudAssetV1Access());
  return o;
}

checkUnnamed3481(core.List<api.GoogleCloudAssetV1Access> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAssetV1Access(o[0]);
  checkGoogleCloudAssetV1Access(o[1]);
}

buildUnnamed3482() {
  var o = new core.List<api.GoogleCloudAssetV1Edge>();
  o.add(buildGoogleCloudAssetV1Edge());
  o.add(buildGoogleCloudAssetV1Edge());
  return o;
}

checkUnnamed3482(core.List<api.GoogleCloudAssetV1Edge> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAssetV1Edge(o[0]);
  checkGoogleCloudAssetV1Edge(o[1]);
}

buildUnnamed3483() {
  var o = new core.List<api.GoogleCloudAssetV1Resource>();
  o.add(buildGoogleCloudAssetV1Resource());
  o.add(buildGoogleCloudAssetV1Resource());
  return o;
}

checkUnnamed3483(core.List<api.GoogleCloudAssetV1Resource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAssetV1Resource(o[0]);
  checkGoogleCloudAssetV1Resource(o[1]);
}

core.int buildCounterGoogleCloudAssetV1AccessControlList = 0;
buildGoogleCloudAssetV1AccessControlList() {
  var o = new api.GoogleCloudAssetV1AccessControlList();
  buildCounterGoogleCloudAssetV1AccessControlList++;
  if (buildCounterGoogleCloudAssetV1AccessControlList < 3) {
    o.accesses = buildUnnamed3481();
    o.resourceEdges = buildUnnamed3482();
    o.resources = buildUnnamed3483();
  }
  buildCounterGoogleCloudAssetV1AccessControlList--;
  return o;
}

checkGoogleCloudAssetV1AccessControlList(
    api.GoogleCloudAssetV1AccessControlList o) {
  buildCounterGoogleCloudAssetV1AccessControlList++;
  if (buildCounterGoogleCloudAssetV1AccessControlList < 3) {
    checkUnnamed3481(o.accesses);
    checkUnnamed3482(o.resourceEdges);
    checkUnnamed3483(o.resources);
  }
  buildCounterGoogleCloudAssetV1AccessControlList--;
}

core.int buildCounterGoogleCloudAssetV1BigQueryDestination = 0;
buildGoogleCloudAssetV1BigQueryDestination() {
  var o = new api.GoogleCloudAssetV1BigQueryDestination();
  buildCounterGoogleCloudAssetV1BigQueryDestination++;
  if (buildCounterGoogleCloudAssetV1BigQueryDestination < 3) {
    o.dataset = "foo";
    o.partitionKey = "foo";
    o.tablePrefix = "foo";
    o.writeDisposition = "foo";
  }
  buildCounterGoogleCloudAssetV1BigQueryDestination--;
  return o;
}

checkGoogleCloudAssetV1BigQueryDestination(
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
buildGoogleCloudAssetV1Edge() {
  var o = new api.GoogleCloudAssetV1Edge();
  buildCounterGoogleCloudAssetV1Edge++;
  if (buildCounterGoogleCloudAssetV1Edge < 3) {
    o.sourceNode = "foo";
    o.targetNode = "foo";
  }
  buildCounterGoogleCloudAssetV1Edge--;
  return o;
}

checkGoogleCloudAssetV1Edge(api.GoogleCloudAssetV1Edge o) {
  buildCounterGoogleCloudAssetV1Edge++;
  if (buildCounterGoogleCloudAssetV1Edge < 3) {
    unittest.expect(o.sourceNode, unittest.equals('foo'));
    unittest.expect(o.targetNode, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAssetV1Edge--;
}

core.int buildCounterGoogleCloudAssetV1GcsDestination = 0;
buildGoogleCloudAssetV1GcsDestination() {
  var o = new api.GoogleCloudAssetV1GcsDestination();
  buildCounterGoogleCloudAssetV1GcsDestination++;
  if (buildCounterGoogleCloudAssetV1GcsDestination < 3) {
    o.uri = "foo";
  }
  buildCounterGoogleCloudAssetV1GcsDestination--;
  return o;
}

checkGoogleCloudAssetV1GcsDestination(api.GoogleCloudAssetV1GcsDestination o) {
  buildCounterGoogleCloudAssetV1GcsDestination++;
  if (buildCounterGoogleCloudAssetV1GcsDestination < 3) {
    unittest.expect(o.uri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAssetV1GcsDestination--;
}

core.int buildCounterGoogleCloudAssetV1Identity = 0;
buildGoogleCloudAssetV1Identity() {
  var o = new api.GoogleCloudAssetV1Identity();
  buildCounterGoogleCloudAssetV1Identity++;
  if (buildCounterGoogleCloudAssetV1Identity < 3) {
    o.analysisState = buildIamPolicyAnalysisState();
    o.name = "foo";
  }
  buildCounterGoogleCloudAssetV1Identity--;
  return o;
}

checkGoogleCloudAssetV1Identity(api.GoogleCloudAssetV1Identity o) {
  buildCounterGoogleCloudAssetV1Identity++;
  if (buildCounterGoogleCloudAssetV1Identity < 3) {
    checkIamPolicyAnalysisState(o.analysisState);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAssetV1Identity--;
}

buildUnnamed3484() {
  var o = new core.List<api.GoogleCloudAssetV1Edge>();
  o.add(buildGoogleCloudAssetV1Edge());
  o.add(buildGoogleCloudAssetV1Edge());
  return o;
}

checkUnnamed3484(core.List<api.GoogleCloudAssetV1Edge> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAssetV1Edge(o[0]);
  checkGoogleCloudAssetV1Edge(o[1]);
}

buildUnnamed3485() {
  var o = new core.List<api.GoogleCloudAssetV1Identity>();
  o.add(buildGoogleCloudAssetV1Identity());
  o.add(buildGoogleCloudAssetV1Identity());
  return o;
}

checkUnnamed3485(core.List<api.GoogleCloudAssetV1Identity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAssetV1Identity(o[0]);
  checkGoogleCloudAssetV1Identity(o[1]);
}

core.int buildCounterGoogleCloudAssetV1IdentityList = 0;
buildGoogleCloudAssetV1IdentityList() {
  var o = new api.GoogleCloudAssetV1IdentityList();
  buildCounterGoogleCloudAssetV1IdentityList++;
  if (buildCounterGoogleCloudAssetV1IdentityList < 3) {
    o.groupEdges = buildUnnamed3484();
    o.identities = buildUnnamed3485();
  }
  buildCounterGoogleCloudAssetV1IdentityList--;
  return o;
}

checkGoogleCloudAssetV1IdentityList(api.GoogleCloudAssetV1IdentityList o) {
  buildCounterGoogleCloudAssetV1IdentityList++;
  if (buildCounterGoogleCloudAssetV1IdentityList < 3) {
    checkUnnamed3484(o.groupEdges);
    checkUnnamed3485(o.identities);
  }
  buildCounterGoogleCloudAssetV1IdentityList--;
}

core.int buildCounterGoogleCloudAssetV1Resource = 0;
buildGoogleCloudAssetV1Resource() {
  var o = new api.GoogleCloudAssetV1Resource();
  buildCounterGoogleCloudAssetV1Resource++;
  if (buildCounterGoogleCloudAssetV1Resource < 3) {
    o.analysisState = buildIamPolicyAnalysisState();
    o.fullResourceName = "foo";
  }
  buildCounterGoogleCloudAssetV1Resource--;
  return o;
}

checkGoogleCloudAssetV1Resource(api.GoogleCloudAssetV1Resource o) {
  buildCounterGoogleCloudAssetV1Resource++;
  if (buildCounterGoogleCloudAssetV1Resource < 3) {
    checkIamPolicyAnalysisState(o.analysisState);
    unittest.expect(o.fullResourceName, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAssetV1Resource--;
}

core.int buildCounterGoogleCloudOrgpolicyV1BooleanPolicy = 0;
buildGoogleCloudOrgpolicyV1BooleanPolicy() {
  var o = new api.GoogleCloudOrgpolicyV1BooleanPolicy();
  buildCounterGoogleCloudOrgpolicyV1BooleanPolicy++;
  if (buildCounterGoogleCloudOrgpolicyV1BooleanPolicy < 3) {
    o.enforced = true;
  }
  buildCounterGoogleCloudOrgpolicyV1BooleanPolicy--;
  return o;
}

checkGoogleCloudOrgpolicyV1BooleanPolicy(
    api.GoogleCloudOrgpolicyV1BooleanPolicy o) {
  buildCounterGoogleCloudOrgpolicyV1BooleanPolicy++;
  if (buildCounterGoogleCloudOrgpolicyV1BooleanPolicy < 3) {
    unittest.expect(o.enforced, unittest.isTrue);
  }
  buildCounterGoogleCloudOrgpolicyV1BooleanPolicy--;
}

buildUnnamed3486() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3486(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3487() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3487(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudOrgpolicyV1ListPolicy = 0;
buildGoogleCloudOrgpolicyV1ListPolicy() {
  var o = new api.GoogleCloudOrgpolicyV1ListPolicy();
  buildCounterGoogleCloudOrgpolicyV1ListPolicy++;
  if (buildCounterGoogleCloudOrgpolicyV1ListPolicy < 3) {
    o.allValues = "foo";
    o.allowedValues = buildUnnamed3486();
    o.deniedValues = buildUnnamed3487();
    o.inheritFromParent = true;
    o.suggestedValue = "foo";
  }
  buildCounterGoogleCloudOrgpolicyV1ListPolicy--;
  return o;
}

checkGoogleCloudOrgpolicyV1ListPolicy(api.GoogleCloudOrgpolicyV1ListPolicy o) {
  buildCounterGoogleCloudOrgpolicyV1ListPolicy++;
  if (buildCounterGoogleCloudOrgpolicyV1ListPolicy < 3) {
    unittest.expect(o.allValues, unittest.equals('foo'));
    checkUnnamed3486(o.allowedValues);
    checkUnnamed3487(o.deniedValues);
    unittest.expect(o.inheritFromParent, unittest.isTrue);
    unittest.expect(o.suggestedValue, unittest.equals('foo'));
  }
  buildCounterGoogleCloudOrgpolicyV1ListPolicy--;
}

core.int buildCounterGoogleCloudOrgpolicyV1Policy = 0;
buildGoogleCloudOrgpolicyV1Policy() {
  var o = new api.GoogleCloudOrgpolicyV1Policy();
  buildCounterGoogleCloudOrgpolicyV1Policy++;
  if (buildCounterGoogleCloudOrgpolicyV1Policy < 3) {
    o.booleanPolicy = buildGoogleCloudOrgpolicyV1BooleanPolicy();
    o.constraint = "foo";
    o.etag = "foo";
    o.listPolicy = buildGoogleCloudOrgpolicyV1ListPolicy();
    o.restoreDefault = buildGoogleCloudOrgpolicyV1RestoreDefault();
    o.updateTime = "foo";
    o.version = 42;
  }
  buildCounterGoogleCloudOrgpolicyV1Policy--;
  return o;
}

checkGoogleCloudOrgpolicyV1Policy(api.GoogleCloudOrgpolicyV1Policy o) {
  buildCounterGoogleCloudOrgpolicyV1Policy++;
  if (buildCounterGoogleCloudOrgpolicyV1Policy < 3) {
    checkGoogleCloudOrgpolicyV1BooleanPolicy(o.booleanPolicy);
    unittest.expect(o.constraint, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    checkGoogleCloudOrgpolicyV1ListPolicy(o.listPolicy);
    checkGoogleCloudOrgpolicyV1RestoreDefault(o.restoreDefault);
    unittest.expect(o.updateTime, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals(42));
  }
  buildCounterGoogleCloudOrgpolicyV1Policy--;
}

core.int buildCounterGoogleCloudOrgpolicyV1RestoreDefault = 0;
buildGoogleCloudOrgpolicyV1RestoreDefault() {
  var o = new api.GoogleCloudOrgpolicyV1RestoreDefault();
  buildCounterGoogleCloudOrgpolicyV1RestoreDefault++;
  if (buildCounterGoogleCloudOrgpolicyV1RestoreDefault < 3) {}
  buildCounterGoogleCloudOrgpolicyV1RestoreDefault--;
  return o;
}

checkGoogleCloudOrgpolicyV1RestoreDefault(
    api.GoogleCloudOrgpolicyV1RestoreDefault o) {
  buildCounterGoogleCloudOrgpolicyV1RestoreDefault++;
  if (buildCounterGoogleCloudOrgpolicyV1RestoreDefault < 3) {}
  buildCounterGoogleCloudOrgpolicyV1RestoreDefault--;
}

core.int buildCounterGoogleIdentityAccesscontextmanagerV1AccessLevel = 0;
buildGoogleIdentityAccesscontextmanagerV1AccessLevel() {
  var o = new api.GoogleIdentityAccesscontextmanagerV1AccessLevel();
  buildCounterGoogleIdentityAccesscontextmanagerV1AccessLevel++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1AccessLevel < 3) {
    o.basic = buildGoogleIdentityAccesscontextmanagerV1BasicLevel();
    o.custom = buildGoogleIdentityAccesscontextmanagerV1CustomLevel();
    o.description = "foo";
    o.name = "foo";
    o.title = "foo";
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1AccessLevel--;
  return o;
}

checkGoogleIdentityAccesscontextmanagerV1AccessLevel(
    api.GoogleIdentityAccesscontextmanagerV1AccessLevel o) {
  buildCounterGoogleIdentityAccesscontextmanagerV1AccessLevel++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1AccessLevel < 3) {
    checkGoogleIdentityAccesscontextmanagerV1BasicLevel(o.basic);
    checkGoogleIdentityAccesscontextmanagerV1CustomLevel(o.custom);
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1AccessLevel--;
}

core.int buildCounterGoogleIdentityAccesscontextmanagerV1AccessPolicy = 0;
buildGoogleIdentityAccesscontextmanagerV1AccessPolicy() {
  var o = new api.GoogleIdentityAccesscontextmanagerV1AccessPolicy();
  buildCounterGoogleIdentityAccesscontextmanagerV1AccessPolicy++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1AccessPolicy < 3) {
    o.etag = "foo";
    o.name = "foo";
    o.parent = "foo";
    o.title = "foo";
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1AccessPolicy--;
  return o;
}

checkGoogleIdentityAccesscontextmanagerV1AccessPolicy(
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

buildUnnamed3488() {
  var o = new core.List<api.GoogleIdentityAccesscontextmanagerV1Condition>();
  o.add(buildGoogleIdentityAccesscontextmanagerV1Condition());
  o.add(buildGoogleIdentityAccesscontextmanagerV1Condition());
  return o;
}

checkUnnamed3488(
    core.List<api.GoogleIdentityAccesscontextmanagerV1Condition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIdentityAccesscontextmanagerV1Condition(o[0]);
  checkGoogleIdentityAccesscontextmanagerV1Condition(o[1]);
}

core.int buildCounterGoogleIdentityAccesscontextmanagerV1BasicLevel = 0;
buildGoogleIdentityAccesscontextmanagerV1BasicLevel() {
  var o = new api.GoogleIdentityAccesscontextmanagerV1BasicLevel();
  buildCounterGoogleIdentityAccesscontextmanagerV1BasicLevel++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1BasicLevel < 3) {
    o.combiningFunction = "foo";
    o.conditions = buildUnnamed3488();
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1BasicLevel--;
  return o;
}

checkGoogleIdentityAccesscontextmanagerV1BasicLevel(
    api.GoogleIdentityAccesscontextmanagerV1BasicLevel o) {
  buildCounterGoogleIdentityAccesscontextmanagerV1BasicLevel++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1BasicLevel < 3) {
    unittest.expect(o.combiningFunction, unittest.equals('foo'));
    checkUnnamed3488(o.conditions);
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1BasicLevel--;
}

buildUnnamed3489() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3489(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3490() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3490(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3491() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3491(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3492() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3492(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleIdentityAccesscontextmanagerV1Condition = 0;
buildGoogleIdentityAccesscontextmanagerV1Condition() {
  var o = new api.GoogleIdentityAccesscontextmanagerV1Condition();
  buildCounterGoogleIdentityAccesscontextmanagerV1Condition++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1Condition < 3) {
    o.devicePolicy = buildGoogleIdentityAccesscontextmanagerV1DevicePolicy();
    o.ipSubnetworks = buildUnnamed3489();
    o.members = buildUnnamed3490();
    o.negate = true;
    o.regions = buildUnnamed3491();
    o.requiredAccessLevels = buildUnnamed3492();
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1Condition--;
  return o;
}

checkGoogleIdentityAccesscontextmanagerV1Condition(
    api.GoogleIdentityAccesscontextmanagerV1Condition o) {
  buildCounterGoogleIdentityAccesscontextmanagerV1Condition++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1Condition < 3) {
    checkGoogleIdentityAccesscontextmanagerV1DevicePolicy(o.devicePolicy);
    checkUnnamed3489(o.ipSubnetworks);
    checkUnnamed3490(o.members);
    unittest.expect(o.negate, unittest.isTrue);
    checkUnnamed3491(o.regions);
    checkUnnamed3492(o.requiredAccessLevels);
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1Condition--;
}

core.int buildCounterGoogleIdentityAccesscontextmanagerV1CustomLevel = 0;
buildGoogleIdentityAccesscontextmanagerV1CustomLevel() {
  var o = new api.GoogleIdentityAccesscontextmanagerV1CustomLevel();
  buildCounterGoogleIdentityAccesscontextmanagerV1CustomLevel++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1CustomLevel < 3) {
    o.expr = buildExpr();
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1CustomLevel--;
  return o;
}

checkGoogleIdentityAccesscontextmanagerV1CustomLevel(
    api.GoogleIdentityAccesscontextmanagerV1CustomLevel o) {
  buildCounterGoogleIdentityAccesscontextmanagerV1CustomLevel++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1CustomLevel < 3) {
    checkExpr(o.expr);
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1CustomLevel--;
}

buildUnnamed3493() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3493(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3494() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3494(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3495() {
  var o = new core.List<api.GoogleIdentityAccesscontextmanagerV1OsConstraint>();
  o.add(buildGoogleIdentityAccesscontextmanagerV1OsConstraint());
  o.add(buildGoogleIdentityAccesscontextmanagerV1OsConstraint());
  return o;
}

checkUnnamed3495(
    core.List<api.GoogleIdentityAccesscontextmanagerV1OsConstraint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIdentityAccesscontextmanagerV1OsConstraint(o[0]);
  checkGoogleIdentityAccesscontextmanagerV1OsConstraint(o[1]);
}

core.int buildCounterGoogleIdentityAccesscontextmanagerV1DevicePolicy = 0;
buildGoogleIdentityAccesscontextmanagerV1DevicePolicy() {
  var o = new api.GoogleIdentityAccesscontextmanagerV1DevicePolicy();
  buildCounterGoogleIdentityAccesscontextmanagerV1DevicePolicy++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1DevicePolicy < 3) {
    o.allowedDeviceManagementLevels = buildUnnamed3493();
    o.allowedEncryptionStatuses = buildUnnamed3494();
    o.osConstraints = buildUnnamed3495();
    o.requireAdminApproval = true;
    o.requireCorpOwned = true;
    o.requireScreenlock = true;
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1DevicePolicy--;
  return o;
}

checkGoogleIdentityAccesscontextmanagerV1DevicePolicy(
    api.GoogleIdentityAccesscontextmanagerV1DevicePolicy o) {
  buildCounterGoogleIdentityAccesscontextmanagerV1DevicePolicy++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1DevicePolicy < 3) {
    checkUnnamed3493(o.allowedDeviceManagementLevels);
    checkUnnamed3494(o.allowedEncryptionStatuses);
    checkUnnamed3495(o.osConstraints);
    unittest.expect(o.requireAdminApproval, unittest.isTrue);
    unittest.expect(o.requireCorpOwned, unittest.isTrue);
    unittest.expect(o.requireScreenlock, unittest.isTrue);
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1DevicePolicy--;
}

core.int buildCounterGoogleIdentityAccesscontextmanagerV1OsConstraint = 0;
buildGoogleIdentityAccesscontextmanagerV1OsConstraint() {
  var o = new api.GoogleIdentityAccesscontextmanagerV1OsConstraint();
  buildCounterGoogleIdentityAccesscontextmanagerV1OsConstraint++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1OsConstraint < 3) {
    o.minimumVersion = "foo";
    o.osType = "foo";
    o.requireVerifiedChromeOs = true;
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1OsConstraint--;
  return o;
}

checkGoogleIdentityAccesscontextmanagerV1OsConstraint(
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
buildGoogleIdentityAccesscontextmanagerV1ServicePerimeter() {
  var o = new api.GoogleIdentityAccesscontextmanagerV1ServicePerimeter();
  buildCounterGoogleIdentityAccesscontextmanagerV1ServicePerimeter++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1ServicePerimeter < 3) {
    o.description = "foo";
    o.name = "foo";
    o.perimeterType = "foo";
    o.spec = buildGoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig();
    o.status =
        buildGoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig();
    o.title = "foo";
    o.useExplicitDryRunSpec = true;
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1ServicePerimeter--;
  return o;
}

checkGoogleIdentityAccesscontextmanagerV1ServicePerimeter(
    api.GoogleIdentityAccesscontextmanagerV1ServicePerimeter o) {
  buildCounterGoogleIdentityAccesscontextmanagerV1ServicePerimeter++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1ServicePerimeter < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.perimeterType, unittest.equals('foo'));
    checkGoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig(o.spec);
    checkGoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig(o.status);
    unittest.expect(o.title, unittest.equals('foo'));
    unittest.expect(o.useExplicitDryRunSpec, unittest.isTrue);
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1ServicePerimeter--;
}

buildUnnamed3496() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3496(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3497() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3497(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3498() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3498(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int
    buildCounterGoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig = 0;
buildGoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig() {
  var o = new api.GoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig();
  buildCounterGoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig <
      3) {
    o.accessLevels = buildUnnamed3496();
    o.resources = buildUnnamed3497();
    o.restrictedServices = buildUnnamed3498();
    o.vpcAccessibleServices =
        buildGoogleIdentityAccesscontextmanagerV1VpcAccessibleServices();
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig--;
  return o;
}

checkGoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig(
    api.GoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig o) {
  buildCounterGoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig <
      3) {
    checkUnnamed3496(o.accessLevels);
    checkUnnamed3497(o.resources);
    checkUnnamed3498(o.restrictedServices);
    checkGoogleIdentityAccesscontextmanagerV1VpcAccessibleServices(
        o.vpcAccessibleServices);
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig--;
}

buildUnnamed3499() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3499(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleIdentityAccesscontextmanagerV1VpcAccessibleServices =
    0;
buildGoogleIdentityAccesscontextmanagerV1VpcAccessibleServices() {
  var o = new api.GoogleIdentityAccesscontextmanagerV1VpcAccessibleServices();
  buildCounterGoogleIdentityAccesscontextmanagerV1VpcAccessibleServices++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1VpcAccessibleServices <
      3) {
    o.allowedServices = buildUnnamed3499();
    o.enableRestriction = true;
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1VpcAccessibleServices--;
  return o;
}

checkGoogleIdentityAccesscontextmanagerV1VpcAccessibleServices(
    api.GoogleIdentityAccesscontextmanagerV1VpcAccessibleServices o) {
  buildCounterGoogleIdentityAccesscontextmanagerV1VpcAccessibleServices++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1VpcAccessibleServices <
      3) {
    checkUnnamed3499(o.allowedServices);
    unittest.expect(o.enableRestriction, unittest.isTrue);
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1VpcAccessibleServices--;
}

buildUnnamed3500() {
  var o = new core.List<api.IamPolicyAnalysisResult>();
  o.add(buildIamPolicyAnalysisResult());
  o.add(buildIamPolicyAnalysisResult());
  return o;
}

checkUnnamed3500(core.List<api.IamPolicyAnalysisResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIamPolicyAnalysisResult(o[0]);
  checkIamPolicyAnalysisResult(o[1]);
}

buildUnnamed3501() {
  var o = new core.List<api.IamPolicyAnalysisState>();
  o.add(buildIamPolicyAnalysisState());
  o.add(buildIamPolicyAnalysisState());
  return o;
}

checkUnnamed3501(core.List<api.IamPolicyAnalysisState> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIamPolicyAnalysisState(o[0]);
  checkIamPolicyAnalysisState(o[1]);
}

core.int buildCounterIamPolicyAnalysis = 0;
buildIamPolicyAnalysis() {
  var o = new api.IamPolicyAnalysis();
  buildCounterIamPolicyAnalysis++;
  if (buildCounterIamPolicyAnalysis < 3) {
    o.analysisQuery = buildIamPolicyAnalysisQuery();
    o.analysisResults = buildUnnamed3500();
    o.fullyExplored = true;
    o.nonCriticalErrors = buildUnnamed3501();
  }
  buildCounterIamPolicyAnalysis--;
  return o;
}

checkIamPolicyAnalysis(api.IamPolicyAnalysis o) {
  buildCounterIamPolicyAnalysis++;
  if (buildCounterIamPolicyAnalysis < 3) {
    checkIamPolicyAnalysisQuery(o.analysisQuery);
    checkUnnamed3500(o.analysisResults);
    unittest.expect(o.fullyExplored, unittest.isTrue);
    checkUnnamed3501(o.nonCriticalErrors);
  }
  buildCounterIamPolicyAnalysis--;
}

core.int buildCounterIamPolicyAnalysisOutputConfig = 0;
buildIamPolicyAnalysisOutputConfig() {
  var o = new api.IamPolicyAnalysisOutputConfig();
  buildCounterIamPolicyAnalysisOutputConfig++;
  if (buildCounterIamPolicyAnalysisOutputConfig < 3) {
    o.bigqueryDestination = buildGoogleCloudAssetV1BigQueryDestination();
    o.gcsDestination = buildGoogleCloudAssetV1GcsDestination();
  }
  buildCounterIamPolicyAnalysisOutputConfig--;
  return o;
}

checkIamPolicyAnalysisOutputConfig(api.IamPolicyAnalysisOutputConfig o) {
  buildCounterIamPolicyAnalysisOutputConfig++;
  if (buildCounterIamPolicyAnalysisOutputConfig < 3) {
    checkGoogleCloudAssetV1BigQueryDestination(o.bigqueryDestination);
    checkGoogleCloudAssetV1GcsDestination(o.gcsDestination);
  }
  buildCounterIamPolicyAnalysisOutputConfig--;
}

core.int buildCounterIamPolicyAnalysisQuery = 0;
buildIamPolicyAnalysisQuery() {
  var o = new api.IamPolicyAnalysisQuery();
  buildCounterIamPolicyAnalysisQuery++;
  if (buildCounterIamPolicyAnalysisQuery < 3) {
    o.accessSelector = buildAccessSelector();
    o.identitySelector = buildIdentitySelector();
    o.options = buildOptions();
    o.resourceSelector = buildResourceSelector();
    o.scope = "foo";
  }
  buildCounterIamPolicyAnalysisQuery--;
  return o;
}

checkIamPolicyAnalysisQuery(api.IamPolicyAnalysisQuery o) {
  buildCounterIamPolicyAnalysisQuery++;
  if (buildCounterIamPolicyAnalysisQuery < 3) {
    checkAccessSelector(o.accessSelector);
    checkIdentitySelector(o.identitySelector);
    checkOptions(o.options);
    checkResourceSelector(o.resourceSelector);
    unittest.expect(o.scope, unittest.equals('foo'));
  }
  buildCounterIamPolicyAnalysisQuery--;
}

buildUnnamed3502() {
  var o = new core.List<api.GoogleCloudAssetV1AccessControlList>();
  o.add(buildGoogleCloudAssetV1AccessControlList());
  o.add(buildGoogleCloudAssetV1AccessControlList());
  return o;
}

checkUnnamed3502(core.List<api.GoogleCloudAssetV1AccessControlList> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAssetV1AccessControlList(o[0]);
  checkGoogleCloudAssetV1AccessControlList(o[1]);
}

core.int buildCounterIamPolicyAnalysisResult = 0;
buildIamPolicyAnalysisResult() {
  var o = new api.IamPolicyAnalysisResult();
  buildCounterIamPolicyAnalysisResult++;
  if (buildCounterIamPolicyAnalysisResult < 3) {
    o.accessControlLists = buildUnnamed3502();
    o.attachedResourceFullName = "foo";
    o.fullyExplored = true;
    o.iamBinding = buildBinding();
    o.identityList = buildGoogleCloudAssetV1IdentityList();
  }
  buildCounterIamPolicyAnalysisResult--;
  return o;
}

checkIamPolicyAnalysisResult(api.IamPolicyAnalysisResult o) {
  buildCounterIamPolicyAnalysisResult++;
  if (buildCounterIamPolicyAnalysisResult < 3) {
    checkUnnamed3502(o.accessControlLists);
    unittest.expect(o.attachedResourceFullName, unittest.equals('foo'));
    unittest.expect(o.fullyExplored, unittest.isTrue);
    checkBinding(o.iamBinding);
    checkGoogleCloudAssetV1IdentityList(o.identityList);
  }
  buildCounterIamPolicyAnalysisResult--;
}

core.int buildCounterIamPolicyAnalysisState = 0;
buildIamPolicyAnalysisState() {
  var o = new api.IamPolicyAnalysisState();
  buildCounterIamPolicyAnalysisState++;
  if (buildCounterIamPolicyAnalysisState < 3) {
    o.cause = "foo";
    o.code = "foo";
  }
  buildCounterIamPolicyAnalysisState--;
  return o;
}

checkIamPolicyAnalysisState(api.IamPolicyAnalysisState o) {
  buildCounterIamPolicyAnalysisState++;
  if (buildCounterIamPolicyAnalysisState < 3) {
    unittest.expect(o.cause, unittest.equals('foo'));
    unittest.expect(o.code, unittest.equals('foo'));
  }
  buildCounterIamPolicyAnalysisState--;
}

core.int buildCounterIamPolicySearchResult = 0;
buildIamPolicySearchResult() {
  var o = new api.IamPolicySearchResult();
  buildCounterIamPolicySearchResult++;
  if (buildCounterIamPolicySearchResult < 3) {
    o.explanation = buildExplanation();
    o.policy = buildPolicy();
    o.project = "foo";
    o.resource = "foo";
  }
  buildCounterIamPolicySearchResult--;
  return o;
}

checkIamPolicySearchResult(api.IamPolicySearchResult o) {
  buildCounterIamPolicySearchResult++;
  if (buildCounterIamPolicySearchResult < 3) {
    checkExplanation(o.explanation);
    checkPolicy(o.policy);
    unittest.expect(o.project, unittest.equals('foo'));
    unittest.expect(o.resource, unittest.equals('foo'));
  }
  buildCounterIamPolicySearchResult--;
}

core.int buildCounterIdentitySelector = 0;
buildIdentitySelector() {
  var o = new api.IdentitySelector();
  buildCounterIdentitySelector++;
  if (buildCounterIdentitySelector < 3) {
    o.identity = "foo";
  }
  buildCounterIdentitySelector--;
  return o;
}

checkIdentitySelector(api.IdentitySelector o) {
  buildCounterIdentitySelector++;
  if (buildCounterIdentitySelector < 3) {
    unittest.expect(o.identity, unittest.equals('foo'));
  }
  buildCounterIdentitySelector--;
}

buildUnnamed3503() {
  var o = new core.Map<core.String, api.Item>();
  o["x"] = buildItem();
  o["y"] = buildItem();
  return o;
}

checkUnnamed3503(core.Map<core.String, api.Item> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkItem(o["x"]);
  checkItem(o["y"]);
}

core.int buildCounterInventory = 0;
buildInventory() {
  var o = new api.Inventory();
  buildCounterInventory++;
  if (buildCounterInventory < 3) {
    o.items = buildUnnamed3503();
    o.osInfo = buildOsInfo();
  }
  buildCounterInventory--;
  return o;
}

checkInventory(api.Inventory o) {
  buildCounterInventory++;
  if (buildCounterInventory < 3) {
    checkUnnamed3503(o.items);
    checkOsInfo(o.osInfo);
  }
  buildCounterInventory--;
}

core.int buildCounterItem = 0;
buildItem() {
  var o = new api.Item();
  buildCounterItem++;
  if (buildCounterItem < 3) {
    o.availablePackage = buildSoftwarePackage();
    o.createTime = "foo";
    o.id = "foo";
    o.installedPackage = buildSoftwarePackage();
    o.originType = "foo";
    o.type = "foo";
    o.updateTime = "foo";
  }
  buildCounterItem--;
  return o;
}

checkItem(api.Item o) {
  buildCounterItem++;
  if (buildCounterItem < 3) {
    checkSoftwarePackage(o.availablePackage);
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    checkSoftwarePackage(o.installedPackage);
    unittest.expect(o.originType, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterItem--;
}

buildUnnamed3504() {
  var o = new core.List<api.Feed>();
  o.add(buildFeed());
  o.add(buildFeed());
  return o;
}

checkUnnamed3504(core.List<api.Feed> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFeed(o[0]);
  checkFeed(o[1]);
}

core.int buildCounterListFeedsResponse = 0;
buildListFeedsResponse() {
  var o = new api.ListFeedsResponse();
  buildCounterListFeedsResponse++;
  if (buildCounterListFeedsResponse < 3) {
    o.feeds = buildUnnamed3504();
  }
  buildCounterListFeedsResponse--;
  return o;
}

checkListFeedsResponse(api.ListFeedsResponse o) {
  buildCounterListFeedsResponse++;
  if (buildCounterListFeedsResponse < 3) {
    checkUnnamed3504(o.feeds);
  }
  buildCounterListFeedsResponse--;
}

buildUnnamed3505() {
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

checkUnnamed3505(core.Map<core.String, core.Object> o) {
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

buildUnnamed3506() {
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

checkUnnamed3506(core.Map<core.String, core.Object> o) {
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

core.int buildCounterOperation = 0;
buildOperation() {
  var o = new api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed3505();
    o.name = "foo";
    o.response = buildUnnamed3506();
  }
  buildCounterOperation--;
  return o;
}

checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkStatus(o.error);
    checkUnnamed3505(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed3506(o.response);
  }
  buildCounterOperation--;
}

core.int buildCounterOptions = 0;
buildOptions() {
  var o = new api.Options();
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

checkOptions(api.Options o) {
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
buildOsInfo() {
  var o = new api.OsInfo();
  buildCounterOsInfo++;
  if (buildCounterOsInfo < 3) {
    o.architecture = "foo";
    o.hostname = "foo";
    o.kernelRelease = "foo";
    o.kernelVersion = "foo";
    o.longName = "foo";
    o.osconfigAgentVersion = "foo";
    o.shortName = "foo";
    o.version = "foo";
  }
  buildCounterOsInfo--;
  return o;
}

checkOsInfo(api.OsInfo o) {
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
buildOutputConfig() {
  var o = new api.OutputConfig();
  buildCounterOutputConfig++;
  if (buildCounterOutputConfig < 3) {
    o.bigqueryDestination = buildBigQueryDestination();
    o.gcsDestination = buildGcsDestination();
  }
  buildCounterOutputConfig--;
  return o;
}

checkOutputConfig(api.OutputConfig o) {
  buildCounterOutputConfig++;
  if (buildCounterOutputConfig < 3) {
    checkBigQueryDestination(o.bigqueryDestination);
    checkGcsDestination(o.gcsDestination);
  }
  buildCounterOutputConfig--;
}

core.int buildCounterPartitionSpec = 0;
buildPartitionSpec() {
  var o = new api.PartitionSpec();
  buildCounterPartitionSpec++;
  if (buildCounterPartitionSpec < 3) {
    o.partitionKey = "foo";
  }
  buildCounterPartitionSpec--;
  return o;
}

checkPartitionSpec(api.PartitionSpec o) {
  buildCounterPartitionSpec++;
  if (buildCounterPartitionSpec < 3) {
    unittest.expect(o.partitionKey, unittest.equals('foo'));
  }
  buildCounterPartitionSpec--;
}

buildUnnamed3507() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3507(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPermissions = 0;
buildPermissions() {
  var o = new api.Permissions();
  buildCounterPermissions++;
  if (buildCounterPermissions < 3) {
    o.permissions = buildUnnamed3507();
  }
  buildCounterPermissions--;
  return o;
}

checkPermissions(api.Permissions o) {
  buildCounterPermissions++;
  if (buildCounterPermissions < 3) {
    checkUnnamed3507(o.permissions);
  }
  buildCounterPermissions--;
}

buildUnnamed3508() {
  var o = new core.List<api.AuditConfig>();
  o.add(buildAuditConfig());
  o.add(buildAuditConfig());
  return o;
}

checkUnnamed3508(core.List<api.AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditConfig(o[0]);
  checkAuditConfig(o[1]);
}

buildUnnamed3509() {
  var o = new core.List<api.Binding>();
  o.add(buildBinding());
  o.add(buildBinding());
  return o;
}

checkUnnamed3509(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
buildPolicy() {
  var o = new api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.auditConfigs = buildUnnamed3508();
    o.bindings = buildUnnamed3509();
    o.etag = "foo";
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed3508(o.auditConfigs);
    checkUnnamed3509(o.bindings);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals(42));
  }
  buildCounterPolicy--;
}

core.int buildCounterPubsubDestination = 0;
buildPubsubDestination() {
  var o = new api.PubsubDestination();
  buildCounterPubsubDestination++;
  if (buildCounterPubsubDestination < 3) {
    o.topic = "foo";
  }
  buildCounterPubsubDestination--;
  return o;
}

checkPubsubDestination(api.PubsubDestination o) {
  buildCounterPubsubDestination++;
  if (buildCounterPubsubDestination < 3) {
    unittest.expect(o.topic, unittest.equals('foo'));
  }
  buildCounterPubsubDestination--;
}

buildUnnamed3510() {
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

checkUnnamed3510(core.Map<core.String, core.Object> o) {
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

core.int buildCounterResource = 0;
buildResource() {
  var o = new api.Resource();
  buildCounterResource++;
  if (buildCounterResource < 3) {
    o.data = buildUnnamed3510();
    o.discoveryDocumentUri = "foo";
    o.discoveryName = "foo";
    o.location = "foo";
    o.parent = "foo";
    o.resourceUrl = "foo";
    o.version = "foo";
  }
  buildCounterResource--;
  return o;
}

checkResource(api.Resource o) {
  buildCounterResource++;
  if (buildCounterResource < 3) {
    checkUnnamed3510(o.data);
    unittest.expect(o.discoveryDocumentUri, unittest.equals('foo'));
    unittest.expect(o.discoveryName, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.parent, unittest.equals('foo'));
    unittest.expect(o.resourceUrl, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterResource--;
}

buildUnnamed3511() {
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

checkUnnamed3511(core.Map<core.String, core.Object> o) {
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

buildUnnamed3512() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed3512(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed3513() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3513(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterResourceSearchResult = 0;
buildResourceSearchResult() {
  var o = new api.ResourceSearchResult();
  buildCounterResourceSearchResult++;
  if (buildCounterResourceSearchResult < 3) {
    o.additionalAttributes = buildUnnamed3511();
    o.assetType = "foo";
    o.description = "foo";
    o.displayName = "foo";
    o.labels = buildUnnamed3512();
    o.location = "foo";
    o.name = "foo";
    o.networkTags = buildUnnamed3513();
    o.project = "foo";
  }
  buildCounterResourceSearchResult--;
  return o;
}

checkResourceSearchResult(api.ResourceSearchResult o) {
  buildCounterResourceSearchResult++;
  if (buildCounterResourceSearchResult < 3) {
    checkUnnamed3511(o.additionalAttributes);
    unittest.expect(o.assetType, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed3512(o.labels);
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed3513(o.networkTags);
    unittest.expect(o.project, unittest.equals('foo'));
  }
  buildCounterResourceSearchResult--;
}

core.int buildCounterResourceSelector = 0;
buildResourceSelector() {
  var o = new api.ResourceSelector();
  buildCounterResourceSelector++;
  if (buildCounterResourceSelector < 3) {
    o.fullResourceName = "foo";
  }
  buildCounterResourceSelector--;
  return o;
}

checkResourceSelector(api.ResourceSelector o) {
  buildCounterResourceSelector++;
  if (buildCounterResourceSelector < 3) {
    unittest.expect(o.fullResourceName, unittest.equals('foo'));
  }
  buildCounterResourceSelector--;
}

buildUnnamed3514() {
  var o = new core.List<api.IamPolicySearchResult>();
  o.add(buildIamPolicySearchResult());
  o.add(buildIamPolicySearchResult());
  return o;
}

checkUnnamed3514(core.List<api.IamPolicySearchResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIamPolicySearchResult(o[0]);
  checkIamPolicySearchResult(o[1]);
}

core.int buildCounterSearchAllIamPoliciesResponse = 0;
buildSearchAllIamPoliciesResponse() {
  var o = new api.SearchAllIamPoliciesResponse();
  buildCounterSearchAllIamPoliciesResponse++;
  if (buildCounterSearchAllIamPoliciesResponse < 3) {
    o.nextPageToken = "foo";
    o.results = buildUnnamed3514();
  }
  buildCounterSearchAllIamPoliciesResponse--;
  return o;
}

checkSearchAllIamPoliciesResponse(api.SearchAllIamPoliciesResponse o) {
  buildCounterSearchAllIamPoliciesResponse++;
  if (buildCounterSearchAllIamPoliciesResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed3514(o.results);
  }
  buildCounterSearchAllIamPoliciesResponse--;
}

buildUnnamed3515() {
  var o = new core.List<api.ResourceSearchResult>();
  o.add(buildResourceSearchResult());
  o.add(buildResourceSearchResult());
  return o;
}

checkUnnamed3515(core.List<api.ResourceSearchResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResourceSearchResult(o[0]);
  checkResourceSearchResult(o[1]);
}

core.int buildCounterSearchAllResourcesResponse = 0;
buildSearchAllResourcesResponse() {
  var o = new api.SearchAllResourcesResponse();
  buildCounterSearchAllResourcesResponse++;
  if (buildCounterSearchAllResourcesResponse < 3) {
    o.nextPageToken = "foo";
    o.results = buildUnnamed3515();
  }
  buildCounterSearchAllResourcesResponse--;
  return o;
}

checkSearchAllResourcesResponse(api.SearchAllResourcesResponse o) {
  buildCounterSearchAllResourcesResponse++;
  if (buildCounterSearchAllResourcesResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed3515(o.results);
  }
  buildCounterSearchAllResourcesResponse--;
}

core.int buildCounterSoftwarePackage = 0;
buildSoftwarePackage() {
  var o = new api.SoftwarePackage();
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

checkSoftwarePackage(api.SoftwarePackage o) {
  buildCounterSoftwarePackage++;
  if (buildCounterSoftwarePackage < 3) {
    checkVersionedPackage(o.aptPackage);
    checkVersionedPackage(o.cosPackage);
    checkVersionedPackage(o.googetPackage);
    checkWindowsQuickFixEngineeringPackage(o.qfePackage);
    checkWindowsUpdatePackage(o.wuaPackage);
    checkVersionedPackage(o.yumPackage);
    checkVersionedPackage(o.zypperPackage);
    checkZypperPatch(o.zypperPatch);
  }
  buildCounterSoftwarePackage--;
}

buildUnnamed3516() {
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

checkUnnamed3516(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted9 = (o["x"]) as core.Map;
  unittest.expect(casted9, unittest.hasLength(3));
  unittest.expect(casted9["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted9["bool"], unittest.equals(true));
  unittest.expect(casted9["string"], unittest.equals('foo'));
  var casted10 = (o["y"]) as core.Map;
  unittest.expect(casted10, unittest.hasLength(3));
  unittest.expect(casted10["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted10["bool"], unittest.equals(true));
  unittest.expect(casted10["string"], unittest.equals('foo'));
}

buildUnnamed3517() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed3516());
  o.add(buildUnnamed3516());
  return o;
}

checkUnnamed3517(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed3516(o[0]);
  checkUnnamed3516(o[1]);
}

core.int buildCounterStatus = 0;
buildStatus() {
  var o = new api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed3517();
    o.message = "foo";
  }
  buildCounterStatus--;
  return o;
}

checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed3517(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.int buildCounterTemporalAsset = 0;
buildTemporalAsset() {
  var o = new api.TemporalAsset();
  buildCounterTemporalAsset++;
  if (buildCounterTemporalAsset < 3) {
    o.asset = buildAsset();
    o.deleted = true;
    o.priorAsset = buildAsset();
    o.priorAssetState = "foo";
    o.window = buildTimeWindow();
  }
  buildCounterTemporalAsset--;
  return o;
}

checkTemporalAsset(api.TemporalAsset o) {
  buildCounterTemporalAsset++;
  if (buildCounterTemporalAsset < 3) {
    checkAsset(o.asset);
    unittest.expect(o.deleted, unittest.isTrue);
    checkAsset(o.priorAsset);
    unittest.expect(o.priorAssetState, unittest.equals('foo'));
    checkTimeWindow(o.window);
  }
  buildCounterTemporalAsset--;
}

core.int buildCounterTimeWindow = 0;
buildTimeWindow() {
  var o = new api.TimeWindow();
  buildCounterTimeWindow++;
  if (buildCounterTimeWindow < 3) {
    o.endTime = "foo";
    o.startTime = "foo";
  }
  buildCounterTimeWindow--;
  return o;
}

checkTimeWindow(api.TimeWindow o) {
  buildCounterTimeWindow++;
  if (buildCounterTimeWindow < 3) {
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.startTime, unittest.equals('foo'));
  }
  buildCounterTimeWindow--;
}

core.int buildCounterUpdateFeedRequest = 0;
buildUpdateFeedRequest() {
  var o = new api.UpdateFeedRequest();
  buildCounterUpdateFeedRequest++;
  if (buildCounterUpdateFeedRequest < 3) {
    o.feed = buildFeed();
    o.updateMask = "foo";
  }
  buildCounterUpdateFeedRequest--;
  return o;
}

checkUpdateFeedRequest(api.UpdateFeedRequest o) {
  buildCounterUpdateFeedRequest++;
  if (buildCounterUpdateFeedRequest < 3) {
    checkFeed(o.feed);
    unittest.expect(o.updateMask, unittest.equals('foo'));
  }
  buildCounterUpdateFeedRequest--;
}

core.int buildCounterVersionedPackage = 0;
buildVersionedPackage() {
  var o = new api.VersionedPackage();
  buildCounterVersionedPackage++;
  if (buildCounterVersionedPackage < 3) {
    o.architecture = "foo";
    o.packageName = "foo";
    o.version = "foo";
  }
  buildCounterVersionedPackage--;
  return o;
}

checkVersionedPackage(api.VersionedPackage o) {
  buildCounterVersionedPackage++;
  if (buildCounterVersionedPackage < 3) {
    unittest.expect(o.architecture, unittest.equals('foo'));
    unittest.expect(o.packageName, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterVersionedPackage--;
}

core.int buildCounterWindowsQuickFixEngineeringPackage = 0;
buildWindowsQuickFixEngineeringPackage() {
  var o = new api.WindowsQuickFixEngineeringPackage();
  buildCounterWindowsQuickFixEngineeringPackage++;
  if (buildCounterWindowsQuickFixEngineeringPackage < 3) {
    o.caption = "foo";
    o.description = "foo";
    o.hotFixId = "foo";
    o.installTime = "foo";
  }
  buildCounterWindowsQuickFixEngineeringPackage--;
  return o;
}

checkWindowsQuickFixEngineeringPackage(
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
buildWindowsUpdateCategory() {
  var o = new api.WindowsUpdateCategory();
  buildCounterWindowsUpdateCategory++;
  if (buildCounterWindowsUpdateCategory < 3) {
    o.id = "foo";
    o.name = "foo";
  }
  buildCounterWindowsUpdateCategory--;
  return o;
}

checkWindowsUpdateCategory(api.WindowsUpdateCategory o) {
  buildCounterWindowsUpdateCategory++;
  if (buildCounterWindowsUpdateCategory < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterWindowsUpdateCategory--;
}

buildUnnamed3518() {
  var o = new core.List<api.WindowsUpdateCategory>();
  o.add(buildWindowsUpdateCategory());
  o.add(buildWindowsUpdateCategory());
  return o;
}

checkUnnamed3518(core.List<api.WindowsUpdateCategory> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWindowsUpdateCategory(o[0]);
  checkWindowsUpdateCategory(o[1]);
}

buildUnnamed3519() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3519(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3520() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3520(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterWindowsUpdatePackage = 0;
buildWindowsUpdatePackage() {
  var o = new api.WindowsUpdatePackage();
  buildCounterWindowsUpdatePackage++;
  if (buildCounterWindowsUpdatePackage < 3) {
    o.categories = buildUnnamed3518();
    o.description = "foo";
    o.kbArticleIds = buildUnnamed3519();
    o.lastDeploymentChangeTime = "foo";
    o.moreInfoUrls = buildUnnamed3520();
    o.revisionNumber = 42;
    o.supportUrl = "foo";
    o.title = "foo";
    o.updateId = "foo";
  }
  buildCounterWindowsUpdatePackage--;
  return o;
}

checkWindowsUpdatePackage(api.WindowsUpdatePackage o) {
  buildCounterWindowsUpdatePackage++;
  if (buildCounterWindowsUpdatePackage < 3) {
    checkUnnamed3518(o.categories);
    unittest.expect(o.description, unittest.equals('foo'));
    checkUnnamed3519(o.kbArticleIds);
    unittest.expect(o.lastDeploymentChangeTime, unittest.equals('foo'));
    checkUnnamed3520(o.moreInfoUrls);
    unittest.expect(o.revisionNumber, unittest.equals(42));
    unittest.expect(o.supportUrl, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
    unittest.expect(o.updateId, unittest.equals('foo'));
  }
  buildCounterWindowsUpdatePackage--;
}

core.int buildCounterZypperPatch = 0;
buildZypperPatch() {
  var o = new api.ZypperPatch();
  buildCounterZypperPatch++;
  if (buildCounterZypperPatch < 3) {
    o.category = "foo";
    o.patchName = "foo";
    o.severity = "foo";
    o.summary = "foo";
  }
  buildCounterZypperPatch--;
  return o;
}

checkZypperPatch(api.ZypperPatch o) {
  buildCounterZypperPatch++;
  if (buildCounterZypperPatch < 3) {
    unittest.expect(o.category, unittest.equals('foo'));
    unittest.expect(o.patchName, unittest.equals('foo'));
    unittest.expect(o.severity, unittest.equals('foo'));
    unittest.expect(o.summary, unittest.equals('foo'));
  }
  buildCounterZypperPatch--;
}

buildUnnamed3521() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3521(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3522() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3522(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3523() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3523(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3524() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3524(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

main() {
  unittest.group("obj-schema-AccessSelector", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccessSelector();
      var od = new api.AccessSelector.fromJson(o.toJson());
      checkAccessSelector(od);
    });
  });

  unittest.group("obj-schema-AnalyzeIamPolicyLongrunningRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildAnalyzeIamPolicyLongrunningRequest();
      var od = new api.AnalyzeIamPolicyLongrunningRequest.fromJson(o.toJson());
      checkAnalyzeIamPolicyLongrunningRequest(od);
    });
  });

  unittest.group("obj-schema-AnalyzeIamPolicyResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildAnalyzeIamPolicyResponse();
      var od = new api.AnalyzeIamPolicyResponse.fromJson(o.toJson());
      checkAnalyzeIamPolicyResponse(od);
    });
  });

  unittest.group("obj-schema-Asset", () {
    unittest.test("to-json--from-json", () {
      var o = buildAsset();
      var od = new api.Asset.fromJson(o.toJson());
      checkAsset(od);
    });
  });

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

  unittest.group("obj-schema-BatchGetAssetsHistoryResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildBatchGetAssetsHistoryResponse();
      var od = new api.BatchGetAssetsHistoryResponse.fromJson(o.toJson());
      checkBatchGetAssetsHistoryResponse(od);
    });
  });

  unittest.group("obj-schema-BigQueryDestination", () {
    unittest.test("to-json--from-json", () {
      var o = buildBigQueryDestination();
      var od = new api.BigQueryDestination.fromJson(o.toJson());
      checkBigQueryDestination(od);
    });
  });

  unittest.group("obj-schema-Binding", () {
    unittest.test("to-json--from-json", () {
      var o = buildBinding();
      var od = new api.Binding.fromJson(o.toJson());
      checkBinding(od);
    });
  });

  unittest.group("obj-schema-CreateFeedRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreateFeedRequest();
      var od = new api.CreateFeedRequest.fromJson(o.toJson());
      checkCreateFeedRequest(od);
    });
  });

  unittest.group("obj-schema-Empty", () {
    unittest.test("to-json--from-json", () {
      var o = buildEmpty();
      var od = new api.Empty.fromJson(o.toJson());
      checkEmpty(od);
    });
  });

  unittest.group("obj-schema-Explanation", () {
    unittest.test("to-json--from-json", () {
      var o = buildExplanation();
      var od = new api.Explanation.fromJson(o.toJson());
      checkExplanation(od);
    });
  });

  unittest.group("obj-schema-ExportAssetsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildExportAssetsRequest();
      var od = new api.ExportAssetsRequest.fromJson(o.toJson());
      checkExportAssetsRequest(od);
    });
  });

  unittest.group("obj-schema-Expr", () {
    unittest.test("to-json--from-json", () {
      var o = buildExpr();
      var od = new api.Expr.fromJson(o.toJson());
      checkExpr(od);
    });
  });

  unittest.group("obj-schema-Feed", () {
    unittest.test("to-json--from-json", () {
      var o = buildFeed();
      var od = new api.Feed.fromJson(o.toJson());
      checkFeed(od);
    });
  });

  unittest.group("obj-schema-FeedOutputConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildFeedOutputConfig();
      var od = new api.FeedOutputConfig.fromJson(o.toJson());
      checkFeedOutputConfig(od);
    });
  });

  unittest.group("obj-schema-GcsDestination", () {
    unittest.test("to-json--from-json", () {
      var o = buildGcsDestination();
      var od = new api.GcsDestination.fromJson(o.toJson());
      checkGcsDestination(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudAssetV1Access", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudAssetV1Access();
      var od = new api.GoogleCloudAssetV1Access.fromJson(o.toJson());
      checkGoogleCloudAssetV1Access(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudAssetV1AccessControlList", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudAssetV1AccessControlList();
      var od = new api.GoogleCloudAssetV1AccessControlList.fromJson(o.toJson());
      checkGoogleCloudAssetV1AccessControlList(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudAssetV1BigQueryDestination", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudAssetV1BigQueryDestination();
      var od =
          new api.GoogleCloudAssetV1BigQueryDestination.fromJson(o.toJson());
      checkGoogleCloudAssetV1BigQueryDestination(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudAssetV1Edge", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudAssetV1Edge();
      var od = new api.GoogleCloudAssetV1Edge.fromJson(o.toJson());
      checkGoogleCloudAssetV1Edge(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudAssetV1GcsDestination", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudAssetV1GcsDestination();
      var od = new api.GoogleCloudAssetV1GcsDestination.fromJson(o.toJson());
      checkGoogleCloudAssetV1GcsDestination(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudAssetV1Identity", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudAssetV1Identity();
      var od = new api.GoogleCloudAssetV1Identity.fromJson(o.toJson());
      checkGoogleCloudAssetV1Identity(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudAssetV1IdentityList", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudAssetV1IdentityList();
      var od = new api.GoogleCloudAssetV1IdentityList.fromJson(o.toJson());
      checkGoogleCloudAssetV1IdentityList(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudAssetV1Resource", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudAssetV1Resource();
      var od = new api.GoogleCloudAssetV1Resource.fromJson(o.toJson());
      checkGoogleCloudAssetV1Resource(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudOrgpolicyV1BooleanPolicy", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudOrgpolicyV1BooleanPolicy();
      var od = new api.GoogleCloudOrgpolicyV1BooleanPolicy.fromJson(o.toJson());
      checkGoogleCloudOrgpolicyV1BooleanPolicy(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudOrgpolicyV1ListPolicy", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudOrgpolicyV1ListPolicy();
      var od = new api.GoogleCloudOrgpolicyV1ListPolicy.fromJson(o.toJson());
      checkGoogleCloudOrgpolicyV1ListPolicy(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudOrgpolicyV1Policy", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudOrgpolicyV1Policy();
      var od = new api.GoogleCloudOrgpolicyV1Policy.fromJson(o.toJson());
      checkGoogleCloudOrgpolicyV1Policy(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudOrgpolicyV1RestoreDefault", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudOrgpolicyV1RestoreDefault();
      var od =
          new api.GoogleCloudOrgpolicyV1RestoreDefault.fromJson(o.toJson());
      checkGoogleCloudOrgpolicyV1RestoreDefault(od);
    });
  });

  unittest.group("obj-schema-GoogleIdentityAccesscontextmanagerV1AccessLevel",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleIdentityAccesscontextmanagerV1AccessLevel();
      var od = new api.GoogleIdentityAccesscontextmanagerV1AccessLevel.fromJson(
          o.toJson());
      checkGoogleIdentityAccesscontextmanagerV1AccessLevel(od);
    });
  });

  unittest.group("obj-schema-GoogleIdentityAccesscontextmanagerV1AccessPolicy",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleIdentityAccesscontextmanagerV1AccessPolicy();
      var od =
          new api.GoogleIdentityAccesscontextmanagerV1AccessPolicy.fromJson(
              o.toJson());
      checkGoogleIdentityAccesscontextmanagerV1AccessPolicy(od);
    });
  });

  unittest.group("obj-schema-GoogleIdentityAccesscontextmanagerV1BasicLevel",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleIdentityAccesscontextmanagerV1BasicLevel();
      var od = new api.GoogleIdentityAccesscontextmanagerV1BasicLevel.fromJson(
          o.toJson());
      checkGoogleIdentityAccesscontextmanagerV1BasicLevel(od);
    });
  });

  unittest.group("obj-schema-GoogleIdentityAccesscontextmanagerV1Condition",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleIdentityAccesscontextmanagerV1Condition();
      var od = new api.GoogleIdentityAccesscontextmanagerV1Condition.fromJson(
          o.toJson());
      checkGoogleIdentityAccesscontextmanagerV1Condition(od);
    });
  });

  unittest.group("obj-schema-GoogleIdentityAccesscontextmanagerV1CustomLevel",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleIdentityAccesscontextmanagerV1CustomLevel();
      var od = new api.GoogleIdentityAccesscontextmanagerV1CustomLevel.fromJson(
          o.toJson());
      checkGoogleIdentityAccesscontextmanagerV1CustomLevel(od);
    });
  });

  unittest.group("obj-schema-GoogleIdentityAccesscontextmanagerV1DevicePolicy",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleIdentityAccesscontextmanagerV1DevicePolicy();
      var od =
          new api.GoogleIdentityAccesscontextmanagerV1DevicePolicy.fromJson(
              o.toJson());
      checkGoogleIdentityAccesscontextmanagerV1DevicePolicy(od);
    });
  });

  unittest.group("obj-schema-GoogleIdentityAccesscontextmanagerV1OsConstraint",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleIdentityAccesscontextmanagerV1OsConstraint();
      var od =
          new api.GoogleIdentityAccesscontextmanagerV1OsConstraint.fromJson(
              o.toJson());
      checkGoogleIdentityAccesscontextmanagerV1OsConstraint(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleIdentityAccesscontextmanagerV1ServicePerimeter", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleIdentityAccesscontextmanagerV1ServicePerimeter();
      var od =
          new api.GoogleIdentityAccesscontextmanagerV1ServicePerimeter.fromJson(
              o.toJson());
      checkGoogleIdentityAccesscontextmanagerV1ServicePerimeter(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig();
      var od = new api
              .GoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig.fromJson(
          o.toJson());
      checkGoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleIdentityAccesscontextmanagerV1VpcAccessibleServices",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleIdentityAccesscontextmanagerV1VpcAccessibleServices();
      var od = new api
              .GoogleIdentityAccesscontextmanagerV1VpcAccessibleServices.fromJson(
          o.toJson());
      checkGoogleIdentityAccesscontextmanagerV1VpcAccessibleServices(od);
    });
  });

  unittest.group("obj-schema-IamPolicyAnalysis", () {
    unittest.test("to-json--from-json", () {
      var o = buildIamPolicyAnalysis();
      var od = new api.IamPolicyAnalysis.fromJson(o.toJson());
      checkIamPolicyAnalysis(od);
    });
  });

  unittest.group("obj-schema-IamPolicyAnalysisOutputConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildIamPolicyAnalysisOutputConfig();
      var od = new api.IamPolicyAnalysisOutputConfig.fromJson(o.toJson());
      checkIamPolicyAnalysisOutputConfig(od);
    });
  });

  unittest.group("obj-schema-IamPolicyAnalysisQuery", () {
    unittest.test("to-json--from-json", () {
      var o = buildIamPolicyAnalysisQuery();
      var od = new api.IamPolicyAnalysisQuery.fromJson(o.toJson());
      checkIamPolicyAnalysisQuery(od);
    });
  });

  unittest.group("obj-schema-IamPolicyAnalysisResult", () {
    unittest.test("to-json--from-json", () {
      var o = buildIamPolicyAnalysisResult();
      var od = new api.IamPolicyAnalysisResult.fromJson(o.toJson());
      checkIamPolicyAnalysisResult(od);
    });
  });

  unittest.group("obj-schema-IamPolicyAnalysisState", () {
    unittest.test("to-json--from-json", () {
      var o = buildIamPolicyAnalysisState();
      var od = new api.IamPolicyAnalysisState.fromJson(o.toJson());
      checkIamPolicyAnalysisState(od);
    });
  });

  unittest.group("obj-schema-IamPolicySearchResult", () {
    unittest.test("to-json--from-json", () {
      var o = buildIamPolicySearchResult();
      var od = new api.IamPolicySearchResult.fromJson(o.toJson());
      checkIamPolicySearchResult(od);
    });
  });

  unittest.group("obj-schema-IdentitySelector", () {
    unittest.test("to-json--from-json", () {
      var o = buildIdentitySelector();
      var od = new api.IdentitySelector.fromJson(o.toJson());
      checkIdentitySelector(od);
    });
  });

  unittest.group("obj-schema-Inventory", () {
    unittest.test("to-json--from-json", () {
      var o = buildInventory();
      var od = new api.Inventory.fromJson(o.toJson());
      checkInventory(od);
    });
  });

  unittest.group("obj-schema-Item", () {
    unittest.test("to-json--from-json", () {
      var o = buildItem();
      var od = new api.Item.fromJson(o.toJson());
      checkItem(od);
    });
  });

  unittest.group("obj-schema-ListFeedsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListFeedsResponse();
      var od = new api.ListFeedsResponse.fromJson(o.toJson());
      checkListFeedsResponse(od);
    });
  });

  unittest.group("obj-schema-Operation", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperation();
      var od = new api.Operation.fromJson(o.toJson());
      checkOperation(od);
    });
  });

  unittest.group("obj-schema-Options", () {
    unittest.test("to-json--from-json", () {
      var o = buildOptions();
      var od = new api.Options.fromJson(o.toJson());
      checkOptions(od);
    });
  });

  unittest.group("obj-schema-OsInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildOsInfo();
      var od = new api.OsInfo.fromJson(o.toJson());
      checkOsInfo(od);
    });
  });

  unittest.group("obj-schema-OutputConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildOutputConfig();
      var od = new api.OutputConfig.fromJson(o.toJson());
      checkOutputConfig(od);
    });
  });

  unittest.group("obj-schema-PartitionSpec", () {
    unittest.test("to-json--from-json", () {
      var o = buildPartitionSpec();
      var od = new api.PartitionSpec.fromJson(o.toJson());
      checkPartitionSpec(od);
    });
  });

  unittest.group("obj-schema-Permissions", () {
    unittest.test("to-json--from-json", () {
      var o = buildPermissions();
      var od = new api.Permissions.fromJson(o.toJson());
      checkPermissions(od);
    });
  });

  unittest.group("obj-schema-Policy", () {
    unittest.test("to-json--from-json", () {
      var o = buildPolicy();
      var od = new api.Policy.fromJson(o.toJson());
      checkPolicy(od);
    });
  });

  unittest.group("obj-schema-PubsubDestination", () {
    unittest.test("to-json--from-json", () {
      var o = buildPubsubDestination();
      var od = new api.PubsubDestination.fromJson(o.toJson());
      checkPubsubDestination(od);
    });
  });

  unittest.group("obj-schema-Resource", () {
    unittest.test("to-json--from-json", () {
      var o = buildResource();
      var od = new api.Resource.fromJson(o.toJson());
      checkResource(od);
    });
  });

  unittest.group("obj-schema-ResourceSearchResult", () {
    unittest.test("to-json--from-json", () {
      var o = buildResourceSearchResult();
      var od = new api.ResourceSearchResult.fromJson(o.toJson());
      checkResourceSearchResult(od);
    });
  });

  unittest.group("obj-schema-ResourceSelector", () {
    unittest.test("to-json--from-json", () {
      var o = buildResourceSelector();
      var od = new api.ResourceSelector.fromJson(o.toJson());
      checkResourceSelector(od);
    });
  });

  unittest.group("obj-schema-SearchAllIamPoliciesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildSearchAllIamPoliciesResponse();
      var od = new api.SearchAllIamPoliciesResponse.fromJson(o.toJson());
      checkSearchAllIamPoliciesResponse(od);
    });
  });

  unittest.group("obj-schema-SearchAllResourcesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildSearchAllResourcesResponse();
      var od = new api.SearchAllResourcesResponse.fromJson(o.toJson());
      checkSearchAllResourcesResponse(od);
    });
  });

  unittest.group("obj-schema-SoftwarePackage", () {
    unittest.test("to-json--from-json", () {
      var o = buildSoftwarePackage();
      var od = new api.SoftwarePackage.fromJson(o.toJson());
      checkSoftwarePackage(od);
    });
  });

  unittest.group("obj-schema-Status", () {
    unittest.test("to-json--from-json", () {
      var o = buildStatus();
      var od = new api.Status.fromJson(o.toJson());
      checkStatus(od);
    });
  });

  unittest.group("obj-schema-TemporalAsset", () {
    unittest.test("to-json--from-json", () {
      var o = buildTemporalAsset();
      var od = new api.TemporalAsset.fromJson(o.toJson());
      checkTemporalAsset(od);
    });
  });

  unittest.group("obj-schema-TimeWindow", () {
    unittest.test("to-json--from-json", () {
      var o = buildTimeWindow();
      var od = new api.TimeWindow.fromJson(o.toJson());
      checkTimeWindow(od);
    });
  });

  unittest.group("obj-schema-UpdateFeedRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildUpdateFeedRequest();
      var od = new api.UpdateFeedRequest.fromJson(o.toJson());
      checkUpdateFeedRequest(od);
    });
  });

  unittest.group("obj-schema-VersionedPackage", () {
    unittest.test("to-json--from-json", () {
      var o = buildVersionedPackage();
      var od = new api.VersionedPackage.fromJson(o.toJson());
      checkVersionedPackage(od);
    });
  });

  unittest.group("obj-schema-WindowsQuickFixEngineeringPackage", () {
    unittest.test("to-json--from-json", () {
      var o = buildWindowsQuickFixEngineeringPackage();
      var od = new api.WindowsQuickFixEngineeringPackage.fromJson(o.toJson());
      checkWindowsQuickFixEngineeringPackage(od);
    });
  });

  unittest.group("obj-schema-WindowsUpdateCategory", () {
    unittest.test("to-json--from-json", () {
      var o = buildWindowsUpdateCategory();
      var od = new api.WindowsUpdateCategory.fromJson(o.toJson());
      checkWindowsUpdateCategory(od);
    });
  });

  unittest.group("obj-schema-WindowsUpdatePackage", () {
    unittest.test("to-json--from-json", () {
      var o = buildWindowsUpdatePackage();
      var od = new api.WindowsUpdatePackage.fromJson(o.toJson());
      checkWindowsUpdatePackage(od);
    });
  });

  unittest.group("obj-schema-ZypperPatch", () {
    unittest.test("to-json--from-json", () {
      var o = buildZypperPatch();
      var od = new api.ZypperPatch.fromJson(o.toJson());
      checkZypperPatch(od);
    });
  });

  unittest.group("resource-FeedsResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.FeedsResourceApi res = new api.CloudassetApi(mock).feeds;
      var arg_request = buildCreateFeedRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.CreateFeedRequest.fromJson(json);
        checkCreateFeedRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        var resp = convert.json.encode(buildFeed());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkFeed(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.FeedsResourceApi res = new api.CloudassetApi(mock).feeds;
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
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
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
      api.FeedsResourceApi res = new api.CloudassetApi(mock).feeds;
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
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
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
        var resp = convert.json.encode(buildFeed());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkFeed(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.FeedsResourceApi res = new api.CloudassetApi(mock).feeds;
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        var resp = convert.json.encode(buildListFeedsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListFeedsResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.FeedsResourceApi res = new api.CloudassetApi(mock).feeds;
      var arg_request = buildUpdateFeedRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.UpdateFeedRequest.fromJson(json);
        checkUpdateFeedRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        var resp = convert.json.encode(buildFeed());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkFeed(response);
      })));
    });
  });

  unittest.group("resource-OperationsResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.OperationsResourceApi res = new api.CloudassetApi(mock).operations;
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
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
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
  });

  unittest.group("resource-V1ResourceApi", () {
    unittest.test("method--analyzeIamPolicy", () {
      var mock = new HttpServerMock();
      api.V1ResourceApi res = new api.CloudassetApi(mock).v1;
      var arg_scope = "foo";
      var arg_analysisQuery_identitySelector_identity = "foo";
      var arg_analysisQuery_options_outputGroupEdges = true;
      var arg_analysisQuery_options_outputResourceEdges = true;
      var arg_analysisQuery_resourceSelector_fullResourceName = "foo";
      var arg_analysisQuery_options_expandGroups = true;
      var arg_analysisQuery_options_analyzeServiceAccountImpersonation = true;
      var arg_analysisQuery_options_expandResources = true;
      var arg_analysisQuery_accessSelector_roles = buildUnnamed3521();
      var arg_executionTimeout = "foo";
      var arg_analysisQuery_accessSelector_permissions = buildUnnamed3522();
      var arg_analysisQuery_options_expandRoles = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
            queryMap["analysisQuery.identitySelector.identity"].first,
            unittest.equals(arg_analysisQuery_identitySelector_identity));
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
        unittest.expect(queryMap["analysisQuery.options.expandGroups"].first,
            unittest.equals("$arg_analysisQuery_options_expandGroups"));
        unittest.expect(
            queryMap["analysisQuery.options.analyzeServiceAccountImpersonation"]
                .first,
            unittest.equals(
                "$arg_analysisQuery_options_analyzeServiceAccountImpersonation"));
        unittest.expect(queryMap["analysisQuery.options.expandResources"].first,
            unittest.equals("$arg_analysisQuery_options_expandResources"));
        unittest.expect(queryMap["analysisQuery.accessSelector.roles"],
            unittest.equals(arg_analysisQuery_accessSelector_roles));
        unittest.expect(queryMap["executionTimeout"].first,
            unittest.equals(arg_executionTimeout));
        unittest.expect(queryMap["analysisQuery.accessSelector.permissions"],
            unittest.equals(arg_analysisQuery_accessSelector_permissions));
        unittest.expect(queryMap["analysisQuery.options.expandRoles"].first,
            unittest.equals("$arg_analysisQuery_options_expandRoles"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildAnalyzeIamPolicyResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .analyzeIamPolicy(arg_scope,
              analysisQuery_identitySelector_identity:
                  arg_analysisQuery_identitySelector_identity,
              analysisQuery_options_outputGroupEdges:
                  arg_analysisQuery_options_outputGroupEdges,
              analysisQuery_options_outputResourceEdges:
                  arg_analysisQuery_options_outputResourceEdges,
              analysisQuery_resourceSelector_fullResourceName:
                  arg_analysisQuery_resourceSelector_fullResourceName,
              analysisQuery_options_expandGroups:
                  arg_analysisQuery_options_expandGroups,
              analysisQuery_options_analyzeServiceAccountImpersonation:
                  arg_analysisQuery_options_analyzeServiceAccountImpersonation,
              analysisQuery_options_expandResources:
                  arg_analysisQuery_options_expandResources,
              analysisQuery_accessSelector_roles:
                  arg_analysisQuery_accessSelector_roles,
              executionTimeout: arg_executionTimeout,
              analysisQuery_accessSelector_permissions:
                  arg_analysisQuery_accessSelector_permissions,
              analysisQuery_options_expandRoles:
                  arg_analysisQuery_options_expandRoles,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAnalyzeIamPolicyResponse(response);
      })));
    });

    unittest.test("method--analyzeIamPolicyLongrunning", () {
      var mock = new HttpServerMock();
      api.V1ResourceApi res = new api.CloudassetApi(mock).v1;
      var arg_request = buildAnalyzeIamPolicyLongrunningRequest();
      var arg_scope = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.AnalyzeIamPolicyLongrunningRequest.fromJson(json);
        checkAnalyzeIamPolicyLongrunningRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
          .analyzeIamPolicyLongrunning(arg_request, arg_scope,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--batchGetAssetsHistory", () {
      var mock = new HttpServerMock();
      api.V1ResourceApi res = new api.CloudassetApi(mock).v1;
      var arg_parent = "foo";
      var arg_assetNames = buildUnnamed3523();
      var arg_contentType = "foo";
      var arg_readTimeWindow_startTime = "foo";
      var arg_readTimeWindow_endTime = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
            queryMap["assetNames"], unittest.equals(arg_assetNames));
        unittest.expect(
            queryMap["contentType"].first, unittest.equals(arg_contentType));
        unittest.expect(queryMap["readTimeWindow.startTime"].first,
            unittest.equals(arg_readTimeWindow_startTime));
        unittest.expect(queryMap["readTimeWindow.endTime"].first,
            unittest.equals(arg_readTimeWindow_endTime));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildBatchGetAssetsHistoryResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .batchGetAssetsHistory(arg_parent,
              assetNames: arg_assetNames,
              contentType: arg_contentType,
              readTimeWindow_startTime: arg_readTimeWindow_startTime,
              readTimeWindow_endTime: arg_readTimeWindow_endTime,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBatchGetAssetsHistoryResponse(response);
      })));
    });

    unittest.test("method--exportAssets", () {
      var mock = new HttpServerMock();
      api.V1ResourceApi res = new api.CloudassetApi(mock).v1;
      var arg_request = buildExportAssetsRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ExportAssetsRequest.fromJson(json);
        checkExportAssetsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
          .exportAssets(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--searchAllIamPolicies", () {
      var mock = new HttpServerMock();
      api.V1ResourceApi res = new api.CloudassetApi(mock).v1;
      var arg_scope = "foo";
      var arg_query = "foo";
      var arg_pageSize = 42;
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
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
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
        unittest.expect(queryMap["query"].first, unittest.equals(arg_query));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSearchAllIamPoliciesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .searchAllIamPolicies(arg_scope,
              query: arg_query,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSearchAllIamPoliciesResponse(response);
      })));
    });

    unittest.test("method--searchAllResources", () {
      var mock = new HttpServerMock();
      api.V1ResourceApi res = new api.CloudassetApi(mock).v1;
      var arg_scope = "foo";
      var arg_pageToken = "foo";
      var arg_query = "foo";
      var arg_pageSize = 42;
      var arg_orderBy = "foo";
      var arg_assetTypes = buildUnnamed3524();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["query"].first, unittest.equals(arg_query));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["assetTypes"], unittest.equals(arg_assetTypes));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSearchAllResourcesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .searchAllResources(arg_scope,
              pageToken: arg_pageToken,
              query: arg_query,
              pageSize: arg_pageSize,
              orderBy: arg_orderBy,
              assetTypes: arg_assetTypes,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSearchAllResourcesResponse(response);
      })));
    });
  });
}
