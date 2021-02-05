// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: avoid_returning_null
// ignore_for_file: cascade_invocations
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;
import 'package:googleapis/bigtableadmin/v2.dart' as api;

import '../test_shared.dart';

core.int buildCounterAppProfile = 0;
api.AppProfile buildAppProfile() {
  var o = api.AppProfile();
  buildCounterAppProfile++;
  if (buildCounterAppProfile < 3) {
    o.description = 'foo';
    o.etag = 'foo';
    o.multiClusterRoutingUseAny = buildMultiClusterRoutingUseAny();
    o.name = 'foo';
    o.singleClusterRouting = buildSingleClusterRouting();
  }
  buildCounterAppProfile--;
  return o;
}

void checkAppProfile(api.AppProfile o) {
  buildCounterAppProfile++;
  if (buildCounterAppProfile < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    checkMultiClusterRoutingUseAny(
        o.multiClusterRoutingUseAny as api.MultiClusterRoutingUseAny);
    unittest.expect(o.name, unittest.equals('foo'));
    checkSingleClusterRouting(
        o.singleClusterRouting as api.SingleClusterRouting);
  }
  buildCounterAppProfile--;
}

core.List<api.AuditLogConfig> buildUnnamed1313() {
  var o = <api.AuditLogConfig>[];
  o.add(buildAuditLogConfig());
  o.add(buildAuditLogConfig());
  return o;
}

void checkUnnamed1313(core.List<api.AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditLogConfig(o[0] as api.AuditLogConfig);
  checkAuditLogConfig(o[1] as api.AuditLogConfig);
}

core.int buildCounterAuditConfig = 0;
api.AuditConfig buildAuditConfig() {
  var o = api.AuditConfig();
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed1313();
    o.service = 'foo';
  }
  buildCounterAuditConfig--;
  return o;
}

void checkAuditConfig(api.AuditConfig o) {
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    checkUnnamed1313(o.auditLogConfigs);
    unittest.expect(o.service, unittest.equals('foo'));
  }
  buildCounterAuditConfig--;
}

core.List<core.String> buildUnnamed1314() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1314(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAuditLogConfig = 0;
api.AuditLogConfig buildAuditLogConfig() {
  var o = api.AuditLogConfig();
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    o.exemptedMembers = buildUnnamed1314();
    o.logType = 'foo';
  }
  buildCounterAuditLogConfig--;
  return o;
}

void checkAuditLogConfig(api.AuditLogConfig o) {
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    checkUnnamed1314(o.exemptedMembers);
    unittest.expect(o.logType, unittest.equals('foo'));
  }
  buildCounterAuditLogConfig--;
}

core.int buildCounterBackup = 0;
api.Backup buildBackup() {
  var o = api.Backup();
  buildCounterBackup++;
  if (buildCounterBackup < 3) {
    o.endTime = 'foo';
    o.expireTime = 'foo';
    o.name = 'foo';
    o.sizeBytes = 'foo';
    o.sourceTable = 'foo';
    o.startTime = 'foo';
    o.state = 'foo';
  }
  buildCounterBackup--;
  return o;
}

void checkBackup(api.Backup o) {
  buildCounterBackup++;
  if (buildCounterBackup < 3) {
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.expireTime, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.sizeBytes, unittest.equals('foo'));
    unittest.expect(o.sourceTable, unittest.equals('foo'));
    unittest.expect(o.startTime, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
  }
  buildCounterBackup--;
}

core.int buildCounterBackupInfo = 0;
api.BackupInfo buildBackupInfo() {
  var o = api.BackupInfo();
  buildCounterBackupInfo++;
  if (buildCounterBackupInfo < 3) {
    o.backup = 'foo';
    o.endTime = 'foo';
    o.sourceTable = 'foo';
    o.startTime = 'foo';
  }
  buildCounterBackupInfo--;
  return o;
}

void checkBackupInfo(api.BackupInfo o) {
  buildCounterBackupInfo++;
  if (buildCounterBackupInfo < 3) {
    unittest.expect(o.backup, unittest.equals('foo'));
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.sourceTable, unittest.equals('foo'));
    unittest.expect(o.startTime, unittest.equals('foo'));
  }
  buildCounterBackupInfo--;
}

core.List<core.String> buildUnnamed1315() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1315(core.List<core.String> o) {
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
    o.members = buildUnnamed1315();
    o.role = 'foo';
  }
  buildCounterBinding--;
  return o;
}

void checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition as api.Expr);
    checkUnnamed1315(o.members);
    unittest.expect(o.role, unittest.equals('foo'));
  }
  buildCounterBinding--;
}

core.int buildCounterCheckConsistencyRequest = 0;
api.CheckConsistencyRequest buildCheckConsistencyRequest() {
  var o = api.CheckConsistencyRequest();
  buildCounterCheckConsistencyRequest++;
  if (buildCounterCheckConsistencyRequest < 3) {
    o.consistencyToken = 'foo';
  }
  buildCounterCheckConsistencyRequest--;
  return o;
}

void checkCheckConsistencyRequest(api.CheckConsistencyRequest o) {
  buildCounterCheckConsistencyRequest++;
  if (buildCounterCheckConsistencyRequest < 3) {
    unittest.expect(o.consistencyToken, unittest.equals('foo'));
  }
  buildCounterCheckConsistencyRequest--;
}

core.int buildCounterCheckConsistencyResponse = 0;
api.CheckConsistencyResponse buildCheckConsistencyResponse() {
  var o = api.CheckConsistencyResponse();
  buildCounterCheckConsistencyResponse++;
  if (buildCounterCheckConsistencyResponse < 3) {
    o.consistent = true;
  }
  buildCounterCheckConsistencyResponse--;
  return o;
}

void checkCheckConsistencyResponse(api.CheckConsistencyResponse o) {
  buildCounterCheckConsistencyResponse++;
  if (buildCounterCheckConsistencyResponse < 3) {
    unittest.expect(o.consistent, unittest.isTrue);
  }
  buildCounterCheckConsistencyResponse--;
}

core.int buildCounterCluster = 0;
api.Cluster buildCluster() {
  var o = api.Cluster();
  buildCounterCluster++;
  if (buildCounterCluster < 3) {
    o.defaultStorageType = 'foo';
    o.location = 'foo';
    o.name = 'foo';
    o.serveNodes = 42;
    o.state = 'foo';
  }
  buildCounterCluster--;
  return o;
}

void checkCluster(api.Cluster o) {
  buildCounterCluster++;
  if (buildCounterCluster < 3) {
    unittest.expect(o.defaultStorageType, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.serveNodes, unittest.equals(42));
    unittest.expect(o.state, unittest.equals('foo'));
  }
  buildCounterCluster--;
}

core.int buildCounterClusterState = 0;
api.ClusterState buildClusterState() {
  var o = api.ClusterState();
  buildCounterClusterState++;
  if (buildCounterClusterState < 3) {
    o.replicationState = 'foo';
  }
  buildCounterClusterState--;
  return o;
}

void checkClusterState(api.ClusterState o) {
  buildCounterClusterState++;
  if (buildCounterClusterState < 3) {
    unittest.expect(o.replicationState, unittest.equals('foo'));
  }
  buildCounterClusterState--;
}

core.int buildCounterColumnFamily = 0;
api.ColumnFamily buildColumnFamily() {
  var o = api.ColumnFamily();
  buildCounterColumnFamily++;
  if (buildCounterColumnFamily < 3) {
    o.gcRule = buildGcRule();
  }
  buildCounterColumnFamily--;
  return o;
}

void checkColumnFamily(api.ColumnFamily o) {
  buildCounterColumnFamily++;
  if (buildCounterColumnFamily < 3) {
    checkGcRule(o.gcRule as api.GcRule);
  }
  buildCounterColumnFamily--;
}

core.int buildCounterCreateBackupMetadata = 0;
api.CreateBackupMetadata buildCreateBackupMetadata() {
  var o = api.CreateBackupMetadata();
  buildCounterCreateBackupMetadata++;
  if (buildCounterCreateBackupMetadata < 3) {
    o.endTime = 'foo';
    o.name = 'foo';
    o.sourceTable = 'foo';
    o.startTime = 'foo';
  }
  buildCounterCreateBackupMetadata--;
  return o;
}

void checkCreateBackupMetadata(api.CreateBackupMetadata o) {
  buildCounterCreateBackupMetadata++;
  if (buildCounterCreateBackupMetadata < 3) {
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.sourceTable, unittest.equals('foo'));
    unittest.expect(o.startTime, unittest.equals('foo'));
  }
  buildCounterCreateBackupMetadata--;
}

