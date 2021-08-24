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

import 'package:googleapis/bigtableadmin/v2.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAppProfile = 0;
api.AppProfile buildAppProfile() {
  final o = api.AppProfile();
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
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    checkMultiClusterRoutingUseAny(o.multiClusterRoutingUseAny!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkSingleClusterRouting(o.singleClusterRouting!);
  }
  buildCounterAppProfile--;
}

core.List<api.AuditLogConfig> buildUnnamed1458() => [
      buildAuditLogConfig(),
      buildAuditLogConfig(),
    ];

void checkUnnamed1458(core.List<api.AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditLogConfig(o[0]);
  checkAuditLogConfig(o[1]);
}

core.int buildCounterAuditConfig = 0;
api.AuditConfig buildAuditConfig() {
  final o = api.AuditConfig();
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed1458();
    o.service = 'foo';
  }
  buildCounterAuditConfig--;
  return o;
}

void checkAuditConfig(api.AuditConfig o) {
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    checkUnnamed1458(o.auditLogConfigs!);
    unittest.expect(
      o.service!,
      unittest.equals('foo'),
    );
  }
  buildCounterAuditConfig--;
}

core.List<core.String> buildUnnamed1459() => [
      'foo',
      'foo',
    ];

void checkUnnamed1459(core.List<core.String> o) {
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
    o.exemptedMembers = buildUnnamed1459();
    o.logType = 'foo';
  }
  buildCounterAuditLogConfig--;
  return o;
}

void checkAuditLogConfig(api.AuditLogConfig o) {
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    checkUnnamed1459(o.exemptedMembers!);
    unittest.expect(
      o.logType!,
      unittest.equals('foo'),
    );
  }
  buildCounterAuditLogConfig--;
}

core.int buildCounterBackup = 0;
api.Backup buildBackup() {
  final o = api.Backup();
  buildCounterBackup++;
  if (buildCounterBackup < 3) {
    o.encryptionInfo = buildEncryptionInfo();
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
    checkEncryptionInfo(o.encryptionInfo!);
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expireTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sizeBytes!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sourceTable!,
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
  }
  buildCounterBackup--;
}

core.int buildCounterBackupInfo = 0;
api.BackupInfo buildBackupInfo() {
  final o = api.BackupInfo();
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
    unittest.expect(
      o.backup!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sourceTable!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterBackupInfo--;
}

core.List<core.String> buildUnnamed1460() => [
      'foo',
      'foo',
    ];

void checkUnnamed1460(core.List<core.String> o) {
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
    o.members = buildUnnamed1460();
    o.role = 'foo';
  }
  buildCounterBinding--;
  return o;
}

void checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition!);
    checkUnnamed1460(o.members!);
    unittest.expect(
      o.role!,
      unittest.equals('foo'),
    );
  }
  buildCounterBinding--;
}

core.int buildCounterCheckConsistencyRequest = 0;
api.CheckConsistencyRequest buildCheckConsistencyRequest() {
  final o = api.CheckConsistencyRequest();
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
    unittest.expect(
      o.consistencyToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterCheckConsistencyRequest--;
}

core.int buildCounterCheckConsistencyResponse = 0;
api.CheckConsistencyResponse buildCheckConsistencyResponse() {
  final o = api.CheckConsistencyResponse();
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
    unittest.expect(o.consistent!, unittest.isTrue);
  }
  buildCounterCheckConsistencyResponse--;
}

core.int buildCounterCluster = 0;
api.Cluster buildCluster() {
  final o = api.Cluster();
  buildCounterCluster++;
  if (buildCounterCluster < 3) {
    o.defaultStorageType = 'foo';
    o.encryptionConfig = buildEncryptionConfig();
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
    unittest.expect(
      o.defaultStorageType!,
      unittest.equals('foo'),
    );
    checkEncryptionConfig(o.encryptionConfig!);
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serveNodes!,
      unittest.equals(42),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterCluster--;
}

core.List<api.EncryptionInfo> buildUnnamed1461() => [
      buildEncryptionInfo(),
      buildEncryptionInfo(),
    ];

void checkUnnamed1461(core.List<api.EncryptionInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEncryptionInfo(o[0]);
  checkEncryptionInfo(o[1]);
}

core.int buildCounterClusterState = 0;
api.ClusterState buildClusterState() {
  final o = api.ClusterState();
  buildCounterClusterState++;
  if (buildCounterClusterState < 3) {
    o.encryptionInfo = buildUnnamed1461();
    o.replicationState = 'foo';
  }
  buildCounterClusterState--;
  return o;
}

void checkClusterState(api.ClusterState o) {
  buildCounterClusterState++;
  if (buildCounterClusterState < 3) {
    checkUnnamed1461(o.encryptionInfo!);
    unittest.expect(
      o.replicationState!,
      unittest.equals('foo'),
    );
  }
  buildCounterClusterState--;
}

core.int buildCounterColumnFamily = 0;
api.ColumnFamily buildColumnFamily() {
  final o = api.ColumnFamily();
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
    checkGcRule(o.gcRule!);
  }
  buildCounterColumnFamily--;
}

core.int buildCounterCreateBackupMetadata = 0;
api.CreateBackupMetadata buildCreateBackupMetadata() {
  final o = api.CreateBackupMetadata();
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
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sourceTable!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterCreateBackupMetadata--;
}

core.Map<core.String, api.TableProgress> buildUnnamed1462() => {
      'x': buildTableProgress(),
      'y': buildTableProgress(),
    };

void checkUnnamed1462(core.Map<core.String, api.TableProgress> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTableProgress(o['x']!);
  checkTableProgress(o['y']!);
}

