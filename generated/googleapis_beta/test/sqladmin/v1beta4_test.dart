// ignore_for_file: avoid_returning_null
// ignore_for_file: camel_case_types
// ignore_for_file: cascade_invocations
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: prefer_single_quotes
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
  var o = api.AclEntry();
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
  var o = api.ApiWarning();
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
  var o = api.BackupConfiguration();
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
    checkBackupRetentionSettings(
        o.backupRetentionSettings! as api.BackupRetentionSettings);
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
  var o = api.BackupContext();
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
  var o = api.BackupRetentionSettings();
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
  var o = api.BackupRun();
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
    checkDiskEncryptionConfiguration(
        o.diskEncryptionConfiguration! as api.DiskEncryptionConfiguration);
    checkDiskEncryptionStatus(
        o.diskEncryptionStatus! as api.DiskEncryptionStatus);
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.enqueuedTime!,
      unittest.equals('foo'),
    );
    checkOperationError(o.error! as api.OperationError);
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

core.List<api.BackupRun> buildUnnamed7713() {
  var o = <api.BackupRun>[];
  o.add(buildBackupRun());
  o.add(buildBackupRun());
  return o;
}

void checkUnnamed7713(core.List<api.BackupRun> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBackupRun(o[0] as api.BackupRun);
  checkBackupRun(o[1] as api.BackupRun);
}

