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

import 'package:googleapis_beta/sqladmin/v1beta4.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAclEntry = 0;
api.AclEntry buildAclEntry() {
  final o = api.AclEntry();
  buildCounterAclEntry++;
  if (buildCounterAclEntry < 3) {
    o.expirationTime = 'foo';
    o.kind = 'foo';
    o.name = 'foo';
    o.value = 'foo';
  }
  buildCounterAclEntry--;
  return o;
}

void checkAclEntry(api.AclEntry o) {
  buildCounterAclEntry++;
  if (buildCounterAclEntry < 3) {
    unittest.expect(
      o.expirationTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterAclEntry--;
}

core.int buildCounterApiWarning = 0;
api.ApiWarning buildApiWarning() {
  final o = api.ApiWarning();
  buildCounterApiWarning++;
  if (buildCounterApiWarning < 3) {
    o.code = 'foo';
    o.message = 'foo';
    o.region = 'foo';
  }
  buildCounterApiWarning--;
  return o;
}

void checkApiWarning(api.ApiWarning o) {
  buildCounterApiWarning++;
  if (buildCounterApiWarning < 3) {
    unittest.expect(
      o.code!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.region!,
      unittest.equals('foo'),
    );
  }
  buildCounterApiWarning--;
}

core.int buildCounterBackupConfiguration = 0;
api.BackupConfiguration buildBackupConfiguration() {
  final o = api.BackupConfiguration();
  buildCounterBackupConfiguration++;
  if (buildCounterBackupConfiguration < 3) {
    o.backupRetentionSettings = buildBackupRetentionSettings();
    o.binaryLogEnabled = true;
    o.enabled = true;
    o.kind = 'foo';
    o.location = 'foo';
    o.pointInTimeRecoveryEnabled = true;
    o.replicationLogArchivingEnabled = true;
    o.startTime = 'foo';
    o.transactionLogRetentionDays = 42;
  }
  buildCounterBackupConfiguration--;
  return o;
}

void checkBackupConfiguration(api.BackupConfiguration o) {
  buildCounterBackupConfiguration++;
  if (buildCounterBackupConfiguration < 3) {
    checkBackupRetentionSettings(o.backupRetentionSettings!);
    unittest.expect(o.binaryLogEnabled!, unittest.isTrue);
    unittest.expect(o.enabled!, unittest.isTrue);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
    unittest.expect(o.pointInTimeRecoveryEnabled!, unittest.isTrue);
    unittest.expect(o.replicationLogArchivingEnabled!, unittest.isTrue);
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.transactionLogRetentionDays!,
      unittest.equals(42),
    );
  }
  buildCounterBackupConfiguration--;
}

core.int buildCounterBackupContext = 0;
api.BackupContext buildBackupContext() {
  final o = api.BackupContext();
  buildCounterBackupContext++;
  if (buildCounterBackupContext < 3) {
    o.backupId = 'foo';
    o.kind = 'foo';
  }
  buildCounterBackupContext--;
  return o;
}

void checkBackupContext(api.BackupContext o) {
  buildCounterBackupContext++;
  if (buildCounterBackupContext < 3) {
    unittest.expect(
      o.backupId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterBackupContext--;
}

core.int buildCounterBackupRetentionSettings = 0;
api.BackupRetentionSettings buildBackupRetentionSettings() {
  final o = api.BackupRetentionSettings();
  buildCounterBackupRetentionSettings++;
  if (buildCounterBackupRetentionSettings < 3) {
    o.retainedBackups = 42;
    o.retentionUnit = 'foo';
  }
  buildCounterBackupRetentionSettings--;
  return o;
}

void checkBackupRetentionSettings(api.BackupRetentionSettings o) {
  buildCounterBackupRetentionSettings++;
  if (buildCounterBackupRetentionSettings < 3) {
    unittest.expect(
      o.retainedBackups!,
      unittest.equals(42),
    );
    unittest.expect(
      o.retentionUnit!,
      unittest.equals('foo'),
    );
  }
  buildCounterBackupRetentionSettings--;
}

core.int buildCounterBackupRun = 0;
api.BackupRun buildBackupRun() {
  final o = api.BackupRun();
  buildCounterBackupRun++;
  if (buildCounterBackupRun < 3) {
    o.backupKind = 'foo';
    o.description = 'foo';
    o.diskEncryptionConfiguration = buildDiskEncryptionConfiguration();
    o.diskEncryptionStatus = buildDiskEncryptionStatus();
    o.endTime = 'foo';
    o.enqueuedTime = 'foo';
    o.error = buildOperationError();
    o.id = 'foo';
    o.instance = 'foo';
    o.kind = 'foo';
    o.location = 'foo';
    o.selfLink = 'foo';
    o.startTime = 'foo';
    o.status = 'foo';
    o.type = 'foo';
    o.windowStartTime = 'foo';
  }
  buildCounterBackupRun--;
  return o;
}

void checkBackupRun(api.BackupRun o) {
  buildCounterBackupRun++;
  if (buildCounterBackupRun < 3) {
    unittest.expect(
      o.backupKind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkDiskEncryptionConfiguration(o.diskEncryptionConfiguration!);
    checkDiskEncryptionStatus(o.diskEncryptionStatus!);
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.enqueuedTime!,
      unittest.equals('foo'),
    );
    checkOperationError(o.error!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.instance!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.selfLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.windowStartTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterBackupRun--;
}

core.List<api.BackupRun> buildUnnamed8144() => [
      buildBackupRun(),
      buildBackupRun(),
    ];

void checkUnnamed8144(core.List<api.BackupRun> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBackupRun(o[0]);
  checkBackupRun(o[1]);
}

core.int buildCounterBackupRunsListResponse = 0;
api.BackupRunsListResponse buildBackupRunsListResponse() {
  final o = api.BackupRunsListResponse();
  buildCounterBackupRunsListResponse++;
  if (buildCounterBackupRunsListResponse < 3) {
    o.items = buildUnnamed8144();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterBackupRunsListResponse--;
  return o;
}

void checkBackupRunsListResponse(api.BackupRunsListResponse o) {
  buildCounterBackupRunsListResponse++;
  if (buildCounterBackupRunsListResponse < 3) {
    checkUnnamed8144(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterBackupRunsListResponse--;
}

core.int buildCounterBinLogCoordinates = 0;
api.BinLogCoordinates buildBinLogCoordinates() {
  final o = api.BinLogCoordinates();
  buildCounterBinLogCoordinates++;
  if (buildCounterBinLogCoordinates < 3) {
    o.binLogFileName = 'foo';
    o.binLogPosition = 'foo';
    o.kind = 'foo';
  }
  buildCounterBinLogCoordinates--;
  return o;
}

void checkBinLogCoordinates(api.BinLogCoordinates o) {
  buildCounterBinLogCoordinates++;
  if (buildCounterBinLogCoordinates < 3) {
    unittest.expect(
      o.binLogFileName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.binLogPosition!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterBinLogCoordinates--;
}

core.int buildCounterCloneContext = 0;
api.CloneContext buildCloneContext() {
  final o = api.CloneContext();
  buildCounterCloneContext++;
  if (buildCounterCloneContext < 3) {
    o.binLogCoordinates = buildBinLogCoordinates();
    o.destinationInstanceName = 'foo';
    o.kind = 'foo';
    o.pitrTimestampMs = 'foo';
    o.pointInTime = 'foo';
  }
  buildCounterCloneContext--;
  return o;
}

void checkCloneContext(api.CloneContext o) {
  buildCounterCloneContext++;
  if (buildCounterCloneContext < 3) {
    checkBinLogCoordinates(o.binLogCoordinates!);
    unittest.expect(
      o.destinationInstanceName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pitrTimestampMs!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pointInTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterCloneContext--;
}

core.List<api.IpMapping> buildUnnamed8145() => [
      buildIpMapping(),
      buildIpMapping(),
    ];

void checkUnnamed8145(core.List<api.IpMapping> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIpMapping(o[0]);
  checkIpMapping(o[1]);
}

core.int buildCounterConnectSettings = 0;
api.ConnectSettings buildConnectSettings() {
  final o = api.ConnectSettings();
  buildCounterConnectSettings++;
  if (buildCounterConnectSettings < 3) {
    o.backendType = 'foo';
    o.databaseVersion = 'foo';
    o.ipAddresses = buildUnnamed8145();
    o.kind = 'foo';
    o.serverCaCert = buildSslCert();
  }
  buildCounterConnectSettings--;
  return o;
}

void checkConnectSettings(api.ConnectSettings o) {
  buildCounterConnectSettings++;
  if (buildCounterConnectSettings < 3) {
    unittest.expect(
      o.backendType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.databaseVersion!,
      unittest.equals('foo'),
    );
    checkUnnamed8145(o.ipAddresses!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkSslCert(o.serverCaCert!);
  }
  buildCounterConnectSettings--;
}

core.int buildCounterDatabase = 0;
api.Database buildDatabase() {
  final o = api.Database();
  buildCounterDatabase++;
  if (buildCounterDatabase < 3) {
    o.charset = 'foo';
    o.collation = 'foo';
    o.etag = 'foo';
    o.instance = 'foo';
    o.kind = 'foo';
    o.name = 'foo';
    o.project = 'foo';
    o.selfLink = 'foo';
    o.sqlserverDatabaseDetails = buildSqlServerDatabaseDetails();
  }
  buildCounterDatabase--;
  return o;
}

void checkDatabase(api.Database o) {
  buildCounterDatabase++;
  if (buildCounterDatabase < 3) {
    unittest.expect(
      o.charset!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.collation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.instance!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.project!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.selfLink!,
      unittest.equals('foo'),
    );
    checkSqlServerDatabaseDetails(o.sqlserverDatabaseDetails!);
  }
  buildCounterDatabase--;
}

core.int buildCounterDatabaseFlags = 0;
api.DatabaseFlags buildDatabaseFlags() {
  final o = api.DatabaseFlags();
  buildCounterDatabaseFlags++;
  if (buildCounterDatabaseFlags < 3) {
    o.name = 'foo';
    o.value = 'foo';
  }
  buildCounterDatabaseFlags--;
  return o;
}

void checkDatabaseFlags(api.DatabaseFlags o) {
  buildCounterDatabaseFlags++;
  if (buildCounterDatabaseFlags < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterDatabaseFlags--;
}

core.int buildCounterDatabaseInstanceFailoverReplica = 0;
api.DatabaseInstanceFailoverReplica buildDatabaseInstanceFailoverReplica() {
  final o = api.DatabaseInstanceFailoverReplica();
  buildCounterDatabaseInstanceFailoverReplica++;
  if (buildCounterDatabaseInstanceFailoverReplica < 3) {
    o.available = true;
    o.name = 'foo';
  }
  buildCounterDatabaseInstanceFailoverReplica--;
  return o;
}

void checkDatabaseInstanceFailoverReplica(
    api.DatabaseInstanceFailoverReplica o) {
  buildCounterDatabaseInstanceFailoverReplica++;
  if (buildCounterDatabaseInstanceFailoverReplica < 3) {
    unittest.expect(o.available!, unittest.isTrue);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterDatabaseInstanceFailoverReplica--;
}

core.List<api.IpMapping> buildUnnamed8146() => [
      buildIpMapping(),
      buildIpMapping(),
    ];

void checkUnnamed8146(core.List<api.IpMapping> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIpMapping(o[0]);
  checkIpMapping(o[1]);
}

core.List<core.String> buildUnnamed8147() => [
      'foo',
      'foo',
    ];

void checkUnnamed8147(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed8148() => [
      'foo',
      'foo',
    ];

void checkUnnamed8148(core.List<core.String> o) {
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

core.int buildCounterDatabaseInstance = 0;
api.DatabaseInstance buildDatabaseInstance() {
  final o = api.DatabaseInstance();
  buildCounterDatabaseInstance++;
  if (buildCounterDatabaseInstance < 3) {
    o.backendType = 'foo';
    o.connectionName = 'foo';
    o.currentDiskSize = 'foo';
    o.databaseVersion = 'foo';
    o.diskEncryptionConfiguration = buildDiskEncryptionConfiguration();
    o.diskEncryptionStatus = buildDiskEncryptionStatus();
    o.etag = 'foo';
    o.failoverReplica = buildDatabaseInstanceFailoverReplica();
    o.gceZone = 'foo';
    o.instanceType = 'foo';
    o.ipAddresses = buildUnnamed8146();
    o.ipv6Address = 'foo';
    o.kind = 'foo';
    o.masterInstanceName = 'foo';
    o.maxDiskSize = 'foo';
    o.name = 'foo';
    o.onPremisesConfiguration = buildOnPremisesConfiguration();
    o.outOfDiskReport = buildSqlOutOfDiskReport();
    o.project = 'foo';
    o.region = 'foo';
    o.replicaConfiguration = buildReplicaConfiguration();
    o.replicaNames = buildUnnamed8147();
    o.rootPassword = 'foo';
    o.satisfiesPzs = true;
    o.scheduledMaintenance = buildSqlScheduledMaintenance();
    o.secondaryGceZone = 'foo';
    o.selfLink = 'foo';
    o.serverCaCert = buildSslCert();
    o.serviceAccountEmailAddress = 'foo';
    o.settings = buildSettings();
    o.state = 'foo';
    o.suspensionReason = buildUnnamed8148();
  }
  buildCounterDatabaseInstance--;
  return o;
}

void checkDatabaseInstance(api.DatabaseInstance o) {
  buildCounterDatabaseInstance++;
  if (buildCounterDatabaseInstance < 3) {
    unittest.expect(
      o.backendType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.connectionName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.currentDiskSize!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.databaseVersion!,
      unittest.equals('foo'),
    );
    checkDiskEncryptionConfiguration(o.diskEncryptionConfiguration!);
    checkDiskEncryptionStatus(o.diskEncryptionStatus!);
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    checkDatabaseInstanceFailoverReplica(o.failoverReplica!);
    unittest.expect(
      o.gceZone!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.instanceType!,
      unittest.equals('foo'),
    );
    checkUnnamed8146(o.ipAddresses!);
    unittest.expect(
      o.ipv6Address!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.masterInstanceName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maxDiskSize!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkOnPremisesConfiguration(o.onPremisesConfiguration!);
    checkSqlOutOfDiskReport(o.outOfDiskReport!);
    unittest.expect(
      o.project!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.region!,
      unittest.equals('foo'),
    );
    checkReplicaConfiguration(o.replicaConfiguration!);
    checkUnnamed8147(o.replicaNames!);
    unittest.expect(
      o.rootPassword!,
      unittest.equals('foo'),
    );
    unittest.expect(o.satisfiesPzs!, unittest.isTrue);
    checkSqlScheduledMaintenance(o.scheduledMaintenance!);
    unittest.expect(
      o.secondaryGceZone!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.selfLink!,
      unittest.equals('foo'),
    );
    checkSslCert(o.serverCaCert!);
    unittest.expect(
      o.serviceAccountEmailAddress!,
      unittest.equals('foo'),
    );
    checkSettings(o.settings!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    checkUnnamed8148(o.suspensionReason!);
  }
  buildCounterDatabaseInstance--;
}

core.List<api.Database> buildUnnamed8149() => [
      buildDatabase(),
      buildDatabase(),
    ];

void checkUnnamed8149(core.List<api.Database> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatabase(o[0]);
  checkDatabase(o[1]);
}

core.int buildCounterDatabasesListResponse = 0;
api.DatabasesListResponse buildDatabasesListResponse() {
  final o = api.DatabasesListResponse();
  buildCounterDatabasesListResponse++;
  if (buildCounterDatabasesListResponse < 3) {
    o.items = buildUnnamed8149();
    o.kind = 'foo';
  }
  buildCounterDatabasesListResponse--;
  return o;
}

void checkDatabasesListResponse(api.DatabasesListResponse o) {
  buildCounterDatabasesListResponse++;
  if (buildCounterDatabasesListResponse < 3) {
    checkUnnamed8149(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterDatabasesListResponse--;
}

core.int buildCounterDemoteMasterConfiguration = 0;
api.DemoteMasterConfiguration buildDemoteMasterConfiguration() {
  final o = api.DemoteMasterConfiguration();
  buildCounterDemoteMasterConfiguration++;
  if (buildCounterDemoteMasterConfiguration < 3) {
    o.kind = 'foo';
    o.mysqlReplicaConfiguration = buildDemoteMasterMySqlReplicaConfiguration();
  }
  buildCounterDemoteMasterConfiguration--;
  return o;
}

void checkDemoteMasterConfiguration(api.DemoteMasterConfiguration o) {
  buildCounterDemoteMasterConfiguration++;
  if (buildCounterDemoteMasterConfiguration < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkDemoteMasterMySqlReplicaConfiguration(o.mysqlReplicaConfiguration!);
  }
  buildCounterDemoteMasterConfiguration--;
}

core.int buildCounterDemoteMasterContext = 0;
api.DemoteMasterContext buildDemoteMasterContext() {
  final o = api.DemoteMasterContext();
  buildCounterDemoteMasterContext++;
  if (buildCounterDemoteMasterContext < 3) {
    o.kind = 'foo';
    o.masterInstanceName = 'foo';
    o.replicaConfiguration = buildDemoteMasterConfiguration();
    o.verifyGtidConsistency = true;
  }
  buildCounterDemoteMasterContext--;
  return o;
}

void checkDemoteMasterContext(api.DemoteMasterContext o) {
  buildCounterDemoteMasterContext++;
  if (buildCounterDemoteMasterContext < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.masterInstanceName!,
      unittest.equals('foo'),
    );
    checkDemoteMasterConfiguration(o.replicaConfiguration!);
    unittest.expect(o.verifyGtidConsistency!, unittest.isTrue);
  }
  buildCounterDemoteMasterContext--;
}

core.int buildCounterDemoteMasterMySqlReplicaConfiguration = 0;
api.DemoteMasterMySqlReplicaConfiguration
    buildDemoteMasterMySqlReplicaConfiguration() {
  final o = api.DemoteMasterMySqlReplicaConfiguration();
  buildCounterDemoteMasterMySqlReplicaConfiguration++;
  if (buildCounterDemoteMasterMySqlReplicaConfiguration < 3) {
    o.caCertificate = 'foo';
    o.clientCertificate = 'foo';
    o.clientKey = 'foo';
    o.kind = 'foo';
    o.password = 'foo';
    o.username = 'foo';
  }
  buildCounterDemoteMasterMySqlReplicaConfiguration--;
  return o;
}

void checkDemoteMasterMySqlReplicaConfiguration(
    api.DemoteMasterMySqlReplicaConfiguration o) {
  buildCounterDemoteMasterMySqlReplicaConfiguration++;
  if (buildCounterDemoteMasterMySqlReplicaConfiguration < 3) {
    unittest.expect(
      o.caCertificate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.clientCertificate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.clientKey!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.password!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.username!,
      unittest.equals('foo'),
    );
  }
  buildCounterDemoteMasterMySqlReplicaConfiguration--;
}

core.int buildCounterDenyMaintenancePeriod = 0;
api.DenyMaintenancePeriod buildDenyMaintenancePeriod() {
  final o = api.DenyMaintenancePeriod();
  buildCounterDenyMaintenancePeriod++;
  if (buildCounterDenyMaintenancePeriod < 3) {
    o.endDate = 'foo';
    o.startDate = 'foo';
    o.time = 'foo';
  }
  buildCounterDenyMaintenancePeriod--;
  return o;
}

void checkDenyMaintenancePeriod(api.DenyMaintenancePeriod o) {
  buildCounterDenyMaintenancePeriod++;
  if (buildCounterDenyMaintenancePeriod < 3) {
    unittest.expect(
      o.endDate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startDate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.time!,
      unittest.equals('foo'),
    );
  }
  buildCounterDenyMaintenancePeriod--;
}

core.int buildCounterDiskEncryptionConfiguration = 0;
api.DiskEncryptionConfiguration buildDiskEncryptionConfiguration() {
  final o = api.DiskEncryptionConfiguration();
  buildCounterDiskEncryptionConfiguration++;
  if (buildCounterDiskEncryptionConfiguration < 3) {
    o.kind = 'foo';
    o.kmsKeyName = 'foo';
  }
  buildCounterDiskEncryptionConfiguration--;
  return o;
}

void checkDiskEncryptionConfiguration(api.DiskEncryptionConfiguration o) {
  buildCounterDiskEncryptionConfiguration++;
  if (buildCounterDiskEncryptionConfiguration < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kmsKeyName!,
      unittest.equals('foo'),
    );
  }
  buildCounterDiskEncryptionConfiguration--;
}

core.int buildCounterDiskEncryptionStatus = 0;
api.DiskEncryptionStatus buildDiskEncryptionStatus() {
  final o = api.DiskEncryptionStatus();
  buildCounterDiskEncryptionStatus++;
  if (buildCounterDiskEncryptionStatus < 3) {
    o.kind = 'foo';
    o.kmsKeyVersionName = 'foo';
  }
  buildCounterDiskEncryptionStatus--;
  return o;
}

void checkDiskEncryptionStatus(api.DiskEncryptionStatus o) {
  buildCounterDiskEncryptionStatus++;
  if (buildCounterDiskEncryptionStatus < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kmsKeyVersionName!,
      unittest.equals('foo'),
    );
  }
  buildCounterDiskEncryptionStatus--;
}

core.int buildCounterExportContextCsvExportOptions = 0;
api.ExportContextCsvExportOptions buildExportContextCsvExportOptions() {
  final o = api.ExportContextCsvExportOptions();
  buildCounterExportContextCsvExportOptions++;
  if (buildCounterExportContextCsvExportOptions < 3) {
    o.selectQuery = 'foo';
  }
  buildCounterExportContextCsvExportOptions--;
  return o;
}

void checkExportContextCsvExportOptions(api.ExportContextCsvExportOptions o) {
  buildCounterExportContextCsvExportOptions++;
  if (buildCounterExportContextCsvExportOptions < 3) {
    unittest.expect(
      o.selectQuery!,
      unittest.equals('foo'),
    );
  }
  buildCounterExportContextCsvExportOptions--;
}

core.List<core.String> buildUnnamed8150() => [
      'foo',
      'foo',
    ];

void checkUnnamed8150(core.List<core.String> o) {
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

core.int buildCounterExportContextSqlExportOptionsMysqlExportOptions = 0;
api.ExportContextSqlExportOptionsMysqlExportOptions
    buildExportContextSqlExportOptionsMysqlExportOptions() {
  final o = api.ExportContextSqlExportOptionsMysqlExportOptions();
  buildCounterExportContextSqlExportOptionsMysqlExportOptions++;
  if (buildCounterExportContextSqlExportOptionsMysqlExportOptions < 3) {
    o.masterData = 42;
  }
  buildCounterExportContextSqlExportOptionsMysqlExportOptions--;
  return o;
}

void checkExportContextSqlExportOptionsMysqlExportOptions(
    api.ExportContextSqlExportOptionsMysqlExportOptions o) {
  buildCounterExportContextSqlExportOptionsMysqlExportOptions++;
  if (buildCounterExportContextSqlExportOptionsMysqlExportOptions < 3) {
    unittest.expect(
      o.masterData!,
      unittest.equals(42),
    );
  }
  buildCounterExportContextSqlExportOptionsMysqlExportOptions--;
}

core.List<core.String> buildUnnamed8151() => [
      'foo',
      'foo',
    ];

void checkUnnamed8151(core.List<core.String> o) {
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

core.int buildCounterExportContextSqlExportOptions = 0;
api.ExportContextSqlExportOptions buildExportContextSqlExportOptions() {
  final o = api.ExportContextSqlExportOptions();
  buildCounterExportContextSqlExportOptions++;
  if (buildCounterExportContextSqlExportOptions < 3) {
    o.mysqlExportOptions =
        buildExportContextSqlExportOptionsMysqlExportOptions();
    o.schemaOnly = true;
    o.tables = buildUnnamed8151();
  }
  buildCounterExportContextSqlExportOptions--;
  return o;
}

void checkExportContextSqlExportOptions(api.ExportContextSqlExportOptions o) {
  buildCounterExportContextSqlExportOptions++;
  if (buildCounterExportContextSqlExportOptions < 3) {
    checkExportContextSqlExportOptionsMysqlExportOptions(o.mysqlExportOptions!);
    unittest.expect(o.schemaOnly!, unittest.isTrue);
    checkUnnamed8151(o.tables!);
  }
  buildCounterExportContextSqlExportOptions--;
}

core.int buildCounterExportContext = 0;
api.ExportContext buildExportContext() {
  final o = api.ExportContext();
  buildCounterExportContext++;
  if (buildCounterExportContext < 3) {
    o.csvExportOptions = buildExportContextCsvExportOptions();
    o.databases = buildUnnamed8150();
    o.fileType = 'foo';
    o.kind = 'foo';
    o.offload = true;
    o.sqlExportOptions = buildExportContextSqlExportOptions();
    o.uri = 'foo';
  }
  buildCounterExportContext--;
  return o;
}

void checkExportContext(api.ExportContext o) {
  buildCounterExportContext++;
  if (buildCounterExportContext < 3) {
    checkExportContextCsvExportOptions(o.csvExportOptions!);
    checkUnnamed8150(o.databases!);
    unittest.expect(
      o.fileType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(o.offload!, unittest.isTrue);
    checkExportContextSqlExportOptions(o.sqlExportOptions!);
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterExportContext--;
}

core.int buildCounterFailoverContext = 0;
api.FailoverContext buildFailoverContext() {
  final o = api.FailoverContext();
  buildCounterFailoverContext++;
  if (buildCounterFailoverContext < 3) {
    o.kind = 'foo';
    o.settingsVersion = 'foo';
  }
  buildCounterFailoverContext--;
  return o;
}

void checkFailoverContext(api.FailoverContext o) {
  buildCounterFailoverContext++;
  if (buildCounterFailoverContext < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.settingsVersion!,
      unittest.equals('foo'),
    );
  }
  buildCounterFailoverContext--;
}

core.List<core.String> buildUnnamed8152() => [
      'foo',
      'foo',
    ];

void checkUnnamed8152(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed8153() => [
      'foo',
      'foo',
    ];

void checkUnnamed8153(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed8154() => [
      'foo',
      'foo',
    ];

void checkUnnamed8154(core.List<core.String> o) {
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

core.int buildCounterFlag = 0;
api.Flag buildFlag() {
  final o = api.Flag();
  buildCounterFlag++;
  if (buildCounterFlag < 3) {
    o.allowedIntValues = buildUnnamed8152();
    o.allowedStringValues = buildUnnamed8153();
    o.appliesTo = buildUnnamed8154();
    o.inBeta = true;
    o.kind = 'foo';
    o.maxValue = 'foo';
    o.minValue = 'foo';
    o.name = 'foo';
    o.requiresRestart = true;
    o.type = 'foo';
  }
  buildCounterFlag--;
  return o;
}

void checkFlag(api.Flag o) {
  buildCounterFlag++;
  if (buildCounterFlag < 3) {
    checkUnnamed8152(o.allowedIntValues!);
    checkUnnamed8153(o.allowedStringValues!);
    checkUnnamed8154(o.appliesTo!);
    unittest.expect(o.inBeta!, unittest.isTrue);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maxValue!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.minValue!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(o.requiresRestart!, unittest.isTrue);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterFlag--;
}

core.List<api.Flag> buildUnnamed8155() => [
      buildFlag(),
      buildFlag(),
    ];

void checkUnnamed8155(core.List<api.Flag> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFlag(o[0]);
  checkFlag(o[1]);
}

core.int buildCounterFlagsListResponse = 0;
api.FlagsListResponse buildFlagsListResponse() {
  final o = api.FlagsListResponse();
  buildCounterFlagsListResponse++;
  if (buildCounterFlagsListResponse < 3) {
    o.items = buildUnnamed8155();
    o.kind = 'foo';
  }
  buildCounterFlagsListResponse--;
  return o;
}

void checkFlagsListResponse(api.FlagsListResponse o) {
  buildCounterFlagsListResponse++;
  if (buildCounterFlagsListResponse < 3) {
    checkUnnamed8155(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterFlagsListResponse--;
}

core.int buildCounterGenerateEphemeralCertRequest = 0;
api.GenerateEphemeralCertRequest buildGenerateEphemeralCertRequest() {
  final o = api.GenerateEphemeralCertRequest();
  buildCounterGenerateEphemeralCertRequest++;
  if (buildCounterGenerateEphemeralCertRequest < 3) {
    o.accessToken = 'foo';
    o.publicKey = 'foo';
    o.readTime = 'foo';
  }
  buildCounterGenerateEphemeralCertRequest--;
  return o;
}

void checkGenerateEphemeralCertRequest(api.GenerateEphemeralCertRequest o) {
  buildCounterGenerateEphemeralCertRequest++;
  if (buildCounterGenerateEphemeralCertRequest < 3) {
    unittest.expect(
      o.accessToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.publicKey!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.readTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGenerateEphemeralCertRequest--;
}

core.int buildCounterGenerateEphemeralCertResponse = 0;
api.GenerateEphemeralCertResponse buildGenerateEphemeralCertResponse() {
  final o = api.GenerateEphemeralCertResponse();
  buildCounterGenerateEphemeralCertResponse++;
  if (buildCounterGenerateEphemeralCertResponse < 3) {
    o.ephemeralCert = buildSslCert();
  }
  buildCounterGenerateEphemeralCertResponse--;
  return o;
}

void checkGenerateEphemeralCertResponse(api.GenerateEphemeralCertResponse o) {
  buildCounterGenerateEphemeralCertResponse++;
  if (buildCounterGenerateEphemeralCertResponse < 3) {
    checkSslCert(o.ephemeralCert!);
  }
  buildCounterGenerateEphemeralCertResponse--;
}

core.int buildCounterImportContextBakImportOptionsEncryptionOptions = 0;
api.ImportContextBakImportOptionsEncryptionOptions
    buildImportContextBakImportOptionsEncryptionOptions() {
  final o = api.ImportContextBakImportOptionsEncryptionOptions();
  buildCounterImportContextBakImportOptionsEncryptionOptions++;
  if (buildCounterImportContextBakImportOptionsEncryptionOptions < 3) {
    o.certPath = 'foo';
    o.pvkPassword = 'foo';
    o.pvkPath = 'foo';
  }
  buildCounterImportContextBakImportOptionsEncryptionOptions--;
  return o;
}

void checkImportContextBakImportOptionsEncryptionOptions(
    api.ImportContextBakImportOptionsEncryptionOptions o) {
  buildCounterImportContextBakImportOptionsEncryptionOptions++;
  if (buildCounterImportContextBakImportOptionsEncryptionOptions < 3) {
    unittest.expect(
      o.certPath!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pvkPassword!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pvkPath!,
      unittest.equals('foo'),
    );
  }
  buildCounterImportContextBakImportOptionsEncryptionOptions--;
}

core.int buildCounterImportContextBakImportOptions = 0;
api.ImportContextBakImportOptions buildImportContextBakImportOptions() {
  final o = api.ImportContextBakImportOptions();
  buildCounterImportContextBakImportOptions++;
  if (buildCounterImportContextBakImportOptions < 3) {
    o.encryptionOptions = buildImportContextBakImportOptionsEncryptionOptions();
  }
  buildCounterImportContextBakImportOptions--;
  return o;
}

void checkImportContextBakImportOptions(api.ImportContextBakImportOptions o) {
  buildCounterImportContextBakImportOptions++;
  if (buildCounterImportContextBakImportOptions < 3) {
    checkImportContextBakImportOptionsEncryptionOptions(o.encryptionOptions!);
  }
  buildCounterImportContextBakImportOptions--;
}

core.List<core.String> buildUnnamed8156() => [
      'foo',
      'foo',
    ];

void checkUnnamed8156(core.List<core.String> o) {
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

core.int buildCounterImportContextCsvImportOptions = 0;
api.ImportContextCsvImportOptions buildImportContextCsvImportOptions() {
  final o = api.ImportContextCsvImportOptions();
  buildCounterImportContextCsvImportOptions++;
  if (buildCounterImportContextCsvImportOptions < 3) {
    o.columns = buildUnnamed8156();
    o.table = 'foo';
  }
  buildCounterImportContextCsvImportOptions--;
  return o;
}

void checkImportContextCsvImportOptions(api.ImportContextCsvImportOptions o) {
  buildCounterImportContextCsvImportOptions++;
  if (buildCounterImportContextCsvImportOptions < 3) {
    checkUnnamed8156(o.columns!);
    unittest.expect(
      o.table!,
      unittest.equals('foo'),
    );
  }
  buildCounterImportContextCsvImportOptions--;
}

core.int buildCounterImportContext = 0;
api.ImportContext buildImportContext() {
  final o = api.ImportContext();
  buildCounterImportContext++;
  if (buildCounterImportContext < 3) {
    o.bakImportOptions = buildImportContextBakImportOptions();
    o.csvImportOptions = buildImportContextCsvImportOptions();
    o.database = 'foo';
    o.fileType = 'foo';
    o.importUser = 'foo';
    o.kind = 'foo';
    o.uri = 'foo';
  }
  buildCounterImportContext--;
  return o;
}

void checkImportContext(api.ImportContext o) {
  buildCounterImportContext++;
  if (buildCounterImportContext < 3) {
    checkImportContextBakImportOptions(o.bakImportOptions!);
    checkImportContextCsvImportOptions(o.csvImportOptions!);
    unittest.expect(
      o.database!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fileType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.importUser!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterImportContext--;
}

core.int buildCounterInsightsConfig = 0;
api.InsightsConfig buildInsightsConfig() {
  final o = api.InsightsConfig();
  buildCounterInsightsConfig++;
  if (buildCounterInsightsConfig < 3) {
    o.queryInsightsEnabled = true;
    o.queryPlansPerMinute = 42;
    o.queryStringLength = 42;
    o.recordApplicationTags = true;
    o.recordClientAddress = true;
  }
  buildCounterInsightsConfig--;
  return o;
}

void checkInsightsConfig(api.InsightsConfig o) {
  buildCounterInsightsConfig++;
  if (buildCounterInsightsConfig < 3) {
    unittest.expect(o.queryInsightsEnabled!, unittest.isTrue);
    unittest.expect(
      o.queryPlansPerMinute!,
      unittest.equals(42),
    );
    unittest.expect(
      o.queryStringLength!,
      unittest.equals(42),
    );
    unittest.expect(o.recordApplicationTags!, unittest.isTrue);
    unittest.expect(o.recordClientAddress!, unittest.isTrue);
  }
  buildCounterInsightsConfig--;
}

core.int buildCounterInstancesCloneRequest = 0;
api.InstancesCloneRequest buildInstancesCloneRequest() {
  final o = api.InstancesCloneRequest();
  buildCounterInstancesCloneRequest++;
  if (buildCounterInstancesCloneRequest < 3) {
    o.cloneContext = buildCloneContext();
  }
  buildCounterInstancesCloneRequest--;
  return o;
}

void checkInstancesCloneRequest(api.InstancesCloneRequest o) {
  buildCounterInstancesCloneRequest++;
  if (buildCounterInstancesCloneRequest < 3) {
    checkCloneContext(o.cloneContext!);
  }
  buildCounterInstancesCloneRequest--;
}

core.int buildCounterInstancesDemoteMasterRequest = 0;
api.InstancesDemoteMasterRequest buildInstancesDemoteMasterRequest() {
  final o = api.InstancesDemoteMasterRequest();
  buildCounterInstancesDemoteMasterRequest++;
  if (buildCounterInstancesDemoteMasterRequest < 3) {
    o.demoteMasterContext = buildDemoteMasterContext();
  }
  buildCounterInstancesDemoteMasterRequest--;
  return o;
}

void checkInstancesDemoteMasterRequest(api.InstancesDemoteMasterRequest o) {
  buildCounterInstancesDemoteMasterRequest++;
  if (buildCounterInstancesDemoteMasterRequest < 3) {
    checkDemoteMasterContext(o.demoteMasterContext!);
  }
  buildCounterInstancesDemoteMasterRequest--;
}

core.int buildCounterInstancesExportRequest = 0;
api.InstancesExportRequest buildInstancesExportRequest() {
  final o = api.InstancesExportRequest();
  buildCounterInstancesExportRequest++;
  if (buildCounterInstancesExportRequest < 3) {
    o.exportContext = buildExportContext();
  }
  buildCounterInstancesExportRequest--;
  return o;
}

void checkInstancesExportRequest(api.InstancesExportRequest o) {
  buildCounterInstancesExportRequest++;
  if (buildCounterInstancesExportRequest < 3) {
    checkExportContext(o.exportContext!);
  }
  buildCounterInstancesExportRequest--;
}

core.int buildCounterInstancesFailoverRequest = 0;
api.InstancesFailoverRequest buildInstancesFailoverRequest() {
  final o = api.InstancesFailoverRequest();
  buildCounterInstancesFailoverRequest++;
  if (buildCounterInstancesFailoverRequest < 3) {
    o.failoverContext = buildFailoverContext();
  }
  buildCounterInstancesFailoverRequest--;
  return o;
}

void checkInstancesFailoverRequest(api.InstancesFailoverRequest o) {
  buildCounterInstancesFailoverRequest++;
  if (buildCounterInstancesFailoverRequest < 3) {
    checkFailoverContext(o.failoverContext!);
  }
  buildCounterInstancesFailoverRequest--;
}

core.int buildCounterInstancesImportRequest = 0;
api.InstancesImportRequest buildInstancesImportRequest() {
  final o = api.InstancesImportRequest();
  buildCounterInstancesImportRequest++;
  if (buildCounterInstancesImportRequest < 3) {
    o.importContext = buildImportContext();
  }
  buildCounterInstancesImportRequest--;
  return o;
}

void checkInstancesImportRequest(api.InstancesImportRequest o) {
  buildCounterInstancesImportRequest++;
  if (buildCounterInstancesImportRequest < 3) {
    checkImportContext(o.importContext!);
  }
  buildCounterInstancesImportRequest--;
}

core.List<api.DatabaseInstance> buildUnnamed8157() => [
      buildDatabaseInstance(),
      buildDatabaseInstance(),
    ];

void checkUnnamed8157(core.List<api.DatabaseInstance> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatabaseInstance(o[0]);
  checkDatabaseInstance(o[1]);
}

core.List<api.ApiWarning> buildUnnamed8158() => [
      buildApiWarning(),
      buildApiWarning(),
    ];

void checkUnnamed8158(core.List<api.ApiWarning> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApiWarning(o[0]);
  checkApiWarning(o[1]);
}

core.int buildCounterInstancesListResponse = 0;
api.InstancesListResponse buildInstancesListResponse() {
  final o = api.InstancesListResponse();
  buildCounterInstancesListResponse++;
  if (buildCounterInstancesListResponse < 3) {
    o.items = buildUnnamed8157();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.warnings = buildUnnamed8158();
  }
  buildCounterInstancesListResponse--;
  return o;
}

void checkInstancesListResponse(api.InstancesListResponse o) {
  buildCounterInstancesListResponse++;
  if (buildCounterInstancesListResponse < 3) {
    checkUnnamed8157(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed8158(o.warnings!);
  }
  buildCounterInstancesListResponse--;
}

core.List<api.SslCert> buildUnnamed8159() => [
      buildSslCert(),
      buildSslCert(),
    ];

void checkUnnamed8159(core.List<api.SslCert> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSslCert(o[0]);
  checkSslCert(o[1]);
}

core.int buildCounterInstancesListServerCasResponse = 0;
api.InstancesListServerCasResponse buildInstancesListServerCasResponse() {
  final o = api.InstancesListServerCasResponse();
  buildCounterInstancesListServerCasResponse++;
  if (buildCounterInstancesListServerCasResponse < 3) {
    o.activeVersion = 'foo';
    o.certs = buildUnnamed8159();
    o.kind = 'foo';
  }
  buildCounterInstancesListServerCasResponse--;
  return o;
}

void checkInstancesListServerCasResponse(api.InstancesListServerCasResponse o) {
  buildCounterInstancesListServerCasResponse++;
  if (buildCounterInstancesListServerCasResponse < 3) {
    unittest.expect(
      o.activeVersion!,
      unittest.equals('foo'),
    );
    checkUnnamed8159(o.certs!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterInstancesListServerCasResponse--;
}

core.int buildCounterInstancesRestoreBackupRequest = 0;
api.InstancesRestoreBackupRequest buildInstancesRestoreBackupRequest() {
  final o = api.InstancesRestoreBackupRequest();
  buildCounterInstancesRestoreBackupRequest++;
  if (buildCounterInstancesRestoreBackupRequest < 3) {
    o.restoreBackupContext = buildRestoreBackupContext();
  }
  buildCounterInstancesRestoreBackupRequest--;
  return o;
}

void checkInstancesRestoreBackupRequest(api.InstancesRestoreBackupRequest o) {
  buildCounterInstancesRestoreBackupRequest++;
  if (buildCounterInstancesRestoreBackupRequest < 3) {
    checkRestoreBackupContext(o.restoreBackupContext!);
  }
  buildCounterInstancesRestoreBackupRequest--;
}

core.int buildCounterInstancesRotateServerCaRequest = 0;
api.InstancesRotateServerCaRequest buildInstancesRotateServerCaRequest() {
  final o = api.InstancesRotateServerCaRequest();
  buildCounterInstancesRotateServerCaRequest++;
  if (buildCounterInstancesRotateServerCaRequest < 3) {
    o.rotateServerCaContext = buildRotateServerCaContext();
  }
  buildCounterInstancesRotateServerCaRequest--;
  return o;
}

void checkInstancesRotateServerCaRequest(api.InstancesRotateServerCaRequest o) {
  buildCounterInstancesRotateServerCaRequest++;
  if (buildCounterInstancesRotateServerCaRequest < 3) {
    checkRotateServerCaContext(o.rotateServerCaContext!);
  }
  buildCounterInstancesRotateServerCaRequest--;
}

core.int buildCounterInstancesTruncateLogRequest = 0;
api.InstancesTruncateLogRequest buildInstancesTruncateLogRequest() {
  final o = api.InstancesTruncateLogRequest();
  buildCounterInstancesTruncateLogRequest++;
  if (buildCounterInstancesTruncateLogRequest < 3) {
    o.truncateLogContext = buildTruncateLogContext();
  }
  buildCounterInstancesTruncateLogRequest--;
  return o;
}

void checkInstancesTruncateLogRequest(api.InstancesTruncateLogRequest o) {
  buildCounterInstancesTruncateLogRequest++;
  if (buildCounterInstancesTruncateLogRequest < 3) {
    checkTruncateLogContext(o.truncateLogContext!);
  }
  buildCounterInstancesTruncateLogRequest--;
}

core.List<api.AclEntry> buildUnnamed8160() => [
      buildAclEntry(),
      buildAclEntry(),
    ];

void checkUnnamed8160(core.List<api.AclEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAclEntry(o[0]);
  checkAclEntry(o[1]);
}

core.int buildCounterIpConfiguration = 0;
api.IpConfiguration buildIpConfiguration() {
  final o = api.IpConfiguration();
  buildCounterIpConfiguration++;
  if (buildCounterIpConfiguration < 3) {
    o.authorizedNetworks = buildUnnamed8160();
    o.ipv4Enabled = true;
    o.privateNetwork = 'foo';
    o.requireSsl = true;
  }
  buildCounterIpConfiguration--;
  return o;
}

void checkIpConfiguration(api.IpConfiguration o) {
  buildCounterIpConfiguration++;
  if (buildCounterIpConfiguration < 3) {
    checkUnnamed8160(o.authorizedNetworks!);
    unittest.expect(o.ipv4Enabled!, unittest.isTrue);
    unittest.expect(
      o.privateNetwork!,
      unittest.equals('foo'),
    );
    unittest.expect(o.requireSsl!, unittest.isTrue);
  }
  buildCounterIpConfiguration--;
}

core.int buildCounterIpMapping = 0;
api.IpMapping buildIpMapping() {
  final o = api.IpMapping();
  buildCounterIpMapping++;
  if (buildCounterIpMapping < 3) {
    o.ipAddress = 'foo';
    o.timeToRetire = 'foo';
    o.type = 'foo';
  }
  buildCounterIpMapping--;
  return o;
}

void checkIpMapping(api.IpMapping o) {
  buildCounterIpMapping++;
  if (buildCounterIpMapping < 3) {
    unittest.expect(
      o.ipAddress!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.timeToRetire!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterIpMapping--;
}

core.int buildCounterLocationPreference = 0;
api.LocationPreference buildLocationPreference() {
  final o = api.LocationPreference();
  buildCounterLocationPreference++;
  if (buildCounterLocationPreference < 3) {
    o.followGaeApplication = 'foo';
    o.kind = 'foo';
    o.secondaryZone = 'foo';
    o.zone = 'foo';
  }
  buildCounterLocationPreference--;
  return o;
}

void checkLocationPreference(api.LocationPreference o) {
  buildCounterLocationPreference++;
  if (buildCounterLocationPreference < 3) {
    unittest.expect(
      o.followGaeApplication!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.secondaryZone!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.zone!,
      unittest.equals('foo'),
    );
  }
  buildCounterLocationPreference--;
}

core.int buildCounterMaintenanceWindow = 0;
api.MaintenanceWindow buildMaintenanceWindow() {
  final o = api.MaintenanceWindow();
  buildCounterMaintenanceWindow++;
  if (buildCounterMaintenanceWindow < 3) {
    o.day = 42;
    o.hour = 42;
    o.kind = 'foo';
    o.updateTrack = 'foo';
  }
  buildCounterMaintenanceWindow--;
  return o;
}

void checkMaintenanceWindow(api.MaintenanceWindow o) {
  buildCounterMaintenanceWindow++;
  if (buildCounterMaintenanceWindow < 3) {
    unittest.expect(
      o.day!,
      unittest.equals(42),
    );
    unittest.expect(
      o.hour!,
      unittest.equals(42),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTrack!,
      unittest.equals('foo'),
    );
  }
  buildCounterMaintenanceWindow--;
}

core.int buildCounterMySqlReplicaConfiguration = 0;
api.MySqlReplicaConfiguration buildMySqlReplicaConfiguration() {
  final o = api.MySqlReplicaConfiguration();
  buildCounterMySqlReplicaConfiguration++;
  if (buildCounterMySqlReplicaConfiguration < 3) {
    o.caCertificate = 'foo';
    o.clientCertificate = 'foo';
    o.clientKey = 'foo';
    o.connectRetryInterval = 42;
    o.dumpFilePath = 'foo';
    o.kind = 'foo';
    o.masterHeartbeatPeriod = 'foo';
    o.password = 'foo';
    o.sslCipher = 'foo';
    o.username = 'foo';
    o.verifyServerCertificate = true;
  }
  buildCounterMySqlReplicaConfiguration--;
  return o;
}

void checkMySqlReplicaConfiguration(api.MySqlReplicaConfiguration o) {
  buildCounterMySqlReplicaConfiguration++;
  if (buildCounterMySqlReplicaConfiguration < 3) {
    unittest.expect(
      o.caCertificate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.clientCertificate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.clientKey!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.connectRetryInterval!,
      unittest.equals(42),
    );
    unittest.expect(
      o.dumpFilePath!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.masterHeartbeatPeriod!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.password!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sslCipher!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.username!,
      unittest.equals('foo'),
    );
    unittest.expect(o.verifyServerCertificate!, unittest.isTrue);
  }
  buildCounterMySqlReplicaConfiguration--;
}

core.int buildCounterOnPremisesConfiguration = 0;
api.OnPremisesConfiguration buildOnPremisesConfiguration() {
  final o = api.OnPremisesConfiguration();
  buildCounterOnPremisesConfiguration++;
  if (buildCounterOnPremisesConfiguration < 3) {
    o.caCertificate = 'foo';
    o.clientCertificate = 'foo';
    o.clientKey = 'foo';
    o.dumpFilePath = 'foo';
    o.hostPort = 'foo';
    o.kind = 'foo';
    o.password = 'foo';
    o.username = 'foo';
  }
  buildCounterOnPremisesConfiguration--;
  return o;
}

void checkOnPremisesConfiguration(api.OnPremisesConfiguration o) {
  buildCounterOnPremisesConfiguration++;
  if (buildCounterOnPremisesConfiguration < 3) {
    unittest.expect(
      o.caCertificate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.clientCertificate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.clientKey!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dumpFilePath!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.hostPort!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.password!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.username!,
      unittest.equals('foo'),
    );
  }
  buildCounterOnPremisesConfiguration--;
}

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  final o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.backupContext = buildBackupContext();
    o.endTime = 'foo';
    o.error = buildOperationErrors();
    o.exportContext = buildExportContext();
    o.importContext = buildImportContext();
    o.insertTime = 'foo';
    o.kind = 'foo';
    o.name = 'foo';
    o.operationType = 'foo';
    o.selfLink = 'foo';
    o.startTime = 'foo';
    o.status = 'foo';
    o.targetId = 'foo';
    o.targetLink = 'foo';
    o.targetProject = 'foo';
    o.user = 'foo';
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    checkBackupContext(o.backupContext!);
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    checkOperationErrors(o.error!);
    checkExportContext(o.exportContext!);
    checkImportContext(o.importContext!);
    unittest.expect(
      o.insertTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.operationType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.selfLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.targetId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.targetLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.targetProject!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.user!,
      unittest.equals('foo'),
    );
  }
  buildCounterOperation--;
}

core.int buildCounterOperationError = 0;
api.OperationError buildOperationError() {
  final o = api.OperationError();
  buildCounterOperationError++;
  if (buildCounterOperationError < 3) {
    o.code = 'foo';
    o.kind = 'foo';
    o.message = 'foo';
  }
  buildCounterOperationError--;
  return o;
}

void checkOperationError(api.OperationError o) {
  buildCounterOperationError++;
  if (buildCounterOperationError < 3) {
    unittest.expect(
      o.code!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterOperationError--;
}

core.List<api.OperationError> buildUnnamed8161() => [
      buildOperationError(),
      buildOperationError(),
    ];

void checkUnnamed8161(core.List<api.OperationError> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperationError(o[0]);
  checkOperationError(o[1]);
}

core.int buildCounterOperationErrors = 0;
api.OperationErrors buildOperationErrors() {
  final o = api.OperationErrors();
  buildCounterOperationErrors++;
  if (buildCounterOperationErrors < 3) {
    o.errors = buildUnnamed8161();
    o.kind = 'foo';
  }
  buildCounterOperationErrors--;
  return o;
}

void checkOperationErrors(api.OperationErrors o) {
  buildCounterOperationErrors++;
  if (buildCounterOperationErrors < 3) {
    checkUnnamed8161(o.errors!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterOperationErrors--;
}

core.List<api.Operation> buildUnnamed8162() => [
      buildOperation(),
      buildOperation(),
    ];

void checkUnnamed8162(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0]);
  checkOperation(o[1]);
}

core.int buildCounterOperationsListResponse = 0;
api.OperationsListResponse buildOperationsListResponse() {
  final o = api.OperationsListResponse();
  buildCounterOperationsListResponse++;
  if (buildCounterOperationsListResponse < 3) {
    o.items = buildUnnamed8162();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterOperationsListResponse--;
  return o;
}

void checkOperationsListResponse(api.OperationsListResponse o) {
  buildCounterOperationsListResponse++;
  if (buildCounterOperationsListResponse < 3) {
    checkUnnamed8162(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterOperationsListResponse--;
}

core.int buildCounterReplicaConfiguration = 0;
api.ReplicaConfiguration buildReplicaConfiguration() {
  final o = api.ReplicaConfiguration();
  buildCounterReplicaConfiguration++;
  if (buildCounterReplicaConfiguration < 3) {
    o.failoverTarget = true;
    o.kind = 'foo';
    o.mysqlReplicaConfiguration = buildMySqlReplicaConfiguration();
  }
  buildCounterReplicaConfiguration--;
  return o;
}

void checkReplicaConfiguration(api.ReplicaConfiguration o) {
  buildCounterReplicaConfiguration++;
  if (buildCounterReplicaConfiguration < 3) {
    unittest.expect(o.failoverTarget!, unittest.isTrue);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkMySqlReplicaConfiguration(o.mysqlReplicaConfiguration!);
  }
  buildCounterReplicaConfiguration--;
}

core.int buildCounterReschedule = 0;
api.Reschedule buildReschedule() {
  final o = api.Reschedule();
  buildCounterReschedule++;
  if (buildCounterReschedule < 3) {
    o.rescheduleType = 'foo';
    o.scheduleTime = 'foo';
  }
  buildCounterReschedule--;
  return o;
}

void checkReschedule(api.Reschedule o) {
  buildCounterReschedule++;
  if (buildCounterReschedule < 3) {
    unittest.expect(
      o.rescheduleType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.scheduleTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterReschedule--;
}

core.int buildCounterRestoreBackupContext = 0;
api.RestoreBackupContext buildRestoreBackupContext() {
  final o = api.RestoreBackupContext();
  buildCounterRestoreBackupContext++;
  if (buildCounterRestoreBackupContext < 3) {
    o.backupRunId = 'foo';
    o.instanceId = 'foo';
    o.kind = 'foo';
    o.project = 'foo';
  }
  buildCounterRestoreBackupContext--;
  return o;
}

void checkRestoreBackupContext(api.RestoreBackupContext o) {
  buildCounterRestoreBackupContext++;
  if (buildCounterRestoreBackupContext < 3) {
    unittest.expect(
      o.backupRunId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.instanceId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.project!,
      unittest.equals('foo'),
    );
  }
  buildCounterRestoreBackupContext--;
}

core.int buildCounterRotateServerCaContext = 0;
api.RotateServerCaContext buildRotateServerCaContext() {
  final o = api.RotateServerCaContext();
  buildCounterRotateServerCaContext++;
  if (buildCounterRotateServerCaContext < 3) {
    o.kind = 'foo';
    o.nextVersion = 'foo';
  }
  buildCounterRotateServerCaContext--;
  return o;
}

void checkRotateServerCaContext(api.RotateServerCaContext o) {
  buildCounterRotateServerCaContext++;
  if (buildCounterRotateServerCaContext < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextVersion!,
      unittest.equals('foo'),
    );
  }
  buildCounterRotateServerCaContext--;
}

core.List<core.String> buildUnnamed8163() => [
      'foo',
      'foo',
    ];

void checkUnnamed8163(core.List<core.String> o) {
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

core.List<api.DatabaseFlags> buildUnnamed8164() => [
      buildDatabaseFlags(),
      buildDatabaseFlags(),
    ];

void checkUnnamed8164(core.List<api.DatabaseFlags> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatabaseFlags(o[0]);
  checkDatabaseFlags(o[1]);
}

core.List<api.DenyMaintenancePeriod> buildUnnamed8165() => [
      buildDenyMaintenancePeriod(),
      buildDenyMaintenancePeriod(),
    ];

void checkUnnamed8165(core.List<api.DenyMaintenancePeriod> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDenyMaintenancePeriod(o[0]);
  checkDenyMaintenancePeriod(o[1]);
}

core.Map<core.String, core.String> buildUnnamed8166() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed8166(core.Map<core.String, core.String> o) {
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

core.int buildCounterSettings = 0;
api.Settings buildSettings() {
  final o = api.Settings();
  buildCounterSettings++;
  if (buildCounterSettings < 3) {
    o.activationPolicy = 'foo';
    o.activeDirectoryConfig = buildSqlActiveDirectoryConfig();
    o.authorizedGaeApplications = buildUnnamed8163();
    o.availabilityType = 'foo';
    o.backupConfiguration = buildBackupConfiguration();
    o.collation = 'foo';
    o.crashSafeReplicationEnabled = true;
    o.dataDiskSizeGb = 'foo';
    o.dataDiskType = 'foo';
    o.databaseFlags = buildUnnamed8164();
    o.databaseReplicationEnabled = true;
    o.denyMaintenancePeriods = buildUnnamed8165();
    o.insightsConfig = buildInsightsConfig();
    o.ipConfiguration = buildIpConfiguration();
    o.kind = 'foo';
    o.locationPreference = buildLocationPreference();
    o.maintenanceWindow = buildMaintenanceWindow();
    o.pricingPlan = 'foo';
    o.replicationType = 'foo';
    o.settingsVersion = 'foo';
    o.storageAutoResize = true;
    o.storageAutoResizeLimit = 'foo';
    o.tier = 'foo';
    o.userLabels = buildUnnamed8166();
  }
  buildCounterSettings--;
  return o;
}

void checkSettings(api.Settings o) {
  buildCounterSettings++;
  if (buildCounterSettings < 3) {
    unittest.expect(
      o.activationPolicy!,
      unittest.equals('foo'),
    );
    checkSqlActiveDirectoryConfig(o.activeDirectoryConfig!);
    checkUnnamed8163(o.authorizedGaeApplications!);
    unittest.expect(
      o.availabilityType!,
      unittest.equals('foo'),
    );
    checkBackupConfiguration(o.backupConfiguration!);
    unittest.expect(
      o.collation!,
      unittest.equals('foo'),
    );
    unittest.expect(o.crashSafeReplicationEnabled!, unittest.isTrue);
    unittest.expect(
      o.dataDiskSizeGb!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dataDiskType!,
      unittest.equals('foo'),
    );
    checkUnnamed8164(o.databaseFlags!);
    unittest.expect(o.databaseReplicationEnabled!, unittest.isTrue);
    checkUnnamed8165(o.denyMaintenancePeriods!);
    checkInsightsConfig(o.insightsConfig!);
    checkIpConfiguration(o.ipConfiguration!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkLocationPreference(o.locationPreference!);
    checkMaintenanceWindow(o.maintenanceWindow!);
    unittest.expect(
      o.pricingPlan!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.replicationType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.settingsVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(o.storageAutoResize!, unittest.isTrue);
    unittest.expect(
      o.storageAutoResizeLimit!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tier!,
      unittest.equals('foo'),
    );
    checkUnnamed8166(o.userLabels!);
  }
  buildCounterSettings--;
}

core.int buildCounterSqlActiveDirectoryConfig = 0;
api.SqlActiveDirectoryConfig buildSqlActiveDirectoryConfig() {
  final o = api.SqlActiveDirectoryConfig();
  buildCounterSqlActiveDirectoryConfig++;
  if (buildCounterSqlActiveDirectoryConfig < 3) {
    o.domain = 'foo';
    o.kind = 'foo';
  }
  buildCounterSqlActiveDirectoryConfig--;
  return o;
}

void checkSqlActiveDirectoryConfig(api.SqlActiveDirectoryConfig o) {
  buildCounterSqlActiveDirectoryConfig++;
  if (buildCounterSqlActiveDirectoryConfig < 3) {
    unittest.expect(
      o.domain!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterSqlActiveDirectoryConfig--;
}

core.int buildCounterSqlExternalSyncSettingError = 0;
api.SqlExternalSyncSettingError buildSqlExternalSyncSettingError() {
  final o = api.SqlExternalSyncSettingError();
  buildCounterSqlExternalSyncSettingError++;
  if (buildCounterSqlExternalSyncSettingError < 3) {
    o.detail = 'foo';
    o.kind = 'foo';
    o.type = 'foo';
  }
  buildCounterSqlExternalSyncSettingError--;
  return o;
}

void checkSqlExternalSyncSettingError(api.SqlExternalSyncSettingError o) {
  buildCounterSqlExternalSyncSettingError++;
  if (buildCounterSqlExternalSyncSettingError < 3) {
    unittest.expect(
      o.detail!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterSqlExternalSyncSettingError--;
}

core.int buildCounterSqlInstancesRescheduleMaintenanceRequestBody = 0;
api.SqlInstancesRescheduleMaintenanceRequestBody
    buildSqlInstancesRescheduleMaintenanceRequestBody() {
  final o = api.SqlInstancesRescheduleMaintenanceRequestBody();
  buildCounterSqlInstancesRescheduleMaintenanceRequestBody++;
  if (buildCounterSqlInstancesRescheduleMaintenanceRequestBody < 3) {
    o.reschedule = buildReschedule();
  }
  buildCounterSqlInstancesRescheduleMaintenanceRequestBody--;
  return o;
}

void checkSqlInstancesRescheduleMaintenanceRequestBody(
    api.SqlInstancesRescheduleMaintenanceRequestBody o) {
  buildCounterSqlInstancesRescheduleMaintenanceRequestBody++;
  if (buildCounterSqlInstancesRescheduleMaintenanceRequestBody < 3) {
    checkReschedule(o.reschedule!);
  }
  buildCounterSqlInstancesRescheduleMaintenanceRequestBody--;
}

core.List<api.SqlExternalSyncSettingError> buildUnnamed8167() => [
      buildSqlExternalSyncSettingError(),
      buildSqlExternalSyncSettingError(),
    ];

void checkUnnamed8167(core.List<api.SqlExternalSyncSettingError> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSqlExternalSyncSettingError(o[0]);
  checkSqlExternalSyncSettingError(o[1]);
}

core.List<api.SqlExternalSyncSettingError> buildUnnamed8168() => [
      buildSqlExternalSyncSettingError(),
      buildSqlExternalSyncSettingError(),
    ];

void checkUnnamed8168(core.List<api.SqlExternalSyncSettingError> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSqlExternalSyncSettingError(o[0]);
  checkSqlExternalSyncSettingError(o[1]);
}

core.int buildCounterSqlInstancesVerifyExternalSyncSettingsResponse = 0;
api.SqlInstancesVerifyExternalSyncSettingsResponse
    buildSqlInstancesVerifyExternalSyncSettingsResponse() {
  final o = api.SqlInstancesVerifyExternalSyncSettingsResponse();
  buildCounterSqlInstancesVerifyExternalSyncSettingsResponse++;
  if (buildCounterSqlInstancesVerifyExternalSyncSettingsResponse < 3) {
    o.errors = buildUnnamed8167();
    o.kind = 'foo';
    o.warnings = buildUnnamed8168();
  }
  buildCounterSqlInstancesVerifyExternalSyncSettingsResponse--;
  return o;
}

void checkSqlInstancesVerifyExternalSyncSettingsResponse(
    api.SqlInstancesVerifyExternalSyncSettingsResponse o) {
  buildCounterSqlInstancesVerifyExternalSyncSettingsResponse++;
  if (buildCounterSqlInstancesVerifyExternalSyncSettingsResponse < 3) {
    checkUnnamed8167(o.errors!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed8168(o.warnings!);
  }
  buildCounterSqlInstancesVerifyExternalSyncSettingsResponse--;
}

core.int buildCounterSqlOutOfDiskReport = 0;
api.SqlOutOfDiskReport buildSqlOutOfDiskReport() {
  final o = api.SqlOutOfDiskReport();
  buildCounterSqlOutOfDiskReport++;
  if (buildCounterSqlOutOfDiskReport < 3) {
    o.sqlMinRecommendedIncreaseSizeGb = 42;
    o.sqlOutOfDiskState = 'foo';
  }
  buildCounterSqlOutOfDiskReport--;
  return o;
}

void checkSqlOutOfDiskReport(api.SqlOutOfDiskReport o) {
  buildCounterSqlOutOfDiskReport++;
  if (buildCounterSqlOutOfDiskReport < 3) {
    unittest.expect(
      o.sqlMinRecommendedIncreaseSizeGb!,
      unittest.equals(42),
    );
    unittest.expect(
      o.sqlOutOfDiskState!,
      unittest.equals('foo'),
    );
  }
  buildCounterSqlOutOfDiskReport--;
}

core.int buildCounterSqlScheduledMaintenance = 0;
api.SqlScheduledMaintenance buildSqlScheduledMaintenance() {
  final o = api.SqlScheduledMaintenance();
  buildCounterSqlScheduledMaintenance++;
  if (buildCounterSqlScheduledMaintenance < 3) {
    o.canDefer = true;
    o.canReschedule = true;
    o.scheduleDeadlineTime = 'foo';
    o.startTime = 'foo';
  }
  buildCounterSqlScheduledMaintenance--;
  return o;
}

void checkSqlScheduledMaintenance(api.SqlScheduledMaintenance o) {
  buildCounterSqlScheduledMaintenance++;
  if (buildCounterSqlScheduledMaintenance < 3) {
    unittest.expect(o.canDefer!, unittest.isTrue);
    unittest.expect(o.canReschedule!, unittest.isTrue);
    unittest.expect(
      o.scheduleDeadlineTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterSqlScheduledMaintenance--;
}

core.int buildCounterSqlServerDatabaseDetails = 0;
api.SqlServerDatabaseDetails buildSqlServerDatabaseDetails() {
  final o = api.SqlServerDatabaseDetails();
  buildCounterSqlServerDatabaseDetails++;
  if (buildCounterSqlServerDatabaseDetails < 3) {
    o.compatibilityLevel = 42;
    o.recoveryModel = 'foo';
  }
  buildCounterSqlServerDatabaseDetails--;
  return o;
}

void checkSqlServerDatabaseDetails(api.SqlServerDatabaseDetails o) {
  buildCounterSqlServerDatabaseDetails++;
  if (buildCounterSqlServerDatabaseDetails < 3) {
    unittest.expect(
      o.compatibilityLevel!,
      unittest.equals(42),
    );
    unittest.expect(
      o.recoveryModel!,
      unittest.equals('foo'),
    );
  }
  buildCounterSqlServerDatabaseDetails--;
}

core.List<core.String> buildUnnamed8169() => [
      'foo',
      'foo',
    ];

void checkUnnamed8169(core.List<core.String> o) {
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

core.int buildCounterSqlServerUserDetails = 0;
api.SqlServerUserDetails buildSqlServerUserDetails() {
  final o = api.SqlServerUserDetails();
  buildCounterSqlServerUserDetails++;
  if (buildCounterSqlServerUserDetails < 3) {
    o.disabled = true;
    o.serverRoles = buildUnnamed8169();
  }
  buildCounterSqlServerUserDetails--;
  return o;
}

void checkSqlServerUserDetails(api.SqlServerUserDetails o) {
  buildCounterSqlServerUserDetails++;
  if (buildCounterSqlServerUserDetails < 3) {
    unittest.expect(o.disabled!, unittest.isTrue);
    checkUnnamed8169(o.serverRoles!);
  }
  buildCounterSqlServerUserDetails--;
}

core.int buildCounterSslCert = 0;
api.SslCert buildSslCert() {
  final o = api.SslCert();
  buildCounterSslCert++;
  if (buildCounterSslCert < 3) {
    o.cert = 'foo';
    o.certSerialNumber = 'foo';
    o.commonName = 'foo';
    o.createTime = 'foo';
    o.expirationTime = 'foo';
    o.instance = 'foo';
    o.kind = 'foo';
    o.selfLink = 'foo';
    o.sha1Fingerprint = 'foo';
  }
  buildCounterSslCert--;
  return o;
}

void checkSslCert(api.SslCert o) {
  buildCounterSslCert++;
  if (buildCounterSslCert < 3) {
    unittest.expect(
      o.cert!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.certSerialNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.commonName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expirationTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.instance!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.selfLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sha1Fingerprint!,
      unittest.equals('foo'),
    );
  }
  buildCounterSslCert--;
}

core.int buildCounterSslCertDetail = 0;
api.SslCertDetail buildSslCertDetail() {
  final o = api.SslCertDetail();
  buildCounterSslCertDetail++;
  if (buildCounterSslCertDetail < 3) {
    o.certInfo = buildSslCert();
    o.certPrivateKey = 'foo';
  }
  buildCounterSslCertDetail--;
  return o;
}

void checkSslCertDetail(api.SslCertDetail o) {
  buildCounterSslCertDetail++;
  if (buildCounterSslCertDetail < 3) {
    checkSslCert(o.certInfo!);
    unittest.expect(
      o.certPrivateKey!,
      unittest.equals('foo'),
    );
  }
  buildCounterSslCertDetail--;
}

core.int buildCounterSslCertsCreateEphemeralRequest = 0;
api.SslCertsCreateEphemeralRequest buildSslCertsCreateEphemeralRequest() {
  final o = api.SslCertsCreateEphemeralRequest();
  buildCounterSslCertsCreateEphemeralRequest++;
  if (buildCounterSslCertsCreateEphemeralRequest < 3) {
    o.accessToken = 'foo';
    o.publicKey = 'foo';
  }
  buildCounterSslCertsCreateEphemeralRequest--;
  return o;
}

void checkSslCertsCreateEphemeralRequest(api.SslCertsCreateEphemeralRequest o) {
  buildCounterSslCertsCreateEphemeralRequest++;
  if (buildCounterSslCertsCreateEphemeralRequest < 3) {
    unittest.expect(
      o.accessToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.publicKey!,
      unittest.equals('foo'),
    );
  }
  buildCounterSslCertsCreateEphemeralRequest--;
}

core.int buildCounterSslCertsInsertRequest = 0;
api.SslCertsInsertRequest buildSslCertsInsertRequest() {
  final o = api.SslCertsInsertRequest();
  buildCounterSslCertsInsertRequest++;
  if (buildCounterSslCertsInsertRequest < 3) {
    o.commonName = 'foo';
  }
  buildCounterSslCertsInsertRequest--;
  return o;
}

void checkSslCertsInsertRequest(api.SslCertsInsertRequest o) {
  buildCounterSslCertsInsertRequest++;
  if (buildCounterSslCertsInsertRequest < 3) {
    unittest.expect(
      o.commonName!,
      unittest.equals('foo'),
    );
  }
  buildCounterSslCertsInsertRequest--;
}

core.int buildCounterSslCertsInsertResponse = 0;
api.SslCertsInsertResponse buildSslCertsInsertResponse() {
  final o = api.SslCertsInsertResponse();
  buildCounterSslCertsInsertResponse++;
  if (buildCounterSslCertsInsertResponse < 3) {
    o.clientCert = buildSslCertDetail();
    o.kind = 'foo';
    o.operation = buildOperation();
    o.serverCaCert = buildSslCert();
  }
  buildCounterSslCertsInsertResponse--;
  return o;
}

void checkSslCertsInsertResponse(api.SslCertsInsertResponse o) {
  buildCounterSslCertsInsertResponse++;
  if (buildCounterSslCertsInsertResponse < 3) {
    checkSslCertDetail(o.clientCert!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkOperation(o.operation!);
    checkSslCert(o.serverCaCert!);
  }
  buildCounterSslCertsInsertResponse--;
}

core.List<api.SslCert> buildUnnamed8170() => [
      buildSslCert(),
      buildSslCert(),
    ];

void checkUnnamed8170(core.List<api.SslCert> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSslCert(o[0]);
  checkSslCert(o[1]);
}

core.int buildCounterSslCertsListResponse = 0;
api.SslCertsListResponse buildSslCertsListResponse() {
  final o = api.SslCertsListResponse();
  buildCounterSslCertsListResponse++;
  if (buildCounterSslCertsListResponse < 3) {
    o.items = buildUnnamed8170();
    o.kind = 'foo';
  }
  buildCounterSslCertsListResponse--;
  return o;
}

void checkSslCertsListResponse(api.SslCertsListResponse o) {
  buildCounterSslCertsListResponse++;
  if (buildCounterSslCertsListResponse < 3) {
    checkUnnamed8170(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterSslCertsListResponse--;
}

core.List<core.String> buildUnnamed8171() => [
      'foo',
      'foo',
    ];

void checkUnnamed8171(core.List<core.String> o) {
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

core.int buildCounterTier = 0;
api.Tier buildTier() {
  final o = api.Tier();
  buildCounterTier++;
  if (buildCounterTier < 3) {
    o.DiskQuota = 'foo';
    o.RAM = 'foo';
    o.kind = 'foo';
    o.region = buildUnnamed8171();
    o.tier = 'foo';
  }
  buildCounterTier--;
  return o;
}

void checkTier(api.Tier o) {
  buildCounterTier++;
  if (buildCounterTier < 3) {
    unittest.expect(
      o.DiskQuota!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.RAM!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed8171(o.region!);
    unittest.expect(
      o.tier!,
      unittest.equals('foo'),
    );
  }
  buildCounterTier--;
}

core.List<api.Tier> buildUnnamed8172() => [
      buildTier(),
      buildTier(),
    ];

void checkUnnamed8172(core.List<api.Tier> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTier(o[0]);
  checkTier(o[1]);
}

core.int buildCounterTiersListResponse = 0;
api.TiersListResponse buildTiersListResponse() {
  final o = api.TiersListResponse();
  buildCounterTiersListResponse++;
  if (buildCounterTiersListResponse < 3) {
    o.items = buildUnnamed8172();
    o.kind = 'foo';
  }
  buildCounterTiersListResponse--;
  return o;
}

void checkTiersListResponse(api.TiersListResponse o) {
  buildCounterTiersListResponse++;
  if (buildCounterTiersListResponse < 3) {
    checkUnnamed8172(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterTiersListResponse--;
}

core.int buildCounterTruncateLogContext = 0;
api.TruncateLogContext buildTruncateLogContext() {
  final o = api.TruncateLogContext();
  buildCounterTruncateLogContext++;
  if (buildCounterTruncateLogContext < 3) {
    o.kind = 'foo';
    o.logType = 'foo';
  }
  buildCounterTruncateLogContext--;
  return o;
}

void checkTruncateLogContext(api.TruncateLogContext o) {
  buildCounterTruncateLogContext++;
  if (buildCounterTruncateLogContext < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.logType!,
      unittest.equals('foo'),
    );
  }
  buildCounterTruncateLogContext--;
}

core.int buildCounterUser = 0;
api.User buildUser() {
  final o = api.User();
  buildCounterUser++;
  if (buildCounterUser < 3) {
    o.etag = 'foo';
    o.host = 'foo';
    o.instance = 'foo';
    o.kind = 'foo';
    o.name = 'foo';
    o.password = 'foo';
    o.project = 'foo';
    o.sqlserverUserDetails = buildSqlServerUserDetails();
    o.type = 'foo';
  }
  buildCounterUser--;
  return o;
}

void checkUser(api.User o) {
  buildCounterUser++;
  if (buildCounterUser < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.host!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.instance!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.password!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.project!,
      unittest.equals('foo'),
    );
    checkSqlServerUserDetails(o.sqlserverUserDetails!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterUser--;
}

core.List<api.User> buildUnnamed8173() => [
      buildUser(),
      buildUser(),
    ];

void checkUnnamed8173(core.List<api.User> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUser(o[0]);
  checkUser(o[1]);
}

core.int buildCounterUsersListResponse = 0;
api.UsersListResponse buildUsersListResponse() {
  final o = api.UsersListResponse();
  buildCounterUsersListResponse++;
  if (buildCounterUsersListResponse < 3) {
    o.items = buildUnnamed8173();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterUsersListResponse--;
  return o;
}

void checkUsersListResponse(api.UsersListResponse o) {
  buildCounterUsersListResponse++;
  if (buildCounterUsersListResponse < 3) {
    checkUnnamed8173(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterUsersListResponse--;
}

void main() {
  unittest.group('obj-schema-AclEntry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAclEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.AclEntry.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAclEntry(od);
    });
  });

  unittest.group('obj-schema-ApiWarning', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApiWarning();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ApiWarning.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkApiWarning(od);
    });
  });

  unittest.group('obj-schema-BackupConfiguration', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBackupConfiguration();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BackupConfiguration.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBackupConfiguration(od);
    });
  });

  unittest.group('obj-schema-BackupContext', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBackupContext();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BackupContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBackupContext(od);
    });
  });

  unittest.group('obj-schema-BackupRetentionSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBackupRetentionSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BackupRetentionSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBackupRetentionSettings(od);
    });
  });

  unittest.group('obj-schema-BackupRun', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBackupRun();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.BackupRun.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkBackupRun(od);
    });
  });

  unittest.group('obj-schema-BackupRunsListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBackupRunsListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BackupRunsListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBackupRunsListResponse(od);
    });
  });

  unittest.group('obj-schema-BinLogCoordinates', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBinLogCoordinates();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BinLogCoordinates.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBinLogCoordinates(od);
    });
  });

  unittest.group('obj-schema-CloneContext', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCloneContext();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CloneContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCloneContext(od);
    });
  });

  unittest.group('obj-schema-ConnectSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConnectSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConnectSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConnectSettings(od);
    });
  });

  unittest.group('obj-schema-Database', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDatabase();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Database.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDatabase(od);
    });
  });

  unittest.group('obj-schema-DatabaseFlags', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDatabaseFlags();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DatabaseFlags.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDatabaseFlags(od);
    });
  });

  unittest.group('obj-schema-DatabaseInstanceFailoverReplica', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDatabaseInstanceFailoverReplica();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DatabaseInstanceFailoverReplica.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDatabaseInstanceFailoverReplica(od);
    });
  });

  unittest.group('obj-schema-DatabaseInstance', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDatabaseInstance();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DatabaseInstance.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDatabaseInstance(od);
    });
  });

  unittest.group('obj-schema-DatabasesListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDatabasesListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DatabasesListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDatabasesListResponse(od);
    });
  });

  unittest.group('obj-schema-DemoteMasterConfiguration', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDemoteMasterConfiguration();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DemoteMasterConfiguration.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDemoteMasterConfiguration(od);
    });
  });

  unittest.group('obj-schema-DemoteMasterContext', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDemoteMasterContext();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DemoteMasterContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDemoteMasterContext(od);
    });
  });

  unittest.group('obj-schema-DemoteMasterMySqlReplicaConfiguration', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDemoteMasterMySqlReplicaConfiguration();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DemoteMasterMySqlReplicaConfiguration.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDemoteMasterMySqlReplicaConfiguration(od);
    });
  });

  unittest.group('obj-schema-DenyMaintenancePeriod', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDenyMaintenancePeriod();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DenyMaintenancePeriod.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDenyMaintenancePeriod(od);
    });
  });

  unittest.group('obj-schema-DiskEncryptionConfiguration', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDiskEncryptionConfiguration();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DiskEncryptionConfiguration.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDiskEncryptionConfiguration(od);
    });
  });

  unittest.group('obj-schema-DiskEncryptionStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDiskEncryptionStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DiskEncryptionStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDiskEncryptionStatus(od);
    });
  });

  unittest.group('obj-schema-ExportContextCsvExportOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExportContextCsvExportOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExportContextCsvExportOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExportContextCsvExportOptions(od);
    });
  });

  unittest.group('obj-schema-ExportContextSqlExportOptionsMysqlExportOptions',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildExportContextSqlExportOptionsMysqlExportOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExportContextSqlExportOptionsMysqlExportOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExportContextSqlExportOptionsMysqlExportOptions(od);
    });
  });

  unittest.group('obj-schema-ExportContextSqlExportOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExportContextSqlExportOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExportContextSqlExportOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExportContextSqlExportOptions(od);
    });
  });

  unittest.group('obj-schema-ExportContext', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExportContext();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExportContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExportContext(od);
    });
  });

  unittest.group('obj-schema-FailoverContext', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFailoverContext();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FailoverContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFailoverContext(od);
    });
  });

  unittest.group('obj-schema-Flag', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFlag();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Flag.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkFlag(od);
    });
  });

  unittest.group('obj-schema-FlagsListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFlagsListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FlagsListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFlagsListResponse(od);
    });
  });

  unittest.group('obj-schema-GenerateEphemeralCertRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGenerateEphemeralCertRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GenerateEphemeralCertRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGenerateEphemeralCertRequest(od);
    });
  });

  unittest.group('obj-schema-GenerateEphemeralCertResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGenerateEphemeralCertResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GenerateEphemeralCertResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGenerateEphemeralCertResponse(od);
    });
  });

  unittest.group('obj-schema-ImportContextBakImportOptionsEncryptionOptions',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildImportContextBakImportOptionsEncryptionOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImportContextBakImportOptionsEncryptionOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkImportContextBakImportOptionsEncryptionOptions(od);
    });
  });

  unittest.group('obj-schema-ImportContextBakImportOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImportContextBakImportOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImportContextBakImportOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkImportContextBakImportOptions(od);
    });
  });

  unittest.group('obj-schema-ImportContextCsvImportOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImportContextCsvImportOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImportContextCsvImportOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkImportContextCsvImportOptions(od);
    });
  });

  unittest.group('obj-schema-ImportContext', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImportContext();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImportContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkImportContext(od);
    });
  });

  unittest.group('obj-schema-InsightsConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInsightsConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InsightsConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInsightsConfig(od);
    });
  });

  unittest.group('obj-schema-InstancesCloneRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInstancesCloneRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InstancesCloneRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInstancesCloneRequest(od);
    });
  });

  unittest.group('obj-schema-InstancesDemoteMasterRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInstancesDemoteMasterRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InstancesDemoteMasterRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInstancesDemoteMasterRequest(od);
    });
  });

  unittest.group('obj-schema-InstancesExportRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInstancesExportRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InstancesExportRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInstancesExportRequest(od);
    });
  });

  unittest.group('obj-schema-InstancesFailoverRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInstancesFailoverRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InstancesFailoverRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInstancesFailoverRequest(od);
    });
  });

  unittest.group('obj-schema-InstancesImportRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInstancesImportRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InstancesImportRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInstancesImportRequest(od);
    });
  });

  unittest.group('obj-schema-InstancesListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInstancesListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InstancesListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInstancesListResponse(od);
    });
  });

  unittest.group('obj-schema-InstancesListServerCasResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInstancesListServerCasResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InstancesListServerCasResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInstancesListServerCasResponse(od);
    });
  });

  unittest.group('obj-schema-InstancesRestoreBackupRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInstancesRestoreBackupRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InstancesRestoreBackupRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInstancesRestoreBackupRequest(od);
    });
  });

  unittest.group('obj-schema-InstancesRotateServerCaRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInstancesRotateServerCaRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InstancesRotateServerCaRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInstancesRotateServerCaRequest(od);
    });
  });

  unittest.group('obj-schema-InstancesTruncateLogRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInstancesTruncateLogRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InstancesTruncateLogRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInstancesTruncateLogRequest(od);
    });
  });

  unittest.group('obj-schema-IpConfiguration', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIpConfiguration();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IpConfiguration.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIpConfiguration(od);
    });
  });

  unittest.group('obj-schema-IpMapping', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIpMapping();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.IpMapping.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkIpMapping(od);
    });
  });

  unittest.group('obj-schema-LocationPreference', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLocationPreference();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LocationPreference.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLocationPreference(od);
    });
  });

  unittest.group('obj-schema-MaintenanceWindow', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMaintenanceWindow();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MaintenanceWindow.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMaintenanceWindow(od);
    });
  });

  unittest.group('obj-schema-MySqlReplicaConfiguration', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMySqlReplicaConfiguration();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MySqlReplicaConfiguration.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMySqlReplicaConfiguration(od);
    });
  });

  unittest.group('obj-schema-OnPremisesConfiguration', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOnPremisesConfiguration();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OnPremisesConfiguration.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOnPremisesConfiguration(od);
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

  unittest.group('obj-schema-OperationError', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOperationError();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OperationError.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOperationError(od);
    });
  });

  unittest.group('obj-schema-OperationErrors', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOperationErrors();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OperationErrors.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOperationErrors(od);
    });
  });

  unittest.group('obj-schema-OperationsListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOperationsListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OperationsListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOperationsListResponse(od);
    });
  });

  unittest.group('obj-schema-ReplicaConfiguration', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReplicaConfiguration();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReplicaConfiguration.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReplicaConfiguration(od);
    });
  });

  unittest.group('obj-schema-Reschedule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReschedule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Reschedule.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkReschedule(od);
    });
  });

  unittest.group('obj-schema-RestoreBackupContext', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRestoreBackupContext();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RestoreBackupContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRestoreBackupContext(od);
    });
  });

  unittest.group('obj-schema-RotateServerCaContext', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRotateServerCaContext();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RotateServerCaContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRotateServerCaContext(od);
    });
  });

  unittest.group('obj-schema-Settings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Settings.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSettings(od);
    });
  });

  unittest.group('obj-schema-SqlActiveDirectoryConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSqlActiveDirectoryConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SqlActiveDirectoryConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSqlActiveDirectoryConfig(od);
    });
  });

  unittest.group('obj-schema-SqlExternalSyncSettingError', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSqlExternalSyncSettingError();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SqlExternalSyncSettingError.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSqlExternalSyncSettingError(od);
    });
  });

  unittest.group('obj-schema-SqlInstancesRescheduleMaintenanceRequestBody', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSqlInstancesRescheduleMaintenanceRequestBody();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SqlInstancesRescheduleMaintenanceRequestBody.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSqlInstancesRescheduleMaintenanceRequestBody(od);
    });
  });

  unittest.group('obj-schema-SqlInstancesVerifyExternalSyncSettingsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildSqlInstancesVerifyExternalSyncSettingsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SqlInstancesVerifyExternalSyncSettingsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSqlInstancesVerifyExternalSyncSettingsResponse(od);
    });
  });

  unittest.group('obj-schema-SqlOutOfDiskReport', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSqlOutOfDiskReport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SqlOutOfDiskReport.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSqlOutOfDiskReport(od);
    });
  });

  unittest.group('obj-schema-SqlScheduledMaintenance', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSqlScheduledMaintenance();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SqlScheduledMaintenance.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSqlScheduledMaintenance(od);
    });
  });

  unittest.group('obj-schema-SqlServerDatabaseDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSqlServerDatabaseDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SqlServerDatabaseDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSqlServerDatabaseDetails(od);
    });
  });

  unittest.group('obj-schema-SqlServerUserDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSqlServerUserDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SqlServerUserDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSqlServerUserDetails(od);
    });
  });

  unittest.group('obj-schema-SslCert', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSslCert();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.SslCert.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSslCert(od);
    });
  });

  unittest.group('obj-schema-SslCertDetail', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSslCertDetail();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SslCertDetail.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSslCertDetail(od);
    });
  });

  unittest.group('obj-schema-SslCertsCreateEphemeralRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSslCertsCreateEphemeralRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SslCertsCreateEphemeralRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSslCertsCreateEphemeralRequest(od);
    });
  });

  unittest.group('obj-schema-SslCertsInsertRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSslCertsInsertRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SslCertsInsertRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSslCertsInsertRequest(od);
    });
  });

  unittest.group('obj-schema-SslCertsInsertResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSslCertsInsertResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SslCertsInsertResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSslCertsInsertResponse(od);
    });
  });

  unittest.group('obj-schema-SslCertsListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSslCertsListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SslCertsListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSslCertsListResponse(od);
    });
  });

  unittest.group('obj-schema-Tier', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTier();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Tier.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTier(od);
    });
  });

  unittest.group('obj-schema-TiersListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTiersListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TiersListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTiersListResponse(od);
    });
  });

  unittest.group('obj-schema-TruncateLogContext', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTruncateLogContext();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TruncateLogContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTruncateLogContext(od);
    });
  });

  unittest.group('obj-schema-User', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUser();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.User.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkUser(od);
    });
  });

  unittest.group('obj-schema-UsersListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUsersListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UsersListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUsersListResponse(od);
    });
  });

  unittest.group('resource-BackupRunsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.SQLAdminApi(mock).backupRuns;
      final arg_project = 'foo';
      final arg_instance = 'foo';
      final arg_id = 'foo';
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
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('sql/v1beta4/projects/'),
        );
        pathOffset += 21;
        index = path.indexOf('/instances/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/instances/'),
        );
        pathOffset += 11;
        index = path.indexOf('/backupRuns/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_instance'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/backupRuns/'),
        );
        pathOffset += 12;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_id'),
        );

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
      final response = await res.delete(arg_project, arg_instance, arg_id,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.SQLAdminApi(mock).backupRuns;
      final arg_project = 'foo';
      final arg_instance = 'foo';
      final arg_id = 'foo';
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
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('sql/v1beta4/projects/'),
        );
        pathOffset += 21;
        index = path.indexOf('/instances/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/instances/'),
        );
        pathOffset += 11;
        index = path.indexOf('/backupRuns/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_instance'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/backupRuns/'),
        );
        pathOffset += 12;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_id'),
        );

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
        final resp = convert.json.encode(buildBackupRun());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_project, arg_instance, arg_id,
          $fields: arg_$fields);
      checkBackupRun(response as api.BackupRun);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.SQLAdminApi(mock).backupRuns;
      final arg_request = buildBackupRun();
      final arg_project = 'foo';
      final arg_instance = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.BackupRun.fromJson(json as core.Map<core.String, core.dynamic>);
        checkBackupRun(obj);

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
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('sql/v1beta4/projects/'),
        );
        pathOffset += 21;
        index = path.indexOf('/instances/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/instances/'),
        );
        pathOffset += 11;
        index = path.indexOf('/backupRuns', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_instance'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/backupRuns'),
        );
        pathOffset += 11;

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
      final response = await res.insert(arg_request, arg_project, arg_instance,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.SQLAdminApi(mock).backupRuns;
      final arg_project = 'foo';
      final arg_instance = 'foo';
      final arg_maxResults = 42;
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
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('sql/v1beta4/projects/'),
        );
        pathOffset += 21;
        index = path.indexOf('/instances/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/instances/'),
        );
        pathOffset += 11;
        index = path.indexOf('/backupRuns', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_instance'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/backupRuns'),
        );
        pathOffset += 11;

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
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
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
        final resp = convert.json.encode(buildBackupRunsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_project, arg_instance,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkBackupRunsListResponse(response as api.BackupRunsListResponse);
    });
  });

  unittest.group('resource-ConnectResource', () {
    unittest.test('method--generateEphemeralCert', () async {
      final mock = HttpServerMock();
      final res = api.SQLAdminApi(mock).connect;
      final arg_request = buildGenerateEphemeralCertRequest();
      final arg_project = 'foo';
      final arg_instance = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GenerateEphemeralCertRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGenerateEphemeralCertRequest(obj);

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
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('sql/v1beta4/projects/'),
        );
        pathOffset += 21;
        index = path.indexOf('/instances/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/instances/'),
        );
        pathOffset += 11;
        index = path.indexOf(':generateEphemeralCert', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_instance'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 22),
          unittest.equals(':generateEphemeralCert'),
        );
        pathOffset += 22;

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
        final resp = convert.json.encode(buildGenerateEphemeralCertResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.generateEphemeralCert(
          arg_request, arg_project, arg_instance,
          $fields: arg_$fields);
      checkGenerateEphemeralCertResponse(
          response as api.GenerateEphemeralCertResponse);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.SQLAdminApi(mock).connect;
      final arg_project = 'foo';
      final arg_instance = 'foo';
      final arg_readTime = 'foo';
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
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('sql/v1beta4/projects/'),
        );
        pathOffset += 21;
        index = path.indexOf('/instances/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/instances/'),
        );
        pathOffset += 11;
        index = path.indexOf('/connectSettings', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_instance'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('/connectSettings'),
        );
        pathOffset += 16;

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
          queryMap['readTime']!.first,
          unittest.equals(arg_readTime),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildConnectSettings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_project, arg_instance,
          readTime: arg_readTime, $fields: arg_$fields);
      checkConnectSettings(response as api.ConnectSettings);
    });
  });

  unittest.group('resource-DatabasesResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.SQLAdminApi(mock).databases;
      final arg_project = 'foo';
      final arg_instance = 'foo';
      final arg_database = 'foo';
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
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('sql/v1beta4/projects/'),
        );
        pathOffset += 21;
        index = path.indexOf('/instances/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/instances/'),
        );
        pathOffset += 11;
        index = path.indexOf('/databases/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_instance'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/databases/'),
        );
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_database'),
        );

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
      final response = await res.delete(arg_project, arg_instance, arg_database,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.SQLAdminApi(mock).databases;
      final arg_project = 'foo';
      final arg_instance = 'foo';
      final arg_database = 'foo';
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
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('sql/v1beta4/projects/'),
        );
        pathOffset += 21;
        index = path.indexOf('/instances/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/instances/'),
        );
        pathOffset += 11;
        index = path.indexOf('/databases/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_instance'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/databases/'),
        );
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_database'),
        );

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
        final resp = convert.json.encode(buildDatabase());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_project, arg_instance, arg_database,
          $fields: arg_$fields);
      checkDatabase(response as api.Database);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.SQLAdminApi(mock).databases;
      final arg_request = buildDatabase();
      final arg_project = 'foo';
      final arg_instance = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Database.fromJson(json as core.Map<core.String, core.dynamic>);
        checkDatabase(obj);

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
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('sql/v1beta4/projects/'),
        );
        pathOffset += 21;
        index = path.indexOf('/instances/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/instances/'),
        );
        pathOffset += 11;
        index = path.indexOf('/databases', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_instance'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/databases'),
        );
        pathOffset += 10;

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
      final response = await res.insert(arg_request, arg_project, arg_instance,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.SQLAdminApi(mock).databases;
      final arg_project = 'foo';
      final arg_instance = 'foo';
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
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('sql/v1beta4/projects/'),
        );
        pathOffset += 21;
        index = path.indexOf('/instances/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/instances/'),
        );
        pathOffset += 11;
        index = path.indexOf('/databases', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_instance'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/databases'),
        );
        pathOffset += 10;

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
        final resp = convert.json.encode(buildDatabasesListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.list(arg_project, arg_instance, $fields: arg_$fields);
      checkDatabasesListResponse(response as api.DatabasesListResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.SQLAdminApi(mock).databases;
      final arg_request = buildDatabase();
      final arg_project = 'foo';
      final arg_instance = 'foo';
      final arg_database = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Database.fromJson(json as core.Map<core.String, core.dynamic>);
        checkDatabase(obj);

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
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('sql/v1beta4/projects/'),
        );
        pathOffset += 21;
        index = path.indexOf('/instances/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/instances/'),
        );
        pathOffset += 11;
        index = path.indexOf('/databases/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_instance'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/databases/'),
        );
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_database'),
        );

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
      final response = await res.patch(
          arg_request, arg_project, arg_instance, arg_database,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.SQLAdminApi(mock).databases;
      final arg_request = buildDatabase();
      final arg_project = 'foo';
      final arg_instance = 'foo';
      final arg_database = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Database.fromJson(json as core.Map<core.String, core.dynamic>);
        checkDatabase(obj);

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
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('sql/v1beta4/projects/'),
        );
        pathOffset += 21;
        index = path.indexOf('/instances/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/instances/'),
        );
        pathOffset += 11;
        index = path.indexOf('/databases/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_instance'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/databases/'),
        );
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_database'),
        );

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
      final response = await res.update(
          arg_request, arg_project, arg_instance, arg_database,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-FlagsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.SQLAdminApi(mock).flags;
      final arg_databaseVersion = 'foo';
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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('sql/v1beta4/flags'),
        );
        pathOffset += 17;

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
          queryMap['databaseVersion']!.first,
          unittest.equals(arg_databaseVersion),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildFlagsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          databaseVersion: arg_databaseVersion, $fields: arg_$fields);
      checkFlagsListResponse(response as api.FlagsListResponse);
    });
  });

  unittest.group('resource-InstancesResource', () {
    unittest.test('method--addServerCa', () async {
      final mock = HttpServerMock();
      final res = api.SQLAdminApi(mock).instances;
      final arg_project = 'foo';
      final arg_instance = 'foo';
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
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('sql/v1beta4/projects/'),
        );
        pathOffset += 21;
        index = path.indexOf('/instances/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/instances/'),
        );
        pathOffset += 11;
        index = path.indexOf('/addServerCa', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_instance'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/addServerCa'),
        );
        pathOffset += 12;

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
      final response = await res.addServerCa(arg_project, arg_instance,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--clone', () async {
      final mock = HttpServerMock();
      final res = api.SQLAdminApi(mock).instances;
      final arg_request = buildInstancesCloneRequest();
      final arg_project = 'foo';
      final arg_instance = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.InstancesCloneRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkInstancesCloneRequest(obj);

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
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('sql/v1beta4/projects/'),
        );
        pathOffset += 21;
        index = path.indexOf('/instances/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/instances/'),
        );
        pathOffset += 11;
        index = path.indexOf('/clone', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_instance'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/clone'),
        );
        pathOffset += 6;

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
      final response = await res.clone(arg_request, arg_project, arg_instance,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.SQLAdminApi(mock).instances;
      final arg_project = 'foo';
      final arg_instance = 'foo';
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
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('sql/v1beta4/projects/'),
        );
        pathOffset += 21;
        index = path.indexOf('/instances/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/instances/'),
        );
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_instance'),
        );

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
          await res.delete(arg_project, arg_instance, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--demoteMaster', () async {
      final mock = HttpServerMock();
      final res = api.SQLAdminApi(mock).instances;
      final arg_request = buildInstancesDemoteMasterRequest();
      final arg_project = 'foo';
      final arg_instance = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.InstancesDemoteMasterRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkInstancesDemoteMasterRequest(obj);

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
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('sql/v1beta4/projects/'),
        );
        pathOffset += 21;
        index = path.indexOf('/instances/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/instances/'),
        );
        pathOffset += 11;
        index = path.indexOf('/demoteMaster', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_instance'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('/demoteMaster'),
        );
        pathOffset += 13;

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
      final response = await res.demoteMaster(
          arg_request, arg_project, arg_instance,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--export', () async {
      final mock = HttpServerMock();
      final res = api.SQLAdminApi(mock).instances;
      final arg_request = buildInstancesExportRequest();
      final arg_project = 'foo';
      final arg_instance = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.InstancesExportRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkInstancesExportRequest(obj);

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
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('sql/v1beta4/projects/'),
        );
        pathOffset += 21;
        index = path.indexOf('/instances/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/instances/'),
        );
        pathOffset += 11;
        index = path.indexOf('/export', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_instance'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/export'),
        );
        pathOffset += 7;

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
      final response = await res.export(arg_request, arg_project, arg_instance,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--failover', () async {
      final mock = HttpServerMock();
      final res = api.SQLAdminApi(mock).instances;
      final arg_request = buildInstancesFailoverRequest();
      final arg_project = 'foo';
      final arg_instance = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.InstancesFailoverRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkInstancesFailoverRequest(obj);

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
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('sql/v1beta4/projects/'),
        );
        pathOffset += 21;
        index = path.indexOf('/instances/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/instances/'),
        );
        pathOffset += 11;
        index = path.indexOf('/failover', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_instance'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/failover'),
        );
        pathOffset += 9;

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
      final response = await res.failover(
          arg_request, arg_project, arg_instance,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.SQLAdminApi(mock).instances;
      final arg_project = 'foo';
      final arg_instance = 'foo';
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
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('sql/v1beta4/projects/'),
        );
        pathOffset += 21;
        index = path.indexOf('/instances/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/instances/'),
        );
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_instance'),
        );

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
        final resp = convert.json.encode(buildDatabaseInstance());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_project, arg_instance, $fields: arg_$fields);
      checkDatabaseInstance(response as api.DatabaseInstance);
    });

    unittest.test('method--import', () async {
      final mock = HttpServerMock();
      final res = api.SQLAdminApi(mock).instances;
      final arg_request = buildInstancesImportRequest();
      final arg_project = 'foo';
      final arg_instance = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.InstancesImportRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkInstancesImportRequest(obj);

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
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('sql/v1beta4/projects/'),
        );
        pathOffset += 21;
        index = path.indexOf('/instances/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/instances/'),
        );
        pathOffset += 11;
        index = path.indexOf('/import', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_instance'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/import'),
        );
        pathOffset += 7;

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
      final response = await res.import(arg_request, arg_project, arg_instance,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.SQLAdminApi(mock).instances;
      final arg_request = buildDatabaseInstance();
      final arg_project = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.DatabaseInstance.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDatabaseInstance(obj);

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
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('sql/v1beta4/projects/'),
        );
        pathOffset += 21;
        index = path.indexOf('/instances', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/instances'),
        );
        pathOffset += 10;

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
          await res.insert(arg_request, arg_project, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.SQLAdminApi(mock).instances;
      final arg_project = 'foo';
      final arg_filter = 'foo';
      final arg_maxResults = 42;
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
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('sql/v1beta4/projects/'),
        );
        pathOffset += 21;
        index = path.indexOf('/instances', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/instances'),
        );
        pathOffset += 10;

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
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
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
        final resp = convert.json.encode(buildInstancesListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_project,
          filter: arg_filter,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkInstancesListResponse(response as api.InstancesListResponse);
    });

    unittest.test('method--listServerCas', () async {
      final mock = HttpServerMock();
      final res = api.SQLAdminApi(mock).instances;
      final arg_project = 'foo';
      final arg_instance = 'foo';
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
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('sql/v1beta4/projects/'),
        );
        pathOffset += 21;
        index = path.indexOf('/instances/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/instances/'),
        );
        pathOffset += 11;
        index = path.indexOf('/listServerCas', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_instance'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('/listServerCas'),
        );
        pathOffset += 14;

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
        final resp = convert.json.encode(buildInstancesListServerCasResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.listServerCas(arg_project, arg_instance,
          $fields: arg_$fields);
      checkInstancesListServerCasResponse(
          response as api.InstancesListServerCasResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.SQLAdminApi(mock).instances;
      final arg_request = buildDatabaseInstance();
      final arg_project = 'foo';
      final arg_instance = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.DatabaseInstance.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDatabaseInstance(obj);

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
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('sql/v1beta4/projects/'),
        );
        pathOffset += 21;
        index = path.indexOf('/instances/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/instances/'),
        );
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_instance'),
        );

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
      final response = await res.patch(arg_request, arg_project, arg_instance,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--promoteReplica', () async {
      final mock = HttpServerMock();
      final res = api.SQLAdminApi(mock).instances;
      final arg_project = 'foo';
      final arg_instance = 'foo';
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
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('sql/v1beta4/projects/'),
        );
        pathOffset += 21;
        index = path.indexOf('/instances/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/instances/'),
        );
        pathOffset += 11;
        index = path.indexOf('/promoteReplica', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_instance'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/promoteReplica'),
        );
        pathOffset += 15;

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
      final response = await res.promoteReplica(arg_project, arg_instance,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--resetSslConfig', () async {
      final mock = HttpServerMock();
      final res = api.SQLAdminApi(mock).instances;
      final arg_project = 'foo';
      final arg_instance = 'foo';
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
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('sql/v1beta4/projects/'),
        );
        pathOffset += 21;
        index = path.indexOf('/instances/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/instances/'),
        );
        pathOffset += 11;
        index = path.indexOf('/resetSslConfig', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_instance'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/resetSslConfig'),
        );
        pathOffset += 15;

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
      final response = await res.resetSslConfig(arg_project, arg_instance,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--restart', () async {
      final mock = HttpServerMock();
      final res = api.SQLAdminApi(mock).instances;
      final arg_project = 'foo';
      final arg_instance = 'foo';
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
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('sql/v1beta4/projects/'),
        );
        pathOffset += 21;
        index = path.indexOf('/instances/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/instances/'),
        );
        pathOffset += 11;
        index = path.indexOf('/restart', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_instance'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/restart'),
        );
        pathOffset += 8;

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
          await res.restart(arg_project, arg_instance, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--restoreBackup', () async {
      final mock = HttpServerMock();
      final res = api.SQLAdminApi(mock).instances;
      final arg_request = buildInstancesRestoreBackupRequest();
      final arg_project = 'foo';
      final arg_instance = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.InstancesRestoreBackupRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkInstancesRestoreBackupRequest(obj);

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
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('sql/v1beta4/projects/'),
        );
        pathOffset += 21;
        index = path.indexOf('/instances/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/instances/'),
        );
        pathOffset += 11;
        index = path.indexOf('/restoreBackup', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_instance'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('/restoreBackup'),
        );
        pathOffset += 14;

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
      final response = await res.restoreBackup(
          arg_request, arg_project, arg_instance,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--rotateServerCa', () async {
      final mock = HttpServerMock();
      final res = api.SQLAdminApi(mock).instances;
      final arg_request = buildInstancesRotateServerCaRequest();
      final arg_project = 'foo';
      final arg_instance = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.InstancesRotateServerCaRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkInstancesRotateServerCaRequest(obj);

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
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('sql/v1beta4/projects/'),
        );
        pathOffset += 21;
        index = path.indexOf('/instances/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/instances/'),
        );
        pathOffset += 11;
        index = path.indexOf('/rotateServerCa', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_instance'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/rotateServerCa'),
        );
        pathOffset += 15;

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
      final response = await res.rotateServerCa(
          arg_request, arg_project, arg_instance,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--startReplica', () async {
      final mock = HttpServerMock();
      final res = api.SQLAdminApi(mock).instances;
      final arg_project = 'foo';
      final arg_instance = 'foo';
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
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('sql/v1beta4/projects/'),
        );
        pathOffset += 21;
        index = path.indexOf('/instances/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/instances/'),
        );
        pathOffset += 11;
        index = path.indexOf('/startReplica', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_instance'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('/startReplica'),
        );
        pathOffset += 13;

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
      final response = await res.startReplica(arg_project, arg_instance,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--stopReplica', () async {
      final mock = HttpServerMock();
      final res = api.SQLAdminApi(mock).instances;
      final arg_project = 'foo';
      final arg_instance = 'foo';
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
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('sql/v1beta4/projects/'),
        );
        pathOffset += 21;
        index = path.indexOf('/instances/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/instances/'),
        );
        pathOffset += 11;
        index = path.indexOf('/stopReplica', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_instance'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/stopReplica'),
        );
        pathOffset += 12;

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
      final response = await res.stopReplica(arg_project, arg_instance,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--truncateLog', () async {
      final mock = HttpServerMock();
      final res = api.SQLAdminApi(mock).instances;
      final arg_request = buildInstancesTruncateLogRequest();
      final arg_project = 'foo';
      final arg_instance = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.InstancesTruncateLogRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkInstancesTruncateLogRequest(obj);

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
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('sql/v1beta4/projects/'),
        );
        pathOffset += 21;
        index = path.indexOf('/instances/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/instances/'),
        );
        pathOffset += 11;
        index = path.indexOf('/truncateLog', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_instance'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/truncateLog'),
        );
        pathOffset += 12;

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
      final response = await res.truncateLog(
          arg_request, arg_project, arg_instance,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.SQLAdminApi(mock).instances;
      final arg_request = buildDatabaseInstance();
      final arg_project = 'foo';
      final arg_instance = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.DatabaseInstance.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDatabaseInstance(obj);

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
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('sql/v1beta4/projects/'),
        );
        pathOffset += 21;
        index = path.indexOf('/instances/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/instances/'),
        );
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_instance'),
        );

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
      final response = await res.update(arg_request, arg_project, arg_instance,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-OperationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.SQLAdminApi(mock).operations;
      final arg_project = 'foo';
      final arg_operation = 'foo';
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
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('sql/v1beta4/projects/'),
        );
        pathOffset += 21;
        index = path.indexOf('/operations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/operations/'),
        );
        pathOffset += 12;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_operation'),
        );

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
          await res.get(arg_project, arg_operation, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.SQLAdminApi(mock).operations;
      final arg_project = 'foo';
      final arg_instance = 'foo';
      final arg_maxResults = 42;
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
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('sql/v1beta4/projects/'),
        );
        pathOffset += 21;
        index = path.indexOf('/operations', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/operations'),
        );
        pathOffset += 11;

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
          queryMap['instance']!.first,
          unittest.equals(arg_instance),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
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
        final resp = convert.json.encode(buildOperationsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_project,
          instance: arg_instance,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkOperationsListResponse(response as api.OperationsListResponse);
    });
  });

  unittest.group('resource-ProjectsInstancesResource', () {
    unittest.test('method--rescheduleMaintenance', () async {
      final mock = HttpServerMock();
      final res = api.SQLAdminApi(mock).projects.instances;
      final arg_request = buildSqlInstancesRescheduleMaintenanceRequestBody();
      final arg_project = 'foo';
      final arg_instance = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SqlInstancesRescheduleMaintenanceRequestBody.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSqlInstancesRescheduleMaintenanceRequestBody(obj);

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
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('sql/v1beta4/projects/'),
        );
        pathOffset += 21;
        index = path.indexOf('/instances/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/instances/'),
        );
        pathOffset += 11;
        index = path.indexOf('/rescheduleMaintenance', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_instance'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 22),
          unittest.equals('/rescheduleMaintenance'),
        );
        pathOffset += 22;

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
      final response = await res.rescheduleMaintenance(
          arg_request, arg_project, arg_instance,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--startExternalSync', () async {
      final mock = HttpServerMock();
      final res = api.SQLAdminApi(mock).projects.instances;
      final arg_project = 'foo';
      final arg_instance = 'foo';
      final arg_skipVerification = true;
      final arg_syncMode = 'foo';
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
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('sql/v1beta4/projects/'),
        );
        pathOffset += 21;
        index = path.indexOf('/instances/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/instances/'),
        );
        pathOffset += 11;
        index = path.indexOf('/startExternalSync', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_instance'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 18),
          unittest.equals('/startExternalSync'),
        );
        pathOffset += 18;

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
          queryMap['skipVerification']!.first,
          unittest.equals('$arg_skipVerification'),
        );
        unittest.expect(
          queryMap['syncMode']!.first,
          unittest.equals(arg_syncMode),
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
      final response = await res.startExternalSync(arg_project, arg_instance,
          skipVerification: arg_skipVerification,
          syncMode: arg_syncMode,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--verifyExternalSyncSettings', () async {
      final mock = HttpServerMock();
      final res = api.SQLAdminApi(mock).projects.instances;
      final arg_project = 'foo';
      final arg_instance = 'foo';
      final arg_syncMode = 'foo';
      final arg_verifyConnectionOnly = true;
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
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('sql/v1beta4/projects/'),
        );
        pathOffset += 21;
        index = path.indexOf('/instances/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/instances/'),
        );
        pathOffset += 11;
        index = path.indexOf('/verifyExternalSyncSettings', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_instance'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 27),
          unittest.equals('/verifyExternalSyncSettings'),
        );
        pathOffset += 27;

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
          queryMap['syncMode']!.first,
          unittest.equals(arg_syncMode),
        );
        unittest.expect(
          queryMap['verifyConnectionOnly']!.first,
          unittest.equals('$arg_verifyConnectionOnly'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildSqlInstancesVerifyExternalSyncSettingsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.verifyExternalSyncSettings(
          arg_project, arg_instance,
          syncMode: arg_syncMode,
          verifyConnectionOnly: arg_verifyConnectionOnly,
          $fields: arg_$fields);
      checkSqlInstancesVerifyExternalSyncSettingsResponse(
          response as api.SqlInstancesVerifyExternalSyncSettingsResponse);
    });
  });

  unittest.group('resource-SslCertsResource', () {
    unittest.test('method--createEphemeral', () async {
      final mock = HttpServerMock();
      final res = api.SQLAdminApi(mock).sslCerts;
      final arg_request = buildSslCertsCreateEphemeralRequest();
      final arg_project = 'foo';
      final arg_instance = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SslCertsCreateEphemeralRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSslCertsCreateEphemeralRequest(obj);

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
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('sql/v1beta4/projects/'),
        );
        pathOffset += 21;
        index = path.indexOf('/instances/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/instances/'),
        );
        pathOffset += 11;
        index = path.indexOf('/createEphemeral', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_instance'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('/createEphemeral'),
        );
        pathOffset += 16;

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
        final resp = convert.json.encode(buildSslCert());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.createEphemeral(
          arg_request, arg_project, arg_instance,
          $fields: arg_$fields);
      checkSslCert(response as api.SslCert);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.SQLAdminApi(mock).sslCerts;
      final arg_project = 'foo';
      final arg_instance = 'foo';
      final arg_sha1Fingerprint = 'foo';
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
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('sql/v1beta4/projects/'),
        );
        pathOffset += 21;
        index = path.indexOf('/instances/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/instances/'),
        );
        pathOffset += 11;
        index = path.indexOf('/sslCerts/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_instance'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/sslCerts/'),
        );
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_sha1Fingerprint'),
        );

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
      final response = await res.delete(
          arg_project, arg_instance, arg_sha1Fingerprint,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.SQLAdminApi(mock).sslCerts;
      final arg_project = 'foo';
      final arg_instance = 'foo';
      final arg_sha1Fingerprint = 'foo';
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
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('sql/v1beta4/projects/'),
        );
        pathOffset += 21;
        index = path.indexOf('/instances/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/instances/'),
        );
        pathOffset += 11;
        index = path.indexOf('/sslCerts/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_instance'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/sslCerts/'),
        );
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_sha1Fingerprint'),
        );

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
        final resp = convert.json.encode(buildSslCert());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(
          arg_project, arg_instance, arg_sha1Fingerprint,
          $fields: arg_$fields);
      checkSslCert(response as api.SslCert);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.SQLAdminApi(mock).sslCerts;
      final arg_request = buildSslCertsInsertRequest();
      final arg_project = 'foo';
      final arg_instance = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SslCertsInsertRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSslCertsInsertRequest(obj);

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
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('sql/v1beta4/projects/'),
        );
        pathOffset += 21;
        index = path.indexOf('/instances/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/instances/'),
        );
        pathOffset += 11;
        index = path.indexOf('/sslCerts', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_instance'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/sslCerts'),
        );
        pathOffset += 9;

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
        final resp = convert.json.encode(buildSslCertsInsertResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.insert(arg_request, arg_project, arg_instance,
          $fields: arg_$fields);
      checkSslCertsInsertResponse(response as api.SslCertsInsertResponse);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.SQLAdminApi(mock).sslCerts;
      final arg_project = 'foo';
      final arg_instance = 'foo';
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
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('sql/v1beta4/projects/'),
        );
        pathOffset += 21;
        index = path.indexOf('/instances/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/instances/'),
        );
        pathOffset += 11;
        index = path.indexOf('/sslCerts', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_instance'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/sslCerts'),
        );
        pathOffset += 9;

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
        final resp = convert.json.encode(buildSslCertsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.list(arg_project, arg_instance, $fields: arg_$fields);
      checkSslCertsListResponse(response as api.SslCertsListResponse);
    });
  });

  unittest.group('resource-TiersResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.SQLAdminApi(mock).tiers;
      final arg_project = 'foo';
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
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('sql/v1beta4/projects/'),
        );
        pathOffset += 21;
        index = path.indexOf('/tiers', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/tiers'),
        );
        pathOffset += 6;

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
        final resp = convert.json.encode(buildTiersListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_project, $fields: arg_$fields);
      checkTiersListResponse(response as api.TiersListResponse);
    });
  });

  unittest.group('resource-UsersResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.SQLAdminApi(mock).users;
      final arg_project = 'foo';
      final arg_instance = 'foo';
      final arg_host = 'foo';
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
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('sql/v1beta4/projects/'),
        );
        pathOffset += 21;
        index = path.indexOf('/instances/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/instances/'),
        );
        pathOffset += 11;
        index = path.indexOf('/users', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_instance'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/users'),
        );
        pathOffset += 6;

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
          queryMap['host']!.first,
          unittest.equals(arg_host),
        );
        unittest.expect(
          queryMap['name']!.first,
          unittest.equals(arg_name),
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
      final response = await res.delete(arg_project, arg_instance,
          host: arg_host, name: arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.SQLAdminApi(mock).users;
      final arg_request = buildUser();
      final arg_project = 'foo';
      final arg_instance = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.User.fromJson(json as core.Map<core.String, core.dynamic>);
        checkUser(obj);

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
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('sql/v1beta4/projects/'),
        );
        pathOffset += 21;
        index = path.indexOf('/instances/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/instances/'),
        );
        pathOffset += 11;
        index = path.indexOf('/users', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_instance'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/users'),
        );
        pathOffset += 6;

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
      final response = await res.insert(arg_request, arg_project, arg_instance,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.SQLAdminApi(mock).users;
      final arg_project = 'foo';
      final arg_instance = 'foo';
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
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('sql/v1beta4/projects/'),
        );
        pathOffset += 21;
        index = path.indexOf('/instances/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/instances/'),
        );
        pathOffset += 11;
        index = path.indexOf('/users', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_instance'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/users'),
        );
        pathOffset += 6;

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
        final resp = convert.json.encode(buildUsersListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.list(arg_project, arg_instance, $fields: arg_$fields);
      checkUsersListResponse(response as api.UsersListResponse);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.SQLAdminApi(mock).users;
      final arg_request = buildUser();
      final arg_project = 'foo';
      final arg_instance = 'foo';
      final arg_host = 'foo';
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.User.fromJson(json as core.Map<core.String, core.dynamic>);
        checkUser(obj);

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
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('sql/v1beta4/projects/'),
        );
        pathOffset += 21;
        index = path.indexOf('/instances/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/instances/'),
        );
        pathOffset += 11;
        index = path.indexOf('/users', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_instance'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/users'),
        );
        pathOffset += 6;

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
          queryMap['host']!.first,
          unittest.equals(arg_host),
        );
        unittest.expect(
          queryMap['name']!.first,
          unittest.equals(arg_name),
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
      final response = await res.update(arg_request, arg_project, arg_instance,
          host: arg_host, name: arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });
}