core.Map<core.String, api.TableProgress> buildUnnamed1316() {
  var o = <core.String, api.TableProgress>{};
  o['x'] = buildTableProgress();
  o['y'] = buildTableProgress();
  return o;
}

void checkUnnamed1316(core.Map<core.String, api.TableProgress> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTableProgress(o['x'] as api.TableProgress);
  checkTableProgress(o['y'] as api.TableProgress);
}

core.int buildCounterCreateClusterMetadata = 0;
api.CreateClusterMetadata buildCreateClusterMetadata() {
  var o = api.CreateClusterMetadata();
  buildCounterCreateClusterMetadata++;
  if (buildCounterCreateClusterMetadata < 3) {
    o.finishTime = 'foo';
    o.originalRequest = buildCreateClusterRequest();
    o.requestTime = 'foo';
    o.tables = buildUnnamed1316();
  }
  buildCounterCreateClusterMetadata--;
  return o;
}

void checkCreateClusterMetadata(api.CreateClusterMetadata o) {
  buildCounterCreateClusterMetadata++;
  if (buildCounterCreateClusterMetadata < 3) {
    unittest.expect(o.finishTime, unittest.equals('foo'));
    checkCreateClusterRequest(o.originalRequest as api.CreateClusterRequest);
    unittest.expect(o.requestTime, unittest.equals('foo'));
    checkUnnamed1316(o.tables);
  }
  buildCounterCreateClusterMetadata--;
}

core.int buildCounterCreateClusterRequest = 0;
api.CreateClusterRequest buildCreateClusterRequest() {
  var o = api.CreateClusterRequest();
  buildCounterCreateClusterRequest++;
  if (buildCounterCreateClusterRequest < 3) {
    o.cluster = buildCluster();
    o.clusterId = 'foo';
    o.parent = 'foo';
  }
  buildCounterCreateClusterRequest--;
  return o;
}

void checkCreateClusterRequest(api.CreateClusterRequest o) {
  buildCounterCreateClusterRequest++;
  if (buildCounterCreateClusterRequest < 3) {
    checkCluster(o.cluster as api.Cluster);
    unittest.expect(o.clusterId, unittest.equals('foo'));
    unittest.expect(o.parent, unittest.equals('foo'));
  }
  buildCounterCreateClusterRequest--;
}

core.int buildCounterCreateInstanceMetadata = 0;
api.CreateInstanceMetadata buildCreateInstanceMetadata() {
  var o = api.CreateInstanceMetadata();
  buildCounterCreateInstanceMetadata++;
  if (buildCounterCreateInstanceMetadata < 3) {
    o.finishTime = 'foo';
    o.originalRequest = buildCreateInstanceRequest();
    o.requestTime = 'foo';
  }
  buildCounterCreateInstanceMetadata--;
  return o;
}

void checkCreateInstanceMetadata(api.CreateInstanceMetadata o) {
  buildCounterCreateInstanceMetadata++;
  if (buildCounterCreateInstanceMetadata < 3) {
    unittest.expect(o.finishTime, unittest.equals('foo'));
    checkCreateInstanceRequest(o.originalRequest as api.CreateInstanceRequest);
    unittest.expect(o.requestTime, unittest.equals('foo'));
  }
  buildCounterCreateInstanceMetadata--;
}

core.Map<core.String, api.Cluster> buildUnnamed1317() {
  var o = <core.String, api.Cluster>{};
  o['x'] = buildCluster();
  o['y'] = buildCluster();
  return o;
}

void checkUnnamed1317(core.Map<core.String, api.Cluster> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCluster(o['x'] as api.Cluster);
  checkCluster(o['y'] as api.Cluster);
}

core.int buildCounterCreateInstanceRequest = 0;
api.CreateInstanceRequest buildCreateInstanceRequest() {
  var o = api.CreateInstanceRequest();
  buildCounterCreateInstanceRequest++;
  if (buildCounterCreateInstanceRequest < 3) {
    o.clusters = buildUnnamed1317();
    o.instance = buildInstance();
    o.instanceId = 'foo';
    o.parent = 'foo';
  }
  buildCounterCreateInstanceRequest--;
  return o;
}

void checkCreateInstanceRequest(api.CreateInstanceRequest o) {
  buildCounterCreateInstanceRequest++;
  if (buildCounterCreateInstanceRequest < 3) {
    checkUnnamed1317(o.clusters);
    checkInstance(o.instance as api.Instance);
    unittest.expect(o.instanceId, unittest.equals('foo'));
    unittest.expect(o.parent, unittest.equals('foo'));
  }
  buildCounterCreateInstanceRequest--;
}

core.List<api.Split> buildUnnamed1318() {
  var o = <api.Split>[];
  o.add(buildSplit());
  o.add(buildSplit());
  return o;
}

void checkUnnamed1318(core.List<api.Split> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSplit(o[0] as api.Split);
  checkSplit(o[1] as api.Split);
}

core.int buildCounterCreateTableRequest = 0;
api.CreateTableRequest buildCreateTableRequest() {
  var o = api.CreateTableRequest();
  buildCounterCreateTableRequest++;
  if (buildCounterCreateTableRequest < 3) {
    o.initialSplits = buildUnnamed1318();
    o.table = buildTable();
    o.tableId = 'foo';
  }
  buildCounterCreateTableRequest--;
  return o;
}

void checkCreateTableRequest(api.CreateTableRequest o) {
  buildCounterCreateTableRequest++;
  if (buildCounterCreateTableRequest < 3) {
    checkUnnamed1318(o.initialSplits);
    checkTable(o.table as api.Table);
    unittest.expect(o.tableId, unittest.equals('foo'));
  }
  buildCounterCreateTableRequest--;
}

core.int buildCounterDropRowRangeRequest = 0;
api.DropRowRangeRequest buildDropRowRangeRequest() {
  var o = api.DropRowRangeRequest();
  buildCounterDropRowRangeRequest++;
  if (buildCounterDropRowRangeRequest < 3) {
    o.deleteAllDataFromTable = true;
    o.rowKeyPrefix = 'foo';
  }
  buildCounterDropRowRangeRequest--;
  return o;
}