core.int buildCounterCreateClusterMetadata = 0;
api.CreateClusterMetadata buildCreateClusterMetadata() {
  final o = api.CreateClusterMetadata();
  buildCounterCreateClusterMetadata++;
  if (buildCounterCreateClusterMetadata < 3) {
    o.finishTime = 'foo';
    o.originalRequest = buildCreateClusterRequest();
    o.requestTime = 'foo';
    o.tables = buildUnnamed1462();
  }
  buildCounterCreateClusterMetadata--;
  return o;
}

void checkCreateClusterMetadata(api.CreateClusterMetadata o) {
  buildCounterCreateClusterMetadata++;
  if (buildCounterCreateClusterMetadata < 3) {
    unittest.expect(
      o.finishTime!,
      unittest.equals('foo'),
    );
    checkCreateClusterRequest(o.originalRequest!);
    unittest.expect(
      o.requestTime!,
      unittest.equals('foo'),
    );
    checkUnnamed1462(o.tables!);
  }
  buildCounterCreateClusterMetadata--;
}

core.int buildCounterCreateClusterRequest = 0;
api.CreateClusterRequest buildCreateClusterRequest() {
  final o = api.CreateClusterRequest();
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
    checkCluster(o.cluster!);
    unittest.expect(
      o.clusterId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.parent!,
      unittest.equals('foo'),
    );
  }
  buildCounterCreateClusterRequest--;
}

core.int buildCounterCreateInstanceMetadata = 0;
api.CreateInstanceMetadata buildCreateInstanceMetadata() {
  final o = api.CreateInstanceMetadata();
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
    unittest.expect(
      o.finishTime!,
      unittest.equals('foo'),
    );
    checkCreateInstanceRequest(o.originalRequest!);
    unittest.expect(
      o.requestTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterCreateInstanceMetadata--;
}

core.Map<core.String, api.Cluster> buildUnnamed1463() => {
      'x': buildCluster(),
      'y': buildCluster(),
    };

void checkUnnamed1463(core.Map<core.String, api.Cluster> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCluster(o['x']!);
  checkCluster(o['y']!);
}

core.int buildCounterCreateInstanceRequest = 0;
api.CreateInstanceRequest buildCreateInstanceRequest() {
  final o = api.CreateInstanceRequest();
  buildCounterCreateInstanceRequest++;
  if (buildCounterCreateInstanceRequest < 3) {
    o.clusters = buildUnnamed1463();
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
    checkUnnamed1463(o.clusters!);
    checkInstance(o.instance!);
    unittest.expect(
      o.instanceId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.parent!,
      unittest.equals('foo'),
    );
  }
  buildCounterCreateInstanceRequest--;
}

core.List<api.Split> buildUnnamed1464() => [
      buildSplit(),
      buildSplit(),
    ];

void checkUnnamed1464(core.List<api.Split> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSplit(o[0]);
  checkSplit(o[1]);
}

core.int buildCounterCreateTableRequest = 0;
api.CreateTableRequest buildCreateTableRequest() {
  final o = api.CreateTableRequest();
  buildCounterCreateTableRequest++;
  if (buildCounterCreateTableRequest < 3) {
    o.initialSplits = buildUnnamed1464();
    o.table = buildTable();
    o.tableId = 'foo';
  }
  buildCounterCreateTableRequest--;
  return o;
}

void checkCreateTableRequest(api.CreateTableRequest o) {
  buildCounterCreateTableRequest++;
  if (buildCounterCreateTableRequest < 3) {
    checkUnnamed1464(o.initialSplits!);
    checkTable(o.table!);
    unittest.expect(
      o.tableId!,
      unittest.equals('foo'),
    );
  }
  buildCounterCreateTableRequest--;
}

core.int buildCounterDropRowRangeRequest = 0;
api.DropRowRangeRequest buildDropRowRangeRequest() {
  final o = api.DropRowRangeRequest();
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
    unittest.expect(o.deleteAllDataFromTable!, unittest.isTrue);
    unittest.expect(
      o.rowKeyPrefix!,
      unittest.equals('foo'),
    );
  }
  buildCounterDropRowRangeRequest--;
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
    o.kmsKeyName = 'foo';
  }
  buildCounterEncryptionConfig--;
  return o;
}

void checkEncryptionConfig(api.EncryptionConfig o) {
  buildCounterEncryptionConfig++;
  if (buildCounterEncryptionConfig < 3) {
    unittest.expect(
      o.kmsKeyName!,
      unittest.equals('foo'),
    );
  }
  buildCounterEncryptionConfig--;
}

core.int buildCounterEncryptionInfo = 0;
api.EncryptionInfo buildEncryptionInfo() {
  final o = api.EncryptionInfo();
  buildCounterEncryptionInfo++;
  if (buildCounterEncryptionInfo < 3) {
    o.encryptionStatus = buildStatus();
    o.encryptionType = 'foo';
    o.kmsKeyVersion = 'foo';
  }
  buildCounterEncryptionInfo--;
  return o;
}

void checkEncryptionInfo(api.EncryptionInfo o) {
  buildCounterEncryptionInfo++;
  if (buildCounterEncryptionInfo < 3) {
    checkStatus(o.encryptionStatus!);
    unittest.expect(
      o.encryptionType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kmsKeyVersion!,
      unittest.equals('foo'),
    );
  }
  buildCounterEncryptionInfo--;
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

core.List<api.Frame> buildUnnamed1465() => [
      buildFrame(),
      buildFrame(),
    ];

void checkUnnamed1465(core.List<api.Frame> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFrame(o[0]);
  checkFrame(o[1]);
}

core.int buildCounterFailureTrace = 0;
api.FailureTrace buildFailureTrace() {
  final o = api.FailureTrace();
  buildCounterFailureTrace++;
  if (buildCounterFailureTrace < 3) {
    o.frames = buildUnnamed1465();
  }
  buildCounterFailureTrace--;
  return o;
}

void checkFailureTrace(api.FailureTrace o) {
  buildCounterFailureTrace++;
  if (buildCounterFailureTrace < 3) {
    checkUnnamed1465(o.frames!);
  }
  buildCounterFailureTrace--;
}

core.int buildCounterFrame = 0;
api.Frame buildFrame() {
  final o = api.Frame();
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
    unittest.expect(
      o.targetName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.workflowGuid!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.zoneId!,
      unittest.equals('foo'),
    );
  }
  buildCounterFrame--;
}

