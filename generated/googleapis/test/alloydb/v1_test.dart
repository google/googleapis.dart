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

import 'package:googleapis/alloydb/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAuthorizedNetwork = 0;
api.AuthorizedNetwork buildAuthorizedNetwork() {
  final o = api.AuthorizedNetwork();
  buildCounterAuthorizedNetwork++;
  if (buildCounterAuthorizedNetwork < 3) {
    o.cidrRange = 'foo';
  }
  buildCounterAuthorizedNetwork--;
  return o;
}

void checkAuthorizedNetwork(api.AuthorizedNetwork o) {
  buildCounterAuthorizedNetwork++;
  if (buildCounterAuthorizedNetwork < 3) {
    unittest.expect(o.cidrRange!, unittest.equals('foo'));
  }
  buildCounterAuthorizedNetwork--;
}

core.Map<core.String, core.String> buildUnnamed0() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed0(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterAutomatedBackupPolicy = 0;
api.AutomatedBackupPolicy buildAutomatedBackupPolicy() {
  final o = api.AutomatedBackupPolicy();
  buildCounterAutomatedBackupPolicy++;
  if (buildCounterAutomatedBackupPolicy < 3) {
    o.backupWindow = 'foo';
    o.enabled = true;
    o.encryptionConfig = buildEncryptionConfig();
    o.labels = buildUnnamed0();
    o.location = 'foo';
    o.quantityBasedRetention = buildQuantityBasedRetention();
    o.timeBasedRetention = buildTimeBasedRetention();
    o.weeklySchedule = buildWeeklySchedule();
  }
  buildCounterAutomatedBackupPolicy--;
  return o;
}

void checkAutomatedBackupPolicy(api.AutomatedBackupPolicy o) {
  buildCounterAutomatedBackupPolicy++;
  if (buildCounterAutomatedBackupPolicy < 3) {
    unittest.expect(o.backupWindow!, unittest.equals('foo'));
    unittest.expect(o.enabled!, unittest.isTrue);
    checkEncryptionConfig(o.encryptionConfig!);
    checkUnnamed0(o.labels!);
    unittest.expect(o.location!, unittest.equals('foo'));
    checkQuantityBasedRetention(o.quantityBasedRetention!);
    checkTimeBasedRetention(o.timeBasedRetention!);
    checkWeeklySchedule(o.weeklySchedule!);
  }
  buildCounterAutomatedBackupPolicy--;
}

core.Map<core.String, core.String> buildUnnamed1() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed1(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed2() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed2(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed3() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed3(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterBackup = 0;
api.Backup buildBackup() {
  final o = api.Backup();
  buildCounterBackup++;
  if (buildCounterBackup < 3) {
    o.annotations = buildUnnamed1();
    o.clusterName = 'foo';
    o.clusterUid = 'foo';
    o.createCompletionTime = 'foo';
    o.createTime = 'foo';
    o.databaseVersion = 'foo';
    o.deleteTime = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.encryptionConfig = buildEncryptionConfig();
    o.encryptionInfo = buildEncryptionInfo();
    o.etag = 'foo';
    o.expiryQuantity = buildQuantityBasedExpiry();
    o.expiryTime = 'foo';
    o.labels = buildUnnamed2();
    o.name = 'foo';
    o.reconciling = true;
    o.satisfiesPzs = true;
    o.sizeBytes = 'foo';
    o.state = 'foo';
    o.tags = buildUnnamed3();
    o.type = 'foo';
    o.uid = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterBackup--;
  return o;
}

void checkBackup(api.Backup o) {
  buildCounterBackup++;
  if (buildCounterBackup < 3) {
    checkUnnamed1(o.annotations!);
    unittest.expect(o.clusterName!, unittest.equals('foo'));
    unittest.expect(o.clusterUid!, unittest.equals('foo'));
    unittest.expect(o.createCompletionTime!, unittest.equals('foo'));
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.databaseVersion!, unittest.equals('foo'));
    unittest.expect(o.deleteTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkEncryptionConfig(o.encryptionConfig!);
    checkEncryptionInfo(o.encryptionInfo!);
    unittest.expect(o.etag!, unittest.equals('foo'));
    checkQuantityBasedExpiry(o.expiryQuantity!);
    unittest.expect(o.expiryTime!, unittest.equals('foo'));
    checkUnnamed2(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.reconciling!, unittest.isTrue);
    unittest.expect(o.satisfiesPzs!, unittest.isTrue);
    unittest.expect(o.sizeBytes!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    checkUnnamed3(o.tags!);
    unittest.expect(o.type!, unittest.equals('foo'));
    unittest.expect(o.uid!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterBackup--;
}

core.int buildCounterBackupDrBackupSource = 0;
api.BackupDrBackupSource buildBackupDrBackupSource() {
  final o = api.BackupDrBackupSource();
  buildCounterBackupDrBackupSource++;
  if (buildCounterBackupDrBackupSource < 3) {
    o.backup = 'foo';
  }
  buildCounterBackupDrBackupSource--;
  return o;
}

void checkBackupDrBackupSource(api.BackupDrBackupSource o) {
  buildCounterBackupDrBackupSource++;
  if (buildCounterBackupDrBackupSource < 3) {
    unittest.expect(o.backup!, unittest.equals('foo'));
  }
  buildCounterBackupDrBackupSource--;
}

core.int buildCounterBackupDrEnabledWindow = 0;
api.BackupDrEnabledWindow buildBackupDrEnabledWindow() {
  final o = api.BackupDrEnabledWindow();
  buildCounterBackupDrEnabledWindow++;
  if (buildCounterBackupDrEnabledWindow < 3) {
    o.automatedBackupPreviouslyEnabled = true;
    o.backupPlanAssociation = 'foo';
    o.continuousBackupPreviousRecoveryWindowDays = 42;
    o.continuousBackupPreviouslyEnabled = true;
    o.continuousBackupPreviouslyEnabledTime = 'foo';
    o.dataSource = 'foo';
    o.disabledTime = 'foo';
    o.enabledTime = 'foo';
    o.logRetentionPeriod = 'foo';
  }
  buildCounterBackupDrEnabledWindow--;
  return o;
}

void checkBackupDrEnabledWindow(api.BackupDrEnabledWindow o) {
  buildCounterBackupDrEnabledWindow++;
  if (buildCounterBackupDrEnabledWindow < 3) {
    unittest.expect(o.automatedBackupPreviouslyEnabled!, unittest.isTrue);
    unittest.expect(o.backupPlanAssociation!, unittest.equals('foo'));
    unittest.expect(
      o.continuousBackupPreviousRecoveryWindowDays!,
      unittest.equals(42),
    );
    unittest.expect(o.continuousBackupPreviouslyEnabled!, unittest.isTrue);
    unittest.expect(
      o.continuousBackupPreviouslyEnabledTime!,
      unittest.equals('foo'),
    );
    unittest.expect(o.dataSource!, unittest.equals('foo'));
    unittest.expect(o.disabledTime!, unittest.equals('foo'));
    unittest.expect(o.enabledTime!, unittest.equals('foo'));
    unittest.expect(o.logRetentionPeriod!, unittest.equals('foo'));
  }
  buildCounterBackupDrEnabledWindow--;
}

core.List<api.BackupDrEnabledWindow> buildUnnamed4() => [
  buildBackupDrEnabledWindow(),
  buildBackupDrEnabledWindow(),
];

void checkUnnamed4(core.List<api.BackupDrEnabledWindow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBackupDrEnabledWindow(o[0]);
  checkBackupDrEnabledWindow(o[1]);
}

core.int buildCounterBackupDrInfo = 0;
api.BackupDrInfo buildBackupDrInfo() {
  final o = api.BackupDrInfo();
  buildCounterBackupDrInfo++;
  if (buildCounterBackupDrInfo < 3) {
    o.currentWindow = buildBackupDrEnabledWindow();
    o.previousWindows = buildUnnamed4();
  }
  buildCounterBackupDrInfo--;
  return o;
}

void checkBackupDrInfo(api.BackupDrInfo o) {
  buildCounterBackupDrInfo++;
  if (buildCounterBackupDrInfo < 3) {
    checkBackupDrEnabledWindow(o.currentWindow!);
    checkUnnamed4(o.previousWindows!);
  }
  buildCounterBackupDrInfo--;
}

core.int buildCounterBackupDrPitrSource = 0;
api.BackupDrPitrSource buildBackupDrPitrSource() {
  final o = api.BackupDrPitrSource();
  buildCounterBackupDrPitrSource++;
  if (buildCounterBackupDrPitrSource < 3) {
    o.dataSource = 'foo';
    o.pointInTime = 'foo';
  }
  buildCounterBackupDrPitrSource--;
  return o;
}

void checkBackupDrPitrSource(api.BackupDrPitrSource o) {
  buildCounterBackupDrPitrSource++;
  if (buildCounterBackupDrPitrSource < 3) {
    unittest.expect(o.dataSource!, unittest.equals('foo'));
    unittest.expect(o.pointInTime!, unittest.equals('foo'));
  }
  buildCounterBackupDrPitrSource--;
}

core.int buildCounterBackupSource = 0;
api.BackupSource buildBackupSource() {
  final o = api.BackupSource();
  buildCounterBackupSource++;
  if (buildCounterBackupSource < 3) {
    o.backupName = 'foo';
    o.backupUid = 'foo';
  }
  buildCounterBackupSource--;
  return o;
}

void checkBackupSource(api.BackupSource o) {
  buildCounterBackupSource++;
  if (buildCounterBackupSource < 3) {
    unittest.expect(o.backupName!, unittest.equals('foo'));
    unittest.expect(o.backupUid!, unittest.equals('foo'));
  }
  buildCounterBackupSource--;
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

core.int buildCounterClientConnectionConfig = 0;
api.ClientConnectionConfig buildClientConnectionConfig() {
  final o = api.ClientConnectionConfig();
  buildCounterClientConnectionConfig++;
  if (buildCounterClientConnectionConfig < 3) {
    o.requireConnectors = true;
    o.sslConfig = buildSslConfig();
  }
  buildCounterClientConnectionConfig--;
  return o;
}

void checkClientConnectionConfig(api.ClientConnectionConfig o) {
  buildCounterClientConnectionConfig++;
  if (buildCounterClientConnectionConfig < 3) {
    unittest.expect(o.requireConnectors!, unittest.isTrue);
    checkSslConfig(o.sslConfig!);
  }
  buildCounterClientConnectionConfig--;
}

core.int buildCounterCloudSQLBackupRunSource = 0;
api.CloudSQLBackupRunSource buildCloudSQLBackupRunSource() {
  final o = api.CloudSQLBackupRunSource();
  buildCounterCloudSQLBackupRunSource++;
  if (buildCounterCloudSQLBackupRunSource < 3) {
    o.backupRunId = 'foo';
    o.instanceId = 'foo';
    o.project = 'foo';
  }
  buildCounterCloudSQLBackupRunSource--;
  return o;
}

void checkCloudSQLBackupRunSource(api.CloudSQLBackupRunSource o) {
  buildCounterCloudSQLBackupRunSource++;
  if (buildCounterCloudSQLBackupRunSource < 3) {
    unittest.expect(o.backupRunId!, unittest.equals('foo'));
    unittest.expect(o.instanceId!, unittest.equals('foo'));
    unittest.expect(o.project!, unittest.equals('foo'));
  }
  buildCounterCloudSQLBackupRunSource--;
}

core.Map<core.String, core.String> buildUnnamed5() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed5(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed6() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed6(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed7() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed7(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterCluster = 0;
api.Cluster buildCluster() {
  final o = api.Cluster();
  buildCounterCluster++;
  if (buildCounterCluster < 3) {
    o.annotations = buildUnnamed5();
    o.automatedBackupPolicy = buildAutomatedBackupPolicy();
    o.backupSource = buildBackupSource();
    o.backupdrBackupSource = buildBackupDrBackupSource();
    o.backupdrInfo = buildBackupDrInfo();
    o.cloudsqlBackupRunSource = buildCloudSQLBackupRunSource();
    o.clusterType = 'foo';
    o.continuousBackupConfig = buildContinuousBackupConfig();
    o.continuousBackupInfo = buildContinuousBackupInfo();
    o.createTime = 'foo';
    o.databaseVersion = 'foo';
    o.dataplexConfig = buildDataplexConfig();
    o.deleteTime = 'foo';
    o.displayName = 'foo';
    o.encryptionConfig = buildEncryptionConfig();
    o.encryptionInfo = buildEncryptionInfo();
    o.etag = 'foo';
    o.initialUser = buildUserPassword();
    o.labels = buildUnnamed6();
    o.maintenanceSchedule = buildMaintenanceSchedule();
    o.maintenanceUpdatePolicy = buildMaintenanceUpdatePolicy();
    o.maintenanceVersionSelectionPolicy = 'foo';
    o.migrationSource = buildMigrationSource();
    o.name = 'foo';
    o.network = 'foo';
    o.networkConfig = buildNetworkConfig();
    o.primaryConfig = buildPrimaryConfig();
    o.pscConfig = buildPscConfig();
    o.reconciling = true;
    o.satisfiesPzs = true;
    o.secondaryConfig = buildSecondaryConfig();
    o.sslConfig = buildSslConfig();
    o.state = 'foo';
    o.subscriptionType = 'foo';
    o.tags = buildUnnamed7();
    o.trialMetadata = buildTrialMetadata();
    o.uid = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterCluster--;
  return o;
}

void checkCluster(api.Cluster o) {
  buildCounterCluster++;
  if (buildCounterCluster < 3) {
    checkUnnamed5(o.annotations!);
    checkAutomatedBackupPolicy(o.automatedBackupPolicy!);
    checkBackupSource(o.backupSource!);
    checkBackupDrBackupSource(o.backupdrBackupSource!);
    checkBackupDrInfo(o.backupdrInfo!);
    checkCloudSQLBackupRunSource(o.cloudsqlBackupRunSource!);
    unittest.expect(o.clusterType!, unittest.equals('foo'));
    checkContinuousBackupConfig(o.continuousBackupConfig!);
    checkContinuousBackupInfo(o.continuousBackupInfo!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.databaseVersion!, unittest.equals('foo'));
    checkDataplexConfig(o.dataplexConfig!);
    unittest.expect(o.deleteTime!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkEncryptionConfig(o.encryptionConfig!);
    checkEncryptionInfo(o.encryptionInfo!);
    unittest.expect(o.etag!, unittest.equals('foo'));
    checkUserPassword(o.initialUser!);
    checkUnnamed6(o.labels!);
    checkMaintenanceSchedule(o.maintenanceSchedule!);
    checkMaintenanceUpdatePolicy(o.maintenanceUpdatePolicy!);
    unittest.expect(
      o.maintenanceVersionSelectionPolicy!,
      unittest.equals('foo'),
    );
    checkMigrationSource(o.migrationSource!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.network!, unittest.equals('foo'));
    checkNetworkConfig(o.networkConfig!);
    checkPrimaryConfig(o.primaryConfig!);
    checkPscConfig(o.pscConfig!);
    unittest.expect(o.reconciling!, unittest.isTrue);
    unittest.expect(o.satisfiesPzs!, unittest.isTrue);
    checkSecondaryConfig(o.secondaryConfig!);
    checkSslConfig(o.sslConfig!);
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.subscriptionType!, unittest.equals('foo'));
    checkUnnamed7(o.tags!);
    checkTrialMetadata(o.trialMetadata!);
    unittest.expect(o.uid!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterCluster--;
}

core.int buildCounterConnectionInfo = 0;
api.ConnectionInfo buildConnectionInfo() {
  final o = api.ConnectionInfo();
  buildCounterConnectionInfo++;
  if (buildCounterConnectionInfo < 3) {
    o.instanceUid = 'foo';
    o.ipAddress = 'foo';
    o.name = 'foo';
    o.publicIpAddress = 'foo';
  }
  buildCounterConnectionInfo--;
  return o;
}

void checkConnectionInfo(api.ConnectionInfo o) {
  buildCounterConnectionInfo++;
  if (buildCounterConnectionInfo < 3) {
    unittest.expect(o.instanceUid!, unittest.equals('foo'));
    unittest.expect(o.ipAddress!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.publicIpAddress!, unittest.equals('foo'));
  }
  buildCounterConnectionInfo--;
}

core.Map<core.String, core.String> buildUnnamed8() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed8(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterConnectionPoolConfig = 0;
api.ConnectionPoolConfig buildConnectionPoolConfig() {
  final o = api.ConnectionPoolConfig();
  buildCounterConnectionPoolConfig++;
  if (buildCounterConnectionPoolConfig < 3) {
    o.enabled = true;
    o.flags = buildUnnamed8();
    o.poolerCount = 42;
  }
  buildCounterConnectionPoolConfig--;
  return o;
}

void checkConnectionPoolConfig(api.ConnectionPoolConfig o) {
  buildCounterConnectionPoolConfig++;
  if (buildCounterConnectionPoolConfig < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
    checkUnnamed8(o.flags!);
    unittest.expect(o.poolerCount!, unittest.equals(42));
  }
  buildCounterConnectionPoolConfig--;
}

core.int buildCounterContinuousBackupConfig = 0;
api.ContinuousBackupConfig buildContinuousBackupConfig() {
  final o = api.ContinuousBackupConfig();
  buildCounterContinuousBackupConfig++;
  if (buildCounterContinuousBackupConfig < 3) {
    o.enabled = true;
    o.encryptionConfig = buildEncryptionConfig();
    o.recoveryWindowDays = 42;
  }
  buildCounterContinuousBackupConfig--;
  return o;
}

void checkContinuousBackupConfig(api.ContinuousBackupConfig o) {
  buildCounterContinuousBackupConfig++;
  if (buildCounterContinuousBackupConfig < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
    checkEncryptionConfig(o.encryptionConfig!);
    unittest.expect(o.recoveryWindowDays!, unittest.equals(42));
  }
  buildCounterContinuousBackupConfig--;
}

core.List<core.String> buildUnnamed9() => ['foo', 'foo'];

void checkUnnamed9(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterContinuousBackupInfo = 0;
api.ContinuousBackupInfo buildContinuousBackupInfo() {
  final o = api.ContinuousBackupInfo();
  buildCounterContinuousBackupInfo++;
  if (buildCounterContinuousBackupInfo < 3) {
    o.earliestRestorableTime = 'foo';
    o.enabledTime = 'foo';
    o.encryptionInfo = buildEncryptionInfo();
    o.schedule = buildUnnamed9();
  }
  buildCounterContinuousBackupInfo--;
  return o;
}

void checkContinuousBackupInfo(api.ContinuousBackupInfo o) {
  buildCounterContinuousBackupInfo++;
  if (buildCounterContinuousBackupInfo < 3) {
    unittest.expect(o.earliestRestorableTime!, unittest.equals('foo'));
    unittest.expect(o.enabledTime!, unittest.equals('foo'));
    checkEncryptionInfo(o.encryptionInfo!);
    checkUnnamed9(o.schedule!);
  }
  buildCounterContinuousBackupInfo--;
}

core.int buildCounterContinuousBackupSource = 0;
api.ContinuousBackupSource buildContinuousBackupSource() {
  final o = api.ContinuousBackupSource();
  buildCounterContinuousBackupSource++;
  if (buildCounterContinuousBackupSource < 3) {
    o.cluster = 'foo';
    o.pointInTime = 'foo';
  }
  buildCounterContinuousBackupSource--;
  return o;
}

void checkContinuousBackupSource(api.ContinuousBackupSource o) {
  buildCounterContinuousBackupSource++;
  if (buildCounterContinuousBackupSource < 3) {
    unittest.expect(o.cluster!, unittest.equals('foo'));
    unittest.expect(o.pointInTime!, unittest.equals('foo'));
  }
  buildCounterContinuousBackupSource--;
}

core.int buildCounterCsvExportOptions = 0;
api.CsvExportOptions buildCsvExportOptions() {
  final o = api.CsvExportOptions();
  buildCounterCsvExportOptions++;
  if (buildCounterCsvExportOptions < 3) {
    o.escapeCharacter = 'foo';
    o.fieldDelimiter = 'foo';
    o.quoteCharacter = 'foo';
    o.selectQuery = 'foo';
  }
  buildCounterCsvExportOptions--;
  return o;
}

void checkCsvExportOptions(api.CsvExportOptions o) {
  buildCounterCsvExportOptions++;
  if (buildCounterCsvExportOptions < 3) {
    unittest.expect(o.escapeCharacter!, unittest.equals('foo'));
    unittest.expect(o.fieldDelimiter!, unittest.equals('foo'));
    unittest.expect(o.quoteCharacter!, unittest.equals('foo'));
    unittest.expect(o.selectQuery!, unittest.equals('foo'));
  }
  buildCounterCsvExportOptions--;
}

core.List<core.String> buildUnnamed10() => ['foo', 'foo'];

void checkUnnamed10(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCsvImportOptions = 0;
api.CsvImportOptions buildCsvImportOptions() {
  final o = api.CsvImportOptions();
  buildCounterCsvImportOptions++;
  if (buildCounterCsvImportOptions < 3) {
    o.columns = buildUnnamed10();
    o.escapeCharacter = 'foo';
    o.fieldDelimiter = 'foo';
    o.quoteCharacter = 'foo';
    o.table = 'foo';
  }
  buildCounterCsvImportOptions--;
  return o;
}

void checkCsvImportOptions(api.CsvImportOptions o) {
  buildCounterCsvImportOptions++;
  if (buildCounterCsvImportOptions < 3) {
    checkUnnamed10(o.columns!);
    unittest.expect(o.escapeCharacter!, unittest.equals('foo'));
    unittest.expect(o.fieldDelimiter!, unittest.equals('foo'));
    unittest.expect(o.quoteCharacter!, unittest.equals('foo'));
    unittest.expect(o.table!, unittest.equals('foo'));
  }
  buildCounterCsvImportOptions--;
}

core.int buildCounterDataplexConfig = 0;
api.DataplexConfig buildDataplexConfig() {
  final o = api.DataplexConfig();
  buildCounterDataplexConfig++;
  if (buildCounterDataplexConfig < 3) {
    o.enabled = true;
  }
  buildCounterDataplexConfig--;
  return o;
}

void checkDataplexConfig(api.DataplexConfig o) {
  buildCounterDataplexConfig++;
  if (buildCounterDataplexConfig < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
  }
  buildCounterDataplexConfig--;
}

core.int buildCounterDenyMaintenancePeriod = 0;
api.DenyMaintenancePeriod buildDenyMaintenancePeriod() {
  final o = api.DenyMaintenancePeriod();
  buildCounterDenyMaintenancePeriod++;
  if (buildCounterDenyMaintenancePeriod < 3) {
    o.endDate = buildGoogleTypeDate();
    o.startDate = buildGoogleTypeDate();
    o.time = buildGoogleTypeTimeOfDay();
  }
  buildCounterDenyMaintenancePeriod--;
  return o;
}

void checkDenyMaintenancePeriod(api.DenyMaintenancePeriod o) {
  buildCounterDenyMaintenancePeriod++;
  if (buildCounterDenyMaintenancePeriod < 3) {
    checkGoogleTypeDate(o.endDate!);
    checkGoogleTypeDate(o.startDate!);
    checkGoogleTypeTimeOfDay(o.time!);
  }
  buildCounterDenyMaintenancePeriod--;
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

core.List<core.String> buildUnnamed11() => ['foo', 'foo'];

void checkUnnamed11(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterEncryptionInfo = 0;
api.EncryptionInfo buildEncryptionInfo() {
  final o = api.EncryptionInfo();
  buildCounterEncryptionInfo++;
  if (buildCounterEncryptionInfo < 3) {
    o.encryptionType = 'foo';
    o.kmsKeyVersions = buildUnnamed11();
  }
  buildCounterEncryptionInfo--;
  return o;
}

void checkEncryptionInfo(api.EncryptionInfo o) {
  buildCounterEncryptionInfo++;
  if (buildCounterEncryptionInfo < 3) {
    unittest.expect(o.encryptionType!, unittest.equals('foo'));
    checkUnnamed11(o.kmsKeyVersions!);
  }
  buildCounterEncryptionInfo--;
}

core.int buildCounterExportClusterRequest = 0;
api.ExportClusterRequest buildExportClusterRequest() {
  final o = api.ExportClusterRequest();
  buildCounterExportClusterRequest++;
  if (buildCounterExportClusterRequest < 3) {
    o.csvExportOptions = buildCsvExportOptions();
    o.database = 'foo';
    o.gcsDestination = buildGcsDestination();
    o.sqlExportOptions = buildSqlExportOptions();
  }
  buildCounterExportClusterRequest--;
  return o;
}

void checkExportClusterRequest(api.ExportClusterRequest o) {
  buildCounterExportClusterRequest++;
  if (buildCounterExportClusterRequest < 3) {
    checkCsvExportOptions(o.csvExportOptions!);
    unittest.expect(o.database!, unittest.equals('foo'));
    checkGcsDestination(o.gcsDestination!);
    checkSqlExportOptions(o.sqlExportOptions!);
  }
  buildCounterExportClusterRequest--;
}

core.int buildCounterFailoverInstanceRequest = 0;
api.FailoverInstanceRequest buildFailoverInstanceRequest() {
  final o = api.FailoverInstanceRequest();
  buildCounterFailoverInstanceRequest++;
  if (buildCounterFailoverInstanceRequest < 3) {
    o.requestId = 'foo';
    o.validateOnly = true;
  }
  buildCounterFailoverInstanceRequest--;
  return o;
}

void checkFailoverInstanceRequest(api.FailoverInstanceRequest o) {
  buildCounterFailoverInstanceRequest++;
  if (buildCounterFailoverInstanceRequest < 3) {
    unittest.expect(o.requestId!, unittest.equals('foo'));
    unittest.expect(o.validateOnly!, unittest.isTrue);
  }
  buildCounterFailoverInstanceRequest--;
}

core.int buildCounterGcsDestination = 0;
api.GcsDestination buildGcsDestination() {
  final o = api.GcsDestination();
  buildCounterGcsDestination++;
  if (buildCounterGcsDestination < 3) {
    o.uri = 'foo';
  }
  buildCounterGcsDestination--;
  return o;
}

void checkGcsDestination(api.GcsDestination o) {
  buildCounterGcsDestination++;
  if (buildCounterGcsDestination < 3) {
    unittest.expect(o.uri!, unittest.equals('foo'));
  }
  buildCounterGcsDestination--;
}

core.List<api.GoogleCloudLocationLocation> buildUnnamed12() => [
  buildGoogleCloudLocationLocation(),
  buildGoogleCloudLocationLocation(),
];

void checkUnnamed12(core.List<api.GoogleCloudLocationLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudLocationLocation(o[0]);
  checkGoogleCloudLocationLocation(o[1]);
}

core.int buildCounterGoogleCloudLocationListLocationsResponse = 0;
api.GoogleCloudLocationListLocationsResponse
buildGoogleCloudLocationListLocationsResponse() {
  final o = api.GoogleCloudLocationListLocationsResponse();
  buildCounterGoogleCloudLocationListLocationsResponse++;
  if (buildCounterGoogleCloudLocationListLocationsResponse < 3) {
    o.locations = buildUnnamed12();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudLocationListLocationsResponse--;
  return o;
}

void checkGoogleCloudLocationListLocationsResponse(
  api.GoogleCloudLocationListLocationsResponse o,
) {
  buildCounterGoogleCloudLocationListLocationsResponse++;
  if (buildCounterGoogleCloudLocationListLocationsResponse < 3) {
    checkUnnamed12(o.locations!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudLocationListLocationsResponse--;
}

core.Map<core.String, core.String> buildUnnamed13() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed13(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.Object?> buildUnnamed14() => {
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

void checkUnnamed14(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterGoogleCloudLocationLocation = 0;
api.GoogleCloudLocationLocation buildGoogleCloudLocationLocation() {
  final o = api.GoogleCloudLocationLocation();
  buildCounterGoogleCloudLocationLocation++;
  if (buildCounterGoogleCloudLocationLocation < 3) {
    o.displayName = 'foo';
    o.labels = buildUnnamed13();
    o.locationId = 'foo';
    o.metadata = buildUnnamed14();
    o.name = 'foo';
  }
  buildCounterGoogleCloudLocationLocation--;
  return o;
}

void checkGoogleCloudLocationLocation(api.GoogleCloudLocationLocation o) {
  buildCounterGoogleCloudLocationLocation++;
  if (buildCounterGoogleCloudLocationLocation < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkUnnamed13(o.labels!);
    unittest.expect(o.locationId!, unittest.equals('foo'));
    checkUnnamed14(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudLocationLocation--;
}

core.int buildCounterGoogleTypeDate = 0;
api.GoogleTypeDate buildGoogleTypeDate() {
  final o = api.GoogleTypeDate();
  buildCounterGoogleTypeDate++;
  if (buildCounterGoogleTypeDate < 3) {
    o.day = 42;
    o.month = 42;
    o.year = 42;
  }
  buildCounterGoogleTypeDate--;
  return o;
}

void checkGoogleTypeDate(api.GoogleTypeDate o) {
  buildCounterGoogleTypeDate++;
  if (buildCounterGoogleTypeDate < 3) {
    unittest.expect(o.day!, unittest.equals(42));
    unittest.expect(o.month!, unittest.equals(42));
    unittest.expect(o.year!, unittest.equals(42));
  }
  buildCounterGoogleTypeDate--;
}

core.int buildCounterGoogleTypeTimeOfDay = 0;
api.GoogleTypeTimeOfDay buildGoogleTypeTimeOfDay() {
  final o = api.GoogleTypeTimeOfDay();
  buildCounterGoogleTypeTimeOfDay++;
  if (buildCounterGoogleTypeTimeOfDay < 3) {
    o.hours = 42;
    o.minutes = 42;
    o.nanos = 42;
    o.seconds = 42;
  }
  buildCounterGoogleTypeTimeOfDay--;
  return o;
}

void checkGoogleTypeTimeOfDay(api.GoogleTypeTimeOfDay o) {
  buildCounterGoogleTypeTimeOfDay++;
  if (buildCounterGoogleTypeTimeOfDay < 3) {
    unittest.expect(o.hours!, unittest.equals(42));
    unittest.expect(o.minutes!, unittest.equals(42));
    unittest.expect(o.nanos!, unittest.equals(42));
    unittest.expect(o.seconds!, unittest.equals(42));
  }
  buildCounterGoogleTypeTimeOfDay--;
}

core.int buildCounterImportClusterRequest = 0;
api.ImportClusterRequest buildImportClusterRequest() {
  final o = api.ImportClusterRequest();
  buildCounterImportClusterRequest++;
  if (buildCounterImportClusterRequest < 3) {
    o.csvImportOptions = buildCsvImportOptions();
    o.database = 'foo';
    o.gcsUri = 'foo';
    o.sqlImportOptions = buildSqlImportOptions();
    o.user = 'foo';
  }
  buildCounterImportClusterRequest--;
  return o;
}

void checkImportClusterRequest(api.ImportClusterRequest o) {
  buildCounterImportClusterRequest++;
  if (buildCounterImportClusterRequest < 3) {
    checkCsvImportOptions(o.csvImportOptions!);
    unittest.expect(o.database!, unittest.equals('foo'));
    unittest.expect(o.gcsUri!, unittest.equals('foo'));
    checkSqlImportOptions(o.sqlImportOptions!);
    unittest.expect(o.user!, unittest.equals('foo'));
  }
  buildCounterImportClusterRequest--;
}

core.int buildCounterInjectFaultRequest = 0;
api.InjectFaultRequest buildInjectFaultRequest() {
  final o = api.InjectFaultRequest();
  buildCounterInjectFaultRequest++;
  if (buildCounterInjectFaultRequest < 3) {
    o.faultType = 'foo';
    o.requestId = 'foo';
    o.validateOnly = true;
  }
  buildCounterInjectFaultRequest--;
  return o;
}

void checkInjectFaultRequest(api.InjectFaultRequest o) {
  buildCounterInjectFaultRequest++;
  if (buildCounterInjectFaultRequest < 3) {
    unittest.expect(o.faultType!, unittest.equals('foo'));
    unittest.expect(o.requestId!, unittest.equals('foo'));
    unittest.expect(o.validateOnly!, unittest.isTrue);
  }
  buildCounterInjectFaultRequest--;
}

core.Map<core.String, core.String> buildUnnamed15() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed15(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
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

core.List<api.Node> buildUnnamed18() => [buildNode(), buildNode()];

void checkUnnamed18(core.List<api.Node> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNode(o[0]);
  checkNode(o[1]);
}

core.List<core.String> buildUnnamed19() => ['foo', 'foo'];

void checkUnnamed19(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterInstance = 0;
api.Instance buildInstance() {
  final o = api.Instance();
  buildCounterInstance++;
  if (buildCounterInstance < 3) {
    o.activationPolicy = 'foo';
    o.annotations = buildUnnamed15();
    o.availabilityType = 'foo';
    o.clientConnectionConfig = buildClientConnectionConfig();
    o.connectionPoolConfig = buildConnectionPoolConfig();
    o.createTime = 'foo';
    o.dataApiAccess = 'foo';
    o.databaseFlags = buildUnnamed16();
    o.deleteTime = 'foo';
    o.displayName = 'foo';
    o.etag = 'foo';
    o.gceZone = 'foo';
    o.instanceType = 'foo';
    o.ipAddress = 'foo';
    o.labels = buildUnnamed17();
    o.machineConfig = buildMachineConfig();
    o.maintenanceVersionName = 'foo';
    o.name = 'foo';
    o.networkConfig = buildInstanceNetworkConfig();
    o.nodes = buildUnnamed18();
    o.observabilityConfig = buildObservabilityInstanceConfig();
    o.outboundPublicIpAddresses = buildUnnamed19();
    o.pscInstanceConfig = buildPscInstanceConfig();
    o.publicIpAddress = 'foo';
    o.queryInsightsConfig = buildQueryInsightsInstanceConfig();
    o.readPoolConfig = buildReadPoolConfig();
    o.reconciling = true;
    o.satisfiesPzs = true;
    o.state = 'foo';
    o.uid = 'foo';
    o.updateTime = 'foo';
    o.writableNode = buildNode();
  }
  buildCounterInstance--;
  return o;
}

void checkInstance(api.Instance o) {
  buildCounterInstance++;
  if (buildCounterInstance < 3) {
    unittest.expect(o.activationPolicy!, unittest.equals('foo'));
    checkUnnamed15(o.annotations!);
    unittest.expect(o.availabilityType!, unittest.equals('foo'));
    checkClientConnectionConfig(o.clientConnectionConfig!);
    checkConnectionPoolConfig(o.connectionPoolConfig!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.dataApiAccess!, unittest.equals('foo'));
    checkUnnamed16(o.databaseFlags!);
    unittest.expect(o.deleteTime!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.etag!, unittest.equals('foo'));
    unittest.expect(o.gceZone!, unittest.equals('foo'));
    unittest.expect(o.instanceType!, unittest.equals('foo'));
    unittest.expect(o.ipAddress!, unittest.equals('foo'));
    checkUnnamed17(o.labels!);
    checkMachineConfig(o.machineConfig!);
    unittest.expect(o.maintenanceVersionName!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkInstanceNetworkConfig(o.networkConfig!);
    checkUnnamed18(o.nodes!);
    checkObservabilityInstanceConfig(o.observabilityConfig!);
    checkUnnamed19(o.outboundPublicIpAddresses!);
    checkPscInstanceConfig(o.pscInstanceConfig!);
    unittest.expect(o.publicIpAddress!, unittest.equals('foo'));
    checkQueryInsightsInstanceConfig(o.queryInsightsConfig!);
    checkReadPoolConfig(o.readPoolConfig!);
    unittest.expect(o.reconciling!, unittest.isTrue);
    unittest.expect(o.satisfiesPzs!, unittest.isTrue);
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.uid!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
    checkNode(o.writableNode!);
  }
  buildCounterInstance--;
}

core.List<api.AuthorizedNetwork> buildUnnamed20() => [
  buildAuthorizedNetwork(),
  buildAuthorizedNetwork(),
];

void checkUnnamed20(core.List<api.AuthorizedNetwork> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuthorizedNetwork(o[0]);
  checkAuthorizedNetwork(o[1]);
}

core.int buildCounterInstanceNetworkConfig = 0;
api.InstanceNetworkConfig buildInstanceNetworkConfig() {
  final o = api.InstanceNetworkConfig();
  buildCounterInstanceNetworkConfig++;
  if (buildCounterInstanceNetworkConfig < 3) {
    o.allocatedIpRangeOverride = 'foo';
    o.authorizedExternalNetworks = buildUnnamed20();
    o.enableOutboundPublicIp = true;
    o.enablePublicIp = true;
    o.network = 'foo';
  }
  buildCounterInstanceNetworkConfig--;
  return o;
}

void checkInstanceNetworkConfig(api.InstanceNetworkConfig o) {
  buildCounterInstanceNetworkConfig++;
  if (buildCounterInstanceNetworkConfig < 3) {
    unittest.expect(o.allocatedIpRangeOverride!, unittest.equals('foo'));
    checkUnnamed20(o.authorizedExternalNetworks!);
    unittest.expect(o.enableOutboundPublicIp!, unittest.isTrue);
    unittest.expect(o.enablePublicIp!, unittest.isTrue);
    unittest.expect(o.network!, unittest.equals('foo'));
  }
  buildCounterInstanceNetworkConfig--;
}

core.int buildCounterIntegerRestrictions = 0;
api.IntegerRestrictions buildIntegerRestrictions() {
  final o = api.IntegerRestrictions();
  buildCounterIntegerRestrictions++;
  if (buildCounterIntegerRestrictions < 3) {
    o.maxValue = 'foo';
    o.minValue = 'foo';
  }
  buildCounterIntegerRestrictions--;
  return o;
}

void checkIntegerRestrictions(api.IntegerRestrictions o) {
  buildCounterIntegerRestrictions++;
  if (buildCounterIntegerRestrictions < 3) {
    unittest.expect(o.maxValue!, unittest.equals('foo'));
    unittest.expect(o.minValue!, unittest.equals('foo'));
  }
  buildCounterIntegerRestrictions--;
}

core.List<api.Backup> buildUnnamed21() => [buildBackup(), buildBackup()];

void checkUnnamed21(core.List<api.Backup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBackup(o[0]);
  checkBackup(o[1]);
}

core.List<core.String> buildUnnamed22() => ['foo', 'foo'];

void checkUnnamed22(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListBackupsResponse = 0;
api.ListBackupsResponse buildListBackupsResponse() {
  final o = api.ListBackupsResponse();
  buildCounterListBackupsResponse++;
  if (buildCounterListBackupsResponse < 3) {
    o.backups = buildUnnamed21();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed22();
  }
  buildCounterListBackupsResponse--;
  return o;
}

void checkListBackupsResponse(api.ListBackupsResponse o) {
  buildCounterListBackupsResponse++;
  if (buildCounterListBackupsResponse < 3) {
    checkUnnamed21(o.backups!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed22(o.unreachable!);
  }
  buildCounterListBackupsResponse--;
}

core.List<api.Cluster> buildUnnamed23() => [buildCluster(), buildCluster()];

void checkUnnamed23(core.List<api.Cluster> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCluster(o[0]);
  checkCluster(o[1]);
}

core.List<core.String> buildUnnamed24() => ['foo', 'foo'];

void checkUnnamed24(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListClustersResponse = 0;
api.ListClustersResponse buildListClustersResponse() {
  final o = api.ListClustersResponse();
  buildCounterListClustersResponse++;
  if (buildCounterListClustersResponse < 3) {
    o.clusters = buildUnnamed23();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed24();
  }
  buildCounterListClustersResponse--;
  return o;
}

void checkListClustersResponse(api.ListClustersResponse o) {
  buildCounterListClustersResponse++;
  if (buildCounterListClustersResponse < 3) {
    checkUnnamed23(o.clusters!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed24(o.unreachable!);
  }
  buildCounterListClustersResponse--;
}

core.List<api.Instance> buildUnnamed25() => [buildInstance(), buildInstance()];

void checkUnnamed25(core.List<api.Instance> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInstance(o[0]);
  checkInstance(o[1]);
}

core.List<core.String> buildUnnamed26() => ['foo', 'foo'];

void checkUnnamed26(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListInstancesResponse = 0;
api.ListInstancesResponse buildListInstancesResponse() {
  final o = api.ListInstancesResponse();
  buildCounterListInstancesResponse++;
  if (buildCounterListInstancesResponse < 3) {
    o.instances = buildUnnamed25();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed26();
  }
  buildCounterListInstancesResponse--;
  return o;
}

void checkListInstancesResponse(api.ListInstancesResponse o) {
  buildCounterListInstancesResponse++;
  if (buildCounterListInstancesResponse < 3) {
    checkUnnamed25(o.instances!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed26(o.unreachable!);
  }
  buildCounterListInstancesResponse--;
}

core.List<api.Operation> buildUnnamed27() => [
  buildOperation(),
  buildOperation(),
];

void checkUnnamed27(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0]);
  checkOperation(o[1]);
}

core.List<core.String> buildUnnamed28() => ['foo', 'foo'];

void checkUnnamed28(core.List<core.String> o) {
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
    o.operations = buildUnnamed27();
    o.unreachable = buildUnnamed28();
  }
  buildCounterListOperationsResponse--;
  return o;
}

void checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed27(o.operations!);
    checkUnnamed28(o.unreachable!);
  }
  buildCounterListOperationsResponse--;
}

core.List<api.SupportedDatabaseFlag> buildUnnamed29() => [
  buildSupportedDatabaseFlag(),
  buildSupportedDatabaseFlag(),
];

void checkUnnamed29(core.List<api.SupportedDatabaseFlag> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSupportedDatabaseFlag(o[0]);
  checkSupportedDatabaseFlag(o[1]);
}

core.int buildCounterListSupportedDatabaseFlagsResponse = 0;
api.ListSupportedDatabaseFlagsResponse
buildListSupportedDatabaseFlagsResponse() {
  final o = api.ListSupportedDatabaseFlagsResponse();
  buildCounterListSupportedDatabaseFlagsResponse++;
  if (buildCounterListSupportedDatabaseFlagsResponse < 3) {
    o.nextPageToken = 'foo';
    o.supportedDatabaseFlags = buildUnnamed29();
  }
  buildCounterListSupportedDatabaseFlagsResponse--;
  return o;
}

void checkListSupportedDatabaseFlagsResponse(
  api.ListSupportedDatabaseFlagsResponse o,
) {
  buildCounterListSupportedDatabaseFlagsResponse++;
  if (buildCounterListSupportedDatabaseFlagsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed29(o.supportedDatabaseFlags!);
  }
  buildCounterListSupportedDatabaseFlagsResponse--;
}

core.List<core.String> buildUnnamed30() => ['foo', 'foo'];

void checkUnnamed30(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.User> buildUnnamed31() => [buildUser(), buildUser()];

void checkUnnamed31(core.List<api.User> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUser(o[0]);
  checkUser(o[1]);
}

core.int buildCounterListUsersResponse = 0;
api.ListUsersResponse buildListUsersResponse() {
  final o = api.ListUsersResponse();
  buildCounterListUsersResponse++;
  if (buildCounterListUsersResponse < 3) {
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed30();
    o.users = buildUnnamed31();
  }
  buildCounterListUsersResponse--;
  return o;
}

void checkListUsersResponse(api.ListUsersResponse o) {
  buildCounterListUsersResponse++;
  if (buildCounterListUsersResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed30(o.unreachable!);
    checkUnnamed31(o.users!);
  }
  buildCounterListUsersResponse--;
}

core.int buildCounterMachineConfig = 0;
api.MachineConfig buildMachineConfig() {
  final o = api.MachineConfig();
  buildCounterMachineConfig++;
  if (buildCounterMachineConfig < 3) {
    o.cpuCount = 42;
    o.machineType = 'foo';
  }
  buildCounterMachineConfig--;
  return o;
}

void checkMachineConfig(api.MachineConfig o) {
  buildCounterMachineConfig++;
  if (buildCounterMachineConfig < 3) {
    unittest.expect(o.cpuCount!, unittest.equals(42));
    unittest.expect(o.machineType!, unittest.equals('foo'));
  }
  buildCounterMachineConfig--;
}

core.int buildCounterMaintenanceSchedule = 0;
api.MaintenanceSchedule buildMaintenanceSchedule() {
  final o = api.MaintenanceSchedule();
  buildCounterMaintenanceSchedule++;
  if (buildCounterMaintenanceSchedule < 3) {
    o.startTime = 'foo';
  }
  buildCounterMaintenanceSchedule--;
  return o;
}

void checkMaintenanceSchedule(api.MaintenanceSchedule o) {
  buildCounterMaintenanceSchedule++;
  if (buildCounterMaintenanceSchedule < 3) {
    unittest.expect(o.startTime!, unittest.equals('foo'));
  }
  buildCounterMaintenanceSchedule--;
}

core.List<api.DenyMaintenancePeriod> buildUnnamed32() => [
  buildDenyMaintenancePeriod(),
  buildDenyMaintenancePeriod(),
];

void checkUnnamed32(core.List<api.DenyMaintenancePeriod> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDenyMaintenancePeriod(o[0]);
  checkDenyMaintenancePeriod(o[1]);
}

core.List<api.MaintenanceWindow> buildUnnamed33() => [
  buildMaintenanceWindow(),
  buildMaintenanceWindow(),
];

void checkUnnamed33(core.List<api.MaintenanceWindow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMaintenanceWindow(o[0]);
  checkMaintenanceWindow(o[1]);
}

core.int buildCounterMaintenanceUpdatePolicy = 0;
api.MaintenanceUpdatePolicy buildMaintenanceUpdatePolicy() {
  final o = api.MaintenanceUpdatePolicy();
  buildCounterMaintenanceUpdatePolicy++;
  if (buildCounterMaintenanceUpdatePolicy < 3) {
    o.denyMaintenancePeriods = buildUnnamed32();
    o.maintenanceWindows = buildUnnamed33();
  }
  buildCounterMaintenanceUpdatePolicy--;
  return o;
}

void checkMaintenanceUpdatePolicy(api.MaintenanceUpdatePolicy o) {
  buildCounterMaintenanceUpdatePolicy++;
  if (buildCounterMaintenanceUpdatePolicy < 3) {
    checkUnnamed32(o.denyMaintenancePeriods!);
    checkUnnamed33(o.maintenanceWindows!);
  }
  buildCounterMaintenanceUpdatePolicy--;
}

core.int buildCounterMaintenanceWindow = 0;
api.MaintenanceWindow buildMaintenanceWindow() {
  final o = api.MaintenanceWindow();
  buildCounterMaintenanceWindow++;
  if (buildCounterMaintenanceWindow < 3) {
    o.day = 'foo';
    o.startTime = buildGoogleTypeTimeOfDay();
  }
  buildCounterMaintenanceWindow--;
  return o;
}

void checkMaintenanceWindow(api.MaintenanceWindow o) {
  buildCounterMaintenanceWindow++;
  if (buildCounterMaintenanceWindow < 3) {
    unittest.expect(o.day!, unittest.equals('foo'));
    checkGoogleTypeTimeOfDay(o.startTime!);
  }
  buildCounterMaintenanceWindow--;
}

core.int buildCounterMigrationSource = 0;
api.MigrationSource buildMigrationSource() {
  final o = api.MigrationSource();
  buildCounterMigrationSource++;
  if (buildCounterMigrationSource < 3) {
    o.hostPort = 'foo';
    o.referenceId = 'foo';
    o.sourceType = 'foo';
  }
  buildCounterMigrationSource--;
  return o;
}

void checkMigrationSource(api.MigrationSource o) {
  buildCounterMigrationSource++;
  if (buildCounterMigrationSource < 3) {
    unittest.expect(o.hostPort!, unittest.equals('foo'));
    unittest.expect(o.referenceId!, unittest.equals('foo'));
    unittest.expect(o.sourceType!, unittest.equals('foo'));
  }
  buildCounterMigrationSource--;
}

core.int buildCounterNetworkConfig = 0;
api.NetworkConfig buildNetworkConfig() {
  final o = api.NetworkConfig();
  buildCounterNetworkConfig++;
  if (buildCounterNetworkConfig < 3) {
    o.allocatedIpRange = 'foo';
    o.network = 'foo';
  }
  buildCounterNetworkConfig--;
  return o;
}

void checkNetworkConfig(api.NetworkConfig o) {
  buildCounterNetworkConfig++;
  if (buildCounterNetworkConfig < 3) {
    unittest.expect(o.allocatedIpRange!, unittest.equals('foo'));
    unittest.expect(o.network!, unittest.equals('foo'));
  }
  buildCounterNetworkConfig--;
}

core.int buildCounterNode = 0;
api.Node buildNode() {
  final o = api.Node();
  buildCounterNode++;
  if (buildCounterNode < 3) {
    o.id = 'foo';
    o.ip = 'foo';
    o.state = 'foo';
    o.zoneId = 'foo';
  }
  buildCounterNode--;
  return o;
}

void checkNode(api.Node o) {
  buildCounterNode++;
  if (buildCounterNode < 3) {
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.ip!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.zoneId!, unittest.equals('foo'));
  }
  buildCounterNode--;
}

core.int buildCounterObservabilityInstanceConfig = 0;
api.ObservabilityInstanceConfig buildObservabilityInstanceConfig() {
  final o = api.ObservabilityInstanceConfig();
  buildCounterObservabilityInstanceConfig++;
  if (buildCounterObservabilityInstanceConfig < 3) {
    o.enabled = true;
    o.maxQueryStringLength = 42;
    o.preserveComments = true;
    o.queryPlansPerMinute = 42;
    o.recordApplicationTags = true;
    o.trackActiveQueries = true;
    o.trackWaitEventTypes = true;
    o.trackWaitEvents = true;
  }
  buildCounterObservabilityInstanceConfig--;
  return o;
}

void checkObservabilityInstanceConfig(api.ObservabilityInstanceConfig o) {
  buildCounterObservabilityInstanceConfig++;
  if (buildCounterObservabilityInstanceConfig < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
    unittest.expect(o.maxQueryStringLength!, unittest.equals(42));
    unittest.expect(o.preserveComments!, unittest.isTrue);
    unittest.expect(o.queryPlansPerMinute!, unittest.equals(42));
    unittest.expect(o.recordApplicationTags!, unittest.isTrue);
    unittest.expect(o.trackActiveQueries!, unittest.isTrue);
    unittest.expect(o.trackWaitEventTypes!, unittest.isTrue);
    unittest.expect(o.trackWaitEvents!, unittest.isTrue);
  }
  buildCounterObservabilityInstanceConfig--;
}

core.Map<core.String, core.Object?> buildUnnamed34() => {
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

void checkUnnamed34(core.Map<core.String, core.Object?> o) {
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
    o.metadata = buildUnnamed34();
    o.name = 'foo';
    o.response = buildUnnamed35();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed34(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed35(o.response!);
  }
  buildCounterOperation--;
}

core.List<core.String> buildUnnamed36() => ['foo', 'foo'];

void checkUnnamed36(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPrimaryConfig = 0;
api.PrimaryConfig buildPrimaryConfig() {
  final o = api.PrimaryConfig();
  buildCounterPrimaryConfig++;
  if (buildCounterPrimaryConfig < 3) {
    o.secondaryClusterNames = buildUnnamed36();
  }
  buildCounterPrimaryConfig--;
  return o;
}

void checkPrimaryConfig(api.PrimaryConfig o) {
  buildCounterPrimaryConfig++;
  if (buildCounterPrimaryConfig < 3) {
    checkUnnamed36(o.secondaryClusterNames!);
  }
  buildCounterPrimaryConfig--;
}

core.int buildCounterPromoteClusterRequest = 0;
api.PromoteClusterRequest buildPromoteClusterRequest() {
  final o = api.PromoteClusterRequest();
  buildCounterPromoteClusterRequest++;
  if (buildCounterPromoteClusterRequest < 3) {
    o.etag = 'foo';
    o.requestId = 'foo';
    o.validateOnly = true;
  }
  buildCounterPromoteClusterRequest--;
  return o;
}

void checkPromoteClusterRequest(api.PromoteClusterRequest o) {
  buildCounterPromoteClusterRequest++;
  if (buildCounterPromoteClusterRequest < 3) {
    unittest.expect(o.etag!, unittest.equals('foo'));
    unittest.expect(o.requestId!, unittest.equals('foo'));
    unittest.expect(o.validateOnly!, unittest.isTrue);
  }
  buildCounterPromoteClusterRequest--;
}

core.int buildCounterPscAutoConnectionConfig = 0;
api.PscAutoConnectionConfig buildPscAutoConnectionConfig() {
  final o = api.PscAutoConnectionConfig();
  buildCounterPscAutoConnectionConfig++;
  if (buildCounterPscAutoConnectionConfig < 3) {
    o.consumerNetwork = 'foo';
    o.consumerNetworkStatus = 'foo';
    o.consumerProject = 'foo';
    o.ipAddress = 'foo';
    o.status = 'foo';
  }
  buildCounterPscAutoConnectionConfig--;
  return o;
}

void checkPscAutoConnectionConfig(api.PscAutoConnectionConfig o) {
  buildCounterPscAutoConnectionConfig++;
  if (buildCounterPscAutoConnectionConfig < 3) {
    unittest.expect(o.consumerNetwork!, unittest.equals('foo'));
    unittest.expect(o.consumerNetworkStatus!, unittest.equals('foo'));
    unittest.expect(o.consumerProject!, unittest.equals('foo'));
    unittest.expect(o.ipAddress!, unittest.equals('foo'));
    unittest.expect(o.status!, unittest.equals('foo'));
  }
  buildCounterPscAutoConnectionConfig--;
}

core.int buildCounterPscConfig = 0;
api.PscConfig buildPscConfig() {
  final o = api.PscConfig();
  buildCounterPscConfig++;
  if (buildCounterPscConfig < 3) {
    o.pscEnabled = true;
    o.serviceOwnedProjectNumber = 'foo';
  }
  buildCounterPscConfig--;
  return o;
}

void checkPscConfig(api.PscConfig o) {
  buildCounterPscConfig++;
  if (buildCounterPscConfig < 3) {
    unittest.expect(o.pscEnabled!, unittest.isTrue);
    unittest.expect(o.serviceOwnedProjectNumber!, unittest.equals('foo'));
  }
  buildCounterPscConfig--;
}

core.List<core.String> buildUnnamed37() => ['foo', 'foo'];

void checkUnnamed37(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.PscAutoConnectionConfig> buildUnnamed38() => [
  buildPscAutoConnectionConfig(),
  buildPscAutoConnectionConfig(),
];

void checkUnnamed38(core.List<api.PscAutoConnectionConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPscAutoConnectionConfig(o[0]);
  checkPscAutoConnectionConfig(o[1]);
}

core.List<api.PscInterfaceConfig> buildUnnamed39() => [
  buildPscInterfaceConfig(),
  buildPscInterfaceConfig(),
];

void checkUnnamed39(core.List<api.PscInterfaceConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPscInterfaceConfig(o[0]);
  checkPscInterfaceConfig(o[1]);
}

core.int buildCounterPscInstanceConfig = 0;
api.PscInstanceConfig buildPscInstanceConfig() {
  final o = api.PscInstanceConfig();
  buildCounterPscInstanceConfig++;
  if (buildCounterPscInstanceConfig < 3) {
    o.allowedConsumerProjects = buildUnnamed37();
    o.pscAutoConnections = buildUnnamed38();
    o.pscDnsName = 'foo';
    o.pscInterfaceConfigs = buildUnnamed39();
    o.serviceAttachmentLink = 'foo';
  }
  buildCounterPscInstanceConfig--;
  return o;
}

void checkPscInstanceConfig(api.PscInstanceConfig o) {
  buildCounterPscInstanceConfig++;
  if (buildCounterPscInstanceConfig < 3) {
    checkUnnamed37(o.allowedConsumerProjects!);
    checkUnnamed38(o.pscAutoConnections!);
    unittest.expect(o.pscDnsName!, unittest.equals('foo'));
    checkUnnamed39(o.pscInterfaceConfigs!);
    unittest.expect(o.serviceAttachmentLink!, unittest.equals('foo'));
  }
  buildCounterPscInstanceConfig--;
}

core.int buildCounterPscInterfaceConfig = 0;
api.PscInterfaceConfig buildPscInterfaceConfig() {
  final o = api.PscInterfaceConfig();
  buildCounterPscInterfaceConfig++;
  if (buildCounterPscInterfaceConfig < 3) {
    o.networkAttachmentResource = 'foo';
  }
  buildCounterPscInterfaceConfig--;
  return o;
}

void checkPscInterfaceConfig(api.PscInterfaceConfig o) {
  buildCounterPscInterfaceConfig++;
  if (buildCounterPscInterfaceConfig < 3) {
    unittest.expect(o.networkAttachmentResource!, unittest.equals('foo'));
  }
  buildCounterPscInterfaceConfig--;
}

core.int buildCounterQuantityBasedExpiry = 0;
api.QuantityBasedExpiry buildQuantityBasedExpiry() {
  final o = api.QuantityBasedExpiry();
  buildCounterQuantityBasedExpiry++;
  if (buildCounterQuantityBasedExpiry < 3) {
    o.retentionCount = 42;
    o.totalRetentionCount = 42;
  }
  buildCounterQuantityBasedExpiry--;
  return o;
}

void checkQuantityBasedExpiry(api.QuantityBasedExpiry o) {
  buildCounterQuantityBasedExpiry++;
  if (buildCounterQuantityBasedExpiry < 3) {
    unittest.expect(o.retentionCount!, unittest.equals(42));
    unittest.expect(o.totalRetentionCount!, unittest.equals(42));
  }
  buildCounterQuantityBasedExpiry--;
}

core.int buildCounterQuantityBasedRetention = 0;
api.QuantityBasedRetention buildQuantityBasedRetention() {
  final o = api.QuantityBasedRetention();
  buildCounterQuantityBasedRetention++;
  if (buildCounterQuantityBasedRetention < 3) {
    o.count = 42;
  }
  buildCounterQuantityBasedRetention--;
  return o;
}

void checkQuantityBasedRetention(api.QuantityBasedRetention o) {
  buildCounterQuantityBasedRetention++;
  if (buildCounterQuantityBasedRetention < 3) {
    unittest.expect(o.count!, unittest.equals(42));
  }
  buildCounterQuantityBasedRetention--;
}

core.int buildCounterQueryInsightsInstanceConfig = 0;
api.QueryInsightsInstanceConfig buildQueryInsightsInstanceConfig() {
  final o = api.QueryInsightsInstanceConfig();
  buildCounterQueryInsightsInstanceConfig++;
  if (buildCounterQueryInsightsInstanceConfig < 3) {
    o.queryPlansPerMinute = 42;
    o.queryStringLength = 42;
    o.recordApplicationTags = true;
    o.recordClientAddress = true;
  }
  buildCounterQueryInsightsInstanceConfig--;
  return o;
}

void checkQueryInsightsInstanceConfig(api.QueryInsightsInstanceConfig o) {
  buildCounterQueryInsightsInstanceConfig++;
  if (buildCounterQueryInsightsInstanceConfig < 3) {
    unittest.expect(o.queryPlansPerMinute!, unittest.equals(42));
    unittest.expect(o.queryStringLength!, unittest.equals(42));
    unittest.expect(o.recordApplicationTags!, unittest.isTrue);
    unittest.expect(o.recordClientAddress!, unittest.isTrue);
  }
  buildCounterQueryInsightsInstanceConfig--;
}

core.int buildCounterReadPoolConfig = 0;
api.ReadPoolConfig buildReadPoolConfig() {
  final o = api.ReadPoolConfig();
  buildCounterReadPoolConfig++;
  if (buildCounterReadPoolConfig < 3) {
    o.nodeCount = 42;
  }
  buildCounterReadPoolConfig--;
  return o;
}

void checkReadPoolConfig(api.ReadPoolConfig o) {
  buildCounterReadPoolConfig++;
  if (buildCounterReadPoolConfig < 3) {
    unittest.expect(o.nodeCount!, unittest.equals(42));
  }
  buildCounterReadPoolConfig--;
}

core.List<core.String> buildUnnamed40() => ['foo', 'foo'];

void checkUnnamed40(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterRestartInstanceRequest = 0;
api.RestartInstanceRequest buildRestartInstanceRequest() {
  final o = api.RestartInstanceRequest();
  buildCounterRestartInstanceRequest++;
  if (buildCounterRestartInstanceRequest < 3) {
    o.nodeIds = buildUnnamed40();
    o.requestId = 'foo';
    o.validateOnly = true;
  }
  buildCounterRestartInstanceRequest--;
  return o;
}

void checkRestartInstanceRequest(api.RestartInstanceRequest o) {
  buildCounterRestartInstanceRequest++;
  if (buildCounterRestartInstanceRequest < 3) {
    checkUnnamed40(o.nodeIds!);
    unittest.expect(o.requestId!, unittest.equals('foo'));
    unittest.expect(o.validateOnly!, unittest.isTrue);
  }
  buildCounterRestartInstanceRequest--;
}

core.int buildCounterRestoreClusterRequest = 0;
api.RestoreClusterRequest buildRestoreClusterRequest() {
  final o = api.RestoreClusterRequest();
  buildCounterRestoreClusterRequest++;
  if (buildCounterRestoreClusterRequest < 3) {
    o.backupSource = buildBackupSource();
    o.backupdrBackupSource = buildBackupDrBackupSource();
    o.backupdrPitrSource = buildBackupDrPitrSource();
    o.cluster = buildCluster();
    o.clusterId = 'foo';
    o.continuousBackupSource = buildContinuousBackupSource();
    o.requestId = 'foo';
    o.validateOnly = true;
  }
  buildCounterRestoreClusterRequest--;
  return o;
}

void checkRestoreClusterRequest(api.RestoreClusterRequest o) {
  buildCounterRestoreClusterRequest++;
  if (buildCounterRestoreClusterRequest < 3) {
    checkBackupSource(o.backupSource!);
    checkBackupDrBackupSource(o.backupdrBackupSource!);
    checkBackupDrPitrSource(o.backupdrPitrSource!);
    checkCluster(o.cluster!);
    unittest.expect(o.clusterId!, unittest.equals('foo'));
    checkContinuousBackupSource(o.continuousBackupSource!);
    unittest.expect(o.requestId!, unittest.equals('foo'));
    unittest.expect(o.validateOnly!, unittest.isTrue);
  }
  buildCounterRestoreClusterRequest--;
}

core.int buildCounterRestoreFromCloudSQLRequest = 0;
api.RestoreFromCloudSQLRequest buildRestoreFromCloudSQLRequest() {
  final o = api.RestoreFromCloudSQLRequest();
  buildCounterRestoreFromCloudSQLRequest++;
  if (buildCounterRestoreFromCloudSQLRequest < 3) {
    o.cloudsqlBackupRunSource = buildCloudSQLBackupRunSource();
    o.cluster = buildCluster();
    o.clusterId = 'foo';
  }
  buildCounterRestoreFromCloudSQLRequest--;
  return o;
}

void checkRestoreFromCloudSQLRequest(api.RestoreFromCloudSQLRequest o) {
  buildCounterRestoreFromCloudSQLRequest++;
  if (buildCounterRestoreFromCloudSQLRequest < 3) {
    checkCloudSQLBackupRunSource(o.cloudsqlBackupRunSource!);
    checkCluster(o.cluster!);
    unittest.expect(o.clusterId!, unittest.equals('foo'));
  }
  buildCounterRestoreFromCloudSQLRequest--;
}

core.int buildCounterSecondaryConfig = 0;
api.SecondaryConfig buildSecondaryConfig() {
  final o = api.SecondaryConfig();
  buildCounterSecondaryConfig++;
  if (buildCounterSecondaryConfig < 3) {
    o.primaryClusterName = 'foo';
  }
  buildCounterSecondaryConfig--;
  return o;
}

void checkSecondaryConfig(api.SecondaryConfig o) {
  buildCounterSecondaryConfig++;
  if (buildCounterSecondaryConfig < 3) {
    unittest.expect(o.primaryClusterName!, unittest.equals('foo'));
  }
  buildCounterSecondaryConfig--;
}

core.List<core.String> buildUnnamed41() => ['foo', 'foo'];

void checkUnnamed41(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSqlExportOptions = 0;
api.SqlExportOptions buildSqlExportOptions() {
  final o = api.SqlExportOptions();
  buildCounterSqlExportOptions++;
  if (buildCounterSqlExportOptions < 3) {
    o.cleanTargetObjects = true;
    o.ifExistTargetObjects = true;
    o.schemaOnly = true;
    o.tables = buildUnnamed41();
  }
  buildCounterSqlExportOptions--;
  return o;
}

void checkSqlExportOptions(api.SqlExportOptions o) {
  buildCounterSqlExportOptions++;
  if (buildCounterSqlExportOptions < 3) {
    unittest.expect(o.cleanTargetObjects!, unittest.isTrue);
    unittest.expect(o.ifExistTargetObjects!, unittest.isTrue);
    unittest.expect(o.schemaOnly!, unittest.isTrue);
    checkUnnamed41(o.tables!);
  }
  buildCounterSqlExportOptions--;
}

core.int buildCounterSqlImportOptions = 0;
api.SqlImportOptions buildSqlImportOptions() {
  final o = api.SqlImportOptions();
  buildCounterSqlImportOptions++;
  if (buildCounterSqlImportOptions < 3) {}
  buildCounterSqlImportOptions--;
  return o;
}

void checkSqlImportOptions(api.SqlImportOptions o) {
  buildCounterSqlImportOptions++;
  if (buildCounterSqlImportOptions < 3) {}
  buildCounterSqlImportOptions--;
}

core.int buildCounterSslConfig = 0;
api.SslConfig buildSslConfig() {
  final o = api.SslConfig();
  buildCounterSslConfig++;
  if (buildCounterSslConfig < 3) {
    o.caSource = 'foo';
    o.sslMode = 'foo';
  }
  buildCounterSslConfig--;
  return o;
}

void checkSslConfig(api.SslConfig o) {
  buildCounterSslConfig++;
  if (buildCounterSslConfig < 3) {
    unittest.expect(o.caSource!, unittest.equals('foo'));
    unittest.expect(o.sslMode!, unittest.equals('foo'));
  }
  buildCounterSslConfig--;
}

core.Map<core.String, core.Object?> buildUnnamed42() => {
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

void checkUnnamed42(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed43() => [
  buildUnnamed42(),
  buildUnnamed42(),
];

void checkUnnamed43(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed42(o[0]);
  checkUnnamed42(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed43();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code!, unittest.equals(42));
    checkUnnamed43(o.details!);
    unittest.expect(o.message!, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.List<core.String> buildUnnamed44() => ['foo', 'foo'];

void checkUnnamed44(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterStringRestrictions = 0;
api.StringRestrictions buildStringRestrictions() {
  final o = api.StringRestrictions();
  buildCounterStringRestrictions++;
  if (buildCounterStringRestrictions < 3) {
    o.allowedValues = buildUnnamed44();
  }
  buildCounterStringRestrictions--;
  return o;
}

void checkStringRestrictions(api.StringRestrictions o) {
  buildCounterStringRestrictions++;
  if (buildCounterStringRestrictions < 3) {
    checkUnnamed44(o.allowedValues!);
  }
  buildCounterStringRestrictions--;
}

core.List<core.String> buildUnnamed45() => ['foo', 'foo'];

void checkUnnamed45(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSupportedDatabaseFlag = 0;
api.SupportedDatabaseFlag buildSupportedDatabaseFlag() {
  final o = api.SupportedDatabaseFlag();
  buildCounterSupportedDatabaseFlag++;
  if (buildCounterSupportedDatabaseFlag < 3) {
    o.acceptsMultipleValues = true;
    o.flagName = 'foo';
    o.integerRestrictions = buildIntegerRestrictions();
    o.name = 'foo';
    o.recommendedIntegerValue = 'foo';
    o.recommendedStringValue = 'foo';
    o.requiresDbRestart = true;
    o.scope = 'foo';
    o.stringRestrictions = buildStringRestrictions();
    o.supportedDbVersions = buildUnnamed45();
    o.valueType = 'foo';
  }
  buildCounterSupportedDatabaseFlag--;
  return o;
}

void checkSupportedDatabaseFlag(api.SupportedDatabaseFlag o) {
  buildCounterSupportedDatabaseFlag++;
  if (buildCounterSupportedDatabaseFlag < 3) {
    unittest.expect(o.acceptsMultipleValues!, unittest.isTrue);
    unittest.expect(o.flagName!, unittest.equals('foo'));
    checkIntegerRestrictions(o.integerRestrictions!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.recommendedIntegerValue!, unittest.equals('foo'));
    unittest.expect(o.recommendedStringValue!, unittest.equals('foo'));
    unittest.expect(o.requiresDbRestart!, unittest.isTrue);
    unittest.expect(o.scope!, unittest.equals('foo'));
    checkStringRestrictions(o.stringRestrictions!);
    checkUnnamed45(o.supportedDbVersions!);
    unittest.expect(o.valueType!, unittest.equals('foo'));
  }
  buildCounterSupportedDatabaseFlag--;
}

core.int buildCounterSwitchoverClusterRequest = 0;
api.SwitchoverClusterRequest buildSwitchoverClusterRequest() {
  final o = api.SwitchoverClusterRequest();
  buildCounterSwitchoverClusterRequest++;
  if (buildCounterSwitchoverClusterRequest < 3) {
    o.requestId = 'foo';
    o.validateOnly = true;
  }
  buildCounterSwitchoverClusterRequest--;
  return o;
}

void checkSwitchoverClusterRequest(api.SwitchoverClusterRequest o) {
  buildCounterSwitchoverClusterRequest++;
  if (buildCounterSwitchoverClusterRequest < 3) {
    unittest.expect(o.requestId!, unittest.equals('foo'));
    unittest.expect(o.validateOnly!, unittest.isTrue);
  }
  buildCounterSwitchoverClusterRequest--;
}

core.int buildCounterTimeBasedRetention = 0;
api.TimeBasedRetention buildTimeBasedRetention() {
  final o = api.TimeBasedRetention();
  buildCounterTimeBasedRetention++;
  if (buildCounterTimeBasedRetention < 3) {
    o.retentionPeriod = 'foo';
  }
  buildCounterTimeBasedRetention--;
  return o;
}

void checkTimeBasedRetention(api.TimeBasedRetention o) {
  buildCounterTimeBasedRetention++;
  if (buildCounterTimeBasedRetention < 3) {
    unittest.expect(o.retentionPeriod!, unittest.equals('foo'));
  }
  buildCounterTimeBasedRetention--;
}

core.int buildCounterTrialMetadata = 0;
api.TrialMetadata buildTrialMetadata() {
  final o = api.TrialMetadata();
  buildCounterTrialMetadata++;
  if (buildCounterTrialMetadata < 3) {
    o.endTime = 'foo';
    o.graceEndTime = 'foo';
    o.startTime = 'foo';
    o.upgradeTime = 'foo';
  }
  buildCounterTrialMetadata--;
  return o;
}

void checkTrialMetadata(api.TrialMetadata o) {
  buildCounterTrialMetadata++;
  if (buildCounterTrialMetadata < 3) {
    unittest.expect(o.endTime!, unittest.equals('foo'));
    unittest.expect(o.graceEndTime!, unittest.equals('foo'));
    unittest.expect(o.startTime!, unittest.equals('foo'));
    unittest.expect(o.upgradeTime!, unittest.equals('foo'));
  }
  buildCounterTrialMetadata--;
}

core.int buildCounterUpgradeClusterRequest = 0;
api.UpgradeClusterRequest buildUpgradeClusterRequest() {
  final o = api.UpgradeClusterRequest();
  buildCounterUpgradeClusterRequest++;
  if (buildCounterUpgradeClusterRequest < 3) {
    o.etag = 'foo';
    o.requestId = 'foo';
    o.validateOnly = true;
    o.version = 'foo';
  }
  buildCounterUpgradeClusterRequest--;
  return o;
}

void checkUpgradeClusterRequest(api.UpgradeClusterRequest o) {
  buildCounterUpgradeClusterRequest++;
  if (buildCounterUpgradeClusterRequest < 3) {
    unittest.expect(o.etag!, unittest.equals('foo'));
    unittest.expect(o.requestId!, unittest.equals('foo'));
    unittest.expect(o.validateOnly!, unittest.isTrue);
    unittest.expect(o.version!, unittest.equals('foo'));
  }
  buildCounterUpgradeClusterRequest--;
}

core.List<core.String> buildUnnamed46() => ['foo', 'foo'];

void checkUnnamed46(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterUser = 0;
api.User buildUser() {
  final o = api.User();
  buildCounterUser++;
  if (buildCounterUser < 3) {
    o.databaseRoles = buildUnnamed46();
    o.keepExtraRoles = true;
    o.name = 'foo';
    o.password = 'foo';
    o.userType = 'foo';
  }
  buildCounterUser--;
  return o;
}

void checkUser(api.User o) {
  buildCounterUser++;
  if (buildCounterUser < 3) {
    checkUnnamed46(o.databaseRoles!);
    unittest.expect(o.keepExtraRoles!, unittest.isTrue);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.password!, unittest.equals('foo'));
    unittest.expect(o.userType!, unittest.equals('foo'));
  }
  buildCounterUser--;
}

core.int buildCounterUserPassword = 0;
api.UserPassword buildUserPassword() {
  final o = api.UserPassword();
  buildCounterUserPassword++;
  if (buildCounterUserPassword < 3) {
    o.password = 'foo';
    o.user = 'foo';
  }
  buildCounterUserPassword--;
  return o;
}

void checkUserPassword(api.UserPassword o) {
  buildCounterUserPassword++;
  if (buildCounterUserPassword < 3) {
    unittest.expect(o.password!, unittest.equals('foo'));
    unittest.expect(o.user!, unittest.equals('foo'));
  }
  buildCounterUserPassword--;
}

core.List<core.String> buildUnnamed47() => ['foo', 'foo'];

void checkUnnamed47(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleTypeTimeOfDay> buildUnnamed48() => [
  buildGoogleTypeTimeOfDay(),
  buildGoogleTypeTimeOfDay(),
];

void checkUnnamed48(core.List<api.GoogleTypeTimeOfDay> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleTypeTimeOfDay(o[0]);
  checkGoogleTypeTimeOfDay(o[1]);
}

core.int buildCounterWeeklySchedule = 0;
api.WeeklySchedule buildWeeklySchedule() {
  final o = api.WeeklySchedule();
  buildCounterWeeklySchedule++;
  if (buildCounterWeeklySchedule < 3) {
    o.daysOfWeek = buildUnnamed47();
    o.startTimes = buildUnnamed48();
  }
  buildCounterWeeklySchedule--;
  return o;
}

void checkWeeklySchedule(api.WeeklySchedule o) {
  buildCounterWeeklySchedule++;
  if (buildCounterWeeklySchedule < 3) {
    checkUnnamed47(o.daysOfWeek!);
    checkUnnamed48(o.startTimes!);
  }
  buildCounterWeeklySchedule--;
}

core.List<core.String> buildUnnamed49() => ['foo', 'foo'];

void checkUnnamed49(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

void main() {
  unittest.group('obj-schema-AuthorizedNetwork', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuthorizedNetwork();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuthorizedNetwork.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAuthorizedNetwork(od);
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

  unittest.group('obj-schema-BackupDrBackupSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBackupDrBackupSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BackupDrBackupSource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBackupDrBackupSource(od);
    });
  });

  unittest.group('obj-schema-BackupDrEnabledWindow', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBackupDrEnabledWindow();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BackupDrEnabledWindow.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBackupDrEnabledWindow(od);
    });
  });

  unittest.group('obj-schema-BackupDrInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBackupDrInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BackupDrInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBackupDrInfo(od);
    });
  });

  unittest.group('obj-schema-BackupDrPitrSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBackupDrPitrSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BackupDrPitrSource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBackupDrPitrSource(od);
    });
  });

  unittest.group('obj-schema-BackupSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBackupSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BackupSource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBackupSource(od);
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

  unittest.group('obj-schema-ClientConnectionConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClientConnectionConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ClientConnectionConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkClientConnectionConfig(od);
    });
  });

  unittest.group('obj-schema-CloudSQLBackupRunSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCloudSQLBackupRunSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CloudSQLBackupRunSource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCloudSQLBackupRunSource(od);
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

  unittest.group('obj-schema-ConnectionInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConnectionInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConnectionInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkConnectionInfo(od);
    });
  });

  unittest.group('obj-schema-ConnectionPoolConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConnectionPoolConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConnectionPoolConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkConnectionPoolConfig(od);
    });
  });

  unittest.group('obj-schema-ContinuousBackupConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildContinuousBackupConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ContinuousBackupConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkContinuousBackupConfig(od);
    });
  });

  unittest.group('obj-schema-ContinuousBackupInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildContinuousBackupInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ContinuousBackupInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkContinuousBackupInfo(od);
    });
  });

  unittest.group('obj-schema-ContinuousBackupSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildContinuousBackupSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ContinuousBackupSource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkContinuousBackupSource(od);
    });
  });

  unittest.group('obj-schema-CsvExportOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCsvExportOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CsvExportOptions.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCsvExportOptions(od);
    });
  });

  unittest.group('obj-schema-CsvImportOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCsvImportOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CsvImportOptions.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCsvImportOptions(od);
    });
  });

  unittest.group('obj-schema-DataplexConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataplexConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DataplexConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDataplexConfig(od);
    });
  });

  unittest.group('obj-schema-DenyMaintenancePeriod', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDenyMaintenancePeriod();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DenyMaintenancePeriod.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDenyMaintenancePeriod(od);
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

  unittest.group('obj-schema-ExportClusterRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExportClusterRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExportClusterRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExportClusterRequest(od);
    });
  });

  unittest.group('obj-schema-FailoverInstanceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFailoverInstanceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FailoverInstanceRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFailoverInstanceRequest(od);
    });
  });

  unittest.group('obj-schema-GcsDestination', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGcsDestination();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GcsDestination.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGcsDestination(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudLocationListLocationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudLocationListLocationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudLocationListLocationsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudLocationListLocationsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudLocationLocation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudLocationLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudLocationLocation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudLocationLocation(od);
    });
  });

  unittest.group('obj-schema-GoogleTypeDate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleTypeDate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleTypeDate.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleTypeDate(od);
    });
  });

  unittest.group('obj-schema-GoogleTypeTimeOfDay', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleTypeTimeOfDay();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleTypeTimeOfDay.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleTypeTimeOfDay(od);
    });
  });

  unittest.group('obj-schema-ImportClusterRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImportClusterRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImportClusterRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkImportClusterRequest(od);
    });
  });

  unittest.group('obj-schema-InjectFaultRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInjectFaultRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InjectFaultRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInjectFaultRequest(od);
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

  unittest.group('obj-schema-InstanceNetworkConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInstanceNetworkConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InstanceNetworkConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInstanceNetworkConfig(od);
    });
  });

  unittest.group('obj-schema-IntegerRestrictions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIntegerRestrictions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IntegerRestrictions.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkIntegerRestrictions(od);
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

  unittest.group('obj-schema-ListSupportedDatabaseFlagsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListSupportedDatabaseFlagsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListSupportedDatabaseFlagsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListSupportedDatabaseFlagsResponse(od);
    });
  });

  unittest.group('obj-schema-ListUsersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListUsersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListUsersResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListUsersResponse(od);
    });
  });

  unittest.group('obj-schema-MachineConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMachineConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MachineConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMachineConfig(od);
    });
  });

  unittest.group('obj-schema-MaintenanceSchedule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMaintenanceSchedule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MaintenanceSchedule.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMaintenanceSchedule(od);
    });
  });

  unittest.group('obj-schema-MaintenanceUpdatePolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMaintenanceUpdatePolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MaintenanceUpdatePolicy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMaintenanceUpdatePolicy(od);
    });
  });

  unittest.group('obj-schema-MaintenanceWindow', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMaintenanceWindow();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MaintenanceWindow.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMaintenanceWindow(od);
    });
  });

  unittest.group('obj-schema-MigrationSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMigrationSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MigrationSource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMigrationSource(od);
    });
  });

  unittest.group('obj-schema-NetworkConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNetworkConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NetworkConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkNetworkConfig(od);
    });
  });

  unittest.group('obj-schema-Node', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNode();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Node.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkNode(od);
    });
  });

  unittest.group('obj-schema-ObservabilityInstanceConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildObservabilityInstanceConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ObservabilityInstanceConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkObservabilityInstanceConfig(od);
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

  unittest.group('obj-schema-PrimaryConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPrimaryConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PrimaryConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPrimaryConfig(od);
    });
  });

  unittest.group('obj-schema-PromoteClusterRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPromoteClusterRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PromoteClusterRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPromoteClusterRequest(od);
    });
  });

  unittest.group('obj-schema-PscAutoConnectionConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPscAutoConnectionConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PscAutoConnectionConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPscAutoConnectionConfig(od);
    });
  });

  unittest.group('obj-schema-PscConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPscConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PscConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPscConfig(od);
    });
  });

  unittest.group('obj-schema-PscInstanceConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPscInstanceConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PscInstanceConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPscInstanceConfig(od);
    });
  });

  unittest.group('obj-schema-PscInterfaceConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPscInterfaceConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PscInterfaceConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPscInterfaceConfig(od);
    });
  });

  unittest.group('obj-schema-QuantityBasedExpiry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQuantityBasedExpiry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.QuantityBasedExpiry.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkQuantityBasedExpiry(od);
    });
  });

  unittest.group('obj-schema-QuantityBasedRetention', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQuantityBasedRetention();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.QuantityBasedRetention.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkQuantityBasedRetention(od);
    });
  });

  unittest.group('obj-schema-QueryInsightsInstanceConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQueryInsightsInstanceConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.QueryInsightsInstanceConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkQueryInsightsInstanceConfig(od);
    });
  });

  unittest.group('obj-schema-ReadPoolConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReadPoolConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReadPoolConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkReadPoolConfig(od);
    });
  });

  unittest.group('obj-schema-RestartInstanceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRestartInstanceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RestartInstanceRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRestartInstanceRequest(od);
    });
  });

  unittest.group('obj-schema-RestoreClusterRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRestoreClusterRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RestoreClusterRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRestoreClusterRequest(od);
    });
  });

  unittest.group('obj-schema-RestoreFromCloudSQLRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRestoreFromCloudSQLRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RestoreFromCloudSQLRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRestoreFromCloudSQLRequest(od);
    });
  });

  unittest.group('obj-schema-SecondaryConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSecondaryConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SecondaryConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSecondaryConfig(od);
    });
  });

  unittest.group('obj-schema-SqlExportOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSqlExportOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SqlExportOptions.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSqlExportOptions(od);
    });
  });

  unittest.group('obj-schema-SqlImportOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSqlImportOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SqlImportOptions.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSqlImportOptions(od);
    });
  });

  unittest.group('obj-schema-SslConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSslConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SslConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSslConfig(od);
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

  unittest.group('obj-schema-StringRestrictions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStringRestrictions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StringRestrictions.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkStringRestrictions(od);
    });
  });

  unittest.group('obj-schema-SupportedDatabaseFlag', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSupportedDatabaseFlag();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SupportedDatabaseFlag.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSupportedDatabaseFlag(od);
    });
  });

  unittest.group('obj-schema-SwitchoverClusterRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSwitchoverClusterRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SwitchoverClusterRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSwitchoverClusterRequest(od);
    });
  });

  unittest.group('obj-schema-TimeBasedRetention', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTimeBasedRetention();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TimeBasedRetention.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTimeBasedRetention(od);
    });
  });

  unittest.group('obj-schema-TrialMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTrialMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TrialMetadata.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTrialMetadata(od);
    });
  });

  unittest.group('obj-schema-UpgradeClusterRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpgradeClusterRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpgradeClusterRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUpgradeClusterRequest(od);
    });
  });

  unittest.group('obj-schema-User', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUser();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.User.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUser(od);
    });
  });

  unittest.group('obj-schema-UserPassword', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUserPassword();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UserPassword.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUserPassword(od);
    });
  });

  unittest.group('obj-schema-WeeklySchedule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWeeklySchedule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WeeklySchedule.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkWeeklySchedule(od);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudAlloyDBAdminApi(mock).projects.locations;
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
          final resp = convert.json.encode(buildGoogleCloudLocationLocation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudLocationLocation(
        response as api.GoogleCloudLocationLocation,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudAlloyDBAdminApi(mock).projects.locations;
      final arg_name = 'foo';
      final arg_extraLocationTypes = buildUnnamed49();
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
          final resp = convert.json.encode(
            buildGoogleCloudLocationListLocationsResponse(),
          );
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
      checkGoogleCloudLocationListLocationsResponse(
        response as api.GoogleCloudLocationListLocationsResponse,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsBackupsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudAlloyDBAdminApi(mock).projects.locations.backups;
      final arg_request = buildBackup();
      final arg_parent = 'foo';
      final arg_backupId = 'foo';
      final arg_requestId = 'foo';
      final arg_validateOnly = true;
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
            queryMap['backupId']!.first,
            unittest.equals(arg_backupId),
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
        backupId: arg_backupId,
        requestId: arg_requestId,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudAlloyDBAdminApi(mock).projects.locations.backups;
      final arg_name = 'foo';
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
        etag: arg_etag,
        requestId: arg_requestId,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudAlloyDBAdminApi(mock).projects.locations.backups;
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
          unittest.expect(queryMap['view']!.first, unittest.equals(arg_view));
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
      final response = await res.get(
        arg_name,
        view: arg_view,
        $fields: arg_$fields,
      );
      checkBackup(response as api.Backup);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudAlloyDBAdminApi(mock).projects.locations.backups;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
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
          unittest.expect(queryMap['view']!.first, unittest.equals(arg_view));
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
        view: arg_view,
        $fields: arg_$fields,
      );
      checkListBackupsResponse(response as api.ListBackupsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CloudAlloyDBAdminApi(mock).projects.locations.backups;
      final arg_request = buildBackup();
      final arg_name = 'foo';
      final arg_allowMissing = true;
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_validateOnly = true;
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

  unittest.group('resource-ProjectsLocationsClustersResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudAlloyDBAdminApi(mock).projects.locations.clusters;
      final arg_request = buildCluster();
      final arg_parent = 'foo';
      final arg_clusterId = 'foo';
      final arg_requestId = 'foo';
      final arg_validateOnly = true;
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
            queryMap['clusterId']!.first,
            unittest.equals(arg_clusterId),
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
        clusterId: arg_clusterId,
        requestId: arg_requestId,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--createsecondary', () async {
      final mock = HttpServerMock();
      final res = api.CloudAlloyDBAdminApi(mock).projects.locations.clusters;
      final arg_request = buildCluster();
      final arg_parent = 'foo';
      final arg_clusterId = 'foo';
      final arg_requestId = 'foo';
      final arg_validateOnly = true;
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
            queryMap['clusterId']!.first,
            unittest.equals(arg_clusterId),
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
      final response = await res.createsecondary(
        arg_request,
        arg_parent,
        clusterId: arg_clusterId,
        requestId: arg_requestId,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudAlloyDBAdminApi(mock).projects.locations.clusters;
      final arg_name = 'foo';
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
        etag: arg_etag,
        force: arg_force,
        requestId: arg_requestId,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--export', () async {
      final mock = HttpServerMock();
      final res = api.CloudAlloyDBAdminApi(mock).projects.locations.clusters;
      final arg_request = buildExportClusterRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ExportClusterRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkExportClusterRequest(obj);

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
      final response = await res.export(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudAlloyDBAdminApi(mock).projects.locations.clusters;
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
          unittest.expect(queryMap['view']!.first, unittest.equals(arg_view));
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
      final response = await res.get(
        arg_name,
        view: arg_view,
        $fields: arg_$fields,
      );
      checkCluster(response as api.Cluster);
    });

    unittest.test('method--import', () async {
      final mock = HttpServerMock();
      final res = api.CloudAlloyDBAdminApi(mock).projects.locations.clusters;
      final arg_request = buildImportClusterRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ImportClusterRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkImportClusterRequest(obj);

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
      final response = await res.import(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudAlloyDBAdminApi(mock).projects.locations.clusters;
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
          final resp = convert.json.encode(buildListClustersResponse());
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
      checkListClustersResponse(response as api.ListClustersResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CloudAlloyDBAdminApi(mock).projects.locations.clusters;
      final arg_request = buildCluster();
      final arg_name = 'foo';
      final arg_allowMissing = true;
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_validateOnly = true;
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

    unittest.test('method--promote', () async {
      final mock = HttpServerMock();
      final res = api.CloudAlloyDBAdminApi(mock).projects.locations.clusters;
      final arg_request = buildPromoteClusterRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.PromoteClusterRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkPromoteClusterRequest(obj);

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
      final response = await res.promote(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--restore', () async {
      final mock = HttpServerMock();
      final res = api.CloudAlloyDBAdminApi(mock).projects.locations.clusters;
      final arg_request = buildRestoreClusterRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.RestoreClusterRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkRestoreClusterRequest(obj);

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
      final response = await res.restore(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--restoreFromCloudSQL', () async {
      final mock = HttpServerMock();
      final res = api.CloudAlloyDBAdminApi(mock).projects.locations.clusters;
      final arg_request = buildRestoreFromCloudSQLRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.RestoreFromCloudSQLRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkRestoreFromCloudSQLRequest(obj);

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
      final response = await res.restoreFromCloudSQL(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--switchover', () async {
      final mock = HttpServerMock();
      final res = api.CloudAlloyDBAdminApi(mock).projects.locations.clusters;
      final arg_request = buildSwitchoverClusterRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SwitchoverClusterRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSwitchoverClusterRequest(obj);

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
      final response = await res.switchover(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--upgrade', () async {
      final mock = HttpServerMock();
      final res = api.CloudAlloyDBAdminApi(mock).projects.locations.clusters;
      final arg_request = buildUpgradeClusterRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.UpgradeClusterRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkUpgradeClusterRequest(obj);

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
      final response = await res.upgrade(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsClustersInstancesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudAlloyDBAdminApi(
        mock,
      ).projects.locations.clusters.instances;
      final arg_request = buildInstance();
      final arg_parent = 'foo';
      final arg_instanceId = 'foo';
      final arg_requestId = 'foo';
      final arg_validateOnly = true;
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
            queryMap['instanceId']!.first,
            unittest.equals(arg_instanceId),
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
        instanceId: arg_instanceId,
        requestId: arg_requestId,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--createsecondary', () async {
      final mock = HttpServerMock();
      final res = api.CloudAlloyDBAdminApi(
        mock,
      ).projects.locations.clusters.instances;
      final arg_request = buildInstance();
      final arg_parent = 'foo';
      final arg_instanceId = 'foo';
      final arg_requestId = 'foo';
      final arg_validateOnly = true;
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
            queryMap['instanceId']!.first,
            unittest.equals(arg_instanceId),
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
      final response = await res.createsecondary(
        arg_request,
        arg_parent,
        instanceId: arg_instanceId,
        requestId: arg_requestId,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudAlloyDBAdminApi(
        mock,
      ).projects.locations.clusters.instances;
      final arg_name = 'foo';
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
        etag: arg_etag,
        requestId: arg_requestId,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--failover', () async {
      final mock = HttpServerMock();
      final res = api.CloudAlloyDBAdminApi(
        mock,
      ).projects.locations.clusters.instances;
      final arg_request = buildFailoverInstanceRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.FailoverInstanceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkFailoverInstanceRequest(obj);

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
      final response = await res.failover(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudAlloyDBAdminApi(
        mock,
      ).projects.locations.clusters.instances;
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
          unittest.expect(queryMap['view']!.first, unittest.equals(arg_view));
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
      final response = await res.get(
        arg_name,
        view: arg_view,
        $fields: arg_$fields,
      );
      checkInstance(response as api.Instance);
    });

    unittest.test('method--getConnectionInfo', () async {
      final mock = HttpServerMock();
      final res = api.CloudAlloyDBAdminApi(
        mock,
      ).projects.locations.clusters.instances;
      final arg_parent = 'foo';
      final arg_requestId = 'foo';
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
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildConnectionInfo());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getConnectionInfo(
        arg_parent,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkConnectionInfo(response as api.ConnectionInfo);
    });

    unittest.test('method--injectFault', () async {
      final mock = HttpServerMock();
      final res = api.CloudAlloyDBAdminApi(
        mock,
      ).projects.locations.clusters.instances;
      final arg_request = buildInjectFaultRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.InjectFaultRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkInjectFaultRequest(obj);

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
      final response = await res.injectFault(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudAlloyDBAdminApi(
        mock,
      ).projects.locations.clusters.instances;
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
          final resp = convert.json.encode(buildListInstancesResponse());
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
      checkListInstancesResponse(response as api.ListInstancesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CloudAlloyDBAdminApi(
        mock,
      ).projects.locations.clusters.instances;
      final arg_request = buildInstance();
      final arg_name = 'foo';
      final arg_allowMissing = true;
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_validateOnly = true;
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

    unittest.test('method--restart', () async {
      final mock = HttpServerMock();
      final res = api.CloudAlloyDBAdminApi(
        mock,
      ).projects.locations.clusters.instances;
      final arg_request = buildRestartInstanceRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.RestartInstanceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkRestartInstanceRequest(obj);

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
      final response = await res.restart(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsClustersUsersResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudAlloyDBAdminApi(
        mock,
      ).projects.locations.clusters.users;
      final arg_request = buildUser();
      final arg_parent = 'foo';
      final arg_requestId = 'foo';
      final arg_userId = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.User.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkUser(obj);

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
            queryMap['userId']!.first,
            unittest.equals(arg_userId),
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
          final resp = convert.json.encode(buildUser());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        requestId: arg_requestId,
        userId: arg_userId,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkUser(response as api.User);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudAlloyDBAdminApi(
        mock,
      ).projects.locations.clusters.users;
      final arg_name = 'foo';
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
          final resp = convert.json.encode(buildEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        requestId: arg_requestId,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudAlloyDBAdminApi(
        mock,
      ).projects.locations.clusters.users;
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
          final resp = convert.json.encode(buildUser());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkUser(response as api.User);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudAlloyDBAdminApi(
        mock,
      ).projects.locations.clusters.users;
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
          final resp = convert.json.encode(buildListUsersResponse());
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
      checkListUsersResponse(response as api.ListUsersResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CloudAlloyDBAdminApi(
        mock,
      ).projects.locations.clusters.users;
      final arg_request = buildUser();
      final arg_name = 'foo';
      final arg_allowMissing = true;
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.User.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkUser(obj);

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
          final resp = convert.json.encode(buildUser());
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
      checkUser(response as api.User);
    });
  });

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.CloudAlloyDBAdminApi(mock).projects.locations.operations;
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
      final res = api.CloudAlloyDBAdminApi(mock).projects.locations.operations;
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
      final res = api.CloudAlloyDBAdminApi(mock).projects.locations.operations;
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
      final res = api.CloudAlloyDBAdminApi(mock).projects.locations.operations;
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

  unittest.group('resource-ProjectsLocationsSupportedDatabaseFlagsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudAlloyDBAdminApi(
        mock,
      ).projects.locations.supportedDatabaseFlags;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_scope = 'foo';
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
            core.int.parse(queryMap['pageSize']!.first),
            unittest.equals(arg_pageSize),
          );
          unittest.expect(
            queryMap['pageToken']!.first,
            unittest.equals(arg_pageToken),
          );
          unittest.expect(queryMap['scope']!.first, unittest.equals(arg_scope));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildListSupportedDatabaseFlagsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        scope: arg_scope,
        $fields: arg_$fields,
      );
      checkListSupportedDatabaseFlagsResponse(
        response as api.ListSupportedDatabaseFlagsResponse,
      );
    });
  });
}