void checkDropRowRangeRequest(api.DropRowRangeRequest o) {
  buildCounterDropRowRangeRequest++;
  if (buildCounterDropRowRangeRequest < 3) {
    unittest.expect(o.deleteAllDataFromTable, unittest.isTrue);
    unittest.expect(o.rowKeyPrefix, unittest.equals('foo'));
  }
  buildCounterDropRowRangeRequest--;
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

core.List<api.Frame> buildUnnamed1319() {
  var o = <api.Frame>[];
  o.add(buildFrame());
  o.add(buildFrame());
  return o;
}

void checkUnnamed1319(core.List<api.Frame> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFrame(o[0] as api.Frame);
  checkFrame(o[1] as api.Frame);
}

core.int buildCounterFailureTrace = 0;
api.FailureTrace buildFailureTrace() {
  var o = api.FailureTrace();
  buildCounterFailureTrace++;
  if (buildCounterFailureTrace < 3) {
    o.frames = buildUnnamed1319();
  }
  buildCounterFailureTrace--;
  return o;
}

void checkFailureTrace(api.FailureTrace o) {
  buildCounterFailureTrace++;
  if (buildCounterFailureTrace < 3) {
    checkUnnamed1319(o.frames);
  }
  buildCounterFailureTrace--;
}

core.int buildCounterFrame = 0;
api.Frame buildFrame() {
  var o = api.Frame();
  buildCounterFrame++;
  if (buildCounterFrame < 3) {
    o.targetName = 'foo';
    o.workflowGuid = 'foo';
    o.zoneId = 'foo';
  }
  buildCounterFrame--;
  return o;
}

void checkFrame(api.Frame o) {
  buildCounterFrame++;
  if (buildCounterFrame < 3) {
    unittest.expect(o.targetName, unittest.equals('foo'));
    unittest.expect(o.workflowGuid, unittest.equals('foo'));
    unittest.expect(o.zoneId, unittest.equals('foo'));
  }
  buildCounterFrame--;
}

core.int buildCounterGcRule = 0;
api.GcRule buildGcRule() {
  var o = api.GcRule();
  buildCounterGcRule++;
  if (buildCounterGcRule < 3) {
    o.intersection = buildIntersection();
    o.maxAge = 'foo';
    o.maxNumVersions = 42;
    o.union = buildUnion();
  }
  buildCounterGcRule--;
  return o;
}

void checkGcRule(api.GcRule o) {
  buildCounterGcRule++;
  if (buildCounterGcRule < 3) {
    checkIntersection(o.intersection as api.Intersection);
    unittest.expect(o.maxAge, unittest.equals('foo'));
    unittest.expect(o.maxNumVersions, unittest.equals(42));
    checkUnion(o.union as api.Union);
  }
  buildCounterGcRule--;
}

core.int buildCounterGenerateConsistencyTokenRequest = 0;
api.GenerateConsistencyTokenRequest buildGenerateConsistencyTokenRequest() {
  var o = api.GenerateConsistencyTokenRequest();
  buildCounterGenerateConsistencyTokenRequest++;
  if (buildCounterGenerateConsistencyTokenRequest < 3) {}
  buildCounterGenerateConsistencyTokenRequest--;
  return o;
}

void checkGenerateConsistencyTokenRequest(
    api.GenerateConsistencyTokenRequest o) {
  buildCounterGenerateConsistencyTokenRequest++;
  if (buildCounterGenerateConsistencyTokenRequest < 3) {}
  buildCounterGenerateConsistencyTokenRequest--;
}

core.int buildCounterGenerateConsistencyTokenResponse = 0;
api.GenerateConsistencyTokenResponse buildGenerateConsistencyTokenResponse() {
  var o = api.GenerateConsistencyTokenResponse();
  buildCounterGenerateConsistencyTokenResponse++;
  if (buildCounterGenerateConsistencyTokenResponse < 3) {
    o.consistencyToken = 'foo';
  }
  buildCounterGenerateConsistencyTokenResponse--;
  return o;
}

void checkGenerateConsistencyTokenResponse(
    api.GenerateConsistencyTokenResponse o) {
  buildCounterGenerateConsistencyTokenResponse++;
  if (buildCounterGenerateConsistencyTokenResponse < 3) {
    unittest.expect(o.consistencyToken, unittest.equals('foo'));
  }
  buildCounterGenerateConsistencyTokenResponse--;
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
    checkGetPolicyOptions(o.options as api.GetPolicyOptions);
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

core.Map<core.String, core.String> buildUnnamed1320() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed1320(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterInstance = 0;
api.Instance buildInstance() {
  var o = api.Instance();
  buildCounterInstance++;
  if (buildCounterInstance < 3) {
    o.displayName = 'foo';
    o.labels = buildUnnamed1320();
    o.name = 'foo';
    o.state = 'foo';
    o.type = 'foo';
  }
  buildCounterInstance--;
  return o;
}

void checkInstance(api.Instance o) {
  buildCounterInstance++;
  if (buildCounterInstance < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed1320(o.labels);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterInstance--;
}

core.List<api.GcRule> buildUnnamed1321() {
  var o = <api.GcRule>[];
  o.add(buildGcRule());
  o.add(buildGcRule());
  return o;
}

void checkUnnamed1321(core.List<api.GcRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGcRule(o[0] as api.GcRule);
  checkGcRule(o[1] as api.GcRule);
}

core.int buildCounterIntersection = 0;
api.Intersection buildIntersection() {
  var o = api.Intersection();
  buildCounterIntersection++;
  if (buildCounterIntersection < 3) {
    o.rules = buildUnnamed1321();
  }
  buildCounterIntersection--;
  return o;
}

void checkIntersection(api.Intersection o) {
  buildCounterIntersection++;
  if (buildCounterIntersection < 3) {
    checkUnnamed1321(o.rules);
  }
  buildCounterIntersection--;
}

core.List<api.AppProfile> buildUnnamed1322() {
  var o = <api.AppProfile>[];
  o.add(buildAppProfile());
  o.add(buildAppProfile());
  return o;
}

void checkUnnamed1322(core.List<api.AppProfile> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAppProfile(o[0] as api.AppProfile);
  checkAppProfile(o[1] as api.AppProfile);
}

core.List<core.String> buildUnnamed1323() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1323(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListAppProfilesResponse = 0;
api.ListAppProfilesResponse buildListAppProfilesResponse() {
  var o = api.ListAppProfilesResponse();
  buildCounterListAppProfilesResponse++;
  if (buildCounterListAppProfilesResponse < 3) {
    o.appProfiles = buildUnnamed1322();
    o.failedLocations = buildUnnamed1323();
    o.nextPageToken = 'foo';
  }
  buildCounterListAppProfilesResponse--;
  return o;
}

void checkListAppProfilesResponse(api.ListAppProfilesResponse o) {
  buildCounterListAppProfilesResponse++;
  if (buildCounterListAppProfilesResponse < 3) {
    checkUnnamed1322(o.appProfiles);
    checkUnnamed1323(o.failedLocations);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListAppProfilesResponse--;
}

core.List<api.Backup> buildUnnamed1324() {
  var o = <api.Backup>[];
  o.add(buildBackup());
  o.add(buildBackup());
  return o;
}

void checkUnnamed1324(core.List<api.Backup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBackup(o[0] as api.Backup);
  checkBackup(o[1] as api.Backup);
}

core.int buildCounterListBackupsResponse = 0;
api.ListBackupsResponse buildListBackupsResponse() {
  var o = api.ListBackupsResponse();
  buildCounterListBackupsResponse++;
  if (buildCounterListBackupsResponse < 3) {
    o.backups = buildUnnamed1324();
    o.nextPageToken = 'foo';
  }
  buildCounterListBackupsResponse--;
  return o;
}

void checkListBackupsResponse(api.ListBackupsResponse o) {
  buildCounterListBackupsResponse++;
  if (buildCounterListBackupsResponse < 3) {
    checkUnnamed1324(o.backups);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListBackupsResponse--;
}

core.List<api.Cluster> buildUnnamed1325() {
  var o = <api.Cluster>[];
  o.add(buildCluster());
  o.add(buildCluster());
  return o;
}

void checkUnnamed1325(core.List<api.Cluster> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCluster(o[0] as api.Cluster);
  checkCluster(o[1] as api.Cluster);
}

core.List<core.String> buildUnnamed1326() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1326(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListClustersResponse = 0;
api.ListClustersResponse buildListClustersResponse() {
  var o = api.ListClustersResponse();
  buildCounterListClustersResponse++;
  if (buildCounterListClustersResponse < 3) {
    o.clusters = buildUnnamed1325();
    o.failedLocations = buildUnnamed1326();
    o.nextPageToken = 'foo';
  }
  buildCounterListClustersResponse--;
  return o;
}

void checkListClustersResponse(api.ListClustersResponse o) {
  buildCounterListClustersResponse++;
  if (buildCounterListClustersResponse < 3) {
    checkUnnamed1325(o.clusters);
    checkUnnamed1326(o.failedLocations);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListClustersResponse--;
}

core.List<core.String> buildUnnamed1327() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1327(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.Instance> buildUnnamed1328() {
  var o = <api.Instance>[];
  o.add(buildInstance());
  o.add(buildInstance());
  return o;
}

void checkUnnamed1328(core.List<api.Instance> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInstance(o[0] as api.Instance);
  checkInstance(o[1] as api.Instance);
}

core.int buildCounterListInstancesResponse = 0;
api.ListInstancesResponse buildListInstancesResponse() {
  var o = api.ListInstancesResponse();
  buildCounterListInstancesResponse++;
  if (buildCounterListInstancesResponse < 3) {
    o.failedLocations = buildUnnamed1327();
    o.instances = buildUnnamed1328();
    o.nextPageToken = 'foo';
  }
  buildCounterListInstancesResponse--;
  return o;
}

void checkListInstancesResponse(api.ListInstancesResponse o) {
  buildCounterListInstancesResponse++;
  if (buildCounterListInstancesResponse < 3) {
    checkUnnamed1327(o.failedLocations);
    checkUnnamed1328(o.instances);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListInstancesResponse--;
}

core.List<api.Location> buildUnnamed1329() {
  var o = <api.Location>[];
  o.add(buildLocation());
  o.add(buildLocation());
  return o;
}

void checkUnnamed1329(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0] as api.Location);
  checkLocation(o[1] as api.Location);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  var o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed1329();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed1329(o.locations);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListLocationsResponse--;
}

core.List<api.Operation> buildUnnamed1330() {
  var o = <api.Operation>[];
  o.add(buildOperation());
  o.add(buildOperation());
  return o;
}

void checkUnnamed1330(core.List<api.Operation> o) {
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
    o.operations = buildUnnamed1330();
  }
  buildCounterListOperationsResponse--;
  return o;
}

void checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed1330(o.operations);
  }
  buildCounterListOperationsResponse--;
}

core.List<api.Table> buildUnnamed1331() {
  var o = <api.Table>[];
  o.add(buildTable());
  o.add(buildTable());
  return o;
}

void checkUnnamed1331(core.List<api.Table> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTable(o[0] as api.Table);
  checkTable(o[1] as api.Table);
}

core.int buildCounterListTablesResponse = 0;
api.ListTablesResponse buildListTablesResponse() {
  var o = api.ListTablesResponse();
  buildCounterListTablesResponse++;
  if (buildCounterListTablesResponse < 3) {
    o.nextPageToken = 'foo';
    o.tables = buildUnnamed1331();
  }
  buildCounterListTablesResponse--;
  return o;
}

void checkListTablesResponse(api.ListTablesResponse o) {
  buildCounterListTablesResponse++;
  if (buildCounterListTablesResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed1331(o.tables);
  }
  buildCounterListTablesResponse--;
}

core.Map<core.String, core.String> buildUnnamed1332() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed1332(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.Map<core.String, core.Object> buildUnnamed1333() {
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

void checkUnnamed1333(core.Map<core.String, core.Object> o) {
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
    o.labels = buildUnnamed1332();
    o.locationId = 'foo';
    o.metadata = buildUnnamed1333();
    o.name = 'foo';
  }
  buildCounterLocation--;
  return o;
}

void checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed1332(o.labels);
    unittest.expect(o.locationId, unittest.equals('foo'));
    checkUnnamed1333(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterLocation--;
}

core.int buildCounterModification = 0;
api.Modification buildModification() {
  var o = api.Modification();
  buildCounterModification++;
  if (buildCounterModification < 3) {
    o.create = buildColumnFamily();
    o.drop = true;
    o.id = 'foo';
    o.update = buildColumnFamily();
  }
  buildCounterModification--;
  return o;
}

void checkModification(api.Modification o) {
  buildCounterModification++;
  if (buildCounterModification < 3) {
    checkColumnFamily(o.create as api.ColumnFamily);
    unittest.expect(o.drop, unittest.isTrue);
    unittest.expect(o.id, unittest.equals('foo'));
    checkColumnFamily(o.update as api.ColumnFamily);
  }
  buildCounterModification--;
}

core.List<api.Modification> buildUnnamed1334() {
  var o = <api.Modification>[];
  o.add(buildModification());
  o.add(buildModification());
  return o;
}

void checkUnnamed1334(core.List<api.Modification> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkModification(o[0] as api.Modification);
  checkModification(o[1] as api.Modification);
}

core.int buildCounterModifyColumnFamiliesRequest = 0;
api.ModifyColumnFamiliesRequest buildModifyColumnFamiliesRequest() {
  var o = api.ModifyColumnFamiliesRequest();
  buildCounterModifyColumnFamiliesRequest++;
  if (buildCounterModifyColumnFamiliesRequest < 3) {
    o.modifications = buildUnnamed1334();
  }
  buildCounterModifyColumnFamiliesRequest--;
  return o;
}

void checkModifyColumnFamiliesRequest(api.ModifyColumnFamiliesRequest o) {
  buildCounterModifyColumnFamiliesRequest++;
  if (buildCounterModifyColumnFamiliesRequest < 3) {
    checkUnnamed1334(o.modifications);
  }
  buildCounterModifyColumnFamiliesRequest--;
}

core.int buildCounterMultiClusterRoutingUseAny = 0;
api.MultiClusterRoutingUseAny buildMultiClusterRoutingUseAny() {
  var o = api.MultiClusterRoutingUseAny();
  buildCounterMultiClusterRoutingUseAny++;
  if (buildCounterMultiClusterRoutingUseAny < 3) {}
  buildCounterMultiClusterRoutingUseAny--;
  return o;
}

void checkMultiClusterRoutingUseAny(api.MultiClusterRoutingUseAny o) {
  buildCounterMultiClusterRoutingUseAny++;
  if (buildCounterMultiClusterRoutingUseAny < 3) {}
  buildCounterMultiClusterRoutingUseAny--;
}

core.Map<core.String, core.Object> buildUnnamed1335() {
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

void checkUnnamed1335(core.Map<core.String, core.Object> o) {
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

core.Map<core.String, core.Object> buildUnnamed1336() {
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

void checkUnnamed1336(core.Map<core.String, core.Object> o) {
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
    o.metadata = buildUnnamed1335();
    o.name = 'foo';
    o.response = buildUnnamed1336();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkStatus(o.error as api.Status);
    checkUnnamed1335(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed1336(o.response);
  }
  buildCounterOperation--;
}

core.int buildCounterOperationProgress = 0;
api.OperationProgress buildOperationProgress() {
  var o = api.OperationProgress();
  buildCounterOperationProgress++;
  if (buildCounterOperationProgress < 3) {
    o.endTime = 'foo';
    o.progressPercent = 42;
    o.startTime = 'foo';
  }
  buildCounterOperationProgress--;
  return o;
}

void checkOperationProgress(api.OperationProgress o) {
  buildCounterOperationProgress++;
  if (buildCounterOperationProgress < 3) {
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.progressPercent, unittest.equals(42));
    unittest.expect(o.startTime, unittest.equals('foo'));
  }
  buildCounterOperationProgress--;
}

core.int buildCounterOptimizeRestoredTableMetadata = 0;
api.OptimizeRestoredTableMetadata buildOptimizeRestoredTableMetadata() {
  var o = api.OptimizeRestoredTableMetadata();
  buildCounterOptimizeRestoredTableMetadata++;
  if (buildCounterOptimizeRestoredTableMetadata < 3) {
    o.name = 'foo';
    o.progress = buildOperationProgress();
  }
  buildCounterOptimizeRestoredTableMetadata--;
  return o;
}

void checkOptimizeRestoredTableMetadata(api.OptimizeRestoredTableMetadata o) {
  buildCounterOptimizeRestoredTableMetadata++;
  if (buildCounterOptimizeRestoredTableMetadata < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    checkOperationProgress(o.progress as api.OperationProgress);
  }
  buildCounterOptimizeRestoredTableMetadata--;
}

core.int buildCounterPartialUpdateInstanceRequest = 0;
api.PartialUpdateInstanceRequest buildPartialUpdateInstanceRequest() {
  var o = api.PartialUpdateInstanceRequest();
  buildCounterPartialUpdateInstanceRequest++;
  if (buildCounterPartialUpdateInstanceRequest < 3) {
    o.instance = buildInstance();
    o.updateMask = 'foo';
  }
  buildCounterPartialUpdateInstanceRequest--;
  return o;
}

void checkPartialUpdateInstanceRequest(api.PartialUpdateInstanceRequest o) {
  buildCounterPartialUpdateInstanceRequest++;
  if (buildCounterPartialUpdateInstanceRequest < 3) {
    checkInstance(o.instance as api.Instance);
    unittest.expect(o.updateMask, unittest.equals('foo'));
  }
  buildCounterPartialUpdateInstanceRequest--;
}

core.List<api.AuditConfig> buildUnnamed1337() {
  var o = <api.AuditConfig>[];
  o.add(buildAuditConfig());
  o.add(buildAuditConfig());
  return o;
}

void checkUnnamed1337(core.List<api.AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditConfig(o[0] as api.AuditConfig);
  checkAuditConfig(o[1] as api.AuditConfig);
}

core.List<api.Binding> buildUnnamed1338() {
  var o = <api.Binding>[];
  o.add(buildBinding());
  o.add(buildBinding());
  return o;
}

void checkUnnamed1338(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0] as api.Binding);
  checkBinding(o[1] as api.Binding);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  var o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.auditConfigs = buildUnnamed1337();
    o.bindings = buildUnnamed1338();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed1337(o.auditConfigs);
    checkUnnamed1338(o.bindings);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals(42));
  }
  buildCounterPolicy--;
}

core.int buildCounterRestoreInfo = 0;
api.RestoreInfo buildRestoreInfo() {
  var o = api.RestoreInfo();
  buildCounterRestoreInfo++;
  if (buildCounterRestoreInfo < 3) {
    o.backupInfo = buildBackupInfo();
    o.sourceType = 'foo';
  }
  buildCounterRestoreInfo--;
  return o;
}

void checkRestoreInfo(api.RestoreInfo o) {
  buildCounterRestoreInfo++;
  if (buildCounterRestoreInfo < 3) {
    checkBackupInfo(o.backupInfo as api.BackupInfo);
    unittest.expect(o.sourceType, unittest.equals('foo'));
  }
  buildCounterRestoreInfo--;
}

core.int buildCounterRestoreTableMetadata = 0;
api.RestoreTableMetadata buildRestoreTableMetadata() {
  var o = api.RestoreTableMetadata();
  buildCounterRestoreTableMetadata++;
  if (buildCounterRestoreTableMetadata < 3) {
    o.backupInfo = buildBackupInfo();
    o.name = 'foo';
    o.optimizeTableOperationName = 'foo';
    o.progress = buildOperationProgress();
    o.sourceType = 'foo';
  }
  buildCounterRestoreTableMetadata--;
  return o;
}

void checkRestoreTableMetadata(api.RestoreTableMetadata o) {
  buildCounterRestoreTableMetadata++;
  if (buildCounterRestoreTableMetadata < 3) {
    checkBackupInfo(o.backupInfo as api.BackupInfo);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.optimizeTableOperationName, unittest.equals('foo'));
    checkOperationProgress(o.progress as api.OperationProgress);
    unittest.expect(o.sourceType, unittest.equals('foo'));
  }
  buildCounterRestoreTableMetadata--;
}

core.int buildCounterRestoreTableRequest = 0;
api.RestoreTableRequest buildRestoreTableRequest() {
  var o = api.RestoreTableRequest();
  buildCounterRestoreTableRequest++;
  if (buildCounterRestoreTableRequest < 3) {
    o.backup = 'foo';
    o.tableId = 'foo';
  }
  buildCounterRestoreTableRequest--;
  return o;
}

void checkRestoreTableRequest(api.RestoreTableRequest o) {
  buildCounterRestoreTableRequest++;
  if (buildCounterRestoreTableRequest < 3) {
    unittest.expect(o.backup, unittest.equals('foo'));
    unittest.expect(o.tableId, unittest.equals('foo'));
  }
  buildCounterRestoreTableRequest--;
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

core.int buildCounterSingleClusterRouting = 0;
api.SingleClusterRouting buildSingleClusterRouting() {
  var o = api.SingleClusterRouting();
  buildCounterSingleClusterRouting++;
  if (buildCounterSingleClusterRouting < 3) {
    o.allowTransactionalWrites = true;
    o.clusterId = 'foo';
  }
  buildCounterSingleClusterRouting--;
  return o;
}

void checkSingleClusterRouting(api.SingleClusterRouting o) {
  buildCounterSingleClusterRouting++;
  if (buildCounterSingleClusterRouting < 3) {
    unittest.expect(o.allowTransactionalWrites, unittest.isTrue);
    unittest.expect(o.clusterId, unittest.equals('foo'));
  }
  buildCounterSingleClusterRouting--;
}

core.int buildCounterSplit = 0;
api.Split buildSplit() {
  var o = api.Split();
  buildCounterSplit++;
  if (buildCounterSplit < 3) {
    o.key = 'foo';
  }
  buildCounterSplit--;
  return o;
}

void checkSplit(api.Split o) {
  buildCounterSplit++;
  if (buildCounterSplit < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
  }
  buildCounterSplit--;
}

core.Map<core.String, core.Object> buildUnnamed1339() {
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

void checkUnnamed1339(core.Map<core.String, core.Object> o) {
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

core.List<core.Map<core.String, core.Object>> buildUnnamed1340() {
  var o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed1339());
  o.add(buildUnnamed1339());
  return o;
}

void checkUnnamed1340(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed1339(o[0]);
  checkUnnamed1339(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  var o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed1340();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed1340(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.Map<core.String, api.ClusterState> buildUnnamed1341() {
  var o = <core.String, api.ClusterState>{};
  o['x'] = buildClusterState();
  o['y'] = buildClusterState();
  return o;
}

void checkUnnamed1341(core.Map<core.String, api.ClusterState> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkClusterState(o['x'] as api.ClusterState);
  checkClusterState(o['y'] as api.ClusterState);
}

core.Map<core.String, api.ColumnFamily> buildUnnamed1342() {
  var o = <core.String, api.ColumnFamily>{};
  o['x'] = buildColumnFamily();
  o['y'] = buildColumnFamily();
  return o;
}

void checkUnnamed1342(core.Map<core.String, api.ColumnFamily> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkColumnFamily(o['x'] as api.ColumnFamily);
  checkColumnFamily(o['y'] as api.ColumnFamily);
}

core.int buildCounterTable = 0;
api.Table buildTable() {
  var o = api.Table();
  buildCounterTable++;
  if (buildCounterTable < 3) {
    o.clusterStates = buildUnnamed1341();
    o.columnFamilies = buildUnnamed1342();
    o.granularity = 'foo';
    o.name = 'foo';
    o.restoreInfo = buildRestoreInfo();
  }
  buildCounterTable--;
  return o;
}

void checkTable(api.Table o) {
  buildCounterTable++;
  if (buildCounterTable < 3) {
    checkUnnamed1341(o.clusterStates);
    checkUnnamed1342(o.columnFamilies);
    unittest.expect(o.granularity, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkRestoreInfo(o.restoreInfo as api.RestoreInfo);
  }
  buildCounterTable--;
}

core.int buildCounterTableProgress = 0;
api.TableProgress buildTableProgress() {
  var o = api.TableProgress();
  buildCounterTableProgress++;
  if (buildCounterTableProgress < 3) {
    o.estimatedCopiedBytes = 'foo';
    o.estimatedSizeBytes = 'foo';
    o.state = 'foo';
  }
  buildCounterTableProgress--;
  return o;
}

void checkTableProgress(api.TableProgress o) {
  buildCounterTableProgress++;
  if (buildCounterTableProgress < 3) {
    unittest.expect(o.estimatedCopiedBytes, unittest.equals('foo'));
    unittest.expect(o.estimatedSizeBytes, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
  }
  buildCounterTableProgress--;
}

core.List<core.String> buildUnnamed1343() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1343(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsRequest = 0;
api.TestIamPermissionsRequest buildTestIamPermissionsRequest() {
  var o = api.TestIamPermissionsRequest();
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed1343();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

void checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed1343(o.permissions);
  }
  buildCounterTestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed1344() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1344(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsResponse = 0;
api.TestIamPermissionsResponse buildTestIamPermissionsResponse() {
  var o = api.TestIamPermissionsResponse();
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed1344();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed1344(o.permissions);
  }
  buildCounterTestIamPermissionsResponse--;
}

core.List<api.GcRule> buildUnnamed1345() {
  var o = <api.GcRule>[];
  o.add(buildGcRule());
  o.add(buildGcRule());
  return o;
}

void checkUnnamed1345(core.List<api.GcRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGcRule(o[0] as api.GcRule);
  checkGcRule(o[1] as api.GcRule);
}

core.int buildCounterUnion = 0;
api.Union buildUnion() {
  var o = api.Union();
  buildCounterUnion++;
  if (buildCounterUnion < 3) {
    o.rules = buildUnnamed1345();
  }
  buildCounterUnion--;
  return o;
}

void checkUnion(api.Union o) {
  buildCounterUnion++;
  if (buildCounterUnion < 3) {
    checkUnnamed1345(o.rules);
  }
  buildCounterUnion--;
}

core.int buildCounterUpdateAppProfileMetadata = 0;
api.UpdateAppProfileMetadata buildUpdateAppProfileMetadata() {
  var o = api.UpdateAppProfileMetadata();
  buildCounterUpdateAppProfileMetadata++;
  if (buildCounterUpdateAppProfileMetadata < 3) {}
  buildCounterUpdateAppProfileMetadata--;
  return o;
}

void checkUpdateAppProfileMetadata(api.UpdateAppProfileMetadata o) {
  buildCounterUpdateAppProfileMetadata++;
  if (buildCounterUpdateAppProfileMetadata < 3) {}
  buildCounterUpdateAppProfileMetadata--;
}

core.int buildCounterUpdateClusterMetadata = 0;
api.UpdateClusterMetadata buildUpdateClusterMetadata() {
  var o = api.UpdateClusterMetadata();
  buildCounterUpdateClusterMetadata++;
  if (buildCounterUpdateClusterMetadata < 3) {
    o.finishTime = 'foo';
    o.originalRequest = buildCluster();
    o.requestTime = 'foo';
  }
  buildCounterUpdateClusterMetadata--;
  return o;
}

void checkUpdateClusterMetadata(api.UpdateClusterMetadata o) {
  buildCounterUpdateClusterMetadata++;
  if (buildCounterUpdateClusterMetadata < 3) {
    unittest.expect(o.finishTime, unittest.equals('foo'));
    checkCluster(o.originalRequest as api.Cluster);
    unittest.expect(o.requestTime, unittest.equals('foo'));
  }
  buildCounterUpdateClusterMetadata--;
}

core.int buildCounterUpdateInstanceMetadata = 0;
api.UpdateInstanceMetadata buildUpdateInstanceMetadata() {
  var o = api.UpdateInstanceMetadata();
  buildCounterUpdateInstanceMetadata++;
  if (buildCounterUpdateInstanceMetadata < 3) {
    o.finishTime = 'foo';
    o.originalRequest = buildPartialUpdateInstanceRequest();
    o.requestTime = 'foo';
  }
  buildCounterUpdateInstanceMetadata--;
  return o;
}

void checkUpdateInstanceMetadata(api.UpdateInstanceMetadata o) {
  buildCounterUpdateInstanceMetadata++;
  if (buildCounterUpdateInstanceMetadata < 3) {
    unittest.expect(o.finishTime, unittest.equals('foo'));
    checkPartialUpdateInstanceRequest(
        o.originalRequest as api.PartialUpdateInstanceRequest);
    unittest.expect(o.requestTime, unittest.equals('foo'));
  }
  buildCounterUpdateInstanceMetadata--;
}

void main() {
  unittest.group('obj-schema-AppProfile', () {
    unittest.test('to-json--from-json', () {
      var o = buildAppProfile();
      var od = api.AppProfile.fromJson(o.toJson());
      checkAppProfile(od as api.AppProfile);
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

  unittest.group('obj-schema-Backup', () {
    unittest.test('to-json--from-json', () {
      var o = buildBackup();
      var od = api.Backup.fromJson(o.toJson());
      checkBackup(od as api.Backup);
    });
  });

  unittest.group('obj-schema-BackupInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildBackupInfo();
      var od = api.BackupInfo.fromJson(o.toJson());
      checkBackupInfo(od as api.BackupInfo);
    });
  });

  unittest.group('obj-schema-Binding', () {
    unittest.test('to-json--from-json', () {
      var o = buildBinding();
      var od = api.Binding.fromJson(o.toJson());
      checkBinding(od as api.Binding);
    });
  });

  unittest.group('obj-schema-CheckConsistencyRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildCheckConsistencyRequest();
      var od = api.CheckConsistencyRequest.fromJson(o.toJson());
      checkCheckConsistencyRequest(od as api.CheckConsistencyRequest);
    });
  });

  unittest.group('obj-schema-CheckConsistencyResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildCheckConsistencyResponse();
      var od = api.CheckConsistencyResponse.fromJson(o.toJson());
      checkCheckConsistencyResponse(od as api.CheckConsistencyResponse);
    });
  });

  unittest.group('obj-schema-Cluster', () {
    unittest.test('to-json--from-json', () {
      var o = buildCluster();
      var od = api.Cluster.fromJson(o.toJson());
      checkCluster(od as api.Cluster);
    });
  });

  unittest.group('obj-schema-ClusterState', () {
    unittest.test('to-json--from-json', () {
      var o = buildClusterState();
      var od = api.ClusterState.fromJson(o.toJson());
      checkClusterState(od as api.ClusterState);
    });
  });

  unittest.group('obj-schema-ColumnFamily', () {
    unittest.test('to-json--from-json', () {
      var o = buildColumnFamily();
      var od = api.ColumnFamily.fromJson(o.toJson());
      checkColumnFamily(od as api.ColumnFamily);
    });
  });

  unittest.group('obj-schema-CreateBackupMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildCreateBackupMetadata();
      var od = api.CreateBackupMetadata.fromJson(o.toJson());
      checkCreateBackupMetadata(od as api.CreateBackupMetadata);
    });
  });

  unittest.group('obj-schema-CreateClusterMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildCreateClusterMetadata();
      var od = api.CreateClusterMetadata.fromJson(o.toJson());
      checkCreateClusterMetadata(od as api.CreateClusterMetadata);
    });
  });

  unittest.group('obj-schema-CreateClusterRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildCreateClusterRequest();
      var od = api.CreateClusterRequest.fromJson(o.toJson());
      checkCreateClusterRequest(od as api.CreateClusterRequest);
    });
  });

  unittest.group('obj-schema-CreateInstanceMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildCreateInstanceMetadata();
      var od = api.CreateInstanceMetadata.fromJson(o.toJson());
      checkCreateInstanceMetadata(od as api.CreateInstanceMetadata);
    });
  });

  unittest.group('obj-schema-CreateInstanceRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildCreateInstanceRequest();
      var od = api.CreateInstanceRequest.fromJson(o.toJson());
      checkCreateInstanceRequest(od as api.CreateInstanceRequest);
    });
  });

  unittest.group('obj-schema-CreateTableRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildCreateTableRequest();
      var od = api.CreateTableRequest.fromJson(o.toJson());
      checkCreateTableRequest(od as api.CreateTableRequest);
    });
  });

  unittest.group('obj-schema-DropRowRangeRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildDropRowRangeRequest();
      var od = api.DropRowRangeRequest.fromJson(o.toJson());
      checkDropRowRangeRequest(od as api.DropRowRangeRequest);
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

  unittest.group('obj-schema-FailureTrace', () {
    unittest.test('to-json--from-json', () {
      var o = buildFailureTrace();
      var od = api.FailureTrace.fromJson(o.toJson());
      checkFailureTrace(od as api.FailureTrace);
    });
  });

  unittest.group('obj-schema-Frame', () {
    unittest.test('to-json--from-json', () {
      var o = buildFrame();
      var od = api.Frame.fromJson(o.toJson());
      checkFrame(od as api.Frame);
    });
  });

  unittest.group('obj-schema-GcRule', () {
    unittest.test('to-json--from-json', () {
      var o = buildGcRule();
      var od = api.GcRule.fromJson(o.toJson());
      checkGcRule(od as api.GcRule);
    });
  });

  unittest.group('obj-schema-GenerateConsistencyTokenRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildGenerateConsistencyTokenRequest();
      var od = api.GenerateConsistencyTokenRequest.fromJson(o.toJson());
      checkGenerateConsistencyTokenRequest(
          od as api.GenerateConsistencyTokenRequest);
    });
  });

  unittest.group('obj-schema-GenerateConsistencyTokenResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGenerateConsistencyTokenResponse();
      var od = api.GenerateConsistencyTokenResponse.fromJson(o.toJson());
      checkGenerateConsistencyTokenResponse(
          od as api.GenerateConsistencyTokenResponse);
    });
  });

  unittest.group('obj-schema-GetIamPolicyRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildGetIamPolicyRequest();
      var od = api.GetIamPolicyRequest.fromJson(o.toJson());
      checkGetIamPolicyRequest(od as api.GetIamPolicyRequest);
    });
  });

  unittest.group('obj-schema-GetPolicyOptions', () {
    unittest.test('to-json--from-json', () {
      var o = buildGetPolicyOptions();
      var od = api.GetPolicyOptions.fromJson(o.toJson());
      checkGetPolicyOptions(od as api.GetPolicyOptions);
    });
  });

  unittest.group('obj-schema-Instance', () {
    unittest.test('to-json--from-json', () {
      var o = buildInstance();
      var od = api.Instance.fromJson(o.toJson());
      checkInstance(od as api.Instance);
    });
  });

  unittest.group('obj-schema-Intersection', () {
    unittest.test('to-json--from-json', () {
      var o = buildIntersection();
      var od = api.Intersection.fromJson(o.toJson());
      checkIntersection(od as api.Intersection);
    });
  });

  unittest.group('obj-schema-ListAppProfilesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListAppProfilesResponse();
      var od = api.ListAppProfilesResponse.fromJson(o.toJson());
      checkListAppProfilesResponse(od as api.ListAppProfilesResponse);
    });
  });

  unittest.group('obj-schema-ListBackupsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListBackupsResponse();
      var od = api.ListBackupsResponse.fromJson(o.toJson());
      checkListBackupsResponse(od as api.ListBackupsResponse);
    });
  });

  unittest.group('obj-schema-ListClustersResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListClustersResponse();
      var od = api.ListClustersResponse.fromJson(o.toJson());
      checkListClustersResponse(od as api.ListClustersResponse);
    });
  });

  unittest.group('obj-schema-ListInstancesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListInstancesResponse();
      var od = api.ListInstancesResponse.fromJson(o.toJson());
      checkListInstancesResponse(od as api.ListInstancesResponse);
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

  unittest.group('obj-schema-ListTablesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListTablesResponse();
      var od = api.ListTablesResponse.fromJson(o.toJson());
      checkListTablesResponse(od as api.ListTablesResponse);
    });
  });

  unittest.group('obj-schema-Location', () {
    unittest.test('to-json--from-json', () {
      var o = buildLocation();
      var od = api.Location.fromJson(o.toJson());
      checkLocation(od as api.Location);
    });
  });

  unittest.group('obj-schema-Modification', () {
    unittest.test('to-json--from-json', () {
      var o = buildModification();
      var od = api.Modification.fromJson(o.toJson());
      checkModification(od as api.Modification);
    });
  });

  unittest.group('obj-schema-ModifyColumnFamiliesRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildModifyColumnFamiliesRequest();
      var od = api.ModifyColumnFamiliesRequest.fromJson(o.toJson());
      checkModifyColumnFamiliesRequest(od as api.ModifyColumnFamiliesRequest);
    });
  });

  unittest.group('obj-schema-MultiClusterRoutingUseAny', () {
    unittest.test('to-json--from-json', () {
      var o = buildMultiClusterRoutingUseAny();
      var od = api.MultiClusterRoutingUseAny.fromJson(o.toJson());
      checkMultiClusterRoutingUseAny(od as api.MultiClusterRoutingUseAny);
    });
  });

  unittest.group('obj-schema-Operation', () {
    unittest.test('to-json--from-json', () {
      var o = buildOperation();
      var od = api.Operation.fromJson(o.toJson());
      checkOperation(od as api.Operation);
    });
  });

  unittest.group('obj-schema-OperationProgress', () {
    unittest.test('to-json--from-json', () {
      var o = buildOperationProgress();
      var od = api.OperationProgress.fromJson(o.toJson());
      checkOperationProgress(od as api.OperationProgress);
    });
  });

  unittest.group('obj-schema-OptimizeRestoredTableMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildOptimizeRestoredTableMetadata();
      var od = api.OptimizeRestoredTableMetadata.fromJson(o.toJson());
      checkOptimizeRestoredTableMetadata(
          od as api.OptimizeRestoredTableMetadata);
    });
  });

  unittest.group('obj-schema-PartialUpdateInstanceRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildPartialUpdateInstanceRequest();
      var od = api.PartialUpdateInstanceRequest.fromJson(o.toJson());
      checkPartialUpdateInstanceRequest(od as api.PartialUpdateInstanceRequest);
    });
  });

  unittest.group('obj-schema-Policy', () {
    unittest.test('to-json--from-json', () {
      var o = buildPolicy();
      var od = api.Policy.fromJson(o.toJson());
      checkPolicy(od as api.Policy);
    });
  });

  unittest.group('obj-schema-RestoreInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildRestoreInfo();
      var od = api.RestoreInfo.fromJson(o.toJson());
      checkRestoreInfo(od as api.RestoreInfo);
    });
  });

  unittest.group('obj-schema-RestoreTableMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildRestoreTableMetadata();
      var od = api.RestoreTableMetadata.fromJson(o.toJson());
      checkRestoreTableMetadata(od as api.RestoreTableMetadata);
    });
  });

  unittest.group('obj-schema-RestoreTableRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildRestoreTableRequest();
      var od = api.RestoreTableRequest.fromJson(o.toJson());
      checkRestoreTableRequest(od as api.RestoreTableRequest);
    });
  });

  unittest.group('obj-schema-SetIamPolicyRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildSetIamPolicyRequest();
      var od = api.SetIamPolicyRequest.fromJson(o.toJson());
      checkSetIamPolicyRequest(od as api.SetIamPolicyRequest);
    });
  });

  unittest.group('obj-schema-SingleClusterRouting', () {
    unittest.test('to-json--from-json', () {
      var o = buildSingleClusterRouting();
      var od = api.SingleClusterRouting.fromJson(o.toJson());
      checkSingleClusterRouting(od as api.SingleClusterRouting);
    });
  });

  unittest.group('obj-schema-Split', () {
    unittest.test('to-json--from-json', () {
      var o = buildSplit();
      var od = api.Split.fromJson(o.toJson());
      checkSplit(od as api.Split);
    });
  });

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () {
      var o = buildStatus();
      var od = api.Status.fromJson(o.toJson());
      checkStatus(od as api.Status);
    });
  });

  unittest.group('obj-schema-Table', () {
    unittest.test('to-json--from-json', () {
      var o = buildTable();
      var od = api.Table.fromJson(o.toJson());
      checkTable(od as api.Table);
    });
  });

  unittest.group('obj-schema-TableProgress', () {
    unittest.test('to-json--from-json', () {
      var o = buildTableProgress();
      var od = api.TableProgress.fromJson(o.toJson());
      checkTableProgress(od as api.TableProgress);
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

  unittest.group('obj-schema-Union', () {
    unittest.test('to-json--from-json', () {
      var o = buildUnion();
      var od = api.Union.fromJson(o.toJson());
      checkUnion(od as api.Union);
    });
  });

  unittest.group('obj-schema-UpdateAppProfileMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildUpdateAppProfileMetadata();
      var od = api.UpdateAppProfileMetadata.fromJson(o.toJson());
      checkUpdateAppProfileMetadata(od as api.UpdateAppProfileMetadata);
    });
  });

  unittest.group('obj-schema-UpdateClusterMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildUpdateClusterMetadata();
      var od = api.UpdateClusterMetadata.fromJson(o.toJson());
      checkUpdateClusterMetadata(od as api.UpdateClusterMetadata);
    });
  });

  unittest.group('obj-schema-UpdateInstanceMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildUpdateInstanceMetadata();
      var od = api.UpdateInstanceMetadata.fromJson(o.toJson());
      checkUpdateInstanceMetadata(od as api.UpdateInstanceMetadata);
    });
  });

  unittest.group('resource-OperationsResource', () {
    unittest.test('method--cancel', () {
      var mock = HttpServerMock();
      var res = api.BigtableAdminApi(mock).operations;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
          .cancel(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response as api.Empty);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.BigtableAdminApi(mock).operations;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
      var res = api.BigtableAdminApi(mock).operations;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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

  unittest.group('resource-OperationsProjectsOperationsResource', () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.BigtableAdminApi(mock).operations.projects.operations;
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
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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

  unittest.group('resource-ProjectsInstancesResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.BigtableAdminApi(mock).projects.instances;
      var arg_request = buildCreateInstanceRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CreateInstanceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCreateInstanceRequest(obj as api.CreateInstanceRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.BigtableAdminApi(mock).projects.instances;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
      var res = api.BigtableAdminApi(mock).projects.instances;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
        var resp = convert.json.encode(buildInstance());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkInstance(response as api.Instance);
      })));
    });

    unittest.test('method--getIamPolicy', () {
      var mock = HttpServerMock();
      var res = api.BigtableAdminApi(mock).projects.instances;
      var arg_request = buildGetIamPolicyRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGetIamPolicyRequest(obj as api.GetIamPolicyRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
        var resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response as api.Policy);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.BigtableAdminApi(mock).projects.instances;
      var arg_parent = 'foo';
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListInstancesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent, pageToken: arg_pageToken, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListInstancesResponse(response as api.ListInstancesResponse);
      })));
    });

    unittest.test('method--partialUpdateInstance', () {
      var mock = HttpServerMock();
      var res = api.BigtableAdminApi(mock).projects.instances;
      var arg_request = buildInstance();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Instance.fromJson(json as core.Map<core.String, core.dynamic>);
        checkInstance(obj as api.Instance);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .partialUpdateInstance(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--setIamPolicy', () {
      var mock = HttpServerMock();
      var res = api.BigtableAdminApi(mock).projects.instances;
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
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
      var res = api.BigtableAdminApi(mock).projects.instances;
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
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      var res = api.BigtableAdminApi(mock).projects.instances;
      var arg_request = buildInstance();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Instance.fromJson(json as core.Map<core.String, core.dynamic>);
        checkInstance(obj as api.Instance);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
        var resp = convert.json.encode(buildInstance());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkInstance(response as api.Instance);
      })));
    });
  });

  unittest.group('resource-ProjectsInstancesAppProfilesResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.BigtableAdminApi(mock).projects.instances.appProfiles;
      var arg_request = buildAppProfile();
      var arg_parent = 'foo';
      var arg_appProfileId = 'foo';
      var arg_ignoreWarnings = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.AppProfile.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAppProfile(obj as api.AppProfile);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
            queryMap["appProfileId"].first, unittest.equals(arg_appProfileId));
        unittest.expect(queryMap["ignoreWarnings"].first,
            unittest.equals("$arg_ignoreWarnings"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAppProfile());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              appProfileId: arg_appProfileId,
              ignoreWarnings: arg_ignoreWarnings,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAppProfile(response as api.AppProfile);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.BigtableAdminApi(mock).projects.instances.appProfiles;
      var arg_name = 'foo';
      var arg_ignoreWarnings = true;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
        unittest.expect(queryMap["ignoreWarnings"].first,
            unittest.equals("$arg_ignoreWarnings"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name,
              ignoreWarnings: arg_ignoreWarnings, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response as api.Empty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.BigtableAdminApi(mock).projects.instances.appProfiles;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
        var resp = convert.json.encode(buildAppProfile());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAppProfile(response as api.AppProfile);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.BigtableAdminApi(mock).projects.instances.appProfiles;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListAppProfilesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListAppProfilesResponse(response as api.ListAppProfilesResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.BigtableAdminApi(mock).projects.instances.appProfiles;
      var arg_request = buildAppProfile();
      var arg_name = 'foo';
      var arg_ignoreWarnings = true;
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.AppProfile.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAppProfile(obj as api.AppProfile);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
        unittest.expect(queryMap["ignoreWarnings"].first,
            unittest.equals("$arg_ignoreWarnings"));
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
              ignoreWarnings: arg_ignoreWarnings,
              updateMask: arg_updateMask,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });
  });

  unittest.group('resource-ProjectsInstancesClustersResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.BigtableAdminApi(mock).projects.instances.clusters;
      var arg_request = buildCluster();
      var arg_parent = 'foo';
      var arg_clusterId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Cluster.fromJson(json as core.Map<core.String, core.dynamic>);
        checkCluster(obj as api.Cluster);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
            queryMap["clusterId"].first, unittest.equals(arg_clusterId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              clusterId: arg_clusterId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.BigtableAdminApi(mock).projects.instances.clusters;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
      var res = api.BigtableAdminApi(mock).projects.instances.clusters;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
        var resp = convert.json.encode(buildCluster());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCluster(response as api.Cluster);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.BigtableAdminApi(mock).projects.instances.clusters;
      var arg_parent = 'foo';
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListClustersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent, pageToken: arg_pageToken, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListClustersResponse(response as api.ListClustersResponse);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      var res = api.BigtableAdminApi(mock).projects.instances.clusters;
      var arg_request = buildCluster();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Cluster.fromJson(json as core.Map<core.String, core.dynamic>);
        checkCluster(obj as api.Cluster);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
          .update(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });
  });

  unittest.group('resource-ProjectsInstancesClustersBackupsResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.BigtableAdminApi(mock).projects.instances.clusters.backups;
      var arg_request = buildBackup();
      var arg_parent = 'foo';
      var arg_backupId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Backup.fromJson(json as core.Map<core.String, core.dynamic>);
        checkBackup(obj as api.Backup);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
            queryMap["backupId"].first, unittest.equals(arg_backupId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              backupId: arg_backupId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.BigtableAdminApi(mock).projects.instances.clusters.backups;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
      var res = api.BigtableAdminApi(mock).projects.instances.clusters.backups;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
        var resp = convert.json.encode(buildBackup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBackup(response as api.Backup);
      })));
    });

    unittest.test('method--getIamPolicy', () {
      var mock = HttpServerMock();
      var res = api.BigtableAdminApi(mock).projects.instances.clusters.backups;
      var arg_request = buildGetIamPolicyRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGetIamPolicyRequest(obj as api.GetIamPolicyRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
        var resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response as api.Policy);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.BigtableAdminApi(mock).projects.instances.clusters.backups;
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
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
        var resp = convert.json.encode(buildListBackupsResponse());
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
        checkListBackupsResponse(response as api.ListBackupsResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.BigtableAdminApi(mock).projects.instances.clusters.backups;
      var arg_request = buildBackup();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Backup.fromJson(json as core.Map<core.String, core.dynamic>);
        checkBackup(obj as api.Backup);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildBackup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBackup(response as api.Backup);
      })));
    });

    unittest.test('method--setIamPolicy', () {
      var mock = HttpServerMock();
      var res = api.BigtableAdminApi(mock).projects.instances.clusters.backups;
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
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
      var res = api.BigtableAdminApi(mock).projects.instances.clusters.backups;
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
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
  });

  unittest.group('resource-ProjectsInstancesTablesResource', () {
    unittest.test('method--checkConsistency', () {
      var mock = HttpServerMock();
      var res = api.BigtableAdminApi(mock).projects.instances.tables;
      var arg_request = buildCheckConsistencyRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CheckConsistencyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCheckConsistencyRequest(obj as api.CheckConsistencyRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
        var resp = convert.json.encode(buildCheckConsistencyResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .checkConsistency(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCheckConsistencyResponse(response as api.CheckConsistencyResponse);
      })));
    });

    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.BigtableAdminApi(mock).projects.instances.tables;
      var arg_request = buildCreateTableRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CreateTableRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCreateTableRequest(obj as api.CreateTableRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
        var resp = convert.json.encode(buildTable());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTable(response as api.Table);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.BigtableAdminApi(mock).projects.instances.tables;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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

    unittest.test('method--dropRowRange', () {
      var mock = HttpServerMock();
      var res = api.BigtableAdminApi(mock).projects.instances.tables;
      var arg_request = buildDropRowRangeRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.DropRowRangeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDropRowRangeRequest(obj as api.DropRowRangeRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
          .dropRowRange(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response as api.Empty);
      })));
    });

    unittest.test('method--generateConsistencyToken', () {
      var mock = HttpServerMock();
      var res = api.BigtableAdminApi(mock).projects.instances.tables;
      var arg_request = buildGenerateConsistencyTokenRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GenerateConsistencyTokenRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGenerateConsistencyTokenRequest(
            obj as api.GenerateConsistencyTokenRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
        var resp = convert.json.encode(buildGenerateConsistencyTokenResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .generateConsistencyToken(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGenerateConsistencyTokenResponse(
            response as api.GenerateConsistencyTokenResponse);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.BigtableAdminApi(mock).projects.instances.tables;
      var arg_name = 'foo';
      var arg_view = 'foo';
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildTable());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, view: arg_view, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTable(response as api.Table);
      })));
    });

    unittest.test('method--getIamPolicy', () {
      var mock = HttpServerMock();
      var res = api.BigtableAdminApi(mock).projects.instances.tables;
      var arg_request = buildGetIamPolicyRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGetIamPolicyRequest(obj as api.GetIamPolicyRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
        var resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response as api.Policy);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.BigtableAdminApi(mock).projects.instances.tables;
      var arg_parent = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_view = 'foo';
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListTablesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              view: arg_view,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListTablesResponse(response as api.ListTablesResponse);
      })));
    });

    unittest.test('method--modifyColumnFamilies', () {
      var mock = HttpServerMock();
      var res = api.BigtableAdminApi(mock).projects.instances.tables;
      var arg_request = buildModifyColumnFamiliesRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ModifyColumnFamiliesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkModifyColumnFamiliesRequest(
            obj as api.ModifyColumnFamiliesRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
        var resp = convert.json.encode(buildTable());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .modifyColumnFamilies(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTable(response as api.Table);
      })));
    });

    unittest.test('method--restore', () {
      var mock = HttpServerMock();
      var res = api.BigtableAdminApi(mock).projects.instances.tables;
      var arg_request = buildRestoreTableRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.RestoreTableRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRestoreTableRequest(obj as api.RestoreTableRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
          .restore(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--setIamPolicy', () {
      var mock = HttpServerMock();
      var res = api.BigtableAdminApi(mock).projects.instances.tables;
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
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
      var res = api.BigtableAdminApi(mock).projects.instances.tables;
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
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.BigtableAdminApi(mock).projects.locations;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
      var res = api.BigtableAdminApi(mock).projects.locations;
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
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
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
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListLocationsResponse(response as api.ListLocationsResponse);
      })));
    });
  });
}