core.int buildCounterGcRule = 0;
api.GcRule buildGcRule() {
  final o = api.GcRule();
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
    checkIntersection(o.intersection!);
    unittest.expect(
      o.maxAge!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maxNumVersions!,
      unittest.equals(42),
    );
    checkUnion(o.union!);
  }
  buildCounterGcRule--;
}

core.int buildCounterGenerateConsistencyTokenRequest = 0;
api.GenerateConsistencyTokenRequest buildGenerateConsistencyTokenRequest() {
  final o = api.GenerateConsistencyTokenRequest();
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
  final o = api.GenerateConsistencyTokenResponse();
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
    unittest.expect(
      o.consistencyToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGenerateConsistencyTokenResponse--;
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

core.Map<core.String, core.String> buildUnnamed1466() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed1466(core.Map<core.String, core.String> o) {
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

core.int buildCounterInstance = 0;
api.Instance buildInstance() {
  final o = api.Instance();
  buildCounterInstance++;
  if (buildCounterInstance < 3) {
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.labels = buildUnnamed1466();
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
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkUnnamed1466(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterInstance--;
}

core.List<api.GcRule> buildUnnamed1467() => [
      buildGcRule(),
      buildGcRule(),
    ];

void checkUnnamed1467(core.List<api.GcRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGcRule(o[0]);
  checkGcRule(o[1]);
}

core.int buildCounterIntersection = 0;
api.Intersection buildIntersection() {
  final o = api.Intersection();
  buildCounterIntersection++;
  if (buildCounterIntersection < 3) {
    o.rules = buildUnnamed1467();
  }
  buildCounterIntersection--;
  return o;
}

void checkIntersection(api.Intersection o) {
  buildCounterIntersection++;
  if (buildCounterIntersection < 3) {
    checkUnnamed1467(o.rules!);
  }
  buildCounterIntersection--;
}

core.List<api.AppProfile> buildUnnamed1468() => [
      buildAppProfile(),
      buildAppProfile(),
    ];

void checkUnnamed1468(core.List<api.AppProfile> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAppProfile(o[0]);
  checkAppProfile(o[1]);
}

core.List<core.String> buildUnnamed1469() => [
      'foo',
      'foo',
    ];

void checkUnnamed1469(core.List<core.String> o) {
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

core.int buildCounterListAppProfilesResponse = 0;
api.ListAppProfilesResponse buildListAppProfilesResponse() {
  final o = api.ListAppProfilesResponse();
  buildCounterListAppProfilesResponse++;
  if (buildCounterListAppProfilesResponse < 3) {
    o.appProfiles = buildUnnamed1468();
    o.failedLocations = buildUnnamed1469();
    o.nextPageToken = 'foo';
  }
  buildCounterListAppProfilesResponse--;
  return o;
}

void checkListAppProfilesResponse(api.ListAppProfilesResponse o) {
  buildCounterListAppProfilesResponse++;
  if (buildCounterListAppProfilesResponse < 3) {
    checkUnnamed1468(o.appProfiles!);
    checkUnnamed1469(o.failedLocations!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListAppProfilesResponse--;
}

core.List<api.Backup> buildUnnamed1470() => [
      buildBackup(),
      buildBackup(),
    ];

void checkUnnamed1470(core.List<api.Backup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBackup(o[0]);
  checkBackup(o[1]);
}

core.int buildCounterListBackupsResponse = 0;
api.ListBackupsResponse buildListBackupsResponse() {
  final o = api.ListBackupsResponse();
  buildCounterListBackupsResponse++;
  if (buildCounterListBackupsResponse < 3) {
    o.backups = buildUnnamed1470();
    o.nextPageToken = 'foo';
  }
  buildCounterListBackupsResponse--;
  return o;
}

void checkListBackupsResponse(api.ListBackupsResponse o) {
  buildCounterListBackupsResponse++;
  if (buildCounterListBackupsResponse < 3) {
    checkUnnamed1470(o.backups!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListBackupsResponse--;
}

core.List<api.Cluster> buildUnnamed1471() => [
      buildCluster(),
      buildCluster(),
    ];

void checkUnnamed1471(core.List<api.Cluster> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCluster(o[0]);
  checkCluster(o[1]);
}

core.List<core.String> buildUnnamed1472() => [
      'foo',
      'foo',
    ];

void checkUnnamed1472(core.List<core.String> o) {
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

core.int buildCounterListClustersResponse = 0;
api.ListClustersResponse buildListClustersResponse() {
  final o = api.ListClustersResponse();
  buildCounterListClustersResponse++;
  if (buildCounterListClustersResponse < 3) {
    o.clusters = buildUnnamed1471();
    o.failedLocations = buildUnnamed1472();
    o.nextPageToken = 'foo';
  }
  buildCounterListClustersResponse--;
  return o;
}

void checkListClustersResponse(api.ListClustersResponse o) {
  buildCounterListClustersResponse++;
  if (buildCounterListClustersResponse < 3) {
    checkUnnamed1471(o.clusters!);
    checkUnnamed1472(o.failedLocations!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListClustersResponse--;
}

core.List<core.String> buildUnnamed1473() => [
      'foo',
      'foo',
    ];

void checkUnnamed1473(core.List<core.String> o) {
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

core.List<api.Instance> buildUnnamed1474() => [
      buildInstance(),
      buildInstance(),
    ];

void checkUnnamed1474(core.List<api.Instance> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInstance(o[0]);
  checkInstance(o[1]);
}

core.int buildCounterListInstancesResponse = 0;
api.ListInstancesResponse buildListInstancesResponse() {
  final o = api.ListInstancesResponse();
  buildCounterListInstancesResponse++;
  if (buildCounterListInstancesResponse < 3) {
    o.failedLocations = buildUnnamed1473();
    o.instances = buildUnnamed1474();
    o.nextPageToken = 'foo';
  }
  buildCounterListInstancesResponse--;
  return o;
}

void checkListInstancesResponse(api.ListInstancesResponse o) {
  buildCounterListInstancesResponse++;
  if (buildCounterListInstancesResponse < 3) {
    checkUnnamed1473(o.failedLocations!);
    checkUnnamed1474(o.instances!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListInstancesResponse--;
}

core.List<api.Location> buildUnnamed1475() => [
      buildLocation(),
      buildLocation(),
    ];

void checkUnnamed1475(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  final o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed1475();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed1475(o.locations!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListLocationsResponse--;
}

core.List<api.Operation> buildUnnamed1476() => [
      buildOperation(),
      buildOperation(),
    ];

void checkUnnamed1476(core.List<api.Operation> o) {
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
    o.operations = buildUnnamed1476();
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
    checkUnnamed1476(o.operations!);
  }
  buildCounterListOperationsResponse--;
}

core.List<api.Table> buildUnnamed1477() => [
      buildTable(),
      buildTable(),
    ];

void checkUnnamed1477(core.List<api.Table> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTable(o[0]);
  checkTable(o[1]);
}

core.int buildCounterListTablesResponse = 0;
api.ListTablesResponse buildListTablesResponse() {
  final o = api.ListTablesResponse();
  buildCounterListTablesResponse++;
  if (buildCounterListTablesResponse < 3) {
    o.nextPageToken = 'foo';
    o.tables = buildUnnamed1477();
  }
  buildCounterListTablesResponse--;
  return o;
}

void checkListTablesResponse(api.ListTablesResponse o) {
  buildCounterListTablesResponse++;
  if (buildCounterListTablesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed1477(o.tables!);
  }
  buildCounterListTablesResponse--;
}

core.Map<core.String, core.String> buildUnnamed1478() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed1478(core.Map<core.String, core.String> o) {
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

core.Map<core.String, core.Object> buildUnnamed1479() => {
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

void checkUnnamed1479(core.Map<core.String, core.Object> o) {
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
    o.labels = buildUnnamed1478();
    o.locationId = 'foo';
    o.metadata = buildUnnamed1479();
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
    checkUnnamed1478(o.labels!);
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
    checkUnnamed1479(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterLocation--;
}

core.int buildCounterModification = 0;
api.Modification buildModification() {
  final o = api.Modification();
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
    checkColumnFamily(o.create!);
    unittest.expect(o.drop!, unittest.isTrue);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkColumnFamily(o.update!);
  }
  buildCounterModification--;
}

core.List<api.Modification> buildUnnamed1480() => [
      buildModification(),
      buildModification(),
    ];

void checkUnnamed1480(core.List<api.Modification> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkModification(o[0]);
  checkModification(o[1]);
}

core.int buildCounterModifyColumnFamiliesRequest = 0;
api.ModifyColumnFamiliesRequest buildModifyColumnFamiliesRequest() {
  final o = api.ModifyColumnFamiliesRequest();
  buildCounterModifyColumnFamiliesRequest++;
  if (buildCounterModifyColumnFamiliesRequest < 3) {
    o.modifications = buildUnnamed1480();
  }
  buildCounterModifyColumnFamiliesRequest--;
  return o;
}

void checkModifyColumnFamiliesRequest(api.ModifyColumnFamiliesRequest o) {
  buildCounterModifyColumnFamiliesRequest++;
  if (buildCounterModifyColumnFamiliesRequest < 3) {
    checkUnnamed1480(o.modifications!);
  }
  buildCounterModifyColumnFamiliesRequest--;
}

core.int buildCounterMultiClusterRoutingUseAny = 0;
api.MultiClusterRoutingUseAny buildMultiClusterRoutingUseAny() {
  final o = api.MultiClusterRoutingUseAny();
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

core.Map<core.String, core.Object> buildUnnamed1481() => {
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

void checkUnnamed1481(core.Map<core.String, core.Object> o) {
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

core.Map<core.String, core.Object> buildUnnamed1482() => {
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

void checkUnnamed1482(core.Map<core.String, core.Object> o) {
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
    o.metadata = buildUnnamed1481();
    o.name = 'foo';
    o.response = buildUnnamed1482();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed1481(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed1482(o.response!);
  }
  buildCounterOperation--;
}

core.int buildCounterOperationProgress = 0;
api.OperationProgress buildOperationProgress() {
  final o = api.OperationProgress();
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
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.progressPercent!,
      unittest.equals(42),
    );
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterOperationProgress--;
}

core.int buildCounterOptimizeRestoredTableMetadata = 0;
api.OptimizeRestoredTableMetadata buildOptimizeRestoredTableMetadata() {
  final o = api.OptimizeRestoredTableMetadata();
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
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkOperationProgress(o.progress!);
  }
  buildCounterOptimizeRestoredTableMetadata--;
}

core.int buildCounterPartialUpdateInstanceRequest = 0;
api.PartialUpdateInstanceRequest buildPartialUpdateInstanceRequest() {
  final o = api.PartialUpdateInstanceRequest();
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
    checkInstance(o.instance!);
    unittest.expect(
      o.updateMask!,
      unittest.equals('foo'),
    );
  }
  buildCounterPartialUpdateInstanceRequest--;
}

core.List<api.AuditConfig> buildUnnamed1483() => [
      buildAuditConfig(),
      buildAuditConfig(),
    ];

void checkUnnamed1483(core.List<api.AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditConfig(o[0]);
  checkAuditConfig(o[1]);
}

core.List<api.Binding> buildUnnamed1484() => [
      buildBinding(),
      buildBinding(),
    ];

void checkUnnamed1484(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  final o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.auditConfigs = buildUnnamed1483();
    o.bindings = buildUnnamed1484();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed1483(o.auditConfigs!);
    checkUnnamed1484(o.bindings!);
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

core.int buildCounterRestoreInfo = 0;
api.RestoreInfo buildRestoreInfo() {
  final o = api.RestoreInfo();
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
    checkBackupInfo(o.backupInfo!);
    unittest.expect(
      o.sourceType!,
      unittest.equals('foo'),
    );
  }
  buildCounterRestoreInfo--;
}

core.int buildCounterRestoreTableMetadata = 0;
api.RestoreTableMetadata buildRestoreTableMetadata() {
  final o = api.RestoreTableMetadata();
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
    checkBackupInfo(o.backupInfo!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.optimizeTableOperationName!,
      unittest.equals('foo'),
    );
    checkOperationProgress(o.progress!);
    unittest.expect(
      o.sourceType!,
      unittest.equals('foo'),
    );
  }
  buildCounterRestoreTableMetadata--;
}

core.int buildCounterRestoreTableRequest = 0;
api.RestoreTableRequest buildRestoreTableRequest() {
  final o = api.RestoreTableRequest();
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
    unittest.expect(
      o.backup!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tableId!,
      unittest.equals('foo'),
    );
  }
  buildCounterRestoreTableRequest--;
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

core.int buildCounterSingleClusterRouting = 0;
api.SingleClusterRouting buildSingleClusterRouting() {
  final o = api.SingleClusterRouting();
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
    unittest.expect(o.allowTransactionalWrites!, unittest.isTrue);
    unittest.expect(
      o.clusterId!,
      unittest.equals('foo'),
    );
  }
  buildCounterSingleClusterRouting--;
}

core.int buildCounterSplit = 0;
api.Split buildSplit() {
  final o = api.Split();
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
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
  }
  buildCounterSplit--;
}

core.Map<core.String, core.Object> buildUnnamed1485() => {
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

void checkUnnamed1485(core.Map<core.String, core.Object> o) {
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

core.List<core.Map<core.String, core.Object>> buildUnnamed1486() => [
      buildUnnamed1485(),
      buildUnnamed1485(),
    ];

void checkUnnamed1486(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed1485(o[0]);
  checkUnnamed1485(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed1486();
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
    checkUnnamed1486(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.Map<core.String, api.ClusterState> buildUnnamed1487() => {
      'x': buildClusterState(),
      'y': buildClusterState(),
    };

void checkUnnamed1487(core.Map<core.String, api.ClusterState> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkClusterState(o['x']!);
  checkClusterState(o['y']!);
}

core.Map<core.String, api.ColumnFamily> buildUnnamed1488() => {
      'x': buildColumnFamily(),
      'y': buildColumnFamily(),
    };

void checkUnnamed1488(core.Map<core.String, api.ColumnFamily> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkColumnFamily(o['x']!);
  checkColumnFamily(o['y']!);
}

core.int buildCounterTable = 0;
api.Table buildTable() {
  final o = api.Table();
  buildCounterTable++;
  if (buildCounterTable < 3) {
    o.clusterStates = buildUnnamed1487();
    o.columnFamilies = buildUnnamed1488();
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
    checkUnnamed1487(o.clusterStates!);
    checkUnnamed1488(o.columnFamilies!);
    unittest.expect(
      o.granularity!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkRestoreInfo(o.restoreInfo!);
  }
  buildCounterTable--;
}

core.int buildCounterTableProgress = 0;
api.TableProgress buildTableProgress() {
  final o = api.TableProgress();
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
    unittest.expect(
      o.estimatedCopiedBytes!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.estimatedSizeBytes!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterTableProgress--;
}

core.List<core.String> buildUnnamed1489() => [
      'foo',
      'foo',
    ];

void checkUnnamed1489(core.List<core.String> o) {
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
    o.permissions = buildUnnamed1489();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

void checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed1489(o.permissions!);
  }
  buildCounterTestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed1490() => [
      'foo',
      'foo',
    ];

void checkUnnamed1490(core.List<core.String> o) {
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
    o.permissions = buildUnnamed1490();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed1490(o.permissions!);
  }
  buildCounterTestIamPermissionsResponse--;
}

core.List<api.GcRule> buildUnnamed1491() => [
      buildGcRule(),
      buildGcRule(),
    ];

void checkUnnamed1491(core.List<api.GcRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGcRule(o[0]);
  checkGcRule(o[1]);
}

core.int buildCounterUnion = 0;
api.Union buildUnion() {
  final o = api.Union();
  buildCounterUnion++;
  if (buildCounterUnion < 3) {
    o.rules = buildUnnamed1491();
  }
  buildCounterUnion--;
  return o;
}

void checkUnion(api.Union o) {
  buildCounterUnion++;
  if (buildCounterUnion < 3) {
    checkUnnamed1491(o.rules!);
  }
  buildCounterUnion--;
}

core.int buildCounterUpdateAppProfileMetadata = 0;
api.UpdateAppProfileMetadata buildUpdateAppProfileMetadata() {
  final o = api.UpdateAppProfileMetadata();
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
  final o = api.UpdateClusterMetadata();
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
    unittest.expect(
      o.finishTime!,
      unittest.equals('foo'),
    );
    checkCluster(o.originalRequest!);
    unittest.expect(
      o.requestTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterUpdateClusterMetadata--;
}

core.int buildCounterUpdateInstanceMetadata = 0;
api.UpdateInstanceMetadata buildUpdateInstanceMetadata() {
  final o = api.UpdateInstanceMetadata();
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
    unittest.expect(
      o.finishTime!,
      unittest.equals('foo'),
    );
    checkPartialUpdateInstanceRequest(o.originalRequest!);
    unittest.expect(
      o.requestTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterUpdateInstanceMetadata--;
}

void main() {
  unittest.group('obj-schema-AppProfile', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAppProfile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.AppProfile.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAppProfile(od);
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

  unittest.group('obj-schema-Backup', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBackup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Backup.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkBackup(od);
    });
  });

  unittest.group('obj-schema-BackupInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBackupInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.BackupInfo.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkBackupInfo(od);
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

  unittest.group('obj-schema-CheckConsistencyRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCheckConsistencyRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CheckConsistencyRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCheckConsistencyRequest(od);
    });
  });

  unittest.group('obj-schema-CheckConsistencyResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCheckConsistencyResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CheckConsistencyResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCheckConsistencyResponse(od);
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

  unittest.group('obj-schema-ClusterState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClusterState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ClusterState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkClusterState(od);
    });
  });

  unittest.group('obj-schema-ColumnFamily', () {
    unittest.test('to-json--from-json', () async {
      final o = buildColumnFamily();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ColumnFamily.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkColumnFamily(od);
    });
  });

  unittest.group('obj-schema-CreateBackupMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateBackupMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateBackupMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreateBackupMetadata(od);
    });
  });

  unittest.group('obj-schema-CreateClusterMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateClusterMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateClusterMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreateClusterMetadata(od);
    });
  });

  unittest.group('obj-schema-CreateClusterRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateClusterRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateClusterRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreateClusterRequest(od);
    });
  });

  unittest.group('obj-schema-CreateInstanceMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateInstanceMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateInstanceMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreateInstanceMetadata(od);
    });
  });

  unittest.group('obj-schema-CreateInstanceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateInstanceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateInstanceRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreateInstanceRequest(od);
    });
  });

  unittest.group('obj-schema-CreateTableRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateTableRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateTableRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreateTableRequest(od);
    });
  });

  unittest.group('obj-schema-DropRowRangeRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDropRowRangeRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DropRowRangeRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDropRowRangeRequest(od);
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

  unittest.group('obj-schema-EncryptionInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEncryptionInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EncryptionInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEncryptionInfo(od);
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

  unittest.group('obj-schema-FailureTrace', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFailureTrace();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FailureTrace.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFailureTrace(od);
    });
  });

  unittest.group('obj-schema-Frame', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFrame();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Frame.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkFrame(od);
    });
  });

  unittest.group('obj-schema-GcRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGcRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GcRule.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGcRule(od);
    });
  });

  unittest.group('obj-schema-GenerateConsistencyTokenRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGenerateConsistencyTokenRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GenerateConsistencyTokenRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGenerateConsistencyTokenRequest(od);
    });
  });

  unittest.group('obj-schema-GenerateConsistencyTokenResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGenerateConsistencyTokenResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GenerateConsistencyTokenResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGenerateConsistencyTokenResponse(od);
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

  unittest.group('obj-schema-Instance', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInstance();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Instance.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkInstance(od);
    });
  });

  unittest.group('obj-schema-Intersection', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIntersection();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Intersection.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIntersection(od);
    });
  });

  unittest.group('obj-schema-ListAppProfilesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAppProfilesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAppProfilesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListAppProfilesResponse(od);
    });
  });

  unittest.group('obj-schema-ListBackupsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListBackupsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListBackupsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListBackupsResponse(od);
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

  unittest.group('obj-schema-ListInstancesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListInstancesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListInstancesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListInstancesResponse(od);
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

  unittest.group('obj-schema-ListTablesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListTablesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListTablesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListTablesResponse(od);
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

  unittest.group('obj-schema-Modification', () {
    unittest.test('to-json--from-json', () async {
      final o = buildModification();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Modification.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkModification(od);
    });
  });

  unittest.group('obj-schema-ModifyColumnFamiliesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildModifyColumnFamiliesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ModifyColumnFamiliesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkModifyColumnFamiliesRequest(od);
    });
  });

  unittest.group('obj-schema-MultiClusterRoutingUseAny', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMultiClusterRoutingUseAny();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MultiClusterRoutingUseAny.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMultiClusterRoutingUseAny(od);
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

  unittest.group('obj-schema-OperationProgress', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOperationProgress();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OperationProgress.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOperationProgress(od);
    });
  });

  unittest.group('obj-schema-OptimizeRestoredTableMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOptimizeRestoredTableMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OptimizeRestoredTableMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOptimizeRestoredTableMetadata(od);
    });
  });

  unittest.group('obj-schema-PartialUpdateInstanceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPartialUpdateInstanceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PartialUpdateInstanceRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPartialUpdateInstanceRequest(od);
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

  unittest.group('obj-schema-RestoreInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRestoreInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RestoreInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRestoreInfo(od);
    });
  });

  unittest.group('obj-schema-RestoreTableMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRestoreTableMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RestoreTableMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRestoreTableMetadata(od);
    });
  });

  unittest.group('obj-schema-RestoreTableRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRestoreTableRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RestoreTableRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRestoreTableRequest(od);
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

  unittest.group('obj-schema-SingleClusterRouting', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSingleClusterRouting();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SingleClusterRouting.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSingleClusterRouting(od);
    });
  });

  unittest.group('obj-schema-Split', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSplit();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Split.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSplit(od);
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

  unittest.group('obj-schema-Table', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTable();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Table.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTable(od);
    });
  });

  unittest.group('obj-schema-TableProgress', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTableProgress();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TableProgress.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTableProgress(od);
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

  unittest.group('obj-schema-Union', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUnion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Union.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkUnion(od);
    });
  });

  unittest.group('obj-schema-UpdateAppProfileMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateAppProfileMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateAppProfileMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateAppProfileMetadata(od);
    });
  });

  unittest.group('obj-schema-UpdateClusterMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateClusterMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateClusterMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateClusterMetadata(od);
    });
  });

  unittest.group('obj-schema-UpdateInstanceMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateInstanceMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateInstanceMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateInstanceMetadata(od);
    });
  });

  unittest.group('resource-OperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.BigtableAdminApi(mock).operations;
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
          unittest.equals('v2/'),
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
      final res = api.BigtableAdminApi(mock).operations;
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
          unittest.equals('v2/'),
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
      final res = api.BigtableAdminApi(mock).operations;
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
          unittest.equals('v2/'),
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
  });

  unittest.group('resource-OperationsProjectsOperationsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.BigtableAdminApi(mock).operations.projects.operations;
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
          unittest.equals('v2/'),
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

  unittest.group('resource-ProjectsInstancesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.BigtableAdminApi(mock).projects.instances;
      final arg_request = buildCreateInstanceRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CreateInstanceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCreateInstanceRequest(obj);

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
          unittest.equals('v2/'),
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
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.BigtableAdminApi(mock).projects.instances;
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
          unittest.equals('v2/'),
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
      final res = api.BigtableAdminApi(mock).projects.instances;
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildInstance());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkInstance(response as api.Instance);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.BigtableAdminApi(mock).projects.instances;
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
          unittest.equals('v2/'),
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
      final res = api.BigtableAdminApi(mock).projects.instances;
      final arg_parent = 'foo';
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildListInstancesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageToken: arg_pageToken, $fields: arg_$fields);
      checkListInstancesResponse(response as api.ListInstancesResponse);
    });

    unittest.test('method--partialUpdateInstance', () async {
      final mock = HttpServerMock();
      final res = api.BigtableAdminApi(mock).projects.instances;
      final arg_request = buildInstance();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Instance.fromJson(json as core.Map<core.String, core.dynamic>);
        checkInstance(obj);

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
          unittest.equals('v2/'),
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
      final response = await res.partialUpdateInstance(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.BigtableAdminApi(mock).projects.instances;
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
          unittest.equals('v2/'),
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
      final res = api.BigtableAdminApi(mock).projects.instances;
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
          unittest.equals('v2/'),
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
      final res = api.BigtableAdminApi(mock).projects.instances;
      final arg_request = buildInstance();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Instance.fromJson(json as core.Map<core.String, core.dynamic>);
        checkInstance(obj);

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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildInstance());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.update(arg_request, arg_name, $fields: arg_$fields);
      checkInstance(response as api.Instance);
    });
  });

  unittest.group('resource-ProjectsInstancesAppProfilesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.BigtableAdminApi(mock).projects.instances.appProfiles;
      final arg_request = buildAppProfile();
      final arg_parent = 'foo';
      final arg_appProfileId = 'foo';
      final arg_ignoreWarnings = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AppProfile.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAppProfile(obj);

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
          unittest.equals('v2/'),
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
          queryMap['appProfileId']!.first,
          unittest.equals(arg_appProfileId),
        );
        unittest.expect(
          queryMap['ignoreWarnings']!.first,
          unittest.equals('$arg_ignoreWarnings'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAppProfile());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          appProfileId: arg_appProfileId,
          ignoreWarnings: arg_ignoreWarnings,
          $fields: arg_$fields);
      checkAppProfile(response as api.AppProfile);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.BigtableAdminApi(mock).projects.instances.appProfiles;
      final arg_name = 'foo';
      final arg_ignoreWarnings = true;
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
          unittest.equals('v2/'),
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
          queryMap['ignoreWarnings']!.first,
          unittest.equals('$arg_ignoreWarnings'),
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
          ignoreWarnings: arg_ignoreWarnings, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.BigtableAdminApi(mock).projects.instances.appProfiles;
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildAppProfile());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkAppProfile(response as api.AppProfile);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.BigtableAdminApi(mock).projects.instances.appProfiles;
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildListAppProfilesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListAppProfilesResponse(response as api.ListAppProfilesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.BigtableAdminApi(mock).projects.instances.appProfiles;
      final arg_request = buildAppProfile();
      final arg_name = 'foo';
      final arg_ignoreWarnings = true;
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AppProfile.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAppProfile(obj);

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
          unittest.equals('v2/'),
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
          queryMap['ignoreWarnings']!.first,
          unittest.equals('$arg_ignoreWarnings'),
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
      final response = await res.patch(arg_request, arg_name,
          ignoreWarnings: arg_ignoreWarnings,
          updateMask: arg_updateMask,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsInstancesClustersResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.BigtableAdminApi(mock).projects.instances.clusters;
      final arg_request = buildCluster();
      final arg_parent = 'foo';
      final arg_clusterId = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v2/'),
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
          queryMap['clusterId']!.first,
          unittest.equals(arg_clusterId),
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
          clusterId: arg_clusterId, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.BigtableAdminApi(mock).projects.instances.clusters;
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
          unittest.equals('v2/'),
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
      final res = api.BigtableAdminApi(mock).projects.instances.clusters;
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildCluster());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkCluster(response as api.Cluster);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.BigtableAdminApi(mock).projects.instances.clusters;
      final arg_parent = 'foo';
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
          unittest.equals('v2/'),
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
      final response = await res.list(arg_parent,
          pageToken: arg_pageToken, $fields: arg_$fields);
      checkListClustersResponse(response as api.ListClustersResponse);
    });

    unittest.test('method--partialUpdateCluster', () async {
      final mock = HttpServerMock();
      final res = api.BigtableAdminApi(mock).projects.instances.clusters;
      final arg_request = buildCluster();
      final arg_name = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v2/'),
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
      final response = await res.partialUpdateCluster(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.BigtableAdminApi(mock).projects.instances.clusters;
      final arg_request = buildCluster();
      final arg_name = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v2/'),
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
          await res.update(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsInstancesClustersBackupsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.BigtableAdminApi(mock).projects.instances.clusters.backups;
      final arg_request = buildBackup();
      final arg_parent = 'foo';
      final arg_backupId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Backup.fromJson(json as core.Map<core.String, core.dynamic>);
        checkBackup(obj);

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
          unittest.equals('v2/'),
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
          queryMap['backupId']!.first,
          unittest.equals(arg_backupId),
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
          backupId: arg_backupId, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.BigtableAdminApi(mock).projects.instances.clusters.backups;
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
          unittest.equals('v2/'),
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
      final res =
          api.BigtableAdminApi(mock).projects.instances.clusters.backups;
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildBackup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkBackup(response as api.Backup);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res =
          api.BigtableAdminApi(mock).projects.instances.clusters.backups;
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
          unittest.equals('v2/'),
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
      final res =
          api.BigtableAdminApi(mock).projects.instances.clusters.backups;
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildListBackupsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListBackupsResponse(response as api.ListBackupsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.BigtableAdminApi(mock).projects.instances.clusters.backups;
      final arg_request = buildBackup();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Backup.fromJson(json as core.Map<core.String, core.dynamic>);
        checkBackup(obj);

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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildBackup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkBackup(response as api.Backup);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res =
          api.BigtableAdminApi(mock).projects.instances.clusters.backups;
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
          unittest.equals('v2/'),
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
      final res =
          api.BigtableAdminApi(mock).projects.instances.clusters.backups;
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
          unittest.equals('v2/'),
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

  unittest.group('resource-ProjectsInstancesTablesResource', () {
    unittest.test('method--checkConsistency', () async {
      final mock = HttpServerMock();
      final res = api.BigtableAdminApi(mock).projects.instances.tables;
      final arg_request = buildCheckConsistencyRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CheckConsistencyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCheckConsistencyRequest(obj);

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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildCheckConsistencyResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.checkConsistency(arg_request, arg_name,
          $fields: arg_$fields);
      checkCheckConsistencyResponse(response as api.CheckConsistencyResponse);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.BigtableAdminApi(mock).projects.instances.tables;
      final arg_request = buildCreateTableRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CreateTableRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCreateTableRequest(obj);

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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildTable());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkTable(response as api.Table);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.BigtableAdminApi(mock).projects.instances.tables;
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
          unittest.equals('v2/'),
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

    unittest.test('method--dropRowRange', () async {
      final mock = HttpServerMock();
      final res = api.BigtableAdminApi(mock).projects.instances.tables;
      final arg_request = buildDropRowRangeRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.DropRowRangeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDropRowRangeRequest(obj);

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
          unittest.equals('v2/'),
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
          await res.dropRowRange(arg_request, arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--generateConsistencyToken', () async {
      final mock = HttpServerMock();
      final res = api.BigtableAdminApi(mock).projects.instances.tables;
      final arg_request = buildGenerateConsistencyTokenRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GenerateConsistencyTokenRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGenerateConsistencyTokenRequest(obj);

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
          unittest.equals('v2/'),
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
        final resp =
            convert.json.encode(buildGenerateConsistencyTokenResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.generateConsistencyToken(arg_request, arg_name,
          $fields: arg_$fields);
      checkGenerateConsistencyTokenResponse(
          response as api.GenerateConsistencyTokenResponse);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.BigtableAdminApi(mock).projects.instances.tables;
      final arg_name = 'foo';
      final arg_view = 'foo';
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildTable());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_name, view: arg_view, $fields: arg_$fields);
      checkTable(response as api.Table);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.BigtableAdminApi(mock).projects.instances.tables;
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
          unittest.equals('v2/'),
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
      final res = api.BigtableAdminApi(mock).projects.instances.tables;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_view = 'foo';
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildListTablesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          view: arg_view,
          $fields: arg_$fields);
      checkListTablesResponse(response as api.ListTablesResponse);
    });

    unittest.test('method--modifyColumnFamilies', () async {
      final mock = HttpServerMock();
      final res = api.BigtableAdminApi(mock).projects.instances.tables;
      final arg_request = buildModifyColumnFamiliesRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ModifyColumnFamiliesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkModifyColumnFamiliesRequest(obj);

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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildTable());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.modifyColumnFamilies(arg_request, arg_name,
          $fields: arg_$fields);
      checkTable(response as api.Table);
    });

    unittest.test('method--restore', () async {
      final mock = HttpServerMock();
      final res = api.BigtableAdminApi(mock).projects.instances.tables;
      final arg_request = buildRestoreTableRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RestoreTableRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRestoreTableRequest(obj);

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
          unittest.equals('v2/'),
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
          await res.restore(arg_request, arg_parent, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.BigtableAdminApi(mock).projects.instances.tables;
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
          unittest.equals('v2/'),
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
      final res = api.BigtableAdminApi(mock).projects.instances.tables;
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
          unittest.equals('v2/'),
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

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.BigtableAdminApi(mock).projects.locations;
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
          unittest.equals('v2/'),
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

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.BigtableAdminApi(mock).projects.locations;
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
          unittest.equals('v2/'),
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
}
