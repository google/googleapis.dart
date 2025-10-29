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

import 'package:googleapis/bigtableadmin/v2.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAppProfile = 0;
api.AppProfile buildAppProfile() {
  final o = api.AppProfile();
  buildCounterAppProfile++;
  if (buildCounterAppProfile < 3) {
    o.dataBoostIsolationReadOnly = buildDataBoostIsolationReadOnly();
    o.description = 'foo';
    o.etag = 'foo';
    o.multiClusterRoutingUseAny = buildMultiClusterRoutingUseAny();
    o.name = 'foo';
    o.priority = 'foo';
    o.singleClusterRouting = buildSingleClusterRouting();
    o.standardIsolation = buildStandardIsolation();
  }
  buildCounterAppProfile--;
  return o;
}

void checkAppProfile(api.AppProfile o) {
  buildCounterAppProfile++;
  if (buildCounterAppProfile < 3) {
    checkDataBoostIsolationReadOnly(o.dataBoostIsolationReadOnly!);
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.etag!, unittest.equals('foo'));
    checkMultiClusterRoutingUseAny(o.multiClusterRoutingUseAny!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.priority!, unittest.equals('foo'));
    checkSingleClusterRouting(o.singleClusterRouting!);
    checkStandardIsolation(o.standardIsolation!);
  }
  buildCounterAppProfile--;
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
    unittest.expect(o.service!, unittest.equals('foo'));
  }
  buildCounterAuditConfig--;
}

core.List<core.String> buildUnnamed1() => ['foo', 'foo'];

void checkUnnamed1(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
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
    unittest.expect(o.logType!, unittest.equals('foo'));
  }
  buildCounterAuditLogConfig--;
}

core.int buildCounterAuthorizedView = 0;
api.AuthorizedView buildAuthorizedView() {
  final o = api.AuthorizedView();
  buildCounterAuthorizedView++;
  if (buildCounterAuthorizedView < 3) {
    o.deletionProtection = true;
    o.etag = 'foo';
    o.name = 'foo';
    o.subsetView = buildGoogleBigtableAdminV2AuthorizedViewSubsetView();
  }
  buildCounterAuthorizedView--;
  return o;
}

void checkAuthorizedView(api.AuthorizedView o) {
  buildCounterAuthorizedView++;
  if (buildCounterAuthorizedView < 3) {
    unittest.expect(o.deletionProtection!, unittest.isTrue);
    unittest.expect(o.etag!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkGoogleBigtableAdminV2AuthorizedViewSubsetView(o.subsetView!);
  }
  buildCounterAuthorizedView--;
}

core.int buildCounterAutomatedBackupPolicy = 0;
api.AutomatedBackupPolicy buildAutomatedBackupPolicy() {
  final o = api.AutomatedBackupPolicy();
  buildCounterAutomatedBackupPolicy++;
  if (buildCounterAutomatedBackupPolicy < 3) {
    o.frequency = 'foo';
    o.retentionPeriod = 'foo';
  }
  buildCounterAutomatedBackupPolicy--;
  return o;
}

void checkAutomatedBackupPolicy(api.AutomatedBackupPolicy o) {
  buildCounterAutomatedBackupPolicy++;
  if (buildCounterAutomatedBackupPolicy < 3) {
    unittest.expect(o.frequency!, unittest.equals('foo'));
    unittest.expect(o.retentionPeriod!, unittest.equals('foo'));
  }
  buildCounterAutomatedBackupPolicy--;
}

core.int buildCounterAutoscalingLimits = 0;
api.AutoscalingLimits buildAutoscalingLimits() {
  final o = api.AutoscalingLimits();
  buildCounterAutoscalingLimits++;
  if (buildCounterAutoscalingLimits < 3) {
    o.maxServeNodes = 42;
    o.minServeNodes = 42;
  }
  buildCounterAutoscalingLimits--;
  return o;
}

void checkAutoscalingLimits(api.AutoscalingLimits o) {
  buildCounterAutoscalingLimits++;
  if (buildCounterAutoscalingLimits < 3) {
    unittest.expect(o.maxServeNodes!, unittest.equals(42));
    unittest.expect(o.minServeNodes!, unittest.equals(42));
  }
  buildCounterAutoscalingLimits--;
}

core.int buildCounterAutoscalingTargets = 0;
api.AutoscalingTargets buildAutoscalingTargets() {
  final o = api.AutoscalingTargets();
  buildCounterAutoscalingTargets++;
  if (buildCounterAutoscalingTargets < 3) {
    o.cpuUtilizationPercent = 42;
    o.storageUtilizationGibPerNode = 42;
  }
  buildCounterAutoscalingTargets--;
  return o;
}

void checkAutoscalingTargets(api.AutoscalingTargets o) {
  buildCounterAutoscalingTargets++;
  if (buildCounterAutoscalingTargets < 3) {
    unittest.expect(o.cpuUtilizationPercent!, unittest.equals(42));
    unittest.expect(o.storageUtilizationGibPerNode!, unittest.equals(42));
  }
  buildCounterAutoscalingTargets--;
}

core.int buildCounterBackup = 0;
api.Backup buildBackup() {
  final o = api.Backup();
  buildCounterBackup++;
  if (buildCounterBackup < 3) {
    o.backupType = 'foo';
    o.encryptionInfo = buildEncryptionInfo();
    o.endTime = 'foo';
    o.expireTime = 'foo';
    o.hotToStandardTime = 'foo';
    o.name = 'foo';
    o.sizeBytes = 'foo';
    o.sourceBackup = 'foo';
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
    unittest.expect(o.backupType!, unittest.equals('foo'));
    checkEncryptionInfo(o.encryptionInfo!);
    unittest.expect(o.endTime!, unittest.equals('foo'));
    unittest.expect(o.expireTime!, unittest.equals('foo'));
    unittest.expect(o.hotToStandardTime!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.sizeBytes!, unittest.equals('foo'));
    unittest.expect(o.sourceBackup!, unittest.equals('foo'));
    unittest.expect(o.sourceTable!, unittest.equals('foo'));
    unittest.expect(o.startTime!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
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
    o.sourceBackup = 'foo';
    o.sourceTable = 'foo';
    o.startTime = 'foo';
  }
  buildCounterBackupInfo--;
  return o;
}

void checkBackupInfo(api.BackupInfo o) {
  buildCounterBackupInfo++;
  if (buildCounterBackupInfo < 3) {
    unittest.expect(o.backup!, unittest.equals('foo'));
    unittest.expect(o.endTime!, unittest.equals('foo'));
    unittest.expect(o.sourceBackup!, unittest.equals('foo'));
    unittest.expect(o.sourceTable!, unittest.equals('foo'));
    unittest.expect(o.startTime!, unittest.equals('foo'));
  }
  buildCounterBackupInfo--;
}

core.List<core.String> buildUnnamed2() => ['foo', 'foo'];

void checkUnnamed2(core.List<core.String> o) {
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
    unittest.expect(o.role!, unittest.equals('foo'));
  }
  buildCounterBinding--;
}

core.int buildCounterChangeStreamConfig = 0;
api.ChangeStreamConfig buildChangeStreamConfig() {
  final o = api.ChangeStreamConfig();
  buildCounterChangeStreamConfig++;
  if (buildCounterChangeStreamConfig < 3) {
    o.retentionPeriod = 'foo';
  }
  buildCounterChangeStreamConfig--;
  return o;
}

void checkChangeStreamConfig(api.ChangeStreamConfig o) {
  buildCounterChangeStreamConfig++;
  if (buildCounterChangeStreamConfig < 3) {
    unittest.expect(o.retentionPeriod!, unittest.equals('foo'));
  }
  buildCounterChangeStreamConfig--;
}

core.int buildCounterCheckConsistencyRequest = 0;
api.CheckConsistencyRequest buildCheckConsistencyRequest() {
  final o = api.CheckConsistencyRequest();
  buildCounterCheckConsistencyRequest++;
  if (buildCounterCheckConsistencyRequest < 3) {
    o.consistencyToken = 'foo';
    o.dataBoostReadLocalWrites = buildDataBoostReadLocalWrites();
    o.standardReadRemoteWrites = buildStandardReadRemoteWrites();
  }
  buildCounterCheckConsistencyRequest--;
  return o;
}

void checkCheckConsistencyRequest(api.CheckConsistencyRequest o) {
  buildCounterCheckConsistencyRequest++;
  if (buildCounterCheckConsistencyRequest < 3) {
    unittest.expect(o.consistencyToken!, unittest.equals('foo'));
    checkDataBoostReadLocalWrites(o.dataBoostReadLocalWrites!);
    checkStandardReadRemoteWrites(o.standardReadRemoteWrites!);
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
    o.clusterConfig = buildClusterConfig();
    o.defaultStorageType = 'foo';
    o.encryptionConfig = buildEncryptionConfig();
    o.location = 'foo';
    o.name = 'foo';
    o.nodeScalingFactor = 'foo';
    o.serveNodes = 42;
    o.state = 'foo';
  }
  buildCounterCluster--;
  return o;
}

void checkCluster(api.Cluster o) {
  buildCounterCluster++;
  if (buildCounterCluster < 3) {
    checkClusterConfig(o.clusterConfig!);
    unittest.expect(o.defaultStorageType!, unittest.equals('foo'));
    checkEncryptionConfig(o.encryptionConfig!);
    unittest.expect(o.location!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.nodeScalingFactor!, unittest.equals('foo'));
    unittest.expect(o.serveNodes!, unittest.equals(42));
    unittest.expect(o.state!, unittest.equals('foo'));
  }
  buildCounterCluster--;
}

core.int buildCounterClusterAutoscalingConfig = 0;
api.ClusterAutoscalingConfig buildClusterAutoscalingConfig() {
  final o = api.ClusterAutoscalingConfig();
  buildCounterClusterAutoscalingConfig++;
  if (buildCounterClusterAutoscalingConfig < 3) {
    o.autoscalingLimits = buildAutoscalingLimits();
    o.autoscalingTargets = buildAutoscalingTargets();
  }
  buildCounterClusterAutoscalingConfig--;
  return o;
}

void checkClusterAutoscalingConfig(api.ClusterAutoscalingConfig o) {
  buildCounterClusterAutoscalingConfig++;
  if (buildCounterClusterAutoscalingConfig < 3) {
    checkAutoscalingLimits(o.autoscalingLimits!);
    checkAutoscalingTargets(o.autoscalingTargets!);
  }
  buildCounterClusterAutoscalingConfig--;
}

core.int buildCounterClusterConfig = 0;
api.ClusterConfig buildClusterConfig() {
  final o = api.ClusterConfig();
  buildCounterClusterConfig++;
  if (buildCounterClusterConfig < 3) {
    o.clusterAutoscalingConfig = buildClusterAutoscalingConfig();
  }
  buildCounterClusterConfig--;
  return o;
}

void checkClusterConfig(api.ClusterConfig o) {
  buildCounterClusterConfig++;
  if (buildCounterClusterConfig < 3) {
    checkClusterAutoscalingConfig(o.clusterAutoscalingConfig!);
  }
  buildCounterClusterConfig--;
}

core.List<api.EncryptionInfo> buildUnnamed3() => [
  buildEncryptionInfo(),
  buildEncryptionInfo(),
];

void checkUnnamed3(core.List<api.EncryptionInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEncryptionInfo(o[0]);
  checkEncryptionInfo(o[1]);
}

core.int buildCounterClusterState = 0;
api.ClusterState buildClusterState() {
  final o = api.ClusterState();
  buildCounterClusterState++;
  if (buildCounterClusterState < 3) {
    o.encryptionInfo = buildUnnamed3();
    o.replicationState = 'foo';
  }
  buildCounterClusterState--;
  return o;
}

void checkClusterState(api.ClusterState o) {
  buildCounterClusterState++;
  if (buildCounterClusterState < 3) {
    checkUnnamed3(o.encryptionInfo!);
    unittest.expect(o.replicationState!, unittest.equals('foo'));
  }
  buildCounterClusterState--;
}

core.int buildCounterColumnFamily = 0;
api.ColumnFamily buildColumnFamily() {
  final o = api.ColumnFamily();
  buildCounterColumnFamily++;
  if (buildCounterColumnFamily < 3) {
    o.gcRule = buildGcRule();
    o.stats = buildColumnFamilyStats();
    o.valueType = buildType();
  }
  buildCounterColumnFamily--;
  return o;
}

void checkColumnFamily(api.ColumnFamily o) {
  buildCounterColumnFamily++;
  if (buildCounterColumnFamily < 3) {
    checkGcRule(o.gcRule!);
    checkColumnFamilyStats(o.stats!);
    checkType(o.valueType!);
  }
  buildCounterColumnFamily--;
}

core.int buildCounterColumnFamilyStats = 0;
api.ColumnFamilyStats buildColumnFamilyStats() {
  final o = api.ColumnFamilyStats();
  buildCounterColumnFamilyStats++;
  if (buildCounterColumnFamilyStats < 3) {
    o.averageCellsPerColumn = 42.0;
    o.averageColumnsPerRow = 42.0;
    o.logicalDataBytes = 'foo';
  }
  buildCounterColumnFamilyStats--;
  return o;
}

void checkColumnFamilyStats(api.ColumnFamilyStats o) {
  buildCounterColumnFamilyStats++;
  if (buildCounterColumnFamilyStats < 3) {
    unittest.expect(o.averageCellsPerColumn!, unittest.equals(42.0));
    unittest.expect(o.averageColumnsPerRow!, unittest.equals(42.0));
    unittest.expect(o.logicalDataBytes!, unittest.equals('foo'));
  }
  buildCounterColumnFamilyStats--;
}

core.int buildCounterCopyBackupRequest = 0;
api.CopyBackupRequest buildCopyBackupRequest() {
  final o = api.CopyBackupRequest();
  buildCounterCopyBackupRequest++;
  if (buildCounterCopyBackupRequest < 3) {
    o.backupId = 'foo';
    o.expireTime = 'foo';
    o.sourceBackup = 'foo';
  }
  buildCounterCopyBackupRequest--;
  return o;
}

void checkCopyBackupRequest(api.CopyBackupRequest o) {
  buildCounterCopyBackupRequest++;
  if (buildCounterCopyBackupRequest < 3) {
    unittest.expect(o.backupId!, unittest.equals('foo'));
    unittest.expect(o.expireTime!, unittest.equals('foo'));
    unittest.expect(o.sourceBackup!, unittest.equals('foo'));
  }
  buildCounterCopyBackupRequest--;
}

core.Map<core.String, api.Cluster> buildUnnamed4() => {
  'x': buildCluster(),
  'y': buildCluster(),
};

void checkUnnamed4(core.Map<core.String, api.Cluster> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCluster(o['x']!);
  checkCluster(o['y']!);
}

core.int buildCounterCreateInstanceRequest = 0;
api.CreateInstanceRequest buildCreateInstanceRequest() {
  final o = api.CreateInstanceRequest();
  buildCounterCreateInstanceRequest++;
  if (buildCounterCreateInstanceRequest < 3) {
    o.clusters = buildUnnamed4();
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
    checkUnnamed4(o.clusters!);
    checkInstance(o.instance!);
    unittest.expect(o.instanceId!, unittest.equals('foo'));
    unittest.expect(o.parent!, unittest.equals('foo'));
  }
  buildCounterCreateInstanceRequest--;
}

core.List<api.Split> buildUnnamed5() => [buildSplit(), buildSplit()];

void checkUnnamed5(core.List<api.Split> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSplit(o[0]);
  checkSplit(o[1]);
}

core.int buildCounterCreateTableRequest = 0;
api.CreateTableRequest buildCreateTableRequest() {
  final o = api.CreateTableRequest();
  buildCounterCreateTableRequest++;
  if (buildCounterCreateTableRequest < 3) {
    o.initialSplits = buildUnnamed5();
    o.table = buildTable();
    o.tableId = 'foo';
  }
  buildCounterCreateTableRequest--;
  return o;
}

void checkCreateTableRequest(api.CreateTableRequest o) {
  buildCounterCreateTableRequest++;
  if (buildCounterCreateTableRequest < 3) {
    checkUnnamed5(o.initialSplits!);
    checkTable(o.table!);
    unittest.expect(o.tableId!, unittest.equals('foo'));
  }
  buildCounterCreateTableRequest--;
}

core.int buildCounterDataBoostIsolationReadOnly = 0;
api.DataBoostIsolationReadOnly buildDataBoostIsolationReadOnly() {
  final o = api.DataBoostIsolationReadOnly();
  buildCounterDataBoostIsolationReadOnly++;
  if (buildCounterDataBoostIsolationReadOnly < 3) {
    o.computeBillingOwner = 'foo';
  }
  buildCounterDataBoostIsolationReadOnly--;
  return o;
}

void checkDataBoostIsolationReadOnly(api.DataBoostIsolationReadOnly o) {
  buildCounterDataBoostIsolationReadOnly++;
  if (buildCounterDataBoostIsolationReadOnly < 3) {
    unittest.expect(o.computeBillingOwner!, unittest.equals('foo'));
  }
  buildCounterDataBoostIsolationReadOnly--;
}

core.int buildCounterDataBoostReadLocalWrites = 0;
api.DataBoostReadLocalWrites buildDataBoostReadLocalWrites() {
  final o = api.DataBoostReadLocalWrites();
  buildCounterDataBoostReadLocalWrites++;
  if (buildCounterDataBoostReadLocalWrites < 3) {}
  buildCounterDataBoostReadLocalWrites--;
  return o;
}

void checkDataBoostReadLocalWrites(api.DataBoostReadLocalWrites o) {
  buildCounterDataBoostReadLocalWrites++;
  if (buildCounterDataBoostReadLocalWrites < 3) {}
  buildCounterDataBoostReadLocalWrites--;
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
    unittest.expect(o.rowKeyPrefix!, unittest.equals('foo'));
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
    unittest.expect(o.kmsKeyName!, unittest.equals('foo'));
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
    unittest.expect(o.encryptionType!, unittest.equals('foo'));
    unittest.expect(o.kmsKeyVersion!, unittest.equals('foo'));
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
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.expression!, unittest.equals('foo'));
    unittest.expect(o.location!, unittest.equals('foo'));
    unittest.expect(o.title!, unittest.equals('foo'));
  }
  buildCounterExpr--;
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
    unittest.expect(o.maxAge!, unittest.equals('foo'));
    unittest.expect(o.maxNumVersions!, unittest.equals(42));
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
  api.GenerateConsistencyTokenRequest o,
) {
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
  api.GenerateConsistencyTokenResponse o,
) {
  buildCounterGenerateConsistencyTokenResponse++;
  if (buildCounterGenerateConsistencyTokenResponse < 3) {
    unittest.expect(o.consistencyToken!, unittest.equals('foo'));
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
    unittest.expect(o.requestedPolicyVersion!, unittest.equals(42));
  }
  buildCounterGetPolicyOptions--;
}