core.int buildCounterBackupRunsListResponse = 0;
api.BackupRunsListResponse buildBackupRunsListResponse() {
  var o = api.BackupRunsListResponse();
  buildCounterBackupRunsListResponse++;
  if (buildCounterBackupRunsListResponse < 3) {
    o.items = buildUnnamed7713();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterBackupRunsListResponse--;
  return o;
}

void checkBackupRunsListResponse(api.BackupRunsListResponse o) {
  buildCounterBackupRunsListResponse++;
  if (buildCounterBackupRunsListResponse < 3) {
    checkUnnamed7713(o.items!);
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
  var o = api.BinLogCoordinates();
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
  var o = api.CloneContext();
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
    checkBinLogCoordinates(o.binLogCoordinates! as api.BinLogCoordinates);
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

core.int buildCounterDatabase = 0;
api.Database buildDatabase() {
  var o = api.Database();
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
    checkSqlServerDatabaseDetails(
        o.sqlserverDatabaseDetails! as api.SqlServerDatabaseDetails);
  }
  buildCounterDatabase--;
}

core.int buildCounterDatabaseFlags = 0;
api.DatabaseFlags buildDatabaseFlags() {
  var o = api.DatabaseFlags();
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
  var o = api.DatabaseInstanceFailoverReplica();
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

core.List<api.IpMapping> buildUnnamed7714() {
  var o = <api.IpMapping>[];
  o.add(buildIpMapping());
  o.add(buildIpMapping());
  return o;
}

void checkUnnamed7714(core.List<api.IpMapping> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIpMapping(o[0] as api.IpMapping);
  checkIpMapping(o[1] as api.IpMapping);
}

core.List<core.String> buildUnnamed7715() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7715(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed7716() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7716(core.List<core.String> o) {
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
  var o = api.DatabaseInstance();
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
    o.ipAddresses = buildUnnamed7714();
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
    o.replicaNames = buildUnnamed7715();
    o.rootPassword = 'foo';
    o.satisfiesPzs = true;
    o.scheduledMaintenance = buildSqlScheduledMaintenance();
    o.secondaryGceZone = 'foo';
    o.selfLink = 'foo';
    o.serverCaCert = buildSslCert();
    o.serviceAccountEmailAddress = 'foo';
    o.settings = buildSettings();
    o.state = 'foo';
    o.suspensionReason = buildUnnamed7716();
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
    checkDiskEncryptionConfiguration(
        o.diskEncryptionConfiguration! as api.DiskEncryptionConfiguration);
    checkDiskEncryptionStatus(
        o.diskEncryptionStatus! as api.DiskEncryptionStatus);
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    checkDatabaseInstanceFailoverReplica(
        o.failoverReplica! as api.DatabaseInstanceFailoverReplica);
    unittest.expect(
      o.gceZone!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.instanceType!,
      unittest.equals('foo'),
    );
    checkUnnamed7714(o.ipAddresses!);
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
    checkOnPremisesConfiguration(
        o.onPremisesConfiguration! as api.OnPremisesConfiguration);
    checkSqlOutOfDiskReport(o.outOfDiskReport! as api.SqlOutOfDiskReport);
    unittest.expect(
      o.project!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.region!,
      unittest.equals('foo'),
    );
    checkReplicaConfiguration(
        o.replicaConfiguration! as api.ReplicaConfiguration);
    checkUnnamed7715(o.replicaNames!);
    unittest.expect(
      o.rootPassword!,
      unittest.equals('foo'),
    );
    unittest.expect(o.satisfiesPzs!, unittest.isTrue);
    checkSqlScheduledMaintenance(
        o.scheduledMaintenance! as api.SqlScheduledMaintenance);
    unittest.expect(
      o.secondaryGceZone!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.selfLink!,
      unittest.equals('foo'),
    );
    checkSslCert(o.serverCaCert! as api.SslCert);
    unittest.expect(
      o.serviceAccountEmailAddress!,
      unittest.equals('foo'),
    );
    checkSettings(o.settings! as api.Settings);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    checkUnnamed7716(o.suspensionReason!);
  }
  buildCounterDatabaseInstance--;
}

core.List<api.Database> buildUnnamed7717() {
  var o = <api.Database>[];
  o.add(buildDatabase());
  o.add(buildDatabase());
  return o;
}

void checkUnnamed7717(core.List<api.Database> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatabase(o[0] as api.Database);
  checkDatabase(o[1] as api.Database);
}

core.int buildCounterDatabasesListResponse = 0;
api.DatabasesListResponse buildDatabasesListResponse() {
  var o = api.DatabasesListResponse();
  buildCounterDatabasesListResponse++;
  if (buildCounterDatabasesListResponse < 3) {
    o.items = buildUnnamed7717();
    o.kind = 'foo';
  }
  buildCounterDatabasesListResponse--;
  return o;
}

void checkDatabasesListResponse(api.DatabasesListResponse o) {
  buildCounterDatabasesListResponse++;
  if (buildCounterDatabasesListResponse < 3) {
    checkUnnamed7717(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterDatabasesListResponse--;
}

core.int buildCounterDemoteMasterConfiguration = 0;
api.DemoteMasterConfiguration buildDemoteMasterConfiguration() {
  var o = api.DemoteMasterConfiguration();
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
    checkDemoteMasterMySqlReplicaConfiguration(o.mysqlReplicaConfiguration!
        as api.DemoteMasterMySqlReplicaConfiguration);
  }
  buildCounterDemoteMasterConfiguration--;
}

core.int buildCounterDemoteMasterContext = 0;
api.DemoteMasterContext buildDemoteMasterContext() {
  var o = api.DemoteMasterContext();
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
    checkDemoteMasterConfiguration(
        o.replicaConfiguration! as api.DemoteMasterConfiguration);
    unittest.expect(o.verifyGtidConsistency!, unittest.isTrue);
  }
  buildCounterDemoteMasterContext--;
}

core.int buildCounterDemoteMasterMySqlReplicaConfiguration = 0;
api.DemoteMasterMySqlReplicaConfiguration
    buildDemoteMasterMySqlReplicaConfiguration() {
  var o = api.DemoteMasterMySqlReplicaConfiguration();
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
  var o = api.DenyMaintenancePeriod();
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
  var o = api.DiskEncryptionConfiguration();
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
  var o = api.DiskEncryptionStatus();
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
  var o = api.ExportContextCsvExportOptions();
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

core.List<core.String> buildUnnamed7718() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7718(core.List<core.String> o) {
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
  var o = api.ExportContextSqlExportOptionsMysqlExportOptions();
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

core.List<core.String> buildUnnamed7719() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7719(core.List<core.String> o) {
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
  var o = api.ExportContextSqlExportOptions();
  buildCounterExportContextSqlExportOptions++;
  if (buildCounterExportContextSqlExportOptions < 3) {
    o.mysqlExportOptions =
        buildExportContextSqlExportOptionsMysqlExportOptions();
    o.schemaOnly = true;
    o.tables = buildUnnamed7719();
  }
  buildCounterExportContextSqlExportOptions--;
  return o;
}

void checkExportContextSqlExportOptions(api.ExportContextSqlExportOptions o) {
  buildCounterExportContextSqlExportOptions++;
  if (buildCounterExportContextSqlExportOptions < 3) {
    checkExportContextSqlExportOptionsMysqlExportOptions(o.mysqlExportOptions!
        as api.ExportContextSqlExportOptionsMysqlExportOptions);
    unittest.expect(o.schemaOnly!, unittest.isTrue);
    checkUnnamed7719(o.tables!);
  }
  buildCounterExportContextSqlExportOptions--;
}

core.int buildCounterExportContext = 0;
api.ExportContext buildExportContext() {
  var o = api.ExportContext();
  buildCounterExportContext++;
  if (buildCounterExportContext < 3) {
    o.csvExportOptions = buildExportContextCsvExportOptions();
    o.databases = buildUnnamed7718();
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
    checkExportContextCsvExportOptions(
        o.csvExportOptions! as api.ExportContextCsvExportOptions);
    checkUnnamed7718(o.databases!);
    unittest.expect(
      o.fileType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(o.offload!, unittest.isTrue);
    checkExportContextSqlExportOptions(
        o.sqlExportOptions! as api.ExportContextSqlExportOptions);
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterExportContext--;
}

core.int buildCounterFailoverContext = 0;
api.FailoverContext buildFailoverContext() {
  var o = api.FailoverContext();
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

core.List<core.String> buildUnnamed7720() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7720(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed7721() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7721(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed7722() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7722(core.List<core.String> o) {
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
  var o = api.Flag();
  buildCounterFlag++;
  if (buildCounterFlag < 3) {
    o.allowedIntValues = buildUnnamed7720();
    o.allowedStringValues = buildUnnamed7721();
    o.appliesTo = buildUnnamed7722();
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
    checkUnnamed7720(o.allowedIntValues!);
    checkUnnamed7721(o.allowedStringValues!);
    checkUnnamed7722(o.appliesTo!);
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

core.List<api.Flag> buildUnnamed7723() {
  var o = <api.Flag>[];
  o.add(buildFlag());
  o.add(buildFlag());
  return o;
}

void checkUnnamed7723(core.List<api.Flag> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFlag(o[0] as api.Flag);
  checkFlag(o[1] as api.Flag);
}

core.int buildCounterFlagsListResponse = 0;
api.FlagsListResponse buildFlagsListResponse() {
  var o = api.FlagsListResponse();
  buildCounterFlagsListResponse++;
  if (buildCounterFlagsListResponse < 3) {
    o.items = buildUnnamed7723();
    o.kind = 'foo';
  }
  buildCounterFlagsListResponse--;
  return o;
}

void checkFlagsListResponse(api.FlagsListResponse o) {
  buildCounterFlagsListResponse++;
  if (buildCounterFlagsListResponse < 3) {
    checkUnnamed7723(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterFlagsListResponse--;
}

core.int buildCounterImportContextBakImportOptionsEncryptionOptions = 0;
api.ImportContextBakImportOptionsEncryptionOptions
    buildImportContextBakImportOptionsEncryptionOptions() {
  var o = api.ImportContextBakImportOptionsEncryptionOptions();
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
  var o = api.ImportContextBakImportOptions();
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
    checkImportContextBakImportOptionsEncryptionOptions(o.encryptionOptions!
        as api.ImportContextBakImportOptionsEncryptionOptions);
  }
  buildCounterImportContextBakImportOptions--;
}

core.List<core.String> buildUnnamed7724() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7724(core.List<core.String> o) {
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
  var o = api.ImportContextCsvImportOptions();
  buildCounterImportContextCsvImportOptions++;
  if (buildCounterImportContextCsvImportOptions < 3) {
    o.columns = buildUnnamed7724();
    o.table = 'foo';
  }
  buildCounterImportContextCsvImportOptions--;
  return o;
}

void checkImportContextCsvImportOptions(api.ImportContextCsvImportOptions o) {
  buildCounterImportContextCsvImportOptions++;
  if (buildCounterImportContextCsvImportOptions < 3) {
    checkUnnamed7724(o.columns!);
    unittest.expect(
      o.table!,
      unittest.equals('foo'),
    );
  }
  buildCounterImportContextCsvImportOptions--;
}

core.int buildCounterImportContext = 0;
api.ImportContext buildImportContext() {
  var o = api.ImportContext();
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
    checkImportContextBakImportOptions(
        o.bakImportOptions! as api.ImportContextBakImportOptions);
    checkImportContextCsvImportOptions(
        o.csvImportOptions! as api.ImportContextCsvImportOptions);
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
  var o = api.InsightsConfig();
  buildCounterInsightsConfig++;
  if (buildCounterInsightsConfig < 3) {
    o.queryInsightsEnabled = true;
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
  var o = api.InstancesCloneRequest();
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
    checkCloneContext(o.cloneContext! as api.CloneContext);
  }
  buildCounterInstancesCloneRequest--;
}

core.int buildCounterInstancesDemoteMasterRequest = 0;
api.InstancesDemoteMasterRequest buildInstancesDemoteMasterRequest() {
  var o = api.InstancesDemoteMasterRequest();
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
    checkDemoteMasterContext(o.demoteMasterContext! as api.DemoteMasterContext);
  }
  buildCounterInstancesDemoteMasterRequest--;
}

core.int buildCounterInstancesExportRequest = 0;
api.InstancesExportRequest buildInstancesExportRequest() {
  var o = api.InstancesExportRequest();
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
    checkExportContext(o.exportContext! as api.ExportContext);
  }
  buildCounterInstancesExportRequest--;
}

core.int buildCounterInstancesFailoverRequest = 0;
api.InstancesFailoverRequest buildInstancesFailoverRequest() {
  var o = api.InstancesFailoverRequest();
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
    checkFailoverContext(o.failoverContext! as api.FailoverContext);
  }
  buildCounterInstancesFailoverRequest--;
}

core.int buildCounterInstancesImportRequest = 0;
api.InstancesImportRequest buildInstancesImportRequest() {
  var o = api.InstancesImportRequest();
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
    checkImportContext(o.importContext! as api.ImportContext);
  }
  buildCounterInstancesImportRequest--;
}

core.List<api.DatabaseInstance> buildUnnamed7725() {
  var o = <api.DatabaseInstance>[];
  o.add(buildDatabaseInstance());
  o.add(buildDatabaseInstance());
  return o;
}

void checkUnnamed7725(core.List<api.DatabaseInstance> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatabaseInstance(o[0] as api.DatabaseInstance);
  checkDatabaseInstance(o[1] as api.DatabaseInstance);
}

core.List<api.ApiWarning> buildUnnamed7726() {
  var o = <api.ApiWarning>[];
  o.add(buildApiWarning());
  o.add(buildApiWarning());
  return o;
}

void checkUnnamed7726(core.List<api.ApiWarning> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApiWarning(o[0] as api.ApiWarning);
  checkApiWarning(o[1] as api.ApiWarning);
}

core.int buildCounterInstancesListResponse = 0;
api.InstancesListResponse buildInstancesListResponse() {
  var o = api.InstancesListResponse();
  buildCounterInstancesListResponse++;
  if (buildCounterInstancesListResponse < 3) {
    o.items = buildUnnamed7725();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.warnings = buildUnnamed7726();
  }
  buildCounterInstancesListResponse--;
  return o;
}

void checkInstancesListResponse(api.InstancesListResponse o) {
  buildCounterInstancesListResponse++;
  if (buildCounterInstancesListResponse < 3) {
    checkUnnamed7725(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed7726(o.warnings!);
  }
  buildCounterInstancesListResponse--;
}

core.List<api.SslCert> buildUnnamed7727() {
  var o = <api.SslCert>[];
  o.add(buildSslCert());
  o.add(buildSslCert());
  return o;
}

void checkUnnamed7727(core.List<api.SslCert> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSslCert(o[0] as api.SslCert);
  checkSslCert(o[1] as api.SslCert);
}

core.int buildCounterInstancesListServerCasResponse = 0;
api.InstancesListServerCasResponse buildInstancesListServerCasResponse() {
  var o = api.InstancesListServerCasResponse();
  buildCounterInstancesListServerCasResponse++;
  if (buildCounterInstancesListServerCasResponse < 3) {
    o.activeVersion = 'foo';
    o.certs = buildUnnamed7727();
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
    checkUnnamed7727(o.certs!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterInstancesListServerCasResponse--;
}

core.int buildCounterInstancesRestoreBackupRequest = 0;
api.InstancesRestoreBackupRequest buildInstancesRestoreBackupRequest() {
  var o = api.InstancesRestoreBackupRequest();
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
    checkRestoreBackupContext(
        o.restoreBackupContext! as api.RestoreBackupContext);
  }
  buildCounterInstancesRestoreBackupRequest--;
}

core.int buildCounterInstancesRotateServerCaRequest = 0;
api.InstancesRotateServerCaRequest buildInstancesRotateServerCaRequest() {
  var o = api.InstancesRotateServerCaRequest();
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
    checkRotateServerCaContext(
        o.rotateServerCaContext! as api.RotateServerCaContext);
  }
  buildCounterInstancesRotateServerCaRequest--;
}

core.int buildCounterInstancesTruncateLogRequest = 0;
api.InstancesTruncateLogRequest buildInstancesTruncateLogRequest() {
  var o = api.InstancesTruncateLogRequest();
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
    checkTruncateLogContext(o.truncateLogContext! as api.TruncateLogContext);
  }
  buildCounterInstancesTruncateLogRequest--;
}

core.List<api.AclEntry> buildUnnamed7728() {
  var o = <api.AclEntry>[];
  o.add(buildAclEntry());
  o.add(buildAclEntry());
  return o;
}

void checkUnnamed7728(core.List<api.AclEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAclEntry(o[0] as api.AclEntry);
  checkAclEntry(o[1] as api.AclEntry);
}

core.int buildCounterIpConfiguration = 0;
api.IpConfiguration buildIpConfiguration() {
  var o = api.IpConfiguration();
  buildCounterIpConfiguration++;
  if (buildCounterIpConfiguration < 3) {
    o.authorizedNetworks = buildUnnamed7728();
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
    checkUnnamed7728(o.authorizedNetworks!);
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
  var o = api.IpMapping();
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
  var o = api.LocationPreference();
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
  var o = api.MaintenanceWindow();
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
  var o = api.MySqlReplicaConfiguration();
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
  var o = api.OnPremisesConfiguration();
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
  var o = api.Operation();
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
    checkBackupContext(o.backupContext! as api.BackupContext);
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    checkOperationErrors(o.error! as api.OperationErrors);
    checkExportContext(o.exportContext! as api.ExportContext);
    checkImportContext(o.importContext! as api.ImportContext);
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
  var o = api.OperationError();
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

core.List<api.OperationError> buildUnnamed7729() {
  var o = <api.OperationError>[];
  o.add(buildOperationError());
  o.add(buildOperationError());
  return o;
}

void checkUnnamed7729(core.List<api.OperationError> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperationError(o[0] as api.OperationError);
  checkOperationError(o[1] as api.OperationError);
}

core.int buildCounterOperationErrors = 0;
api.OperationErrors buildOperationErrors() {
  var o = api.OperationErrors();
  buildCounterOperationErrors++;
  if (buildCounterOperationErrors < 3) {
    o.errors = buildUnnamed7729();
    o.kind = 'foo';
  }
  buildCounterOperationErrors--;
  return o;
}

void checkOperationErrors(api.OperationErrors o) {
  buildCounterOperationErrors++;
  if (buildCounterOperationErrors < 3) {
    checkUnnamed7729(o.errors!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterOperationErrors--;
}

core.List<api.Operation> buildUnnamed7730() {
  var o = <api.Operation>[];
  o.add(buildOperation());
  o.add(buildOperation());
  return o;
}

void checkUnnamed7730(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0] as api.Operation);
  checkOperation(o[1] as api.Operation);
}

core.int buildCounterOperationsListResponse = 0;
api.OperationsListResponse buildOperationsListResponse() {
  var o = api.OperationsListResponse();
  buildCounterOperationsListResponse++;
  if (buildCounterOperationsListResponse < 3) {
    o.items = buildUnnamed7730();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterOperationsListResponse--;
  return o;
}

void checkOperationsListResponse(api.OperationsListResponse o) {
  buildCounterOperationsListResponse++;
  if (buildCounterOperationsListResponse < 3) {
    checkUnnamed7730(o.items!);
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
  var o = api.ReplicaConfiguration();
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
    checkMySqlReplicaConfiguration(
        o.mysqlReplicaConfiguration! as api.MySqlReplicaConfiguration);
  }
  buildCounterReplicaConfiguration--;
}

core.int buildCounterReschedule = 0;
api.Reschedule buildReschedule() {
  var o = api.Reschedule();
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
  var o = api.RestoreBackupContext();
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
  var o = api.RotateServerCaContext();
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

core.List<core.String> buildUnnamed7731() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7731(core.List<core.String> o) {
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

core.List<api.DatabaseFlags> buildUnnamed7732() {
  var o = <api.DatabaseFlags>[];
  o.add(buildDatabaseFlags());
  o.add(buildDatabaseFlags());
  return o;
}

void checkUnnamed7732(core.List<api.DatabaseFlags> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatabaseFlags(o[0] as api.DatabaseFlags);
  checkDatabaseFlags(o[1] as api.DatabaseFlags);
}

core.List<api.DenyMaintenancePeriod> buildUnnamed7733() {
  var o = <api.DenyMaintenancePeriod>[];
  o.add(buildDenyMaintenancePeriod());
  o.add(buildDenyMaintenancePeriod());
  return o;
}

void checkUnnamed7733(core.List<api.DenyMaintenancePeriod> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDenyMaintenancePeriod(o[0] as api.DenyMaintenancePeriod);
  checkDenyMaintenancePeriod(o[1] as api.DenyMaintenancePeriod);
}

core.Map<core.String, core.String> buildUnnamed7734() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed7734(core.Map<core.String, core.String> o) {
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
  var o = api.Settings();
  buildCounterSettings++;
  if (buildCounterSettings < 3) {
    o.activationPolicy = 'foo';
    o.activeDirectoryConfig = buildSqlActiveDirectoryConfig();
    o.authorizedGaeApplications = buildUnnamed7731();
    o.availabilityType = 'foo';
    o.backupConfiguration = buildBackupConfiguration();
    o.collation = 'foo';
    o.crashSafeReplicationEnabled = true;
    o.dataDiskSizeGb = 'foo';
    o.dataDiskType = 'foo';
    o.databaseFlags = buildUnnamed7732();
    o.databaseReplicationEnabled = true;
    o.denyMaintenancePeriods = buildUnnamed7733();
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
    o.userLabels = buildUnnamed7734();
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
    checkSqlActiveDirectoryConfig(
        o.activeDirectoryConfig! as api.SqlActiveDirectoryConfig);
    checkUnnamed7731(o.authorizedGaeApplications!);
    unittest.expect(
      o.availabilityType!,
      unittest.equals('foo'),
    );
    checkBackupConfiguration(o.backupConfiguration! as api.BackupConfiguration);
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
    checkUnnamed7732(o.databaseFlags!);
    unittest.expect(o.databaseReplicationEnabled!, unittest.isTrue);
    checkUnnamed7733(o.denyMaintenancePeriods!);
    checkInsightsConfig(o.insightsConfig! as api.InsightsConfig);
    checkIpConfiguration(o.ipConfiguration! as api.IpConfiguration);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkLocationPreference(o.locationPreference! as api.LocationPreference);
    checkMaintenanceWindow(o.maintenanceWindow! as api.MaintenanceWindow);
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
    checkUnnamed7734(o.userLabels!);
  }
  buildCounterSettings--;
}

core.int buildCounterSqlActiveDirectoryConfig = 0;
api.SqlActiveDirectoryConfig buildSqlActiveDirectoryConfig() {
  var o = api.SqlActiveDirectoryConfig();
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
  var o = api.SqlExternalSyncSettingError();
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
  var o = api.SqlInstancesRescheduleMaintenanceRequestBody();
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
    checkReschedule(o.reschedule! as api.Reschedule);
  }
  buildCounterSqlInstancesRescheduleMaintenanceRequestBody--;
}

core.List<api.SqlExternalSyncSettingError> buildUnnamed7735() {
  var o = <api.SqlExternalSyncSettingError>[];
  o.add(buildSqlExternalSyncSettingError());
  o.add(buildSqlExternalSyncSettingError());
  return o;
}

void checkUnnamed7735(core.List<api.SqlExternalSyncSettingError> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSqlExternalSyncSettingError(o[0] as api.SqlExternalSyncSettingError);
  checkSqlExternalSyncSettingError(o[1] as api.SqlExternalSyncSettingError);
}

core.List<api.SqlExternalSyncSettingError> buildUnnamed7736() {
  var o = <api.SqlExternalSyncSettingError>[];
  o.add(buildSqlExternalSyncSettingError());
  o.add(buildSqlExternalSyncSettingError());
  return o;
}

void checkUnnamed7736(core.List<api.SqlExternalSyncSettingError> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSqlExternalSyncSettingError(o[0] as api.SqlExternalSyncSettingError);
  checkSqlExternalSyncSettingError(o[1] as api.SqlExternalSyncSettingError);
}

core.int buildCounterSqlInstancesVerifyExternalSyncSettingsResponse = 0;
api.SqlInstancesVerifyExternalSyncSettingsResponse
    buildSqlInstancesVerifyExternalSyncSettingsResponse() {
  var o = api.SqlInstancesVerifyExternalSyncSettingsResponse();
  buildCounterSqlInstancesVerifyExternalSyncSettingsResponse++;
  if (buildCounterSqlInstancesVerifyExternalSyncSettingsResponse < 3) {
    o.errors = buildUnnamed7735();
    o.kind = 'foo';
    o.warnings = buildUnnamed7736();
  }
  buildCounterSqlInstancesVerifyExternalSyncSettingsResponse--;
  return o;
}

void checkSqlInstancesVerifyExternalSyncSettingsResponse(
    api.SqlInstancesVerifyExternalSyncSettingsResponse o) {
  buildCounterSqlInstancesVerifyExternalSyncSettingsResponse++;
  if (buildCounterSqlInstancesVerifyExternalSyncSettingsResponse < 3) {
    checkUnnamed7735(o.errors!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed7736(o.warnings!);
  }
  buildCounterSqlInstancesVerifyExternalSyncSettingsResponse--;
}

core.int buildCounterSqlOutOfDiskReport = 0;
api.SqlOutOfDiskReport buildSqlOutOfDiskReport() {
  var o = api.SqlOutOfDiskReport();
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
  var o = api.SqlScheduledMaintenance();
  buildCounterSqlScheduledMaintenance++;
  if (buildCounterSqlScheduledMaintenance < 3) {
    o.canDefer = true;
    o.canReschedule = true;
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
      o.startTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterSqlScheduledMaintenance--;
}

core.int buildCounterSqlServerDatabaseDetails = 0;
api.SqlServerDatabaseDetails buildSqlServerDatabaseDetails() {
  var o = api.SqlServerDatabaseDetails();
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

core.List<core.String> buildUnnamed7737() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7737(core.List<core.String> o) {
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
  var o = api.SqlServerUserDetails();
  buildCounterSqlServerUserDetails++;
  if (buildCounterSqlServerUserDetails < 3) {
    o.disabled = true;
    o.serverRoles = buildUnnamed7737();
  }
  buildCounterSqlServerUserDetails--;
  return o;
}

void checkSqlServerUserDetails(api.SqlServerUserDetails o) {
  buildCounterSqlServerUserDetails++;
  if (buildCounterSqlServerUserDetails < 3) {
    unittest.expect(o.disabled!, unittest.isTrue);
    checkUnnamed7737(o.serverRoles!);
  }
  buildCounterSqlServerUserDetails--;
}

core.int buildCounterSslCert = 0;
api.SslCert buildSslCert() {
  var o = api.SslCert();
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
  var o = api.SslCertDetail();
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
    checkSslCert(o.certInfo! as api.SslCert);
    unittest.expect(
      o.certPrivateKey!,
      unittest.equals('foo'),
    );
  }
  buildCounterSslCertDetail--;
}

core.int buildCounterSslCertsCreateEphemeralRequest = 0;
api.SslCertsCreateEphemeralRequest buildSslCertsCreateEphemeralRequest() {
  var o = api.SslCertsCreateEphemeralRequest();
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
  var o = api.SslCertsInsertRequest();
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
  var o = api.SslCertsInsertResponse();
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
    checkSslCertDetail(o.clientCert! as api.SslCertDetail);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkOperation(o.operation! as api.Operation);
    checkSslCert(o.serverCaCert! as api.SslCert);
  }
  buildCounterSslCertsInsertResponse--;
}

core.List<api.SslCert> buildUnnamed7738() {
  var o = <api.SslCert>[];
  o.add(buildSslCert());
  o.add(buildSslCert());
  return o;
}

void checkUnnamed7738(core.List<api.SslCert> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSslCert(o[0] as api.SslCert);
  checkSslCert(o[1] as api.SslCert);
}

core.int buildCounterSslCertsListResponse = 0;
api.SslCertsListResponse buildSslCertsListResponse() {
  var o = api.SslCertsListResponse();
  buildCounterSslCertsListResponse++;
  if (buildCounterSslCertsListResponse < 3) {
    o.items = buildUnnamed7738();
    o.kind = 'foo';
  }
  buildCounterSslCertsListResponse--;
  return o;
}

void checkSslCertsListResponse(api.SslCertsListResponse o) {
  buildCounterSslCertsListResponse++;
  if (buildCounterSslCertsListResponse < 3) {
    checkUnnamed7738(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterSslCertsListResponse--;
}

core.List<core.String> buildUnnamed7739() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7739(core.List<core.String> o) {
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
  var o = api.Tier();
  buildCounterTier++;
  if (buildCounterTier < 3) {
    o.DiskQuota = 'foo';
    o.RAM = 'foo';
    o.kind = 'foo';
    o.region = buildUnnamed7739();
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
    checkUnnamed7739(o.region!);
    unittest.expect(
      o.tier!,
      unittest.equals('foo'),
    );
  }
  buildCounterTier--;
}

core.List<api.Tier> buildUnnamed7740() {
  var o = <api.Tier>[];
  o.add(buildTier());
  o.add(buildTier());
  return o;
}

void checkUnnamed7740(core.List<api.Tier> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTier(o[0] as api.Tier);
  checkTier(o[1] as api.Tier);
}

core.int buildCounterTiersListResponse = 0;
api.TiersListResponse buildTiersListResponse() {
  var o = api.TiersListResponse();
  buildCounterTiersListResponse++;
  if (buildCounterTiersListResponse < 3) {
    o.items = buildUnnamed7740();
    o.kind = 'foo';
  }
  buildCounterTiersListResponse--;
  return o;
}

void checkTiersListResponse(api.TiersListResponse o) {
  buildCounterTiersListResponse++;
  if (buildCounterTiersListResponse < 3) {
    checkUnnamed7740(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterTiersListResponse--;
}

core.int buildCounterTruncateLogContext = 0;
api.TruncateLogContext buildTruncateLogContext() {
  var o = api.TruncateLogContext();
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
  var o = api.User();
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
    checkSqlServerUserDetails(
        o.sqlserverUserDetails! as api.SqlServerUserDetails);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterUser--;
}

core.List<api.User> buildUnnamed7741() {
  var o = <api.User>[];
  o.add(buildUser());
  o.add(buildUser());
  return o;
}

void checkUnnamed7741(core.List<api.User> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUser(o[0] as api.User);
  checkUser(o[1] as api.User);
}

core.int buildCounterUsersListResponse = 0;
api.UsersListResponse buildUsersListResponse() {
  var o = api.UsersListResponse();
  buildCounterUsersListResponse++;
  if (buildCounterUsersListResponse < 3) {
    o.items = buildUnnamed7741();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterUsersListResponse--;
  return o;
}

void checkUsersListResponse(api.UsersListResponse o) {
  buildCounterUsersListResponse++;
  if (buildCounterUsersListResponse < 3) {
    checkUnnamed7741(o.items!);
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
      var o = buildAclEntry();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.AclEntry.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAclEntry(od as api.AclEntry);
    });
  });

  unittest.group('obj-schema-ApiWarning', () {
    unittest.test('to-json--from-json', () async {
      var o = buildApiWarning();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.ApiWarning.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkApiWarning(od as api.ApiWarning);
    });
  });

  unittest.group('obj-schema-BackupConfiguration', () {
    unittest.test('to-json--from-json', () async {
      var o = buildBackupConfiguration();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.BackupConfiguration.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBackupConfiguration(od as api.BackupConfiguration);
    });
  });

  unittest.group('obj-schema-BackupContext', () {
    unittest.test('to-json--from-json', () async {
      var o = buildBackupContext();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.BackupContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBackupContext(od as api.BackupContext);
    });
  });

  unittest.group('obj-schema-BackupRetentionSettings', () {
    unittest.test('to-json--from-json', () async {
      var o = buildBackupRetentionSettings();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.BackupRetentionSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBackupRetentionSettings(od as api.BackupRetentionSettings);
    });
  });

  unittest.group('obj-schema-BackupRun', () {
    unittest.test('to-json--from-json', () async {
      var o = buildBackupRun();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.BackupRun.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkBackupRun(od as api.BackupRun);
    });
  });

  unittest.group('obj-schema-BackupRunsListResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildBackupRunsListResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.BackupRunsListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBackupRunsListResponse(od as api.BackupRunsListResponse);
    });
  });

  unittest.group('obj-schema-BinLogCoordinates', () {
    unittest.test('to-json--from-json', () async {
      var o = buildBinLogCoordinates();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.BinLogCoordinates.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBinLogCoordinates(od as api.BinLogCoordinates);
    });
  });

  unittest.group('obj-schema-CloneContext', () {
    unittest.test('to-json--from-json', () async {
      var o = buildCloneContext();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.CloneContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCloneContext(od as api.CloneContext);
    });
  });

  unittest.group('obj-schema-Database', () {
    unittest.test('to-json--from-json', () async {
      var o = buildDatabase();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Database.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDatabase(od as api.Database);
    });
  });

  unittest.group('obj-schema-DatabaseFlags', () {
    unittest.test('to-json--from-json', () async {
      var o = buildDatabaseFlags();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.DatabaseFlags.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDatabaseFlags(od as api.DatabaseFlags);
    });
  });

  unittest.group('obj-schema-DatabaseInstanceFailoverReplica', () {
    unittest.test('to-json--from-json', () async {
      var o = buildDatabaseInstanceFailoverReplica();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.DatabaseInstanceFailoverReplica.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDatabaseInstanceFailoverReplica(
          od as api.DatabaseInstanceFailoverReplica);
    });
  });

  unittest.group('obj-schema-DatabaseInstance', () {
    unittest.test('to-json--from-json', () async {
      var o = buildDatabaseInstance();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.DatabaseInstance.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDatabaseInstance(od as api.DatabaseInstance);
    });
  });

  unittest.group('obj-schema-DatabasesListResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildDatabasesListResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.DatabasesListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDatabasesListResponse(od as api.DatabasesListResponse);
    });
  });

  unittest.group('obj-schema-DemoteMasterConfiguration', () {
    unittest.test('to-json--from-json', () async {
      var o = buildDemoteMasterConfiguration();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.DemoteMasterConfiguration.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDemoteMasterConfiguration(od as api.DemoteMasterConfiguration);
    });
  });

  unittest.group('obj-schema-DemoteMasterContext', () {
    unittest.test('to-json--from-json', () async {
      var o = buildDemoteMasterContext();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.DemoteMasterContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDemoteMasterContext(od as api.DemoteMasterContext);
    });
  });

  unittest.group('obj-schema-DemoteMasterMySqlReplicaConfiguration', () {
    unittest.test('to-json--from-json', () async {
      var o = buildDemoteMasterMySqlReplicaConfiguration();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.DemoteMasterMySqlReplicaConfiguration.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDemoteMasterMySqlReplicaConfiguration(
          od as api.DemoteMasterMySqlReplicaConfiguration);
    });
  });

  unittest.group('obj-schema-DenyMaintenancePeriod', () {
    unittest.test('to-json--from-json', () async {
      var o = buildDenyMaintenancePeriod();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.DenyMaintenancePeriod.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDenyMaintenancePeriod(od as api.DenyMaintenancePeriod);
    });
  });

  unittest.group('obj-schema-DiskEncryptionConfiguration', () {
    unittest.test('to-json--from-json', () async {
      var o = buildDiskEncryptionConfiguration();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.DiskEncryptionConfiguration.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDiskEncryptionConfiguration(od as api.DiskEncryptionConfiguration);
    });
  });

  unittest.group('obj-schema-DiskEncryptionStatus', () {
    unittest.test('to-json--from-json', () async {
      var o = buildDiskEncryptionStatus();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.DiskEncryptionStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDiskEncryptionStatus(od as api.DiskEncryptionStatus);
    });
  });

  unittest.group('obj-schema-ExportContextCsvExportOptions', () {
    unittest.test('to-json--from-json', () async {
      var o = buildExportContextCsvExportOptions();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ExportContextCsvExportOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExportContextCsvExportOptions(
          od as api.ExportContextCsvExportOptions);
    });
  });

  unittest.group('obj-schema-ExportContextSqlExportOptionsMysqlExportOptions',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildExportContextSqlExportOptionsMysqlExportOptions();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ExportContextSqlExportOptionsMysqlExportOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExportContextSqlExportOptionsMysqlExportOptions(
          od as api.ExportContextSqlExportOptionsMysqlExportOptions);
    });
  });

  unittest.group('obj-schema-ExportContextSqlExportOptions', () {
    unittest.test('to-json--from-json', () async {
      var o = buildExportContextSqlExportOptions();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ExportContextSqlExportOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExportContextSqlExportOptions(
          od as api.ExportContextSqlExportOptions);
    });
  });

  unittest.group('obj-schema-ExportContext', () {
    unittest.test('to-json--from-json', () async {
      var o = buildExportContext();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ExportContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExportContext(od as api.ExportContext);
    });
  });

  unittest.group('obj-schema-FailoverContext', () {
    unittest.test('to-json--from-json', () async {
      var o = buildFailoverContext();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.FailoverContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFailoverContext(od as api.FailoverContext);
    });
  });

  unittest.group('obj-schema-Flag', () {
    unittest.test('to-json--from-json', () async {
      var o = buildFlag();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Flag.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkFlag(od as api.Flag);
    });
  });

  unittest.group('obj-schema-FlagsListResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildFlagsListResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.FlagsListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFlagsListResponse(od as api.FlagsListResponse);
    });
  });

  unittest.group('obj-schema-ImportContextBakImportOptionsEncryptionOptions',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildImportContextBakImportOptionsEncryptionOptions();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ImportContextBakImportOptionsEncryptionOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkImportContextBakImportOptionsEncryptionOptions(
          od as api.ImportContextBakImportOptionsEncryptionOptions);
    });
  });

  unittest.group('obj-schema-ImportContextBakImportOptions', () {
    unittest.test('to-json--from-json', () async {
      var o = buildImportContextBakImportOptions();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ImportContextBakImportOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkImportContextBakImportOptions(
          od as api.ImportContextBakImportOptions);
    });
  });

  unittest.group('obj-schema-ImportContextCsvImportOptions', () {
    unittest.test('to-json--from-json', () async {
      var o = buildImportContextCsvImportOptions();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ImportContextCsvImportOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkImportContextCsvImportOptions(
          od as api.ImportContextCsvImportOptions);
    });
  });

  unittest.group('obj-schema-ImportContext', () {
    unittest.test('to-json--from-json', () async {
      var o = buildImportContext();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ImportContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkImportContext(od as api.ImportContext);
    });
  });

  unittest.group('obj-schema-InsightsConfig', () {
    unittest.test('to-json--from-json', () async {
      var o = buildInsightsConfig();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.InsightsConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInsightsConfig(od as api.InsightsConfig);
    });
  });

  unittest.group('obj-schema-InstancesCloneRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildInstancesCloneRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.InstancesCloneRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInstancesCloneRequest(od as api.InstancesCloneRequest);
    });
  });

  unittest.group('obj-schema-InstancesDemoteMasterRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildInstancesDemoteMasterRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.InstancesDemoteMasterRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInstancesDemoteMasterRequest(od as api.InstancesDemoteMasterRequest);
    });
  });

  unittest.group('obj-schema-InstancesExportRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildInstancesExportRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.InstancesExportRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInstancesExportRequest(od as api.InstancesExportRequest);
    });
  });

  unittest.group('obj-schema-InstancesFailoverRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildInstancesFailoverRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.InstancesFailoverRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInstancesFailoverRequest(od as api.InstancesFailoverRequest);
    });
  });

  unittest.group('obj-schema-InstancesImportRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildInstancesImportRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.InstancesImportRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInstancesImportRequest(od as api.InstancesImportRequest);
    });
  });

  unittest.group('obj-schema-InstancesListResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildInstancesListResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.InstancesListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInstancesListResponse(od as api.InstancesListResponse);
    });
  });

  unittest.group('obj-schema-InstancesListServerCasResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildInstancesListServerCasResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.InstancesListServerCasResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInstancesListServerCasResponse(
          od as api.InstancesListServerCasResponse);
    });
  });

  unittest.group('obj-schema-InstancesRestoreBackupRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildInstancesRestoreBackupRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.InstancesRestoreBackupRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInstancesRestoreBackupRequest(
          od as api.InstancesRestoreBackupRequest);
    });
  });

  unittest.group('obj-schema-InstancesRotateServerCaRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildInstancesRotateServerCaRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.InstancesRotateServerCaRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInstancesRotateServerCaRequest(
          od as api.InstancesRotateServerCaRequest);
    });
  });

  unittest.group('obj-schema-InstancesTruncateLogRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildInstancesTruncateLogRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.InstancesTruncateLogRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInstancesTruncateLogRequest(od as api.InstancesTruncateLogRequest);
    });
  });

  unittest.group('obj-schema-IpConfiguration', () {
    unittest.test('to-json--from-json', () async {
      var o = buildIpConfiguration();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.IpConfiguration.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIpConfiguration(od as api.IpConfiguration);
    });
  });

  unittest.group('obj-schema-IpMapping', () {
    unittest.test('to-json--from-json', () async {
      var o = buildIpMapping();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.IpMapping.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkIpMapping(od as api.IpMapping);
    });
  });

  unittest.group('obj-schema-LocationPreference', () {
    unittest.test('to-json--from-json', () async {
      var o = buildLocationPreference();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.LocationPreference.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLocationPreference(od as api.LocationPreference);
    });
  });

  unittest.group('obj-schema-MaintenanceWindow', () {
    unittest.test('to-json--from-json', () async {
      var o = buildMaintenanceWindow();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.MaintenanceWindow.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMaintenanceWindow(od as api.MaintenanceWindow);
    });
  });

  unittest.group('obj-schema-MySqlReplicaConfiguration', () {
    unittest.test('to-json--from-json', () async {
      var o = buildMySqlReplicaConfiguration();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.MySqlReplicaConfiguration.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMySqlReplicaConfiguration(od as api.MySqlReplicaConfiguration);
    });
  });

  unittest.group('obj-schema-OnPremisesConfiguration', () {
    unittest.test('to-json--from-json', () async {
      var o = buildOnPremisesConfiguration();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.OnPremisesConfiguration.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOnPremisesConfiguration(od as api.OnPremisesConfiguration);
    });
  });

  unittest.group('obj-schema-Operation', () {
    unittest.test('to-json--from-json', () async {
      var o = buildOperation();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Operation.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOperation(od as api.Operation);
    });
  });

  unittest.group('obj-schema-OperationError', () {
    unittest.test('to-json--from-json', () async {
      var o = buildOperationError();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.OperationError.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOperationError(od as api.OperationError);
    });
  });

  unittest.group('obj-schema-OperationErrors', () {
    unittest.test('to-json--from-json', () async {
      var o = buildOperationErrors();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.OperationErrors.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOperationErrors(od as api.OperationErrors);
    });
  });

  unittest.group('obj-schema-OperationsListResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildOperationsListResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.OperationsListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOperationsListResponse(od as api.OperationsListResponse);
    });
  });

  unittest.group('obj-schema-ReplicaConfiguration', () {
    unittest.test('to-json--from-json', () async {
      var o = buildReplicaConfiguration();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ReplicaConfiguration.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReplicaConfiguration(od as api.ReplicaConfiguration);
    });
  });

  unittest.group('obj-schema-Reschedule', () {
    unittest.test('to-json--from-json', () async {
      var o = buildReschedule();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Reschedule.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkReschedule(od as api.Reschedule);
    });
  });

  unittest.group('obj-schema-RestoreBackupContext', () {
    unittest.test('to-json--from-json', () async {
      var o = buildRestoreBackupContext();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.RestoreBackupContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRestoreBackupContext(od as api.RestoreBackupContext);
    });
  });

  unittest.group('obj-schema-RotateServerCaContext', () {
    unittest.test('to-json--from-json', () async {
      var o = buildRotateServerCaContext();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.RotateServerCaContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRotateServerCaContext(od as api.RotateServerCaContext);
    });
  });

  unittest.group('obj-schema-Settings', () {
    unittest.test('to-json--from-json', () async {
      var o = buildSettings();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Settings.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSettings(od as api.Settings);
    });
  });

  unittest.group('obj-schema-SqlActiveDirectoryConfig', () {
    unittest.test('to-json--from-json', () async {
      var o = buildSqlActiveDirectoryConfig();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.SqlActiveDirectoryConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSqlActiveDirectoryConfig(od as api.SqlActiveDirectoryConfig);
    });
  });

  unittest.group('obj-schema-SqlExternalSyncSettingError', () {
    unittest.test('to-json--from-json', () async {
      var o = buildSqlExternalSyncSettingError();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.SqlExternalSyncSettingError.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSqlExternalSyncSettingError(od as api.SqlExternalSyncSettingError);
    });
  });

  unittest.group('obj-schema-SqlInstancesRescheduleMaintenanceRequestBody', () {
    unittest.test('to-json--from-json', () async {
      var o = buildSqlInstancesRescheduleMaintenanceRequestBody();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.SqlInstancesRescheduleMaintenanceRequestBody.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSqlInstancesRescheduleMaintenanceRequestBody(
          od as api.SqlInstancesRescheduleMaintenanceRequestBody);
    });
  });

  unittest.group('obj-schema-SqlInstancesVerifyExternalSyncSettingsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildSqlInstancesVerifyExternalSyncSettingsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.SqlInstancesVerifyExternalSyncSettingsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSqlInstancesVerifyExternalSyncSettingsResponse(
          od as api.SqlInstancesVerifyExternalSyncSettingsResponse);
    });
  });

  unittest.group('obj-schema-SqlOutOfDiskReport', () {
    unittest.test('to-json--from-json', () async {
      var o = buildSqlOutOfDiskReport();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.SqlOutOfDiskReport.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSqlOutOfDiskReport(od as api.SqlOutOfDiskReport);
    });
  });

  unittest.group('obj-schema-SqlScheduledMaintenance', () {
    unittest.test('to-json--from-json', () async {
      var o = buildSqlScheduledMaintenance();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.SqlScheduledMaintenance.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSqlScheduledMaintenance(od as api.SqlScheduledMaintenance);
    });
  });

  unittest.group('obj-schema-SqlServerDatabaseDetails', () {
    unittest.test('to-json--from-json', () async {
      var o = buildSqlServerDatabaseDetails();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.SqlServerDatabaseDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSqlServerDatabaseDetails(od as api.SqlServerDatabaseDetails);
    });
  });

  unittest.group('obj-schema-SqlServerUserDetails', () {
    unittest.test('to-json--from-json', () async {
      var o = buildSqlServerUserDetails();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.SqlServerUserDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSqlServerUserDetails(od as api.SqlServerUserDetails);
    });
  });

  unittest.group('obj-schema-SslCert', () {
    unittest.test('to-json--from-json', () async {
      var o = buildSslCert();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.SslCert.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSslCert(od as api.SslCert);
    });
  });

  unittest.group('obj-schema-SslCertDetail', () {
    unittest.test('to-json--from-json', () async {
      var o = buildSslCertDetail();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.SslCertDetail.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSslCertDetail(od as api.SslCertDetail);
    });
  });

  unittest.group('obj-schema-SslCertsCreateEphemeralRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildSslCertsCreateEphemeralRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.SslCertsCreateEphemeralRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSslCertsCreateEphemeralRequest(
          od as api.SslCertsCreateEphemeralRequest);
    });
  });

  unittest.group('obj-schema-SslCertsInsertRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildSslCertsInsertRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.SslCertsInsertRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSslCertsInsertRequest(od as api.SslCertsInsertRequest);
    });
  });

  unittest.group('obj-schema-SslCertsInsertResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildSslCertsInsertResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.SslCertsInsertResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSslCertsInsertResponse(od as api.SslCertsInsertResponse);
    });
  });

  unittest.group('obj-schema-SslCertsListResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildSslCertsListResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.SslCertsListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSslCertsListResponse(od as api.SslCertsListResponse);
    });
  });

  unittest.group('obj-schema-Tier', () {
    unittest.test('to-json--from-json', () async {
      var o = buildTier();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Tier.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTier(od as api.Tier);
    });
  });

  unittest.group('obj-schema-TiersListResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildTiersListResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.TiersListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTiersListResponse(od as api.TiersListResponse);
    });
  });

  unittest.group('obj-schema-TruncateLogContext', () {
    unittest.test('to-json--from-json', () async {
      var o = buildTruncateLogContext();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.TruncateLogContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTruncateLogContext(od as api.TruncateLogContext);
    });
  });

  unittest.group('obj-schema-User', () {
    unittest.test('to-json--from-json', () async {
      var o = buildUser();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.User.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkUser(od as api.User);
    });
  });

  unittest.group('obj-schema-UsersListResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildUsersListResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.UsersListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUsersListResponse(od as api.UsersListResponse);
    });
  });

  unittest.group('resource-BackupRunsResource', () {
    unittest.test('method--delete', () async {
      var mock = HttpServerMock();
      var res = api.SQLAdminApi(mock).backupRuns;
      var arg_project = 'foo';
      var arg_instance = 'foo';
      var arg_id = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals("sql/v1beta4/projects/"),
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
          unittest.equals("/instances/"),
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
          unittest.equals("/backupRuns/"),
        );
        pathOffset += 12;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_id'),
        );

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_project, arg_instance, arg_id,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      var mock = HttpServerMock();
      var res = api.SQLAdminApi(mock).backupRuns;
      var arg_project = 'foo';
      var arg_instance = 'foo';
      var arg_id = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals("sql/v1beta4/projects/"),
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
          unittest.equals("/instances/"),
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
          unittest.equals("/backupRuns/"),
        );
        pathOffset += 12;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_id'),
        );

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildBackupRun());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_project, arg_instance, arg_id,
          $fields: arg_$fields);
      checkBackupRun(response as api.BackupRun);
    });

    unittest.test('method--insert', () async {
      var mock = HttpServerMock();
      var res = api.SQLAdminApi(mock).backupRuns;
      var arg_request = buildBackupRun();
      var arg_project = 'foo';
      var arg_instance = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.BackupRun.fromJson(json as core.Map<core.String, core.dynamic>);
        checkBackupRun(obj as api.BackupRun);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals("sql/v1beta4/projects/"),
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
          unittest.equals("/instances/"),
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
          unittest.equals("/backupRuns"),
        );
        pathOffset += 11;

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.insert(arg_request, arg_project, arg_instance,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.SQLAdminApi(mock).backupRuns;
      var arg_project = 'foo';
      var arg_instance = 'foo';
      var arg_maxResults = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals("sql/v1beta4/projects/"),
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
          unittest.equals("/instances/"),
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
          unittest.equals("/backupRuns"),
        );
        pathOffset += 11;

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
          core.int.parse(queryMap["maxResults"]!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildBackupRunsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_project, arg_instance,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkBackupRunsListResponse(response as api.BackupRunsListResponse);
    });
  });

  unittest.group('resource-DatabasesResource', () {
    unittest.test('method--delete', () async {
      var mock = HttpServerMock();
      var res = api.SQLAdminApi(mock).databases;
      var arg_project = 'foo';
      var arg_instance = 'foo';
      var arg_database = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals("sql/v1beta4/projects/"),
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
          unittest.equals("/instances/"),
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
          unittest.equals("/databases/"),
        );
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_database'),
        );

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_project, arg_instance, arg_database,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      var mock = HttpServerMock();
      var res = api.SQLAdminApi(mock).databases;
      var arg_project = 'foo';
      var arg_instance = 'foo';
      var arg_database = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals("sql/v1beta4/projects/"),
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
          unittest.equals("/instances/"),
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
          unittest.equals("/databases/"),
        );
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_database'),
        );

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildDatabase());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_project, arg_instance, arg_database,
          $fields: arg_$fields);
      checkDatabase(response as api.Database);
    });

    unittest.test('method--insert', () async {
      var mock = HttpServerMock();
      var res = api.SQLAdminApi(mock).databases;
      var arg_request = buildDatabase();
      var arg_project = 'foo';
      var arg_instance = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Database.fromJson(json as core.Map<core.String, core.dynamic>);
        checkDatabase(obj as api.Database);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals("sql/v1beta4/projects/"),
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
          unittest.equals("/instances/"),
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
          unittest.equals("/databases"),
        );
        pathOffset += 10;

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.insert(arg_request, arg_project, arg_instance,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.SQLAdminApi(mock).databases;
      var arg_project = 'foo';
      var arg_instance = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals("sql/v1beta4/projects/"),
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
          unittest.equals("/instances/"),
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
          unittest.equals("/databases"),
        );
        pathOffset += 10;

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildDatabasesListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.list(arg_project, arg_instance, $fields: arg_$fields);
      checkDatabasesListResponse(response as api.DatabasesListResponse);
    });

    unittest.test('method--patch', () async {
      var mock = HttpServerMock();
      var res = api.SQLAdminApi(mock).databases;
      var arg_request = buildDatabase();
      var arg_project = 'foo';
      var arg_instance = 'foo';
      var arg_database = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Database.fromJson(json as core.Map<core.String, core.dynamic>);
        checkDatabase(obj as api.Database);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals("sql/v1beta4/projects/"),
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
          unittest.equals("/instances/"),
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
          unittest.equals("/databases/"),
        );
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_database'),
        );

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(
          arg_request, arg_project, arg_instance, arg_database,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--update', () async {
      var mock = HttpServerMock();
      var res = api.SQLAdminApi(mock).databases;
      var arg_request = buildDatabase();
      var arg_project = 'foo';
      var arg_instance = 'foo';
      var arg_database = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Database.fromJson(json as core.Map<core.String, core.dynamic>);
        checkDatabase(obj as api.Database);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals("sql/v1beta4/projects/"),
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
          unittest.equals("/instances/"),
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
          unittest.equals("/databases/"),
        );
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_database'),
        );

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
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
      var mock = HttpServerMock();
      var res = api.SQLAdminApi(mock).flags;
      var arg_databaseVersion = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals("sql/v1beta4/flags"),
        );
        pathOffset += 17;

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
          queryMap["databaseVersion"]!.first,
          unittest.equals(arg_databaseVersion),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildFlagsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          databaseVersion: arg_databaseVersion, $fields: arg_$fields);
      checkFlagsListResponse(response as api.FlagsListResponse);
    });
  });

  unittest.group('resource-InstancesResource', () {
    unittest.test('method--addServerCa', () async {
      var mock = HttpServerMock();
      var res = api.SQLAdminApi(mock).instances;
      var arg_project = 'foo';
      var arg_instance = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals("sql/v1beta4/projects/"),
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
          unittest.equals("/instances/"),
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
          unittest.equals("/addServerCa"),
        );
        pathOffset += 12;

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.addServerCa(arg_project, arg_instance,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--clone', () async {
      var mock = HttpServerMock();
      var res = api.SQLAdminApi(mock).instances;
      var arg_request = buildInstancesCloneRequest();
      var arg_project = 'foo';
      var arg_instance = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.InstancesCloneRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkInstancesCloneRequest(obj as api.InstancesCloneRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals("sql/v1beta4/projects/"),
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
          unittest.equals("/instances/"),
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
          unittest.equals("/clone"),
        );
        pathOffset += 6;

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.clone(arg_request, arg_project, arg_instance,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      var mock = HttpServerMock();
      var res = api.SQLAdminApi(mock).instances;
      var arg_project = 'foo';
      var arg_instance = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals("sql/v1beta4/projects/"),
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
          unittest.equals("/instances/"),
        );
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_instance'),
        );

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.delete(arg_project, arg_instance, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--demoteMaster', () async {
      var mock = HttpServerMock();
      var res = api.SQLAdminApi(mock).instances;
      var arg_request = buildInstancesDemoteMasterRequest();
      var arg_project = 'foo';
      var arg_instance = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.InstancesDemoteMasterRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkInstancesDemoteMasterRequest(
            obj as api.InstancesDemoteMasterRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals("sql/v1beta4/projects/"),
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
          unittest.equals("/instances/"),
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
          unittest.equals("/demoteMaster"),
        );
        pathOffset += 13;

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.demoteMaster(
          arg_request, arg_project, arg_instance,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--export', () async {
      var mock = HttpServerMock();
      var res = api.SQLAdminApi(mock).instances;
      var arg_request = buildInstancesExportRequest();
      var arg_project = 'foo';
      var arg_instance = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.InstancesExportRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkInstancesExportRequest(obj as api.InstancesExportRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals("sql/v1beta4/projects/"),
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
          unittest.equals("/instances/"),
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
          unittest.equals("/export"),
        );
        pathOffset += 7;

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.export(arg_request, arg_project, arg_instance,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--failover', () async {
      var mock = HttpServerMock();
      var res = api.SQLAdminApi(mock).instances;
      var arg_request = buildInstancesFailoverRequest();
      var arg_project = 'foo';
      var arg_instance = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.InstancesFailoverRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkInstancesFailoverRequest(obj as api.InstancesFailoverRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals("sql/v1beta4/projects/"),
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
          unittest.equals("/instances/"),
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
          unittest.equals("/failover"),
        );
        pathOffset += 9;

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.failover(
          arg_request, arg_project, arg_instance,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      var mock = HttpServerMock();
      var res = api.SQLAdminApi(mock).instances;
      var arg_project = 'foo';
      var arg_instance = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals("sql/v1beta4/projects/"),
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
          unittest.equals("/instances/"),
        );
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_instance'),
        );

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildDatabaseInstance());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_project, arg_instance, $fields: arg_$fields);
      checkDatabaseInstance(response as api.DatabaseInstance);
    });

    unittest.test('method--import', () async {
      var mock = HttpServerMock();
      var res = api.SQLAdminApi(mock).instances;
      var arg_request = buildInstancesImportRequest();
      var arg_project = 'foo';
      var arg_instance = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.InstancesImportRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkInstancesImportRequest(obj as api.InstancesImportRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals("sql/v1beta4/projects/"),
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
          unittest.equals("/instances/"),
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
          unittest.equals("/import"),
        );
        pathOffset += 7;

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.import(arg_request, arg_project, arg_instance,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--insert', () async {
      var mock = HttpServerMock();
      var res = api.SQLAdminApi(mock).instances;
      var arg_request = buildDatabaseInstance();
      var arg_project = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.DatabaseInstance.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDatabaseInstance(obj as api.DatabaseInstance);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals("sql/v1beta4/projects/"),
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
          unittest.equals("/instances"),
        );
        pathOffset += 10;

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.insert(arg_request, arg_project, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.SQLAdminApi(mock).instances;
      var arg_project = 'foo';
      var arg_filter = 'foo';
      var arg_maxResults = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals("sql/v1beta4/projects/"),
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
          unittest.equals("/instances"),
        );
        pathOffset += 10;

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
          queryMap["filter"]!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          core.int.parse(queryMap["maxResults"]!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildInstancesListResponse());
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
      var mock = HttpServerMock();
      var res = api.SQLAdminApi(mock).instances;
      var arg_project = 'foo';
      var arg_instance = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals("sql/v1beta4/projects/"),
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
          unittest.equals("/instances/"),
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
          unittest.equals("/listServerCas"),
        );
        pathOffset += 14;

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildInstancesListServerCasResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.listServerCas(arg_project, arg_instance,
          $fields: arg_$fields);
      checkInstancesListServerCasResponse(
          response as api.InstancesListServerCasResponse);
    });

    unittest.test('method--patch', () async {
      var mock = HttpServerMock();
      var res = api.SQLAdminApi(mock).instances;
      var arg_request = buildDatabaseInstance();
      var arg_project = 'foo';
      var arg_instance = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.DatabaseInstance.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDatabaseInstance(obj as api.DatabaseInstance);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals("sql/v1beta4/projects/"),
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
          unittest.equals("/instances/"),
        );
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_instance'),
        );

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_project, arg_instance,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--promoteReplica', () async {
      var mock = HttpServerMock();
      var res = api.SQLAdminApi(mock).instances;
      var arg_project = 'foo';
      var arg_instance = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals("sql/v1beta4/projects/"),
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
          unittest.equals("/instances/"),
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
          unittest.equals("/promoteReplica"),
        );
        pathOffset += 15;

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.promoteReplica(arg_project, arg_instance,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--resetSslConfig', () async {
      var mock = HttpServerMock();
      var res = api.SQLAdminApi(mock).instances;
      var arg_project = 'foo';
      var arg_instance = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals("sql/v1beta4/projects/"),
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
          unittest.equals("/instances/"),
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
          unittest.equals("/resetSslConfig"),
        );
        pathOffset += 15;

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.resetSslConfig(arg_project, arg_instance,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--restart', () async {
      var mock = HttpServerMock();
      var res = api.SQLAdminApi(mock).instances;
      var arg_project = 'foo';
      var arg_instance = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals("sql/v1beta4/projects/"),
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
          unittest.equals("/instances/"),
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
          unittest.equals("/restart"),
        );
        pathOffset += 8;

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.restart(arg_project, arg_instance, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--restoreBackup', () async {
      var mock = HttpServerMock();
      var res = api.SQLAdminApi(mock).instances;
      var arg_request = buildInstancesRestoreBackupRequest();
      var arg_project = 'foo';
      var arg_instance = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.InstancesRestoreBackupRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkInstancesRestoreBackupRequest(
            obj as api.InstancesRestoreBackupRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals("sql/v1beta4/projects/"),
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
          unittest.equals("/instances/"),
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
          unittest.equals("/restoreBackup"),
        );
        pathOffset += 14;

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.restoreBackup(
          arg_request, arg_project, arg_instance,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--rotateServerCa', () async {
      var mock = HttpServerMock();
      var res = api.SQLAdminApi(mock).instances;
      var arg_request = buildInstancesRotateServerCaRequest();
      var arg_project = 'foo';
      var arg_instance = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.InstancesRotateServerCaRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkInstancesRotateServerCaRequest(
            obj as api.InstancesRotateServerCaRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals("sql/v1beta4/projects/"),
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
          unittest.equals("/instances/"),
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
          unittest.equals("/rotateServerCa"),
        );
        pathOffset += 15;

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.rotateServerCa(
          arg_request, arg_project, arg_instance,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--startReplica', () async {
      var mock = HttpServerMock();
      var res = api.SQLAdminApi(mock).instances;
      var arg_project = 'foo';
      var arg_instance = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals("sql/v1beta4/projects/"),
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
          unittest.equals("/instances/"),
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
          unittest.equals("/startReplica"),
        );
        pathOffset += 13;

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.startReplica(arg_project, arg_instance,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--stopReplica', () async {
      var mock = HttpServerMock();
      var res = api.SQLAdminApi(mock).instances;
      var arg_project = 'foo';
      var arg_instance = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals("sql/v1beta4/projects/"),
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
          unittest.equals("/instances/"),
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
          unittest.equals("/stopReplica"),
        );
        pathOffset += 12;

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.stopReplica(arg_project, arg_instance,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--truncateLog', () async {
      var mock = HttpServerMock();
      var res = api.SQLAdminApi(mock).instances;
      var arg_request = buildInstancesTruncateLogRequest();
      var arg_project = 'foo';
      var arg_instance = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.InstancesTruncateLogRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkInstancesTruncateLogRequest(
            obj as api.InstancesTruncateLogRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals("sql/v1beta4/projects/"),
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
          unittest.equals("/instances/"),
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
          unittest.equals("/truncateLog"),
        );
        pathOffset += 12;

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.truncateLog(
          arg_request, arg_project, arg_instance,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--update', () async {
      var mock = HttpServerMock();
      var res = api.SQLAdminApi(mock).instances;
      var arg_request = buildDatabaseInstance();
      var arg_project = 'foo';
      var arg_instance = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.DatabaseInstance.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDatabaseInstance(obj as api.DatabaseInstance);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals("sql/v1beta4/projects/"),
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
          unittest.equals("/instances/"),
        );
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_instance'),
        );

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(arg_request, arg_project, arg_instance,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-OperationsResource', () {
    unittest.test('method--get', () async {
      var mock = HttpServerMock();
      var res = api.SQLAdminApi(mock).operations;
      var arg_project = 'foo';
      var arg_operation = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals("sql/v1beta4/projects/"),
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
          unittest.equals("/operations/"),
        );
        pathOffset += 12;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_operation'),
        );

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_project, arg_operation, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.SQLAdminApi(mock).operations;
      var arg_project = 'foo';
      var arg_instance = 'foo';
      var arg_maxResults = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals("sql/v1beta4/projects/"),
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
          unittest.equals("/operations"),
        );
        pathOffset += 11;

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
          queryMap["instance"]!.first,
          unittest.equals(arg_instance),
        );
        unittest.expect(
          core.int.parse(queryMap["maxResults"]!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperationsListResponse());
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
      var mock = HttpServerMock();
      var res = api.SQLAdminApi(mock).projects.instances;
      var arg_request = buildSqlInstancesRescheduleMaintenanceRequestBody();
      var arg_project = 'foo';
      var arg_instance = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SqlInstancesRescheduleMaintenanceRequestBody.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSqlInstancesRescheduleMaintenanceRequestBody(
            obj as api.SqlInstancesRescheduleMaintenanceRequestBody);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals("sql/v1beta4/projects/"),
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
          unittest.equals("/instances/"),
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
          unittest.equals("/rescheduleMaintenance"),
        );
        pathOffset += 22;

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.rescheduleMaintenance(
          arg_request, arg_project, arg_instance,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--startExternalSync', () async {
      var mock = HttpServerMock();
      var res = api.SQLAdminApi(mock).projects.instances;
      var arg_project = 'foo';
      var arg_instance = 'foo';
      var arg_skipVerification = true;
      var arg_syncMode = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals("sql/v1beta4/projects/"),
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
          unittest.equals("/instances/"),
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
          unittest.equals("/startExternalSync"),
        );
        pathOffset += 18;

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
          queryMap["skipVerification"]!.first,
          unittest.equals("$arg_skipVerification"),
        );
        unittest.expect(
          queryMap["syncMode"]!.first,
          unittest.equals(arg_syncMode),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.startExternalSync(arg_project, arg_instance,
          skipVerification: arg_skipVerification,
          syncMode: arg_syncMode,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--verifyExternalSyncSettings', () async {
      var mock = HttpServerMock();
      var res = api.SQLAdminApi(mock).projects.instances;
      var arg_project = 'foo';
      var arg_instance = 'foo';
      var arg_syncMode = 'foo';
      var arg_verifyConnectionOnly = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals("sql/v1beta4/projects/"),
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
          unittest.equals("/instances/"),
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
          unittest.equals("/verifyExternalSyncSettings"),
        );
        pathOffset += 27;

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
          queryMap["syncMode"]!.first,
          unittest.equals(arg_syncMode),
        );
        unittest.expect(
          queryMap["verifyConnectionOnly"]!.first,
          unittest.equals("$arg_verifyConnectionOnly"),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
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
      var mock = HttpServerMock();
      var res = api.SQLAdminApi(mock).sslCerts;
      var arg_request = buildSslCertsCreateEphemeralRequest();
      var arg_project = 'foo';
      var arg_instance = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SslCertsCreateEphemeralRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSslCertsCreateEphemeralRequest(
            obj as api.SslCertsCreateEphemeralRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals("sql/v1beta4/projects/"),
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
          unittest.equals("/instances/"),
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
          unittest.equals("/createEphemeral"),
        );
        pathOffset += 16;

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSslCert());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.createEphemeral(
          arg_request, arg_project, arg_instance,
          $fields: arg_$fields);
      checkSslCert(response as api.SslCert);
    });

    unittest.test('method--delete', () async {
      var mock = HttpServerMock();
      var res = api.SQLAdminApi(mock).sslCerts;
      var arg_project = 'foo';
      var arg_instance = 'foo';
      var arg_sha1Fingerprint = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals("sql/v1beta4/projects/"),
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
          unittest.equals("/instances/"),
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
          unittest.equals("/sslCerts/"),
        );
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_sha1Fingerprint'),
        );

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(
          arg_project, arg_instance, arg_sha1Fingerprint,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      var mock = HttpServerMock();
      var res = api.SQLAdminApi(mock).sslCerts;
      var arg_project = 'foo';
      var arg_instance = 'foo';
      var arg_sha1Fingerprint = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals("sql/v1beta4/projects/"),
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
          unittest.equals("/instances/"),
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
          unittest.equals("/sslCerts/"),
        );
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_sha1Fingerprint'),
        );

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSslCert());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(
          arg_project, arg_instance, arg_sha1Fingerprint,
          $fields: arg_$fields);
      checkSslCert(response as api.SslCert);
    });

    unittest.test('method--insert', () async {
      var mock = HttpServerMock();
      var res = api.SQLAdminApi(mock).sslCerts;
      var arg_request = buildSslCertsInsertRequest();
      var arg_project = 'foo';
      var arg_instance = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SslCertsInsertRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSslCertsInsertRequest(obj as api.SslCertsInsertRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals("sql/v1beta4/projects/"),
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
          unittest.equals("/instances/"),
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
          unittest.equals("/sslCerts"),
        );
        pathOffset += 9;

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSslCertsInsertResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.insert(arg_request, arg_project, arg_instance,
          $fields: arg_$fields);
      checkSslCertsInsertResponse(response as api.SslCertsInsertResponse);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.SQLAdminApi(mock).sslCerts;
      var arg_project = 'foo';
      var arg_instance = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals("sql/v1beta4/projects/"),
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
          unittest.equals("/instances/"),
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
          unittest.equals("/sslCerts"),
        );
        pathOffset += 9;

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSslCertsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.list(arg_project, arg_instance, $fields: arg_$fields);
      checkSslCertsListResponse(response as api.SslCertsListResponse);
    });
  });

  unittest.group('resource-TiersResource', () {
    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.SQLAdminApi(mock).tiers;
      var arg_project = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals("sql/v1beta4/projects/"),
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
          unittest.equals("/tiers"),
        );
        pathOffset += 6;

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildTiersListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_project, $fields: arg_$fields);
      checkTiersListResponse(response as api.TiersListResponse);
    });
  });

  unittest.group('resource-UsersResource', () {
    unittest.test('method--delete', () async {
      var mock = HttpServerMock();
      var res = api.SQLAdminApi(mock).users;
      var arg_project = 'foo';
      var arg_instance = 'foo';
      var arg_host = 'foo';
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals("sql/v1beta4/projects/"),
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
          unittest.equals("/instances/"),
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
          unittest.equals("/users"),
        );
        pathOffset += 6;

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
          queryMap["host"]!.first,
          unittest.equals(arg_host),
        );
        unittest.expect(
          queryMap["name"]!.first,
          unittest.equals(arg_name),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_project, arg_instance,
          host: arg_host, name: arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--insert', () async {
      var mock = HttpServerMock();
      var res = api.SQLAdminApi(mock).users;
      var arg_request = buildUser();
      var arg_project = 'foo';
      var arg_instance = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.User.fromJson(json as core.Map<core.String, core.dynamic>);
        checkUser(obj as api.User);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals("sql/v1beta4/projects/"),
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
          unittest.equals("/instances/"),
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
          unittest.equals("/users"),
        );
        pathOffset += 6;

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.insert(arg_request, arg_project, arg_instance,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.SQLAdminApi(mock).users;
      var arg_project = 'foo';
      var arg_instance = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals("sql/v1beta4/projects/"),
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
          unittest.equals("/instances/"),
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
          unittest.equals("/users"),
        );
        pathOffset += 6;

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildUsersListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.list(arg_project, arg_instance, $fields: arg_$fields);
      checkUsersListResponse(response as api.UsersListResponse);
    });

    unittest.test('method--update', () async {
      var mock = HttpServerMock();
      var res = api.SQLAdminApi(mock).users;
      var arg_request = buildUser();
      var arg_project = 'foo';
      var arg_instance = 'foo';
      var arg_host = 'foo';
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.User.fromJson(json as core.Map<core.String, core.dynamic>);
        checkUser(obj as api.User);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals("sql/v1beta4/projects/"),
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
          unittest.equals("/instances/"),
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
          unittest.equals("/users"),
        );
        pathOffset += 6;

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
          queryMap["host"]!.first,
          unittest.equals(arg_host),
        );
        unittest.expect(
          queryMap["name"]!.first,
          unittest.equals(arg_name),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(arg_request, arg_project, arg_instance,
          host: arg_host, name: arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });
}