core.List<core.String> buildUnnamed6() => ['foo', 'foo'];

void checkUnnamed6(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed7() => ['foo', 'foo'];

void checkUnnamed7(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleBigtableAdminV2AuthorizedViewFamilySubsets = 0;
api.GoogleBigtableAdminV2AuthorizedViewFamilySubsets
buildGoogleBigtableAdminV2AuthorizedViewFamilySubsets() {
  final o = api.GoogleBigtableAdminV2AuthorizedViewFamilySubsets();
  buildCounterGoogleBigtableAdminV2AuthorizedViewFamilySubsets++;
  if (buildCounterGoogleBigtableAdminV2AuthorizedViewFamilySubsets < 3) {
    o.qualifierPrefixes = buildUnnamed6();
    o.qualifiers = buildUnnamed7();
  }
  buildCounterGoogleBigtableAdminV2AuthorizedViewFamilySubsets--;
  return o;
}

void checkGoogleBigtableAdminV2AuthorizedViewFamilySubsets(
  api.GoogleBigtableAdminV2AuthorizedViewFamilySubsets o,
) {
  buildCounterGoogleBigtableAdminV2AuthorizedViewFamilySubsets++;
  if (buildCounterGoogleBigtableAdminV2AuthorizedViewFamilySubsets < 3) {
    checkUnnamed6(o.qualifierPrefixes!);
    checkUnnamed7(o.qualifiers!);
  }
  buildCounterGoogleBigtableAdminV2AuthorizedViewFamilySubsets--;
}

core.Map<core.String, api.GoogleBigtableAdminV2AuthorizedViewFamilySubsets>
buildUnnamed8() => {
  'x': buildGoogleBigtableAdminV2AuthorizedViewFamilySubsets(),
  'y': buildGoogleBigtableAdminV2AuthorizedViewFamilySubsets(),
};

void checkUnnamed8(
  core.Map<core.String, api.GoogleBigtableAdminV2AuthorizedViewFamilySubsets> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleBigtableAdminV2AuthorizedViewFamilySubsets(o['x']!);
  checkGoogleBigtableAdminV2AuthorizedViewFamilySubsets(o['y']!);
}

core.List<core.String> buildUnnamed9() => ['foo', 'foo'];

void checkUnnamed9(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleBigtableAdminV2AuthorizedViewSubsetView = 0;
api.GoogleBigtableAdminV2AuthorizedViewSubsetView
buildGoogleBigtableAdminV2AuthorizedViewSubsetView() {
  final o = api.GoogleBigtableAdminV2AuthorizedViewSubsetView();
  buildCounterGoogleBigtableAdminV2AuthorizedViewSubsetView++;
  if (buildCounterGoogleBigtableAdminV2AuthorizedViewSubsetView < 3) {
    o.familySubsets = buildUnnamed8();
    o.rowPrefixes = buildUnnamed9();
  }
  buildCounterGoogleBigtableAdminV2AuthorizedViewSubsetView--;
  return o;
}

void checkGoogleBigtableAdminV2AuthorizedViewSubsetView(
  api.GoogleBigtableAdminV2AuthorizedViewSubsetView o,
) {
  buildCounterGoogleBigtableAdminV2AuthorizedViewSubsetView++;
  if (buildCounterGoogleBigtableAdminV2AuthorizedViewSubsetView < 3) {
    checkUnnamed8(o.familySubsets!);
    checkUnnamed9(o.rowPrefixes!);
  }
  buildCounterGoogleBigtableAdminV2AuthorizedViewSubsetView--;
}

core.int buildCounterGoogleBigtableAdminV2MaterializedViewClusterState = 0;
api.GoogleBigtableAdminV2MaterializedViewClusterState
buildGoogleBigtableAdminV2MaterializedViewClusterState() {
  final o = api.GoogleBigtableAdminV2MaterializedViewClusterState();
  buildCounterGoogleBigtableAdminV2MaterializedViewClusterState++;
  if (buildCounterGoogleBigtableAdminV2MaterializedViewClusterState < 3) {
    o.replicationState = 'foo';
  }
  buildCounterGoogleBigtableAdminV2MaterializedViewClusterState--;
  return o;
}

void checkGoogleBigtableAdminV2MaterializedViewClusterState(
  api.GoogleBigtableAdminV2MaterializedViewClusterState o,
) {
  buildCounterGoogleBigtableAdminV2MaterializedViewClusterState++;
  if (buildCounterGoogleBigtableAdminV2MaterializedViewClusterState < 3) {
    unittest.expect(o.replicationState!, unittest.equals('foo'));
  }
  buildCounterGoogleBigtableAdminV2MaterializedViewClusterState--;
}

core.int buildCounterGoogleBigtableAdminV2TypeAggregate = 0;
api.GoogleBigtableAdminV2TypeAggregate
buildGoogleBigtableAdminV2TypeAggregate() {
  final o = api.GoogleBigtableAdminV2TypeAggregate();
  buildCounterGoogleBigtableAdminV2TypeAggregate++;
  if (buildCounterGoogleBigtableAdminV2TypeAggregate < 3) {
    o.hllppUniqueCount =
        buildGoogleBigtableAdminV2TypeAggregateHyperLogLogPlusPlusUniqueCount();
    o.inputType = buildType();
    o.max = buildGoogleBigtableAdminV2TypeAggregateMax();
    o.min = buildGoogleBigtableAdminV2TypeAggregateMin();
    o.stateType = buildType();
    o.sum = buildGoogleBigtableAdminV2TypeAggregateSum();
  }
  buildCounterGoogleBigtableAdminV2TypeAggregate--;
  return o;
}

void checkGoogleBigtableAdminV2TypeAggregate(
  api.GoogleBigtableAdminV2TypeAggregate o,
) {
  buildCounterGoogleBigtableAdminV2TypeAggregate++;
  if (buildCounterGoogleBigtableAdminV2TypeAggregate < 3) {
    checkGoogleBigtableAdminV2TypeAggregateHyperLogLogPlusPlusUniqueCount(
      o.hllppUniqueCount!,
    );
    checkType(o.inputType!);
    checkGoogleBigtableAdminV2TypeAggregateMax(o.max!);
    checkGoogleBigtableAdminV2TypeAggregateMin(o.min!);
    checkType(o.stateType!);
    checkGoogleBigtableAdminV2TypeAggregateSum(o.sum!);
  }
  buildCounterGoogleBigtableAdminV2TypeAggregate--;
}

core.int
buildCounterGoogleBigtableAdminV2TypeAggregateHyperLogLogPlusPlusUniqueCount =
    0;
api.GoogleBigtableAdminV2TypeAggregateHyperLogLogPlusPlusUniqueCount
buildGoogleBigtableAdminV2TypeAggregateHyperLogLogPlusPlusUniqueCount() {
  final o =
      api.GoogleBigtableAdminV2TypeAggregateHyperLogLogPlusPlusUniqueCount();
  buildCounterGoogleBigtableAdminV2TypeAggregateHyperLogLogPlusPlusUniqueCount++;
  if (buildCounterGoogleBigtableAdminV2TypeAggregateHyperLogLogPlusPlusUniqueCount <
      3) {}
  buildCounterGoogleBigtableAdminV2TypeAggregateHyperLogLogPlusPlusUniqueCount--;
  return o;
}

void checkGoogleBigtableAdminV2TypeAggregateHyperLogLogPlusPlusUniqueCount(
  api.GoogleBigtableAdminV2TypeAggregateHyperLogLogPlusPlusUniqueCount o,
) {
  buildCounterGoogleBigtableAdminV2TypeAggregateHyperLogLogPlusPlusUniqueCount++;
  if (buildCounterGoogleBigtableAdminV2TypeAggregateHyperLogLogPlusPlusUniqueCount <
      3) {}
  buildCounterGoogleBigtableAdminV2TypeAggregateHyperLogLogPlusPlusUniqueCount--;
}

core.int buildCounterGoogleBigtableAdminV2TypeAggregateMax = 0;
api.GoogleBigtableAdminV2TypeAggregateMax
buildGoogleBigtableAdminV2TypeAggregateMax() {
  final o = api.GoogleBigtableAdminV2TypeAggregateMax();
  buildCounterGoogleBigtableAdminV2TypeAggregateMax++;
  if (buildCounterGoogleBigtableAdminV2TypeAggregateMax < 3) {}
  buildCounterGoogleBigtableAdminV2TypeAggregateMax--;
  return o;
}

void checkGoogleBigtableAdminV2TypeAggregateMax(
  api.GoogleBigtableAdminV2TypeAggregateMax o,
) {
  buildCounterGoogleBigtableAdminV2TypeAggregateMax++;
  if (buildCounterGoogleBigtableAdminV2TypeAggregateMax < 3) {}
  buildCounterGoogleBigtableAdminV2TypeAggregateMax--;
}

core.int buildCounterGoogleBigtableAdminV2TypeAggregateMin = 0;
api.GoogleBigtableAdminV2TypeAggregateMin
buildGoogleBigtableAdminV2TypeAggregateMin() {
  final o = api.GoogleBigtableAdminV2TypeAggregateMin();
  buildCounterGoogleBigtableAdminV2TypeAggregateMin++;
  if (buildCounterGoogleBigtableAdminV2TypeAggregateMin < 3) {}
  buildCounterGoogleBigtableAdminV2TypeAggregateMin--;
  return o;
}

void checkGoogleBigtableAdminV2TypeAggregateMin(
  api.GoogleBigtableAdminV2TypeAggregateMin o,
) {
  buildCounterGoogleBigtableAdminV2TypeAggregateMin++;
  if (buildCounterGoogleBigtableAdminV2TypeAggregateMin < 3) {}
  buildCounterGoogleBigtableAdminV2TypeAggregateMin--;
}

core.int buildCounterGoogleBigtableAdminV2TypeAggregateSum = 0;
api.GoogleBigtableAdminV2TypeAggregateSum
buildGoogleBigtableAdminV2TypeAggregateSum() {
  final o = api.GoogleBigtableAdminV2TypeAggregateSum();
  buildCounterGoogleBigtableAdminV2TypeAggregateSum++;
  if (buildCounterGoogleBigtableAdminV2TypeAggregateSum < 3) {}
  buildCounterGoogleBigtableAdminV2TypeAggregateSum--;
  return o;
}

void checkGoogleBigtableAdminV2TypeAggregateSum(
  api.GoogleBigtableAdminV2TypeAggregateSum o,
) {
  buildCounterGoogleBigtableAdminV2TypeAggregateSum++;
  if (buildCounterGoogleBigtableAdminV2TypeAggregateSum < 3) {}
  buildCounterGoogleBigtableAdminV2TypeAggregateSum--;
}

core.int buildCounterGoogleBigtableAdminV2TypeArray = 0;
api.GoogleBigtableAdminV2TypeArray buildGoogleBigtableAdminV2TypeArray() {
  final o = api.GoogleBigtableAdminV2TypeArray();
  buildCounterGoogleBigtableAdminV2TypeArray++;
  if (buildCounterGoogleBigtableAdminV2TypeArray < 3) {
    o.elementType = buildType();
  }
  buildCounterGoogleBigtableAdminV2TypeArray--;
  return o;
}

void checkGoogleBigtableAdminV2TypeArray(api.GoogleBigtableAdminV2TypeArray o) {
  buildCounterGoogleBigtableAdminV2TypeArray++;
  if (buildCounterGoogleBigtableAdminV2TypeArray < 3) {
    checkType(o.elementType!);
  }
  buildCounterGoogleBigtableAdminV2TypeArray--;
}

core.int buildCounterGoogleBigtableAdminV2TypeBool = 0;
api.GoogleBigtableAdminV2TypeBool buildGoogleBigtableAdminV2TypeBool() {
  final o = api.GoogleBigtableAdminV2TypeBool();
  buildCounterGoogleBigtableAdminV2TypeBool++;
  if (buildCounterGoogleBigtableAdminV2TypeBool < 3) {}
  buildCounterGoogleBigtableAdminV2TypeBool--;
  return o;
}

void checkGoogleBigtableAdminV2TypeBool(api.GoogleBigtableAdminV2TypeBool o) {
  buildCounterGoogleBigtableAdminV2TypeBool++;
  if (buildCounterGoogleBigtableAdminV2TypeBool < 3) {}
  buildCounterGoogleBigtableAdminV2TypeBool--;
}

core.int buildCounterGoogleBigtableAdminV2TypeBytes = 0;
api.GoogleBigtableAdminV2TypeBytes buildGoogleBigtableAdminV2TypeBytes() {
  final o = api.GoogleBigtableAdminV2TypeBytes();
  buildCounterGoogleBigtableAdminV2TypeBytes++;
  if (buildCounterGoogleBigtableAdminV2TypeBytes < 3) {
    o.encoding = buildGoogleBigtableAdminV2TypeBytesEncoding();
  }
  buildCounterGoogleBigtableAdminV2TypeBytes--;
  return o;
}

void checkGoogleBigtableAdminV2TypeBytes(api.GoogleBigtableAdminV2TypeBytes o) {
  buildCounterGoogleBigtableAdminV2TypeBytes++;
  if (buildCounterGoogleBigtableAdminV2TypeBytes < 3) {
    checkGoogleBigtableAdminV2TypeBytesEncoding(o.encoding!);
  }
  buildCounterGoogleBigtableAdminV2TypeBytes--;
}

core.int buildCounterGoogleBigtableAdminV2TypeBytesEncoding = 0;
api.GoogleBigtableAdminV2TypeBytesEncoding
buildGoogleBigtableAdminV2TypeBytesEncoding() {
  final o = api.GoogleBigtableAdminV2TypeBytesEncoding();
  buildCounterGoogleBigtableAdminV2TypeBytesEncoding++;
  if (buildCounterGoogleBigtableAdminV2TypeBytesEncoding < 3) {
    o.raw = buildGoogleBigtableAdminV2TypeBytesEncodingRaw();
  }
  buildCounterGoogleBigtableAdminV2TypeBytesEncoding--;
  return o;
}

void checkGoogleBigtableAdminV2TypeBytesEncoding(
  api.GoogleBigtableAdminV2TypeBytesEncoding o,
) {
  buildCounterGoogleBigtableAdminV2TypeBytesEncoding++;
  if (buildCounterGoogleBigtableAdminV2TypeBytesEncoding < 3) {
    checkGoogleBigtableAdminV2TypeBytesEncodingRaw(o.raw!);
  }
  buildCounterGoogleBigtableAdminV2TypeBytesEncoding--;
}

core.int buildCounterGoogleBigtableAdminV2TypeBytesEncodingRaw = 0;
api.GoogleBigtableAdminV2TypeBytesEncodingRaw
buildGoogleBigtableAdminV2TypeBytesEncodingRaw() {
  final o = api.GoogleBigtableAdminV2TypeBytesEncodingRaw();
  buildCounterGoogleBigtableAdminV2TypeBytesEncodingRaw++;
  if (buildCounterGoogleBigtableAdminV2TypeBytesEncodingRaw < 3) {
    o.escapeNulls = true;
  }
  buildCounterGoogleBigtableAdminV2TypeBytesEncodingRaw--;
  return o;
}

void checkGoogleBigtableAdminV2TypeBytesEncodingRaw(
  api.GoogleBigtableAdminV2TypeBytesEncodingRaw o,
) {
  buildCounterGoogleBigtableAdminV2TypeBytesEncodingRaw++;
  if (buildCounterGoogleBigtableAdminV2TypeBytesEncodingRaw < 3) {
    unittest.expect(o.escapeNulls!, unittest.isTrue);
  }
  buildCounterGoogleBigtableAdminV2TypeBytesEncodingRaw--;
}

core.int buildCounterGoogleBigtableAdminV2TypeDate = 0;
api.GoogleBigtableAdminV2TypeDate buildGoogleBigtableAdminV2TypeDate() {
  final o = api.GoogleBigtableAdminV2TypeDate();
  buildCounterGoogleBigtableAdminV2TypeDate++;
  if (buildCounterGoogleBigtableAdminV2TypeDate < 3) {}
  buildCounterGoogleBigtableAdminV2TypeDate--;
  return o;
}

void checkGoogleBigtableAdminV2TypeDate(api.GoogleBigtableAdminV2TypeDate o) {
  buildCounterGoogleBigtableAdminV2TypeDate++;
  if (buildCounterGoogleBigtableAdminV2TypeDate < 3) {}
  buildCounterGoogleBigtableAdminV2TypeDate--;
}

core.int buildCounterGoogleBigtableAdminV2TypeEnum = 0;
api.GoogleBigtableAdminV2TypeEnum buildGoogleBigtableAdminV2TypeEnum() {
  final o = api.GoogleBigtableAdminV2TypeEnum();
  buildCounterGoogleBigtableAdminV2TypeEnum++;
  if (buildCounterGoogleBigtableAdminV2TypeEnum < 3) {
    o.enumName = 'foo';
    o.schemaBundleId = 'foo';
  }
  buildCounterGoogleBigtableAdminV2TypeEnum--;
  return o;
}

void checkGoogleBigtableAdminV2TypeEnum(api.GoogleBigtableAdminV2TypeEnum o) {
  buildCounterGoogleBigtableAdminV2TypeEnum++;
  if (buildCounterGoogleBigtableAdminV2TypeEnum < 3) {
    unittest.expect(o.enumName!, unittest.equals('foo'));
    unittest.expect(o.schemaBundleId!, unittest.equals('foo'));
  }
  buildCounterGoogleBigtableAdminV2TypeEnum--;
}

core.int buildCounterGoogleBigtableAdminV2TypeFloat32 = 0;
api.GoogleBigtableAdminV2TypeFloat32 buildGoogleBigtableAdminV2TypeFloat32() {
  final o = api.GoogleBigtableAdminV2TypeFloat32();
  buildCounterGoogleBigtableAdminV2TypeFloat32++;
  if (buildCounterGoogleBigtableAdminV2TypeFloat32 < 3) {}
  buildCounterGoogleBigtableAdminV2TypeFloat32--;
  return o;
}

void checkGoogleBigtableAdminV2TypeFloat32(
  api.GoogleBigtableAdminV2TypeFloat32 o,
) {
  buildCounterGoogleBigtableAdminV2TypeFloat32++;
  if (buildCounterGoogleBigtableAdminV2TypeFloat32 < 3) {}
  buildCounterGoogleBigtableAdminV2TypeFloat32--;
}

core.int buildCounterGoogleBigtableAdminV2TypeFloat64 = 0;
api.GoogleBigtableAdminV2TypeFloat64 buildGoogleBigtableAdminV2TypeFloat64() {
  final o = api.GoogleBigtableAdminV2TypeFloat64();
  buildCounterGoogleBigtableAdminV2TypeFloat64++;
  if (buildCounterGoogleBigtableAdminV2TypeFloat64 < 3) {}
  buildCounterGoogleBigtableAdminV2TypeFloat64--;
  return o;
}

void checkGoogleBigtableAdminV2TypeFloat64(
  api.GoogleBigtableAdminV2TypeFloat64 o,
) {
  buildCounterGoogleBigtableAdminV2TypeFloat64++;
  if (buildCounterGoogleBigtableAdminV2TypeFloat64 < 3) {}
  buildCounterGoogleBigtableAdminV2TypeFloat64--;
}

core.int buildCounterGoogleBigtableAdminV2TypeInt64 = 0;
api.GoogleBigtableAdminV2TypeInt64 buildGoogleBigtableAdminV2TypeInt64() {
  final o = api.GoogleBigtableAdminV2TypeInt64();
  buildCounterGoogleBigtableAdminV2TypeInt64++;
  if (buildCounterGoogleBigtableAdminV2TypeInt64 < 3) {
    o.encoding = buildGoogleBigtableAdminV2TypeInt64Encoding();
  }
  buildCounterGoogleBigtableAdminV2TypeInt64--;
  return o;
}

void checkGoogleBigtableAdminV2TypeInt64(api.GoogleBigtableAdminV2TypeInt64 o) {
  buildCounterGoogleBigtableAdminV2TypeInt64++;
  if (buildCounterGoogleBigtableAdminV2TypeInt64 < 3) {
    checkGoogleBigtableAdminV2TypeInt64Encoding(o.encoding!);
  }
  buildCounterGoogleBigtableAdminV2TypeInt64--;
}

core.int buildCounterGoogleBigtableAdminV2TypeInt64Encoding = 0;
api.GoogleBigtableAdminV2TypeInt64Encoding
buildGoogleBigtableAdminV2TypeInt64Encoding() {
  final o = api.GoogleBigtableAdminV2TypeInt64Encoding();
  buildCounterGoogleBigtableAdminV2TypeInt64Encoding++;
  if (buildCounterGoogleBigtableAdminV2TypeInt64Encoding < 3) {
    o.bigEndianBytes =
        buildGoogleBigtableAdminV2TypeInt64EncodingBigEndianBytes();
    o.orderedCodeBytes =
        buildGoogleBigtableAdminV2TypeInt64EncodingOrderedCodeBytes();
  }
  buildCounterGoogleBigtableAdminV2TypeInt64Encoding--;
  return o;
}

void checkGoogleBigtableAdminV2TypeInt64Encoding(
  api.GoogleBigtableAdminV2TypeInt64Encoding o,
) {
  buildCounterGoogleBigtableAdminV2TypeInt64Encoding++;
  if (buildCounterGoogleBigtableAdminV2TypeInt64Encoding < 3) {
    checkGoogleBigtableAdminV2TypeInt64EncodingBigEndianBytes(
      o.bigEndianBytes!,
    );
    checkGoogleBigtableAdminV2TypeInt64EncodingOrderedCodeBytes(
      o.orderedCodeBytes!,
    );
  }
  buildCounterGoogleBigtableAdminV2TypeInt64Encoding--;
}

core.int buildCounterGoogleBigtableAdminV2TypeInt64EncodingBigEndianBytes = 0;
api.GoogleBigtableAdminV2TypeInt64EncodingBigEndianBytes
buildGoogleBigtableAdminV2TypeInt64EncodingBigEndianBytes() {
  final o = api.GoogleBigtableAdminV2TypeInt64EncodingBigEndianBytes();
  buildCounterGoogleBigtableAdminV2TypeInt64EncodingBigEndianBytes++;
  if (buildCounterGoogleBigtableAdminV2TypeInt64EncodingBigEndianBytes < 3) {
    o.bytesType = buildGoogleBigtableAdminV2TypeBytes();
  }
  buildCounterGoogleBigtableAdminV2TypeInt64EncodingBigEndianBytes--;
  return o;
}

void checkGoogleBigtableAdminV2TypeInt64EncodingBigEndianBytes(
  api.GoogleBigtableAdminV2TypeInt64EncodingBigEndianBytes o,
) {
  buildCounterGoogleBigtableAdminV2TypeInt64EncodingBigEndianBytes++;
  if (buildCounterGoogleBigtableAdminV2TypeInt64EncodingBigEndianBytes < 3) {
    checkGoogleBigtableAdminV2TypeBytes(o.bytesType!);
  }
  buildCounterGoogleBigtableAdminV2TypeInt64EncodingBigEndianBytes--;
}

core.int buildCounterGoogleBigtableAdminV2TypeInt64EncodingOrderedCodeBytes = 0;
api.GoogleBigtableAdminV2TypeInt64EncodingOrderedCodeBytes
buildGoogleBigtableAdminV2TypeInt64EncodingOrderedCodeBytes() {
  final o = api.GoogleBigtableAdminV2TypeInt64EncodingOrderedCodeBytes();
  buildCounterGoogleBigtableAdminV2TypeInt64EncodingOrderedCodeBytes++;
  if (buildCounterGoogleBigtableAdminV2TypeInt64EncodingOrderedCodeBytes < 3) {}
  buildCounterGoogleBigtableAdminV2TypeInt64EncodingOrderedCodeBytes--;
  return o;
}

void checkGoogleBigtableAdminV2TypeInt64EncodingOrderedCodeBytes(
  api.GoogleBigtableAdminV2TypeInt64EncodingOrderedCodeBytes o,
) {
  buildCounterGoogleBigtableAdminV2TypeInt64EncodingOrderedCodeBytes++;
  if (buildCounterGoogleBigtableAdminV2TypeInt64EncodingOrderedCodeBytes < 3) {}
  buildCounterGoogleBigtableAdminV2TypeInt64EncodingOrderedCodeBytes--;
}

core.int buildCounterGoogleBigtableAdminV2TypeMap = 0;
api.GoogleBigtableAdminV2TypeMap buildGoogleBigtableAdminV2TypeMap() {
  final o = api.GoogleBigtableAdminV2TypeMap();
  buildCounterGoogleBigtableAdminV2TypeMap++;
  if (buildCounterGoogleBigtableAdminV2TypeMap < 3) {
    o.keyType = buildType();
    o.valueType = buildType();
  }
  buildCounterGoogleBigtableAdminV2TypeMap--;
  return o;
}

void checkGoogleBigtableAdminV2TypeMap(api.GoogleBigtableAdminV2TypeMap o) {
  buildCounterGoogleBigtableAdminV2TypeMap++;
  if (buildCounterGoogleBigtableAdminV2TypeMap < 3) {
    checkType(o.keyType!);
    checkType(o.valueType!);
  }
  buildCounterGoogleBigtableAdminV2TypeMap--;
}

core.int buildCounterGoogleBigtableAdminV2TypeProto = 0;
api.GoogleBigtableAdminV2TypeProto buildGoogleBigtableAdminV2TypeProto() {
  final o = api.GoogleBigtableAdminV2TypeProto();
  buildCounterGoogleBigtableAdminV2TypeProto++;
  if (buildCounterGoogleBigtableAdminV2TypeProto < 3) {
    o.messageName = 'foo';
    o.schemaBundleId = 'foo';
  }
  buildCounterGoogleBigtableAdminV2TypeProto--;
  return o;
}

void checkGoogleBigtableAdminV2TypeProto(api.GoogleBigtableAdminV2TypeProto o) {
  buildCounterGoogleBigtableAdminV2TypeProto++;
  if (buildCounterGoogleBigtableAdminV2TypeProto < 3) {
    unittest.expect(o.messageName!, unittest.equals('foo'));
    unittest.expect(o.schemaBundleId!, unittest.equals('foo'));
  }
  buildCounterGoogleBigtableAdminV2TypeProto--;
}

core.int buildCounterGoogleBigtableAdminV2TypeString = 0;
api.GoogleBigtableAdminV2TypeString buildGoogleBigtableAdminV2TypeString() {
  final o = api.GoogleBigtableAdminV2TypeString();
  buildCounterGoogleBigtableAdminV2TypeString++;
  if (buildCounterGoogleBigtableAdminV2TypeString < 3) {
    o.encoding = buildGoogleBigtableAdminV2TypeStringEncoding();
  }
  buildCounterGoogleBigtableAdminV2TypeString--;
  return o;
}

void checkGoogleBigtableAdminV2TypeString(
  api.GoogleBigtableAdminV2TypeString o,
) {
  buildCounterGoogleBigtableAdminV2TypeString++;
  if (buildCounterGoogleBigtableAdminV2TypeString < 3) {
    checkGoogleBigtableAdminV2TypeStringEncoding(o.encoding!);
  }
  buildCounterGoogleBigtableAdminV2TypeString--;
}

core.int buildCounterGoogleBigtableAdminV2TypeStringEncoding = 0;
api.GoogleBigtableAdminV2TypeStringEncoding
buildGoogleBigtableAdminV2TypeStringEncoding() {
  final o = api.GoogleBigtableAdminV2TypeStringEncoding();
  buildCounterGoogleBigtableAdminV2TypeStringEncoding++;
  if (buildCounterGoogleBigtableAdminV2TypeStringEncoding < 3) {
    o.utf8Bytes = buildGoogleBigtableAdminV2TypeStringEncodingUtf8Bytes();
    o.utf8Raw = buildGoogleBigtableAdminV2TypeStringEncodingUtf8Raw();
  }
  buildCounterGoogleBigtableAdminV2TypeStringEncoding--;
  return o;
}

void checkGoogleBigtableAdminV2TypeStringEncoding(
  api.GoogleBigtableAdminV2TypeStringEncoding o,
) {
  buildCounterGoogleBigtableAdminV2TypeStringEncoding++;
  if (buildCounterGoogleBigtableAdminV2TypeStringEncoding < 3) {
    checkGoogleBigtableAdminV2TypeStringEncodingUtf8Bytes(o.utf8Bytes!);
    checkGoogleBigtableAdminV2TypeStringEncodingUtf8Raw(o.utf8Raw!);
  }
  buildCounterGoogleBigtableAdminV2TypeStringEncoding--;
}

core.int buildCounterGoogleBigtableAdminV2TypeStringEncodingUtf8Bytes = 0;
api.GoogleBigtableAdminV2TypeStringEncodingUtf8Bytes
buildGoogleBigtableAdminV2TypeStringEncodingUtf8Bytes() {
  final o = api.GoogleBigtableAdminV2TypeStringEncodingUtf8Bytes();
  buildCounterGoogleBigtableAdminV2TypeStringEncodingUtf8Bytes++;
  if (buildCounterGoogleBigtableAdminV2TypeStringEncodingUtf8Bytes < 3) {
    o.nullEscapeChar = 'foo';
  }
  buildCounterGoogleBigtableAdminV2TypeStringEncodingUtf8Bytes--;
  return o;
}

void checkGoogleBigtableAdminV2TypeStringEncodingUtf8Bytes(
  api.GoogleBigtableAdminV2TypeStringEncodingUtf8Bytes o,
) {
  buildCounterGoogleBigtableAdminV2TypeStringEncodingUtf8Bytes++;
  if (buildCounterGoogleBigtableAdminV2TypeStringEncodingUtf8Bytes < 3) {
    unittest.expect(o.nullEscapeChar!, unittest.equals('foo'));
  }
  buildCounterGoogleBigtableAdminV2TypeStringEncodingUtf8Bytes--;
}

core.int buildCounterGoogleBigtableAdminV2TypeStringEncodingUtf8Raw = 0;
api.GoogleBigtableAdminV2TypeStringEncodingUtf8Raw
buildGoogleBigtableAdminV2TypeStringEncodingUtf8Raw() {
  final o = api.GoogleBigtableAdminV2TypeStringEncodingUtf8Raw();
  buildCounterGoogleBigtableAdminV2TypeStringEncodingUtf8Raw++;
  if (buildCounterGoogleBigtableAdminV2TypeStringEncodingUtf8Raw < 3) {}
  buildCounterGoogleBigtableAdminV2TypeStringEncodingUtf8Raw--;
  return o;
}

void checkGoogleBigtableAdminV2TypeStringEncodingUtf8Raw(
  api.GoogleBigtableAdminV2TypeStringEncodingUtf8Raw o,
) {
  buildCounterGoogleBigtableAdminV2TypeStringEncodingUtf8Raw++;
  if (buildCounterGoogleBigtableAdminV2TypeStringEncodingUtf8Raw < 3) {}
  buildCounterGoogleBigtableAdminV2TypeStringEncodingUtf8Raw--;
}

core.List<api.GoogleBigtableAdminV2TypeStructField> buildUnnamed10() => [
  buildGoogleBigtableAdminV2TypeStructField(),
  buildGoogleBigtableAdminV2TypeStructField(),
];

void checkUnnamed10(core.List<api.GoogleBigtableAdminV2TypeStructField> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleBigtableAdminV2TypeStructField(o[0]);
  checkGoogleBigtableAdminV2TypeStructField(o[1]);
}

core.int buildCounterGoogleBigtableAdminV2TypeStruct = 0;
api.GoogleBigtableAdminV2TypeStruct buildGoogleBigtableAdminV2TypeStruct() {
  final o = api.GoogleBigtableAdminV2TypeStruct();
  buildCounterGoogleBigtableAdminV2TypeStruct++;
  if (buildCounterGoogleBigtableAdminV2TypeStruct < 3) {
    o.encoding = buildGoogleBigtableAdminV2TypeStructEncoding();
    o.fields = buildUnnamed10();
  }
  buildCounterGoogleBigtableAdminV2TypeStruct--;
  return o;
}

void checkGoogleBigtableAdminV2TypeStruct(
  api.GoogleBigtableAdminV2TypeStruct o,
) {
  buildCounterGoogleBigtableAdminV2TypeStruct++;
  if (buildCounterGoogleBigtableAdminV2TypeStruct < 3) {
    checkGoogleBigtableAdminV2TypeStructEncoding(o.encoding!);
    checkUnnamed10(o.fields!);
  }
  buildCounterGoogleBigtableAdminV2TypeStruct--;
}

core.int buildCounterGoogleBigtableAdminV2TypeStructEncoding = 0;
api.GoogleBigtableAdminV2TypeStructEncoding
buildGoogleBigtableAdminV2TypeStructEncoding() {
  final o = api.GoogleBigtableAdminV2TypeStructEncoding();
  buildCounterGoogleBigtableAdminV2TypeStructEncoding++;
  if (buildCounterGoogleBigtableAdminV2TypeStructEncoding < 3) {
    o.delimitedBytes =
        buildGoogleBigtableAdminV2TypeStructEncodingDelimitedBytes();
    o.orderedCodeBytes =
        buildGoogleBigtableAdminV2TypeStructEncodingOrderedCodeBytes();
    o.singleton = buildGoogleBigtableAdminV2TypeStructEncodingSingleton();
  }
  buildCounterGoogleBigtableAdminV2TypeStructEncoding--;
  return o;
}

void checkGoogleBigtableAdminV2TypeStructEncoding(
  api.GoogleBigtableAdminV2TypeStructEncoding o,
) {
  buildCounterGoogleBigtableAdminV2TypeStructEncoding++;
  if (buildCounterGoogleBigtableAdminV2TypeStructEncoding < 3) {
    checkGoogleBigtableAdminV2TypeStructEncodingDelimitedBytes(
      o.delimitedBytes!,
    );
    checkGoogleBigtableAdminV2TypeStructEncodingOrderedCodeBytes(
      o.orderedCodeBytes!,
    );
    checkGoogleBigtableAdminV2TypeStructEncodingSingleton(o.singleton!);
  }
  buildCounterGoogleBigtableAdminV2TypeStructEncoding--;
}

core.int buildCounterGoogleBigtableAdminV2TypeStructEncodingDelimitedBytes = 0;
api.GoogleBigtableAdminV2TypeStructEncodingDelimitedBytes
buildGoogleBigtableAdminV2TypeStructEncodingDelimitedBytes() {
  final o = api.GoogleBigtableAdminV2TypeStructEncodingDelimitedBytes();
  buildCounterGoogleBigtableAdminV2TypeStructEncodingDelimitedBytes++;
  if (buildCounterGoogleBigtableAdminV2TypeStructEncodingDelimitedBytes < 3) {
    o.delimiter = 'foo';
  }
  buildCounterGoogleBigtableAdminV2TypeStructEncodingDelimitedBytes--;
  return o;
}

void checkGoogleBigtableAdminV2TypeStructEncodingDelimitedBytes(
  api.GoogleBigtableAdminV2TypeStructEncodingDelimitedBytes o,
) {
  buildCounterGoogleBigtableAdminV2TypeStructEncodingDelimitedBytes++;
  if (buildCounterGoogleBigtableAdminV2TypeStructEncodingDelimitedBytes < 3) {
    unittest.expect(o.delimiter!, unittest.equals('foo'));
  }
  buildCounterGoogleBigtableAdminV2TypeStructEncodingDelimitedBytes--;
}

core.int buildCounterGoogleBigtableAdminV2TypeStructEncodingOrderedCodeBytes =
    0;
api.GoogleBigtableAdminV2TypeStructEncodingOrderedCodeBytes
buildGoogleBigtableAdminV2TypeStructEncodingOrderedCodeBytes() {
  final o = api.GoogleBigtableAdminV2TypeStructEncodingOrderedCodeBytes();
  buildCounterGoogleBigtableAdminV2TypeStructEncodingOrderedCodeBytes++;
  if (buildCounterGoogleBigtableAdminV2TypeStructEncodingOrderedCodeBytes <
      3) {}
  buildCounterGoogleBigtableAdminV2TypeStructEncodingOrderedCodeBytes--;
  return o;
}

void checkGoogleBigtableAdminV2TypeStructEncodingOrderedCodeBytes(
  api.GoogleBigtableAdminV2TypeStructEncodingOrderedCodeBytes o,
) {
  buildCounterGoogleBigtableAdminV2TypeStructEncodingOrderedCodeBytes++;
  if (buildCounterGoogleBigtableAdminV2TypeStructEncodingOrderedCodeBytes <
      3) {}
  buildCounterGoogleBigtableAdminV2TypeStructEncodingOrderedCodeBytes--;
}

core.int buildCounterGoogleBigtableAdminV2TypeStructEncodingSingleton = 0;
api.GoogleBigtableAdminV2TypeStructEncodingSingleton
buildGoogleBigtableAdminV2TypeStructEncodingSingleton() {
  final o = api.GoogleBigtableAdminV2TypeStructEncodingSingleton();
  buildCounterGoogleBigtableAdminV2TypeStructEncodingSingleton++;
  if (buildCounterGoogleBigtableAdminV2TypeStructEncodingSingleton < 3) {}
  buildCounterGoogleBigtableAdminV2TypeStructEncodingSingleton--;
  return o;
}

void checkGoogleBigtableAdminV2TypeStructEncodingSingleton(
  api.GoogleBigtableAdminV2TypeStructEncodingSingleton o,
) {
  buildCounterGoogleBigtableAdminV2TypeStructEncodingSingleton++;
  if (buildCounterGoogleBigtableAdminV2TypeStructEncodingSingleton < 3) {}
  buildCounterGoogleBigtableAdminV2TypeStructEncodingSingleton--;
}

core.int buildCounterGoogleBigtableAdminV2TypeStructField = 0;
api.GoogleBigtableAdminV2TypeStructField
buildGoogleBigtableAdminV2TypeStructField() {
  final o = api.GoogleBigtableAdminV2TypeStructField();
  buildCounterGoogleBigtableAdminV2TypeStructField++;
  if (buildCounterGoogleBigtableAdminV2TypeStructField < 3) {
    o.fieldName = 'foo';
    o.type = buildType();
  }
  buildCounterGoogleBigtableAdminV2TypeStructField--;
  return o;
}

void checkGoogleBigtableAdminV2TypeStructField(
  api.GoogleBigtableAdminV2TypeStructField o,
) {
  buildCounterGoogleBigtableAdminV2TypeStructField++;
  if (buildCounterGoogleBigtableAdminV2TypeStructField < 3) {
    unittest.expect(o.fieldName!, unittest.equals('foo'));
    checkType(o.type!);
  }
  buildCounterGoogleBigtableAdminV2TypeStructField--;
}

core.int buildCounterGoogleBigtableAdminV2TypeTimestamp = 0;
api.GoogleBigtableAdminV2TypeTimestamp
buildGoogleBigtableAdminV2TypeTimestamp() {
  final o = api.GoogleBigtableAdminV2TypeTimestamp();
  buildCounterGoogleBigtableAdminV2TypeTimestamp++;
  if (buildCounterGoogleBigtableAdminV2TypeTimestamp < 3) {
    o.encoding = buildGoogleBigtableAdminV2TypeTimestampEncoding();
  }
  buildCounterGoogleBigtableAdminV2TypeTimestamp--;
  return o;
}

void checkGoogleBigtableAdminV2TypeTimestamp(
  api.GoogleBigtableAdminV2TypeTimestamp o,
) {
  buildCounterGoogleBigtableAdminV2TypeTimestamp++;
  if (buildCounterGoogleBigtableAdminV2TypeTimestamp < 3) {
    checkGoogleBigtableAdminV2TypeTimestampEncoding(o.encoding!);
  }
  buildCounterGoogleBigtableAdminV2TypeTimestamp--;
}

core.int buildCounterGoogleBigtableAdminV2TypeTimestampEncoding = 0;
api.GoogleBigtableAdminV2TypeTimestampEncoding
buildGoogleBigtableAdminV2TypeTimestampEncoding() {
  final o = api.GoogleBigtableAdminV2TypeTimestampEncoding();
  buildCounterGoogleBigtableAdminV2TypeTimestampEncoding++;
  if (buildCounterGoogleBigtableAdminV2TypeTimestampEncoding < 3) {
    o.unixMicrosInt64 = buildGoogleBigtableAdminV2TypeInt64Encoding();
  }
  buildCounterGoogleBigtableAdminV2TypeTimestampEncoding--;
  return o;
}

void checkGoogleBigtableAdminV2TypeTimestampEncoding(
  api.GoogleBigtableAdminV2TypeTimestampEncoding o,
) {
  buildCounterGoogleBigtableAdminV2TypeTimestampEncoding++;
  if (buildCounterGoogleBigtableAdminV2TypeTimestampEncoding < 3) {
    checkGoogleBigtableAdminV2TypeInt64Encoding(o.unixMicrosInt64!);
  }
  buildCounterGoogleBigtableAdminV2TypeTimestampEncoding--;
}

core.int buildCounterHotTablet = 0;
api.HotTablet buildHotTablet() {
  final o = api.HotTablet();
  buildCounterHotTablet++;
  if (buildCounterHotTablet < 3) {
    o.endKey = 'foo';
    o.endTime = 'foo';
    o.name = 'foo';
    o.nodeCpuUsagePercent = 42.0;
    o.startKey = 'foo';
    o.startTime = 'foo';
    o.tableName = 'foo';
  }
  buildCounterHotTablet--;
  return o;
}

void checkHotTablet(api.HotTablet o) {
  buildCounterHotTablet++;
  if (buildCounterHotTablet < 3) {
    unittest.expect(o.endKey!, unittest.equals('foo'));
    unittest.expect(o.endTime!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.nodeCpuUsagePercent!, unittest.equals(42.0));
    unittest.expect(o.startKey!, unittest.equals('foo'));
    unittest.expect(o.startTime!, unittest.equals('foo'));
    unittest.expect(o.tableName!, unittest.equals('foo'));
  }
  buildCounterHotTablet--;
}

core.Map<core.String, core.String> buildUnnamed11() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed11(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed12() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed12(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterInstance = 0;
api.Instance buildInstance() {
  final o = api.Instance();
  buildCounterInstance++;
  if (buildCounterInstance < 3) {
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.labels = buildUnnamed11();
    o.name = 'foo';
    o.satisfiesPzi = true;
    o.satisfiesPzs = true;
    o.state = 'foo';
    o.tags = buildUnnamed12();
    o.type = 'foo';
  }
  buildCounterInstance--;
  return o;
}

void checkInstance(api.Instance o) {
  buildCounterInstance++;
  if (buildCounterInstance < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkUnnamed11(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.satisfiesPzi!, unittest.isTrue);
    unittest.expect(o.satisfiesPzs!, unittest.isTrue);
    unittest.expect(o.state!, unittest.equals('foo'));
    checkUnnamed12(o.tags!);
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterInstance--;
}

core.List<api.GcRule> buildUnnamed13() => [buildGcRule(), buildGcRule()];

void checkUnnamed13(core.List<api.GcRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGcRule(o[0]);
  checkGcRule(o[1]);
}

core.int buildCounterIntersection = 0;
api.Intersection buildIntersection() {
  final o = api.Intersection();
  buildCounterIntersection++;
  if (buildCounterIntersection < 3) {
    o.rules = buildUnnamed13();
  }
  buildCounterIntersection--;
  return o;
}

void checkIntersection(api.Intersection o) {
  buildCounterIntersection++;
  if (buildCounterIntersection < 3) {
    checkUnnamed13(o.rules!);
  }
  buildCounterIntersection--;
}

core.List<api.AppProfile> buildUnnamed14() => [
  buildAppProfile(),
  buildAppProfile(),
];

void checkUnnamed14(core.List<api.AppProfile> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAppProfile(o[0]);
  checkAppProfile(o[1]);
}

core.List<core.String> buildUnnamed15() => ['foo', 'foo'];

void checkUnnamed15(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListAppProfilesResponse = 0;
api.ListAppProfilesResponse buildListAppProfilesResponse() {
  final o = api.ListAppProfilesResponse();
  buildCounterListAppProfilesResponse++;
  if (buildCounterListAppProfilesResponse < 3) {
    o.appProfiles = buildUnnamed14();
    o.failedLocations = buildUnnamed15();
    o.nextPageToken = 'foo';
  }
  buildCounterListAppProfilesResponse--;
  return o;
}

void checkListAppProfilesResponse(api.ListAppProfilesResponse o) {
  buildCounterListAppProfilesResponse++;
  if (buildCounterListAppProfilesResponse < 3) {
    checkUnnamed14(o.appProfiles!);
    checkUnnamed15(o.failedLocations!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListAppProfilesResponse--;
}

core.List<api.AuthorizedView> buildUnnamed16() => [
  buildAuthorizedView(),
  buildAuthorizedView(),
];

void checkUnnamed16(core.List<api.AuthorizedView> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuthorizedView(o[0]);
  checkAuthorizedView(o[1]);
}

core.int buildCounterListAuthorizedViewsResponse = 0;
api.ListAuthorizedViewsResponse buildListAuthorizedViewsResponse() {
  final o = api.ListAuthorizedViewsResponse();
  buildCounterListAuthorizedViewsResponse++;
  if (buildCounterListAuthorizedViewsResponse < 3) {
    o.authorizedViews = buildUnnamed16();
    o.nextPageToken = 'foo';
  }
  buildCounterListAuthorizedViewsResponse--;
  return o;
}

void checkListAuthorizedViewsResponse(api.ListAuthorizedViewsResponse o) {
  buildCounterListAuthorizedViewsResponse++;
  if (buildCounterListAuthorizedViewsResponse < 3) {
    checkUnnamed16(o.authorizedViews!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListAuthorizedViewsResponse--;
}

core.List<api.Backup> buildUnnamed17() => [buildBackup(), buildBackup()];

void checkUnnamed17(core.List<api.Backup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBackup(o[0]);
  checkBackup(o[1]);
}

core.int buildCounterListBackupsResponse = 0;
api.ListBackupsResponse buildListBackupsResponse() {
  final o = api.ListBackupsResponse();
  buildCounterListBackupsResponse++;
  if (buildCounterListBackupsResponse < 3) {
    o.backups = buildUnnamed17();
    o.nextPageToken = 'foo';
  }
  buildCounterListBackupsResponse--;
  return o;
}

void checkListBackupsResponse(api.ListBackupsResponse o) {
  buildCounterListBackupsResponse++;
  if (buildCounterListBackupsResponse < 3) {
    checkUnnamed17(o.backups!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListBackupsResponse--;
}

core.List<api.Cluster> buildUnnamed18() => [buildCluster(), buildCluster()];

void checkUnnamed18(core.List<api.Cluster> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCluster(o[0]);
  checkCluster(o[1]);
}

core.List<core.String> buildUnnamed19() => ['foo', 'foo'];

void checkUnnamed19(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListClustersResponse = 0;
api.ListClustersResponse buildListClustersResponse() {
  final o = api.ListClustersResponse();
  buildCounterListClustersResponse++;
  if (buildCounterListClustersResponse < 3) {
    o.clusters = buildUnnamed18();
    o.failedLocations = buildUnnamed19();
    o.nextPageToken = 'foo';
  }
  buildCounterListClustersResponse--;
  return o;
}

void checkListClustersResponse(api.ListClustersResponse o) {
  buildCounterListClustersResponse++;
  if (buildCounterListClustersResponse < 3) {
    checkUnnamed18(o.clusters!);
    checkUnnamed19(o.failedLocations!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListClustersResponse--;
}

core.List<api.HotTablet> buildUnnamed20() => [
  buildHotTablet(),
  buildHotTablet(),
];

void checkUnnamed20(core.List<api.HotTablet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHotTablet(o[0]);
  checkHotTablet(o[1]);
}

core.int buildCounterListHotTabletsResponse = 0;
api.ListHotTabletsResponse buildListHotTabletsResponse() {
  final o = api.ListHotTabletsResponse();
  buildCounterListHotTabletsResponse++;
  if (buildCounterListHotTabletsResponse < 3) {
    o.hotTablets = buildUnnamed20();
    o.nextPageToken = 'foo';
  }
  buildCounterListHotTabletsResponse--;
  return o;
}

void checkListHotTabletsResponse(api.ListHotTabletsResponse o) {
  buildCounterListHotTabletsResponse++;
  if (buildCounterListHotTabletsResponse < 3) {
    checkUnnamed20(o.hotTablets!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListHotTabletsResponse--;
}

core.List<core.String> buildUnnamed21() => ['foo', 'foo'];

void checkUnnamed21(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.Instance> buildUnnamed22() => [buildInstance(), buildInstance()];

void checkUnnamed22(core.List<api.Instance> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInstance(o[0]);
  checkInstance(o[1]);
}

core.int buildCounterListInstancesResponse = 0;
api.ListInstancesResponse buildListInstancesResponse() {
  final o = api.ListInstancesResponse();
  buildCounterListInstancesResponse++;
  if (buildCounterListInstancesResponse < 3) {
    o.failedLocations = buildUnnamed21();
    o.instances = buildUnnamed22();
    o.nextPageToken = 'foo';
  }
  buildCounterListInstancesResponse--;
  return o;
}

void checkListInstancesResponse(api.ListInstancesResponse o) {
  buildCounterListInstancesResponse++;
  if (buildCounterListInstancesResponse < 3) {
    checkUnnamed21(o.failedLocations!);
    checkUnnamed22(o.instances!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListInstancesResponse--;
}

core.List<api.Location> buildUnnamed23() => [buildLocation(), buildLocation()];

void checkUnnamed23(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  final o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed23();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed23(o.locations!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListLocationsResponse--;
}

core.List<api.LogicalView> buildUnnamed24() => [
  buildLogicalView(),
  buildLogicalView(),
];

void checkUnnamed24(core.List<api.LogicalView> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLogicalView(o[0]);
  checkLogicalView(o[1]);
}

core.int buildCounterListLogicalViewsResponse = 0;
api.ListLogicalViewsResponse buildListLogicalViewsResponse() {
  final o = api.ListLogicalViewsResponse();
  buildCounterListLogicalViewsResponse++;
  if (buildCounterListLogicalViewsResponse < 3) {
    o.logicalViews = buildUnnamed24();
    o.nextPageToken = 'foo';
  }
  buildCounterListLogicalViewsResponse--;
  return o;
}

void checkListLogicalViewsResponse(api.ListLogicalViewsResponse o) {
  buildCounterListLogicalViewsResponse++;
  if (buildCounterListLogicalViewsResponse < 3) {
    checkUnnamed24(o.logicalViews!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListLogicalViewsResponse--;
}

core.List<api.MaterializedView> buildUnnamed25() => [
  buildMaterializedView(),
  buildMaterializedView(),
];

void checkUnnamed25(core.List<api.MaterializedView> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMaterializedView(o[0]);
  checkMaterializedView(o[1]);
}

core.int buildCounterListMaterializedViewsResponse = 0;
api.ListMaterializedViewsResponse buildListMaterializedViewsResponse() {
  final o = api.ListMaterializedViewsResponse();
  buildCounterListMaterializedViewsResponse++;
  if (buildCounterListMaterializedViewsResponse < 3) {
    o.materializedViews = buildUnnamed25();
    o.nextPageToken = 'foo';
  }
  buildCounterListMaterializedViewsResponse--;
  return o;
}

void checkListMaterializedViewsResponse(api.ListMaterializedViewsResponse o) {
  buildCounterListMaterializedViewsResponse++;
  if (buildCounterListMaterializedViewsResponse < 3) {
    checkUnnamed25(o.materializedViews!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListMaterializedViewsResponse--;
}

core.List<api.Operation> buildUnnamed26() => [
  buildOperation(),
  buildOperation(),
];

void checkUnnamed26(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0]);
  checkOperation(o[1]);
}

core.List<core.String> buildUnnamed27() => ['foo', 'foo'];

void checkUnnamed27(core.List<core.String> o) {
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
    o.operations = buildUnnamed26();
    o.unreachable = buildUnnamed27();
  }
  buildCounterListOperationsResponse--;
  return o;
}

void checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed26(o.operations!);
    checkUnnamed27(o.unreachable!);
  }
  buildCounterListOperationsResponse--;
}

core.List<api.SchemaBundle> buildUnnamed28() => [
  buildSchemaBundle(),
  buildSchemaBundle(),
];

void checkUnnamed28(core.List<api.SchemaBundle> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSchemaBundle(o[0]);
  checkSchemaBundle(o[1]);
}

core.int buildCounterListSchemaBundlesResponse = 0;
api.ListSchemaBundlesResponse buildListSchemaBundlesResponse() {
  final o = api.ListSchemaBundlesResponse();
  buildCounterListSchemaBundlesResponse++;
  if (buildCounterListSchemaBundlesResponse < 3) {
    o.nextPageToken = 'foo';
    o.schemaBundles = buildUnnamed28();
  }
  buildCounterListSchemaBundlesResponse--;
  return o;
}

void checkListSchemaBundlesResponse(api.ListSchemaBundlesResponse o) {
  buildCounterListSchemaBundlesResponse++;
  if (buildCounterListSchemaBundlesResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed28(o.schemaBundles!);
  }
  buildCounterListSchemaBundlesResponse--;
}

core.List<api.Table> buildUnnamed29() => [buildTable(), buildTable()];

void checkUnnamed29(core.List<api.Table> o) {
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
    o.tables = buildUnnamed29();
  }
  buildCounterListTablesResponse--;
  return o;
}

void checkListTablesResponse(api.ListTablesResponse o) {
  buildCounterListTablesResponse++;
  if (buildCounterListTablesResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed29(o.tables!);
  }
  buildCounterListTablesResponse--;
}

core.Map<core.String, core.String> buildUnnamed30() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed30(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.Object?> buildUnnamed31() => {
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

void checkUnnamed31(core.Map<core.String, core.Object?> o) {
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
    o.labels = buildUnnamed30();
    o.locationId = 'foo';
    o.metadata = buildUnnamed31();
    o.name = 'foo';
  }
  buildCounterLocation--;
  return o;
}

void checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkUnnamed30(o.labels!);
    unittest.expect(o.locationId!, unittest.equals('foo'));
    checkUnnamed31(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterLocation--;
}

core.int buildCounterLogicalView = 0;
api.LogicalView buildLogicalView() {
  final o = api.LogicalView();
  buildCounterLogicalView++;
  if (buildCounterLogicalView < 3) {
    o.deletionProtection = true;
    o.etag = 'foo';
    o.name = 'foo';
    o.query = 'foo';
  }
  buildCounterLogicalView--;
  return o;
}

void checkLogicalView(api.LogicalView o) {
  buildCounterLogicalView++;
  if (buildCounterLogicalView < 3) {
    unittest.expect(o.deletionProtection!, unittest.isTrue);
    unittest.expect(o.etag!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.query!, unittest.equals('foo'));
  }
  buildCounterLogicalView--;
}

core.Map<core.String, api.GoogleBigtableAdminV2MaterializedViewClusterState>
buildUnnamed32() => {
  'x': buildGoogleBigtableAdminV2MaterializedViewClusterState(),
  'y': buildGoogleBigtableAdminV2MaterializedViewClusterState(),
};

void checkUnnamed32(
  core.Map<core.String, api.GoogleBigtableAdminV2MaterializedViewClusterState>
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleBigtableAdminV2MaterializedViewClusterState(o['x']!);
  checkGoogleBigtableAdminV2MaterializedViewClusterState(o['y']!);
}

core.int buildCounterMaterializedView = 0;
api.MaterializedView buildMaterializedView() {
  final o = api.MaterializedView();
  buildCounterMaterializedView++;
  if (buildCounterMaterializedView < 3) {
    o.clusterStates = buildUnnamed32();
    o.deletionProtection = true;
    o.etag = 'foo';
    o.name = 'foo';
    o.query = 'foo';
  }
  buildCounterMaterializedView--;
  return o;
}

void checkMaterializedView(api.MaterializedView o) {
  buildCounterMaterializedView++;
  if (buildCounterMaterializedView < 3) {
    checkUnnamed32(o.clusterStates!);
    unittest.expect(o.deletionProtection!, unittest.isTrue);
    unittest.expect(o.etag!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.query!, unittest.equals('foo'));
  }
  buildCounterMaterializedView--;
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
    o.updateMask = 'foo';
  }
  buildCounterModification--;
  return o;
}

void checkModification(api.Modification o) {
  buildCounterModification++;
  if (buildCounterModification < 3) {
    checkColumnFamily(o.create!);
    unittest.expect(o.drop!, unittest.isTrue);
    unittest.expect(o.id!, unittest.equals('foo'));
    checkColumnFamily(o.update!);
    unittest.expect(o.updateMask!, unittest.equals('foo'));
  }
  buildCounterModification--;
}

core.List<api.Modification> buildUnnamed33() => [
  buildModification(),
  buildModification(),
];

void checkUnnamed33(core.List<api.Modification> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkModification(o[0]);
  checkModification(o[1]);
}

core.int buildCounterModifyColumnFamiliesRequest = 0;
api.ModifyColumnFamiliesRequest buildModifyColumnFamiliesRequest() {
  final o = api.ModifyColumnFamiliesRequest();
  buildCounterModifyColumnFamiliesRequest++;
  if (buildCounterModifyColumnFamiliesRequest < 3) {
    o.ignoreWarnings = true;
    o.modifications = buildUnnamed33();
  }
  buildCounterModifyColumnFamiliesRequest--;
  return o;
}

void checkModifyColumnFamiliesRequest(api.ModifyColumnFamiliesRequest o) {
  buildCounterModifyColumnFamiliesRequest++;
  if (buildCounterModifyColumnFamiliesRequest < 3) {
    unittest.expect(o.ignoreWarnings!, unittest.isTrue);
    checkUnnamed33(o.modifications!);
  }
  buildCounterModifyColumnFamiliesRequest--;
}

core.List<core.String> buildUnnamed34() => ['foo', 'foo'];

void checkUnnamed34(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterMultiClusterRoutingUseAny = 0;
api.MultiClusterRoutingUseAny buildMultiClusterRoutingUseAny() {
  final o = api.MultiClusterRoutingUseAny();
  buildCounterMultiClusterRoutingUseAny++;
  if (buildCounterMultiClusterRoutingUseAny < 3) {
    o.clusterIds = buildUnnamed34();
    o.rowAffinity = buildRowAffinity();
  }
  buildCounterMultiClusterRoutingUseAny--;
  return o;
}

void checkMultiClusterRoutingUseAny(api.MultiClusterRoutingUseAny o) {
  buildCounterMultiClusterRoutingUseAny++;
  if (buildCounterMultiClusterRoutingUseAny < 3) {
    checkUnnamed34(o.clusterIds!);
    checkRowAffinity(o.rowAffinity!);
  }
  buildCounterMultiClusterRoutingUseAny--;
}

core.Map<core.String, core.Object?> buildUnnamed35() => {
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

void checkUnnamed35(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed36() => {
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

void checkUnnamed36(core.Map<core.String, core.Object?> o) {
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
    o.metadata = buildUnnamed35();
    o.name = 'foo';
    o.response = buildUnnamed36();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed35(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed36(o.response!);
  }
  buildCounterOperation--;
}

core.List<api.AuditConfig> buildUnnamed37() => [
  buildAuditConfig(),
  buildAuditConfig(),
];

void checkUnnamed37(core.List<api.AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditConfig(o[0]);
  checkAuditConfig(o[1]);
}

core.List<api.Binding> buildUnnamed38() => [buildBinding(), buildBinding()];

void checkUnnamed38(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  final o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.auditConfigs = buildUnnamed37();
    o.bindings = buildUnnamed38();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed37(o.auditConfigs!);
    checkUnnamed38(o.bindings!);
    unittest.expect(o.etag!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals(42));
  }
  buildCounterPolicy--;
}

core.int buildCounterProtoSchema = 0;
api.ProtoSchema buildProtoSchema() {
  final o = api.ProtoSchema();
  buildCounterProtoSchema++;
  if (buildCounterProtoSchema < 3) {
    o.protoDescriptors = 'foo';
  }
  buildCounterProtoSchema--;
  return o;
}

void checkProtoSchema(api.ProtoSchema o) {
  buildCounterProtoSchema++;
  if (buildCounterProtoSchema < 3) {
    unittest.expect(o.protoDescriptors!, unittest.equals('foo'));
  }
  buildCounterProtoSchema--;
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
    unittest.expect(o.sourceType!, unittest.equals('foo'));
  }
  buildCounterRestoreInfo--;
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
    unittest.expect(o.backup!, unittest.equals('foo'));
    unittest.expect(o.tableId!, unittest.equals('foo'));
  }
  buildCounterRestoreTableRequest--;
}

core.int buildCounterRowAffinity = 0;
api.RowAffinity buildRowAffinity() {
  final o = api.RowAffinity();
  buildCounterRowAffinity++;
  if (buildCounterRowAffinity < 3) {}
  buildCounterRowAffinity--;
  return o;
}

void checkRowAffinity(api.RowAffinity o) {
  buildCounterRowAffinity++;
  if (buildCounterRowAffinity < 3) {}
  buildCounterRowAffinity--;
}

core.int buildCounterSchemaBundle = 0;
api.SchemaBundle buildSchemaBundle() {
  final o = api.SchemaBundle();
  buildCounterSchemaBundle++;
  if (buildCounterSchemaBundle < 3) {
    o.etag = 'foo';
    o.name = 'foo';
    o.protoSchema = buildProtoSchema();
  }
  buildCounterSchemaBundle--;
  return o;
}

void checkSchemaBundle(api.SchemaBundle o) {
  buildCounterSchemaBundle++;
  if (buildCounterSchemaBundle < 3) {
    unittest.expect(o.etag!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkProtoSchema(o.protoSchema!);
  }
  buildCounterSchemaBundle--;
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
    unittest.expect(o.clusterId!, unittest.equals('foo'));
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
    unittest.expect(o.key!, unittest.equals('foo'));
  }
  buildCounterSplit--;
}

core.int buildCounterStandardIsolation = 0;
api.StandardIsolation buildStandardIsolation() {
  final o = api.StandardIsolation();
  buildCounterStandardIsolation++;
  if (buildCounterStandardIsolation < 3) {
    o.priority = 'foo';
  }
  buildCounterStandardIsolation--;
  return o;
}

void checkStandardIsolation(api.StandardIsolation o) {
  buildCounterStandardIsolation++;
  if (buildCounterStandardIsolation < 3) {
    unittest.expect(o.priority!, unittest.equals('foo'));
  }
  buildCounterStandardIsolation--;
}

core.int buildCounterStandardReadRemoteWrites = 0;
api.StandardReadRemoteWrites buildStandardReadRemoteWrites() {
  final o = api.StandardReadRemoteWrites();
  buildCounterStandardReadRemoteWrites++;
  if (buildCounterStandardReadRemoteWrites < 3) {}
  buildCounterStandardReadRemoteWrites--;
  return o;
}

void checkStandardReadRemoteWrites(api.StandardReadRemoteWrites o) {
  buildCounterStandardReadRemoteWrites++;
  if (buildCounterStandardReadRemoteWrites < 3) {}
  buildCounterStandardReadRemoteWrites--;
}

core.Map<core.String, core.Object?> buildUnnamed39() => {
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

void checkUnnamed39(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed40() => [
  buildUnnamed39(),
  buildUnnamed39(),
];

void checkUnnamed40(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed39(o[0]);
  checkUnnamed39(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed40();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code!, unittest.equals(42));
    checkUnnamed40(o.details!);
    unittest.expect(o.message!, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.Map<core.String, api.ClusterState> buildUnnamed41() => {
  'x': buildClusterState(),
  'y': buildClusterState(),
};

void checkUnnamed41(core.Map<core.String, api.ClusterState> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkClusterState(o['x']!);
  checkClusterState(o['y']!);
}

core.Map<core.String, api.ColumnFamily> buildUnnamed42() => {
  'x': buildColumnFamily(),
  'y': buildColumnFamily(),
};

void checkUnnamed42(core.Map<core.String, api.ColumnFamily> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkColumnFamily(o['x']!);
  checkColumnFamily(o['y']!);
}

core.int buildCounterTable = 0;
api.Table buildTable() {
  final o = api.Table();
  buildCounterTable++;
  if (buildCounterTable < 3) {
    o.automatedBackupPolicy = buildAutomatedBackupPolicy();
    o.changeStreamConfig = buildChangeStreamConfig();
    o.clusterStates = buildUnnamed41();
    o.columnFamilies = buildUnnamed42();
    o.deletionProtection = true;
    o.granularity = 'foo';
    o.name = 'foo';
    o.restoreInfo = buildRestoreInfo();
    o.rowKeySchema = buildGoogleBigtableAdminV2TypeStruct();
    o.stats = buildTableStats();
    o.tieredStorageConfig = buildTieredStorageConfig();
  }
  buildCounterTable--;
  return o;
}

void checkTable(api.Table o) {
  buildCounterTable++;
  if (buildCounterTable < 3) {
    checkAutomatedBackupPolicy(o.automatedBackupPolicy!);
    checkChangeStreamConfig(o.changeStreamConfig!);
    checkUnnamed41(o.clusterStates!);
    checkUnnamed42(o.columnFamilies!);
    unittest.expect(o.deletionProtection!, unittest.isTrue);
    unittest.expect(o.granularity!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkRestoreInfo(o.restoreInfo!);
    checkGoogleBigtableAdminV2TypeStruct(o.rowKeySchema!);
    checkTableStats(o.stats!);
    checkTieredStorageConfig(o.tieredStorageConfig!);
  }
  buildCounterTable--;
}

core.int buildCounterTableStats = 0;
api.TableStats buildTableStats() {
  final o = api.TableStats();
  buildCounterTableStats++;
  if (buildCounterTableStats < 3) {
    o.averageCellsPerColumn = 42.0;
    o.averageColumnsPerRow = 42.0;
    o.logicalDataBytes = 'foo';
    o.rowCount = 'foo';
  }
  buildCounterTableStats--;
  return o;
}

void checkTableStats(api.TableStats o) {
  buildCounterTableStats++;
  if (buildCounterTableStats < 3) {
    unittest.expect(o.averageCellsPerColumn!, unittest.equals(42.0));
    unittest.expect(o.averageColumnsPerRow!, unittest.equals(42.0));
    unittest.expect(o.logicalDataBytes!, unittest.equals('foo'));
    unittest.expect(o.rowCount!, unittest.equals('foo'));
  }
  buildCounterTableStats--;
}

core.List<core.String> buildUnnamed43() => ['foo', 'foo'];

void checkUnnamed43(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsRequest = 0;
api.TestIamPermissionsRequest buildTestIamPermissionsRequest() {
  final o = api.TestIamPermissionsRequest();
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed43();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

void checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed43(o.permissions!);
  }
  buildCounterTestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed44() => ['foo', 'foo'];

void checkUnnamed44(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsResponse = 0;
api.TestIamPermissionsResponse buildTestIamPermissionsResponse() {
  final o = api.TestIamPermissionsResponse();
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed44();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed44(o.permissions!);
  }
  buildCounterTestIamPermissionsResponse--;
}

core.int buildCounterTieredStorageConfig = 0;
api.TieredStorageConfig buildTieredStorageConfig() {
  final o = api.TieredStorageConfig();
  buildCounterTieredStorageConfig++;
  if (buildCounterTieredStorageConfig < 3) {
    o.infrequentAccess = buildTieredStorageRule();
  }
  buildCounterTieredStorageConfig--;
  return o;
}

void checkTieredStorageConfig(api.TieredStorageConfig o) {
  buildCounterTieredStorageConfig++;
  if (buildCounterTieredStorageConfig < 3) {
    checkTieredStorageRule(o.infrequentAccess!);
  }
  buildCounterTieredStorageConfig--;
}

core.int buildCounterTieredStorageRule = 0;
api.TieredStorageRule buildTieredStorageRule() {
  final o = api.TieredStorageRule();
  buildCounterTieredStorageRule++;
  if (buildCounterTieredStorageRule < 3) {
    o.includeIfOlderThan = 'foo';
  }
  buildCounterTieredStorageRule--;
  return o;
}

void checkTieredStorageRule(api.TieredStorageRule o) {
  buildCounterTieredStorageRule++;
  if (buildCounterTieredStorageRule < 3) {
    unittest.expect(o.includeIfOlderThan!, unittest.equals('foo'));
  }
  buildCounterTieredStorageRule--;
}

core.int buildCounterType = 0;
api.Type buildType() {
  final o = api.Type();
  buildCounterType++;
  if (buildCounterType < 3) {
    o.aggregateType = buildGoogleBigtableAdminV2TypeAggregate();
    o.arrayType = buildGoogleBigtableAdminV2TypeArray();
    o.boolType = buildGoogleBigtableAdminV2TypeBool();
    o.bytesType = buildGoogleBigtableAdminV2TypeBytes();
    o.dateType = buildGoogleBigtableAdminV2TypeDate();
    o.enumType = buildGoogleBigtableAdminV2TypeEnum();
    o.float32Type = buildGoogleBigtableAdminV2TypeFloat32();
    o.float64Type = buildGoogleBigtableAdminV2TypeFloat64();
    o.int64Type = buildGoogleBigtableAdminV2TypeInt64();
    o.mapType = buildGoogleBigtableAdminV2TypeMap();
    o.protoType = buildGoogleBigtableAdminV2TypeProto();
    o.stringType = buildGoogleBigtableAdminV2TypeString();
    o.structType = buildGoogleBigtableAdminV2TypeStruct();
    o.timestampType = buildGoogleBigtableAdminV2TypeTimestamp();
  }
  buildCounterType--;
  return o;
}

void checkType(api.Type o) {
  buildCounterType++;
  if (buildCounterType < 3) {
    checkGoogleBigtableAdminV2TypeAggregate(o.aggregateType!);
    checkGoogleBigtableAdminV2TypeArray(o.arrayType!);
    checkGoogleBigtableAdminV2TypeBool(o.boolType!);
    checkGoogleBigtableAdminV2TypeBytes(o.bytesType!);
    checkGoogleBigtableAdminV2TypeDate(o.dateType!);
    checkGoogleBigtableAdminV2TypeEnum(o.enumType!);
    checkGoogleBigtableAdminV2TypeFloat32(o.float32Type!);
    checkGoogleBigtableAdminV2TypeFloat64(o.float64Type!);
    checkGoogleBigtableAdminV2TypeInt64(o.int64Type!);
    checkGoogleBigtableAdminV2TypeMap(o.mapType!);
    checkGoogleBigtableAdminV2TypeProto(o.protoType!);
    checkGoogleBigtableAdminV2TypeString(o.stringType!);
    checkGoogleBigtableAdminV2TypeStruct(o.structType!);
    checkGoogleBigtableAdminV2TypeTimestamp(o.timestampType!);
  }
  buildCounterType--;
}

core.int buildCounterUndeleteTableRequest = 0;
api.UndeleteTableRequest buildUndeleteTableRequest() {
  final o = api.UndeleteTableRequest();
  buildCounterUndeleteTableRequest++;
  if (buildCounterUndeleteTableRequest < 3) {}
  buildCounterUndeleteTableRequest--;
  return o;
}

void checkUndeleteTableRequest(api.UndeleteTableRequest o) {
  buildCounterUndeleteTableRequest++;
  if (buildCounterUndeleteTableRequest < 3) {}
  buildCounterUndeleteTableRequest--;
}

core.List<api.GcRule> buildUnnamed45() => [buildGcRule(), buildGcRule()];

void checkUnnamed45(core.List<api.GcRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGcRule(o[0]);
  checkGcRule(o[1]);
}

core.int buildCounterUnion = 0;
api.Union buildUnion() {
  final o = api.Union();
  buildCounterUnion++;
  if (buildCounterUnion < 3) {
    o.rules = buildUnnamed45();
  }
  buildCounterUnion--;
  return o;
}

void checkUnion(api.Union o) {
  buildCounterUnion++;
  if (buildCounterUnion < 3) {
    checkUnnamed45(o.rules!);
  }
  buildCounterUnion--;
}

core.List<core.String> buildUnnamed46() => ['foo', 'foo'];

void checkUnnamed46(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

void main() {
  unittest.group('obj-schema-AppProfile', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAppProfile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AppProfile.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAppProfile(od);
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

  unittest.group('obj-schema-AuthorizedView', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuthorizedView();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuthorizedView.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAuthorizedView(od);
    });
  });

  unittest.group('obj-schema-AutomatedBackupPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAutomatedBackupPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AutomatedBackupPolicy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAutomatedBackupPolicy(od);
    });
  });

  unittest.group('obj-schema-AutoscalingLimits', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAutoscalingLimits();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AutoscalingLimits.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAutoscalingLimits(od);
    });
  });

  unittest.group('obj-schema-AutoscalingTargets', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAutoscalingTargets();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AutoscalingTargets.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAutoscalingTargets(od);
    });
  });

  unittest.group('obj-schema-Backup', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBackup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Backup.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBackup(od);
    });
  });

  unittest.group('obj-schema-BackupInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBackupInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BackupInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBackupInfo(od);
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

  unittest.group('obj-schema-ChangeStreamConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChangeStreamConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ChangeStreamConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkChangeStreamConfig(od);
    });
  });

  unittest.group('obj-schema-CheckConsistencyRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCheckConsistencyRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CheckConsistencyRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCheckConsistencyRequest(od);
    });
  });

  unittest.group('obj-schema-CheckConsistencyResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCheckConsistencyResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CheckConsistencyResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCheckConsistencyResponse(od);
    });
  });

  unittest.group('obj-schema-Cluster', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCluster();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Cluster.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCluster(od);
    });
  });

  unittest.group('obj-schema-ClusterAutoscalingConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClusterAutoscalingConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ClusterAutoscalingConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkClusterAutoscalingConfig(od);
    });
  });

  unittest.group('obj-schema-ClusterConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClusterConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ClusterConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkClusterConfig(od);
    });
  });

  unittest.group('obj-schema-ClusterState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClusterState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ClusterState.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkClusterState(od);
    });
  });

  unittest.group('obj-schema-ColumnFamily', () {
    unittest.test('to-json--from-json', () async {
      final o = buildColumnFamily();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ColumnFamily.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkColumnFamily(od);
    });
  });

  unittest.group('obj-schema-ColumnFamilyStats', () {
    unittest.test('to-json--from-json', () async {
      final o = buildColumnFamilyStats();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ColumnFamilyStats.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkColumnFamilyStats(od);
    });
  });

  unittest.group('obj-schema-CopyBackupRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCopyBackupRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CopyBackupRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCopyBackupRequest(od);
    });
  });

  unittest.group('obj-schema-CreateInstanceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateInstanceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateInstanceRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCreateInstanceRequest(od);
    });
  });

  unittest.group('obj-schema-CreateTableRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateTableRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateTableRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCreateTableRequest(od);
    });
  });

  unittest.group('obj-schema-DataBoostIsolationReadOnly', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataBoostIsolationReadOnly();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DataBoostIsolationReadOnly.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDataBoostIsolationReadOnly(od);
    });
  });

  unittest.group('obj-schema-DataBoostReadLocalWrites', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataBoostReadLocalWrites();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DataBoostReadLocalWrites.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDataBoostReadLocalWrites(od);
    });
  });

  unittest.group('obj-schema-DropRowRangeRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDropRowRangeRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DropRowRangeRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDropRowRangeRequest(od);
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

  unittest.group('obj-schema-EncryptionConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEncryptionConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EncryptionConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEncryptionConfig(od);
    });
  });

  unittest.group('obj-schema-EncryptionInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEncryptionInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EncryptionInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEncryptionInfo(od);
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

  unittest.group('obj-schema-GcRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGcRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GcRule.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGcRule(od);
    });
  });

  unittest.group('obj-schema-GenerateConsistencyTokenRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGenerateConsistencyTokenRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GenerateConsistencyTokenRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGenerateConsistencyTokenRequest(od);
    });
  });

  unittest.group('obj-schema-GenerateConsistencyTokenResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGenerateConsistencyTokenResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GenerateConsistencyTokenResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGenerateConsistencyTokenResponse(od);
    });
  });

  unittest.group('obj-schema-GetIamPolicyRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGetIamPolicyRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GetIamPolicyRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGetIamPolicyRequest(od);
    });
  });

  unittest.group('obj-schema-GetPolicyOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGetPolicyOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GetPolicyOptions.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGetPolicyOptions(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleBigtableAdminV2AuthorizedViewFamilySubsets',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleBigtableAdminV2AuthorizedViewFamilySubsets();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleBigtableAdminV2AuthorizedViewFamilySubsets.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleBigtableAdminV2AuthorizedViewFamilySubsets(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleBigtableAdminV2AuthorizedViewSubsetView',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleBigtableAdminV2AuthorizedViewSubsetView();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleBigtableAdminV2AuthorizedViewSubsetView.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleBigtableAdminV2AuthorizedViewSubsetView(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleBigtableAdminV2MaterializedViewClusterState',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleBigtableAdminV2MaterializedViewClusterState();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleBigtableAdminV2MaterializedViewClusterState.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleBigtableAdminV2MaterializedViewClusterState(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleBigtableAdminV2TypeAggregate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleBigtableAdminV2TypeAggregate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleBigtableAdminV2TypeAggregate.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleBigtableAdminV2TypeAggregate(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleBigtableAdminV2TypeAggregateHyperLogLogPlusPlusUniqueCount',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleBigtableAdminV2TypeAggregateHyperLogLogPlusPlusUniqueCount();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleBigtableAdminV2TypeAggregateHyperLogLogPlusPlusUniqueCount.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleBigtableAdminV2TypeAggregateHyperLogLogPlusPlusUniqueCount(
          od,
        );
      });
    },
  );

  unittest.group('obj-schema-GoogleBigtableAdminV2TypeAggregateMax', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleBigtableAdminV2TypeAggregateMax();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleBigtableAdminV2TypeAggregateMax.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleBigtableAdminV2TypeAggregateMax(od);
    });
  });

  unittest.group('obj-schema-GoogleBigtableAdminV2TypeAggregateMin', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleBigtableAdminV2TypeAggregateMin();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleBigtableAdminV2TypeAggregateMin.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleBigtableAdminV2TypeAggregateMin(od);
    });
  });

  unittest.group('obj-schema-GoogleBigtableAdminV2TypeAggregateSum', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleBigtableAdminV2TypeAggregateSum();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleBigtableAdminV2TypeAggregateSum.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleBigtableAdminV2TypeAggregateSum(od);
    });
  });

  unittest.group('obj-schema-GoogleBigtableAdminV2TypeArray', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleBigtableAdminV2TypeArray();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleBigtableAdminV2TypeArray.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleBigtableAdminV2TypeArray(od);
    });
  });

  unittest.group('obj-schema-GoogleBigtableAdminV2TypeBool', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleBigtableAdminV2TypeBool();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleBigtableAdminV2TypeBool.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleBigtableAdminV2TypeBool(od);
    });
  });

  unittest.group('obj-schema-GoogleBigtableAdminV2TypeBytes', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleBigtableAdminV2TypeBytes();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleBigtableAdminV2TypeBytes.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleBigtableAdminV2TypeBytes(od);
    });
  });

  unittest.group('obj-schema-GoogleBigtableAdminV2TypeBytesEncoding', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleBigtableAdminV2TypeBytesEncoding();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleBigtableAdminV2TypeBytesEncoding.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleBigtableAdminV2TypeBytesEncoding(od);
    });
  });

  unittest.group('obj-schema-GoogleBigtableAdminV2TypeBytesEncodingRaw', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleBigtableAdminV2TypeBytesEncodingRaw();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleBigtableAdminV2TypeBytesEncodingRaw.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleBigtableAdminV2TypeBytesEncodingRaw(od);
    });
  });

  unittest.group('obj-schema-GoogleBigtableAdminV2TypeDate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleBigtableAdminV2TypeDate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleBigtableAdminV2TypeDate.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleBigtableAdminV2TypeDate(od);
    });
  });

  unittest.group('obj-schema-GoogleBigtableAdminV2TypeEnum', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleBigtableAdminV2TypeEnum();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleBigtableAdminV2TypeEnum.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleBigtableAdminV2TypeEnum(od);
    });
  });

  unittest.group('obj-schema-GoogleBigtableAdminV2TypeFloat32', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleBigtableAdminV2TypeFloat32();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleBigtableAdminV2TypeFloat32.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleBigtableAdminV2TypeFloat32(od);
    });
  });

  unittest.group('obj-schema-GoogleBigtableAdminV2TypeFloat64', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleBigtableAdminV2TypeFloat64();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleBigtableAdminV2TypeFloat64.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleBigtableAdminV2TypeFloat64(od);
    });
  });

  unittest.group('obj-schema-GoogleBigtableAdminV2TypeInt64', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleBigtableAdminV2TypeInt64();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleBigtableAdminV2TypeInt64.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleBigtableAdminV2TypeInt64(od);
    });
  });

  unittest.group('obj-schema-GoogleBigtableAdminV2TypeInt64Encoding', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleBigtableAdminV2TypeInt64Encoding();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleBigtableAdminV2TypeInt64Encoding.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleBigtableAdminV2TypeInt64Encoding(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleBigtableAdminV2TypeInt64EncodingBigEndianBytes',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleBigtableAdminV2TypeInt64EncodingBigEndianBytes();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleBigtableAdminV2TypeInt64EncodingBigEndianBytes.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleBigtableAdminV2TypeInt64EncodingBigEndianBytes(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleBigtableAdminV2TypeInt64EncodingOrderedCodeBytes',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleBigtableAdminV2TypeInt64EncodingOrderedCodeBytes();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleBigtableAdminV2TypeInt64EncodingOrderedCodeBytes.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleBigtableAdminV2TypeInt64EncodingOrderedCodeBytes(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleBigtableAdminV2TypeMap', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleBigtableAdminV2TypeMap();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleBigtableAdminV2TypeMap.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleBigtableAdminV2TypeMap(od);
    });
  });

  unittest.group('obj-schema-GoogleBigtableAdminV2TypeProto', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleBigtableAdminV2TypeProto();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleBigtableAdminV2TypeProto.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleBigtableAdminV2TypeProto(od);
    });
  });

  unittest.group('obj-schema-GoogleBigtableAdminV2TypeString', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleBigtableAdminV2TypeString();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleBigtableAdminV2TypeString.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleBigtableAdminV2TypeString(od);
    });
  });

  unittest.group('obj-schema-GoogleBigtableAdminV2TypeStringEncoding', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleBigtableAdminV2TypeStringEncoding();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleBigtableAdminV2TypeStringEncoding.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleBigtableAdminV2TypeStringEncoding(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleBigtableAdminV2TypeStringEncodingUtf8Bytes',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleBigtableAdminV2TypeStringEncodingUtf8Bytes();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleBigtableAdminV2TypeStringEncodingUtf8Bytes.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleBigtableAdminV2TypeStringEncodingUtf8Bytes(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleBigtableAdminV2TypeStringEncodingUtf8Raw',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleBigtableAdminV2TypeStringEncodingUtf8Raw();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleBigtableAdminV2TypeStringEncodingUtf8Raw.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleBigtableAdminV2TypeStringEncodingUtf8Raw(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleBigtableAdminV2TypeStruct', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleBigtableAdminV2TypeStruct();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleBigtableAdminV2TypeStruct.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleBigtableAdminV2TypeStruct(od);
    });
  });

  unittest.group('obj-schema-GoogleBigtableAdminV2TypeStructEncoding', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleBigtableAdminV2TypeStructEncoding();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleBigtableAdminV2TypeStructEncoding.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleBigtableAdminV2TypeStructEncoding(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleBigtableAdminV2TypeStructEncodingDelimitedBytes',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleBigtableAdminV2TypeStructEncodingDelimitedBytes();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleBigtableAdminV2TypeStructEncodingDelimitedBytes.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleBigtableAdminV2TypeStructEncodingDelimitedBytes(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleBigtableAdminV2TypeStructEncodingOrderedCodeBytes',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleBigtableAdminV2TypeStructEncodingOrderedCodeBytes();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleBigtableAdminV2TypeStructEncodingOrderedCodeBytes.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleBigtableAdminV2TypeStructEncodingOrderedCodeBytes(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleBigtableAdminV2TypeStructEncodingSingleton',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleBigtableAdminV2TypeStructEncodingSingleton();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleBigtableAdminV2TypeStructEncodingSingleton.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleBigtableAdminV2TypeStructEncodingSingleton(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleBigtableAdminV2TypeStructField', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleBigtableAdminV2TypeStructField();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleBigtableAdminV2TypeStructField.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleBigtableAdminV2TypeStructField(od);
    });
  });

  unittest.group('obj-schema-GoogleBigtableAdminV2TypeTimestamp', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleBigtableAdminV2TypeTimestamp();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleBigtableAdminV2TypeTimestamp.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleBigtableAdminV2TypeTimestamp(od);
    });
  });

  unittest.group('obj-schema-GoogleBigtableAdminV2TypeTimestampEncoding', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleBigtableAdminV2TypeTimestampEncoding();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleBigtableAdminV2TypeTimestampEncoding.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleBigtableAdminV2TypeTimestampEncoding(od);
    });
  });

  unittest.group('obj-schema-HotTablet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHotTablet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HotTablet.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkHotTablet(od);
    });
  });

  unittest.group('obj-schema-Instance', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInstance();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Instance.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInstance(od);
    });
  });

  unittest.group('obj-schema-Intersection', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIntersection();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Intersection.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkIntersection(od);
    });
  });

  unittest.group('obj-schema-ListAppProfilesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAppProfilesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAppProfilesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListAppProfilesResponse(od);
    });
  });

  unittest.group('obj-schema-ListAuthorizedViewsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAuthorizedViewsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAuthorizedViewsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListAuthorizedViewsResponse(od);
    });
  });

  unittest.group('obj-schema-ListBackupsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListBackupsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListBackupsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListBackupsResponse(od);
    });
  });

  unittest.group('obj-schema-ListClustersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListClustersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListClustersResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListClustersResponse(od);
    });
  });

  unittest.group('obj-schema-ListHotTabletsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListHotTabletsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListHotTabletsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListHotTabletsResponse(od);
    });
  });

  unittest.group('obj-schema-ListInstancesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListInstancesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListInstancesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListInstancesResponse(od);
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

  unittest.group('obj-schema-ListLogicalViewsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListLogicalViewsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListLogicalViewsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListLogicalViewsResponse(od);
    });
  });

  unittest.group('obj-schema-ListMaterializedViewsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListMaterializedViewsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListMaterializedViewsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListMaterializedViewsResponse(od);
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

  unittest.group('obj-schema-ListSchemaBundlesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListSchemaBundlesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListSchemaBundlesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListSchemaBundlesResponse(od);
    });
  });

  unittest.group('obj-schema-ListTablesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListTablesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListTablesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListTablesResponse(od);
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

  unittest.group('obj-schema-LogicalView', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLogicalView();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LogicalView.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLogicalView(od);
    });
  });

  unittest.group('obj-schema-MaterializedView', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMaterializedView();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MaterializedView.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMaterializedView(od);
    });
  });

  unittest.group('obj-schema-Modification', () {
    unittest.test('to-json--from-json', () async {
      final o = buildModification();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Modification.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkModification(od);
    });
  });

  unittest.group('obj-schema-ModifyColumnFamiliesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildModifyColumnFamiliesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ModifyColumnFamiliesRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkModifyColumnFamiliesRequest(od);
    });
  });

  unittest.group('obj-schema-MultiClusterRoutingUseAny', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMultiClusterRoutingUseAny();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MultiClusterRoutingUseAny.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMultiClusterRoutingUseAny(od);
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

  unittest.group('obj-schema-ProtoSchema', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProtoSchema();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProtoSchema.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkProtoSchema(od);
    });
  });

  unittest.group('obj-schema-RestoreInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRestoreInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RestoreInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRestoreInfo(od);
    });
  });

  unittest.group('obj-schema-RestoreTableRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRestoreTableRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RestoreTableRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRestoreTableRequest(od);
    });
  });

  unittest.group('obj-schema-RowAffinity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRowAffinity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RowAffinity.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRowAffinity(od);
    });
  });

  unittest.group('obj-schema-SchemaBundle', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSchemaBundle();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SchemaBundle.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSchemaBundle(od);
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

  unittest.group('obj-schema-SingleClusterRouting', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSingleClusterRouting();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SingleClusterRouting.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSingleClusterRouting(od);
    });
  });

  unittest.group('obj-schema-Split', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSplit();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Split.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSplit(od);
    });
  });

  unittest.group('obj-schema-StandardIsolation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStandardIsolation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StandardIsolation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkStandardIsolation(od);
    });
  });

  unittest.group('obj-schema-StandardReadRemoteWrites', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStandardReadRemoteWrites();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StandardReadRemoteWrites.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkStandardReadRemoteWrites(od);
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

  unittest.group('obj-schema-Table', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTable();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Table.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTable(od);
    });
  });

  unittest.group('obj-schema-TableStats', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTableStats();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TableStats.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTableStats(od);
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

  unittest.group('obj-schema-TieredStorageConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTieredStorageConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TieredStorageConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTieredStorageConfig(od);
    });
  });

  unittest.group('obj-schema-TieredStorageRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTieredStorageRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TieredStorageRule.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTieredStorageRule(od);
    });
  });

  unittest.group('obj-schema-Type', () {
    unittest.test('to-json--from-json', () async {
      final o = buildType();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Type.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkType(od);
    });
  });

  unittest.group('obj-schema-UndeleteTableRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUndeleteTableRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UndeleteTableRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUndeleteTableRequest(od);
    });
  });

  unittest.group('obj-schema-Union', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUnion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Union.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUnion(od);
    });
  });

  unittest.group('resource-OperationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.BigtableAdminApi(mock).operations;
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
            unittest.equals('v2/'),
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
  });

  unittest.group('resource-OperationsProjectsOperationsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.BigtableAdminApi(mock).operations.projects.operations;
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
            unittest.equals('v2/'),
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

  unittest.group('resource-ProjectsInstancesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.BigtableAdminApi(mock).projects.instances;
      final arg_request = buildCreateInstanceRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.CreateInstanceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkCreateInstanceRequest(obj);

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
            unittest.equals('v2/'),
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
      final response = await res.create(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.BigtableAdminApi(mock).projects.instances;
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
            unittest.equals('v2/'),
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
      final res = api.BigtableAdminApi(mock).projects.instances;
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
            unittest.equals('v2/'),
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
          final resp = convert.json.encode(buildInstance());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkInstance(response as api.Instance);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.BigtableAdminApi(mock).projects.instances;
      final arg_request = buildGetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGetIamPolicyRequest(obj);

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
            unittest.equals('v2/'),
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
      final response = await res.getIamPolicy(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.BigtableAdminApi(mock).projects.instances;
      final arg_parent = 'foo';
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
            unittest.equals('v2/'),
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
            queryMap['pageToken']!.first,
            unittest.equals(arg_pageToken),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListInstancesResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListInstancesResponse(response as api.ListInstancesResponse);
    });

    unittest.test('method--partialUpdateInstance', () async {
      final mock = HttpServerMock();
      final res = api.BigtableAdminApi(mock).projects.instances;
      final arg_request = buildInstance();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Instance.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkInstance(obj);

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
            unittest.equals('v2/'),
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.partialUpdateInstance(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.BigtableAdminApi(mock).projects.instances;
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
            unittest.equals('v2/'),
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
      final res = api.BigtableAdminApi(mock).projects.instances;
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
            unittest.equals('v2/'),
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

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.BigtableAdminApi(mock).projects.instances;
      final arg_request = buildInstance();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Instance.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkInstance(obj);

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
            unittest.equals('v2/'),
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
          final resp = convert.json.encode(buildInstance());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.update(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
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
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AppProfile.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAppProfile(obj);

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
            unittest.equals('v2/'),
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildAppProfile());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        appProfileId: arg_appProfileId,
        ignoreWarnings: arg_ignoreWarnings,
        $fields: arg_$fields,
      );
      checkAppProfile(response as api.AppProfile);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.BigtableAdminApi(mock).projects.instances.appProfiles;
      final arg_name = 'foo';
      final arg_ignoreWarnings = true;
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
            unittest.equals('v2/'),
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
            queryMap['ignoreWarnings']!.first,
            unittest.equals('$arg_ignoreWarnings'),
          );
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
      final response = await res.delete(
        arg_name,
        ignoreWarnings: arg_ignoreWarnings,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.BigtableAdminApi(mock).projects.instances.appProfiles;
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
            unittest.equals('v2/'),
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
          final resp = convert.json.encode(buildAppProfile());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
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
            unittest.equals('v2/'),
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
          final resp = convert.json.encode(buildListAppProfilesResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
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
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AppProfile.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAppProfile(obj);

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
            unittest.equals('v2/'),
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        ignoreWarnings: arg_ignoreWarnings,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
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
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Cluster.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkCluster(obj);

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
            unittest.equals('v2/'),
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
            queryMap['clusterId']!.first,
            unittest.equals(arg_clusterId),
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
        clusterId: arg_clusterId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.BigtableAdminApi(mock).projects.instances.clusters;
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
            unittest.equals('v2/'),
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
      final res = api.BigtableAdminApi(mock).projects.instances.clusters;
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
            unittest.equals('v2/'),
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
          final resp = convert.json.encode(buildCluster());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkCluster(response as api.Cluster);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.BigtableAdminApi(mock).projects.instances.clusters;
      final arg_parent = 'foo';
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
            unittest.equals('v2/'),
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
            queryMap['pageToken']!.first,
            unittest.equals(arg_pageToken),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListClustersResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListClustersResponse(response as api.ListClustersResponse);
    });

    unittest.test('method--partialUpdateCluster', () async {
      final mock = HttpServerMock();
      final res = api.BigtableAdminApi(mock).projects.instances.clusters;
      final arg_request = buildCluster();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Cluster.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkCluster(obj);

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
            unittest.equals('v2/'),
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.partialUpdateCluster(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.BigtableAdminApi(mock).projects.instances.clusters;
      final arg_request = buildCluster();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Cluster.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkCluster(obj);

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
            unittest.equals('v2/'),
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
      final response = await res.update(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsInstancesClustersBackupsResource', () {
    unittest.test('method--copy', () async {
      final mock = HttpServerMock();
      final res =
          api.BigtableAdminApi(mock).projects.instances.clusters.backups;
      final arg_request = buildCopyBackupRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.CopyBackupRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkCopyBackupRequest(obj);

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
            unittest.equals('v2/'),
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
      final response = await res.copy(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.BigtableAdminApi(mock).projects.instances.clusters.backups;
      final arg_request = buildBackup();
      final arg_parent = 'foo';
      final arg_backupId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Backup.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkBackup(obj);

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
            unittest.equals('v2/'),
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
            queryMap['backupId']!.first,
            unittest.equals(arg_backupId),
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
        backupId: arg_backupId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.BigtableAdminApi(mock).projects.instances.clusters.backups;
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
            unittest.equals('v2/'),
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
      final res =
          api.BigtableAdminApi(mock).projects.instances.clusters.backups;
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
            unittest.equals('v2/'),
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
          final resp = convert.json.encode(buildBackup());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
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
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGetIamPolicyRequest(obj);

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
            unittest.equals('v2/'),
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
      final response = await res.getIamPolicy(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
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
            unittest.equals('v2/'),
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
          final resp = convert.json.encode(buildListBackupsResponse());
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
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Backup.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkBackup(obj);

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
            unittest.equals('v2/'),
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildBackup());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkBackup(response as api.Backup);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res =
          api.BigtableAdminApi(mock).projects.instances.clusters.backups;
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
            unittest.equals('v2/'),
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
      final res =
          api.BigtableAdminApi(mock).projects.instances.clusters.backups;
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
            unittest.equals('v2/'),
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

  unittest.group('resource-ProjectsInstancesClustersHotTabletsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.BigtableAdminApi(mock).projects.instances.clusters.hotTablets;
      final arg_parent = 'foo';
      final arg_endTime = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_startTime = 'foo';
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
            unittest.equals('v2/'),
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
            queryMap['endTime']!.first,
            unittest.equals(arg_endTime),
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
            queryMap['startTime']!.first,
            unittest.equals(arg_startTime),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListHotTabletsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        endTime: arg_endTime,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        startTime: arg_startTime,
        $fields: arg_$fields,
      );
      checkListHotTabletsResponse(response as api.ListHotTabletsResponse);
    });
  });

  unittest.group('resource-ProjectsInstancesLogicalViewsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.BigtableAdminApi(mock).projects.instances.logicalViews;
      final arg_request = buildLogicalView();
      final arg_parent = 'foo';
      final arg_logicalViewId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.LogicalView.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkLogicalView(obj);

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
            unittest.equals('v2/'),
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
            queryMap['logicalViewId']!.first,
            unittest.equals(arg_logicalViewId),
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
        logicalViewId: arg_logicalViewId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.BigtableAdminApi(mock).projects.instances.logicalViews;
      final arg_name = 'foo';
      final arg_etag = 'foo';
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
            unittest.equals('v2/'),
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
          unittest.expect(queryMap['etag']!.first, unittest.equals(arg_etag));
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
      final response = await res.delete(
        arg_name,
        etag: arg_etag,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.BigtableAdminApi(mock).projects.instances.logicalViews;
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
            unittest.equals('v2/'),
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
          final resp = convert.json.encode(buildLogicalView());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkLogicalView(response as api.LogicalView);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.BigtableAdminApi(mock).projects.instances.logicalViews;
      final arg_request = buildGetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGetIamPolicyRequest(obj);

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
            unittest.equals('v2/'),
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
      final response = await res.getIamPolicy(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.BigtableAdminApi(mock).projects.instances.logicalViews;
      final arg_parent = 'foo';
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
            unittest.equals('v2/'),
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
          final resp = convert.json.encode(buildListLogicalViewsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListLogicalViewsResponse(response as api.ListLogicalViewsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.BigtableAdminApi(mock).projects.instances.logicalViews;
      final arg_request = buildLogicalView();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.LogicalView.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkLogicalView(obj);

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
            unittest.equals('v2/'),
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.BigtableAdminApi(mock).projects.instances.logicalViews;
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
            unittest.equals('v2/'),
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
      final res = api.BigtableAdminApi(mock).projects.instances.logicalViews;
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
            unittest.equals('v2/'),
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

  unittest.group('resource-ProjectsInstancesMaterializedViewsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.BigtableAdminApi(mock).projects.instances.materializedViews;
      final arg_request = buildMaterializedView();
      final arg_parent = 'foo';
      final arg_materializedViewId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.MaterializedView.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkMaterializedView(obj);

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
            unittest.equals('v2/'),
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
            queryMap['materializedViewId']!.first,
            unittest.equals(arg_materializedViewId),
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
        materializedViewId: arg_materializedViewId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.BigtableAdminApi(mock).projects.instances.materializedViews;
      final arg_name = 'foo';
      final arg_etag = 'foo';
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
            unittest.equals('v2/'),
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
          unittest.expect(queryMap['etag']!.first, unittest.equals(arg_etag));
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
      final response = await res.delete(
        arg_name,
        etag: arg_etag,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.BigtableAdminApi(mock).projects.instances.materializedViews;
      final arg_name = 'foo';
      final arg_view = 'foo';
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
            unittest.equals('v2/'),
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
          unittest.expect(queryMap['view']!.first, unittest.equals(arg_view));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildMaterializedView());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_name,
        view: arg_view,
        $fields: arg_$fields,
      );
      checkMaterializedView(response as api.MaterializedView);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res =
          api.BigtableAdminApi(mock).projects.instances.materializedViews;
      final arg_request = buildGetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGetIamPolicyRequest(obj);

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
            unittest.equals('v2/'),
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
      final response = await res.getIamPolicy(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.BigtableAdminApi(mock).projects.instances.materializedViews;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_view = 'foo';
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
            unittest.equals('v2/'),
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
            core.int.parse(queryMap['pageSize']!.first),
            unittest.equals(arg_pageSize),
          );
          unittest.expect(
            queryMap['pageToken']!.first,
            unittest.equals(arg_pageToken),
          );
          unittest.expect(queryMap['view']!.first, unittest.equals(arg_view));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildListMaterializedViewsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        view: arg_view,
        $fields: arg_$fields,
      );
      checkListMaterializedViewsResponse(
        response as api.ListMaterializedViewsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.BigtableAdminApi(mock).projects.instances.materializedViews;
      final arg_request = buildMaterializedView();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.MaterializedView.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkMaterializedView(obj);

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
            unittest.equals('v2/'),
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res =
          api.BigtableAdminApi(mock).projects.instances.materializedViews;
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
            unittest.equals('v2/'),
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
      final res =
          api.BigtableAdminApi(mock).projects.instances.materializedViews;
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
            unittest.equals('v2/'),
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

  unittest.group('resource-ProjectsInstancesTablesResource', () {
    unittest.test('method--checkConsistency', () async {
      final mock = HttpServerMock();
      final res = api.BigtableAdminApi(mock).projects.instances.tables;
      final arg_request = buildCheckConsistencyRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.CheckConsistencyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkCheckConsistencyRequest(obj);

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
            unittest.equals('v2/'),
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
          final resp = convert.json.encode(buildCheckConsistencyResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.checkConsistency(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkCheckConsistencyResponse(response as api.CheckConsistencyResponse);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.BigtableAdminApi(mock).projects.instances.tables;
      final arg_request = buildCreateTableRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.CreateTableRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkCreateTableRequest(obj);

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
            unittest.equals('v2/'),
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
          final resp = convert.json.encode(buildTable());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkTable(response as api.Table);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.BigtableAdminApi(mock).projects.instances.tables;
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
            unittest.equals('v2/'),
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

    unittest.test('method--dropRowRange', () async {
      final mock = HttpServerMock();
      final res = api.BigtableAdminApi(mock).projects.instances.tables;
      final arg_request = buildDropRowRangeRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.DropRowRangeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkDropRowRangeRequest(obj);

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
            unittest.equals('v2/'),
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
      final response = await res.dropRowRange(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--generateConsistencyToken', () async {
      final mock = HttpServerMock();
      final res = api.BigtableAdminApi(mock).projects.instances.tables;
      final arg_request = buildGenerateConsistencyTokenRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GenerateConsistencyTokenRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGenerateConsistencyTokenRequest(obj);

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
            unittest.equals('v2/'),
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
            buildGenerateConsistencyTokenResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.generateConsistencyToken(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGenerateConsistencyTokenResponse(
        response as api.GenerateConsistencyTokenResponse,
      );
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.BigtableAdminApi(mock).projects.instances.tables;
      final arg_name = 'foo';
      final arg_view = 'foo';
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
            unittest.equals('v2/'),
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
          unittest.expect(queryMap['view']!.first, unittest.equals(arg_view));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildTable());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_name,
        view: arg_view,
        $fields: arg_$fields,
      );
      checkTable(response as api.Table);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.BigtableAdminApi(mock).projects.instances.tables;
      final arg_request = buildGetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGetIamPolicyRequest(obj);

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
            unittest.equals('v2/'),
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
      final response = await res.getIamPolicy(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
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
            unittest.equals('v2/'),
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
            core.int.parse(queryMap['pageSize']!.first),
            unittest.equals(arg_pageSize),
          );
          unittest.expect(
            queryMap['pageToken']!.first,
            unittest.equals(arg_pageToken),
          );
          unittest.expect(queryMap['view']!.first, unittest.equals(arg_view));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListTablesResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        view: arg_view,
        $fields: arg_$fields,
      );
      checkListTablesResponse(response as api.ListTablesResponse);
    });

    unittest.test('method--modifyColumnFamilies', () async {
      final mock = HttpServerMock();
      final res = api.BigtableAdminApi(mock).projects.instances.tables;
      final arg_request = buildModifyColumnFamiliesRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ModifyColumnFamiliesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkModifyColumnFamiliesRequest(obj);

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
            unittest.equals('v2/'),
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
          final resp = convert.json.encode(buildTable());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.modifyColumnFamilies(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkTable(response as api.Table);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.BigtableAdminApi(mock).projects.instances.tables;
      final arg_request = buildTable();
      final arg_name = 'foo';
      final arg_ignoreWarnings = true;
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Table.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkTable(obj);

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
            unittest.equals('v2/'),
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        ignoreWarnings: arg_ignoreWarnings,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--restore', () async {
      final mock = HttpServerMock();
      final res = api.BigtableAdminApi(mock).projects.instances.tables;
      final arg_request = buildRestoreTableRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.RestoreTableRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkRestoreTableRequest(obj);

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
            unittest.equals('v2/'),
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
      final response = await res.restore(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.BigtableAdminApi(mock).projects.instances.tables;
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
            unittest.equals('v2/'),
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
      final res = api.BigtableAdminApi(mock).projects.instances.tables;
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
            unittest.equals('v2/'),
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

    unittest.test('method--undelete', () async {
      final mock = HttpServerMock();
      final res = api.BigtableAdminApi(mock).projects.instances.tables;
      final arg_request = buildUndeleteTableRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.UndeleteTableRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkUndeleteTableRequest(obj);

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
            unittest.equals('v2/'),
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
      final response = await res.undelete(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsInstancesTablesAuthorizedViewsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.BigtableAdminApi(mock).projects.instances.tables.authorizedViews;
      final arg_request = buildAuthorizedView();
      final arg_parent = 'foo';
      final arg_authorizedViewId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AuthorizedView.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAuthorizedView(obj);

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
            unittest.equals('v2/'),
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
            queryMap['authorizedViewId']!.first,
            unittest.equals(arg_authorizedViewId),
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
        authorizedViewId: arg_authorizedViewId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.BigtableAdminApi(mock).projects.instances.tables.authorizedViews;
      final arg_name = 'foo';
      final arg_etag = 'foo';
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
            unittest.equals('v2/'),
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
          unittest.expect(queryMap['etag']!.first, unittest.equals(arg_etag));
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
      final response = await res.delete(
        arg_name,
        etag: arg_etag,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.BigtableAdminApi(mock).projects.instances.tables.authorizedViews;
      final arg_name = 'foo';
      final arg_view = 'foo';
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
            unittest.equals('v2/'),
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
          unittest.expect(queryMap['view']!.first, unittest.equals(arg_view));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildAuthorizedView());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_name,
        view: arg_view,
        $fields: arg_$fields,
      );
      checkAuthorizedView(response as api.AuthorizedView);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res =
          api.BigtableAdminApi(mock).projects.instances.tables.authorizedViews;
      final arg_request = buildGetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGetIamPolicyRequest(obj);

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
            unittest.equals('v2/'),
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
      final response = await res.getIamPolicy(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.BigtableAdminApi(mock).projects.instances.tables.authorizedViews;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_view = 'foo';
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
            unittest.equals('v2/'),
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
            core.int.parse(queryMap['pageSize']!.first),
            unittest.equals(arg_pageSize),
          );
          unittest.expect(
            queryMap['pageToken']!.first,
            unittest.equals(arg_pageToken),
          );
          unittest.expect(queryMap['view']!.first, unittest.equals(arg_view));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListAuthorizedViewsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        view: arg_view,
        $fields: arg_$fields,
      );
      checkListAuthorizedViewsResponse(
        response as api.ListAuthorizedViewsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.BigtableAdminApi(mock).projects.instances.tables.authorizedViews;
      final arg_request = buildAuthorizedView();
      final arg_name = 'foo';
      final arg_ignoreWarnings = true;
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AuthorizedView.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAuthorizedView(obj);

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
            unittest.equals('v2/'),
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        ignoreWarnings: arg_ignoreWarnings,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res =
          api.BigtableAdminApi(mock).projects.instances.tables.authorizedViews;
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
            unittest.equals('v2/'),
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
      final res =
          api.BigtableAdminApi(mock).projects.instances.tables.authorizedViews;
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
            unittest.equals('v2/'),
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

  unittest.group('resource-ProjectsInstancesTablesSchemaBundlesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.BigtableAdminApi(mock).projects.instances.tables.schemaBundles;
      final arg_request = buildSchemaBundle();
      final arg_parent = 'foo';
      final arg_schemaBundleId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SchemaBundle.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSchemaBundle(obj);

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
            unittest.equals('v2/'),
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
            queryMap['schemaBundleId']!.first,
            unittest.equals(arg_schemaBundleId),
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
        schemaBundleId: arg_schemaBundleId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.BigtableAdminApi(mock).projects.instances.tables.schemaBundles;
      final arg_name = 'foo';
      final arg_etag = 'foo';
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
            unittest.equals('v2/'),
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
          unittest.expect(queryMap['etag']!.first, unittest.equals(arg_etag));
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
      final response = await res.delete(
        arg_name,
        etag: arg_etag,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.BigtableAdminApi(mock).projects.instances.tables.schemaBundles;
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
            unittest.equals('v2/'),
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
          final resp = convert.json.encode(buildSchemaBundle());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkSchemaBundle(response as api.SchemaBundle);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res =
          api.BigtableAdminApi(mock).projects.instances.tables.schemaBundles;
      final arg_request = buildGetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGetIamPolicyRequest(obj);

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
            unittest.equals('v2/'),
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
      final response = await res.getIamPolicy(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.BigtableAdminApi(mock).projects.instances.tables.schemaBundles;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_view = 'foo';
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
            unittest.equals('v2/'),
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
            core.int.parse(queryMap['pageSize']!.first),
            unittest.equals(arg_pageSize),
          );
          unittest.expect(
            queryMap['pageToken']!.first,
            unittest.equals(arg_pageToken),
          );
          unittest.expect(queryMap['view']!.first, unittest.equals(arg_view));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListSchemaBundlesResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        view: arg_view,
        $fields: arg_$fields,
      );
      checkListSchemaBundlesResponse(response as api.ListSchemaBundlesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.BigtableAdminApi(mock).projects.instances.tables.schemaBundles;
      final arg_request = buildSchemaBundle();
      final arg_name = 'foo';
      final arg_ignoreWarnings = true;
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SchemaBundle.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSchemaBundle(obj);

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
            unittest.equals('v2/'),
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        ignoreWarnings: arg_ignoreWarnings,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res =
          api.BigtableAdminApi(mock).projects.instances.tables.schemaBundles;
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
            unittest.equals('v2/'),
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
      final res =
          api.BigtableAdminApi(mock).projects.instances.tables.schemaBundles;
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
            unittest.equals('v2/'),
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

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.BigtableAdminApi(mock).projects.locations;
      final arg_name = 'foo';
      final arg_extraLocationTypes = buildUnnamed46();
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
            unittest.equals('v2/'),
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
}
