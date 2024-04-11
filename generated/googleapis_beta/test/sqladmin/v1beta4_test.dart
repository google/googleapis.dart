// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
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

core.int buildCounterAcquireSsrsLeaseContext = 0;
api.AcquireSsrsLeaseContext buildAcquireSsrsLeaseContext() {
  final o = api.AcquireSsrsLeaseContext();
  buildCounterAcquireSsrsLeaseContext++;
  if (buildCounterAcquireSsrsLeaseContext < 3) {
    o.duration = 'foo';
    o.reportDatabase = 'foo';
    o.serviceLogin = 'foo';
    o.setupLogin = 'foo';
  }
  buildCounterAcquireSsrsLeaseContext--;
  return o;
}

void checkAcquireSsrsLeaseContext(api.AcquireSsrsLeaseContext o) {
  buildCounterAcquireSsrsLeaseContext++;
  if (buildCounterAcquireSsrsLeaseContext < 3) {
    unittest.expect(
      o.duration!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reportDatabase!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serviceLogin!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.setupLogin!,
      unittest.equals('foo'),
    );
  }
  buildCounterAcquireSsrsLeaseContext--;
}

core.int buildCounterAdvancedMachineFeatures = 0;
api.AdvancedMachineFeatures buildAdvancedMachineFeatures() {
  final o = api.AdvancedMachineFeatures();
  buildCounterAdvancedMachineFeatures++;
  if (buildCounterAdvancedMachineFeatures < 3) {
    o.threadsPerCore = 42;
  }
  buildCounterAdvancedMachineFeatures--;
  return o;
}

void checkAdvancedMachineFeatures(api.AdvancedMachineFeatures o) {
  buildCounterAdvancedMachineFeatures++;
  if (buildCounterAdvancedMachineFeatures < 3) {
    unittest.expect(
      o.threadsPerCore!,
      unittest.equals(42),
    );
  }
  buildCounterAdvancedMachineFeatures--;
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
    o.transactionalLogStorageState = 'foo';
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
    unittest.expect(
      o.transactionalLogStorageState!,
      unittest.equals('foo'),
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

core.int buildCounterBackupReencryptionConfig = 0;
api.BackupReencryptionConfig buildBackupReencryptionConfig() {
  final o = api.BackupReencryptionConfig();
  buildCounterBackupReencryptionConfig++;
  if (buildCounterBackupReencryptionConfig < 3) {
    o.backupLimit = 42;
    o.backupType = 'foo';
  }
  buildCounterBackupReencryptionConfig--;
  return o;
}

void checkBackupReencryptionConfig(api.BackupReencryptionConfig o) {
  buildCounterBackupReencryptionConfig++;
  if (buildCounterBackupReencryptionConfig < 3) {
    unittest.expect(
      o.backupLimit!,
      unittest.equals(42),
    );
    unittest.expect(
      o.backupType!,
      unittest.equals('foo'),
    );
  }
  buildCounterBackupReencryptionConfig--;
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
    o.timeZone = 'foo';
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
      o.timeZone!,
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

core.List<api.BackupRun> buildUnnamed0() => [
      buildBackupRun(),
      buildBackupRun(),
    ];

void checkUnnamed0(core.List<api.BackupRun> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBackupRun(o[0]);
  checkBackupRun(o[1]);
}

core.int buildCounterBackupRunsListResponse = 0;
api.BackupRunsListResponse buildBackupRunsListResponse() {
  final o = api.BackupRunsListResponse();
  buildCounterBackupRunsListResponse++;
  if (buildCounterBackupRunsListResponse < 3) {
    o.items = buildUnnamed0();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterBackupRunsListResponse--;
  return o;
}

void checkBackupRunsListResponse(api.BackupRunsListResponse o) {
  buildCounterBackupRunsListResponse++;
  if (buildCounterBackupRunsListResponse < 3) {
    checkUnnamed0(o.items!);
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

core.int buildCounterCloneContext = 0;
api.CloneContext buildCloneContext() {
  final o = api.CloneContext();
  buildCounterCloneContext++;
  if (buildCounterCloneContext < 3) {
    o.allocatedIpRange = 'foo';
    o.binLogCoordinates = buildBinLogCoordinates();
    o.databaseNames = buildUnnamed1();
    o.destinationInstanceName = 'foo';
    o.kind = 'foo';
    o.pitrTimestampMs = 'foo';
    o.pointInTime = 'foo';
    o.preferredZone = 'foo';
  }
  buildCounterCloneContext--;
  return o;
}

void checkCloneContext(api.CloneContext o) {
  buildCounterCloneContext++;
  if (buildCounterCloneContext < 3) {
    unittest.expect(
      o.allocatedIpRange!,
      unittest.equals('foo'),
    );
    checkBinLogCoordinates(o.binLogCoordinates!);
    checkUnnamed1(o.databaseNames!);
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
    unittest.expect(
      o.preferredZone!,
      unittest.equals('foo'),
    );
  }
  buildCounterCloneContext--;
}

core.List<api.IpMapping> buildUnnamed2() => [
      buildIpMapping(),
      buildIpMapping(),
    ];

void checkUnnamed2(core.List<api.IpMapping> o) {
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
    o.dnsName = 'foo';
    o.ipAddresses = buildUnnamed2();
    o.kind = 'foo';
    o.pscEnabled = true;
    o.region = 'foo';
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
    unittest.expect(
      o.dnsName!,
      unittest.equals('foo'),
    );
    checkUnnamed2(o.ipAddresses!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(o.pscEnabled!, unittest.isTrue);
    unittest.expect(
      o.region!,
      unittest.equals('foo'),
    );
    checkSslCert(o.serverCaCert!);
  }
  buildCounterConnectSettings--;
}

core.int buildCounterDataCacheConfig = 0;
api.DataCacheConfig buildDataCacheConfig() {
  final o = api.DataCacheConfig();
  buildCounterDataCacheConfig++;
  if (buildCounterDataCacheConfig < 3) {
    o.dataCacheEnabled = true;
  }
  buildCounterDataCacheConfig--;
  return o;
}

void checkDataCacheConfig(api.DataCacheConfig o) {
  buildCounterDataCacheConfig++;
  if (buildCounterDataCacheConfig < 3) {
    unittest.expect(o.dataCacheEnabled!, unittest.isTrue);
  }
  buildCounterDataCacheConfig--;
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

core.List<core.String> buildUnnamed3() => [
      'foo',
      'foo',
    ];

void checkUnnamed3(core.List<core.String> o) {
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

core.List<api.IpMapping> buildUnnamed4() => [
      buildIpMapping(),
      buildIpMapping(),
    ];

void checkUnnamed4(core.List<api.IpMapping> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIpMapping(o[0]);
  checkIpMapping(o[1]);
}

core.List<core.String> buildUnnamed5() => [
      'foo',
      'foo',
    ];

void checkUnnamed5(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed6() => [
      'foo',
      'foo',
    ];

void checkUnnamed6(core.List<core.String> o) {
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
    o.availableMaintenanceVersions = buildUnnamed3();
    o.backendType = 'foo';
    o.connectionName = 'foo';
    o.createTime = 'foo';
    o.currentDiskSize = 'foo';
    o.databaseInstalledVersion = 'foo';
    o.databaseVersion = 'foo';
    o.diskEncryptionConfiguration = buildDiskEncryptionConfiguration();
    o.diskEncryptionStatus = buildDiskEncryptionStatus();
    o.dnsName = 'foo';
    o.etag = 'foo';
    o.failoverReplica = buildDatabaseInstanceFailoverReplica();
    o.gceZone = 'foo';
    o.geminiConfig = buildGeminiInstanceConfig();
    o.instanceType = 'foo';
    o.ipAddresses = buildUnnamed4();
    o.ipv6Address = 'foo';
    o.kind = 'foo';
    o.maintenanceVersion = 'foo';
    o.masterInstanceName = 'foo';
    o.maxDiskSize = 'foo';
    o.name = 'foo';
    o.onPremisesConfiguration = buildOnPremisesConfiguration();
    o.outOfDiskReport = buildSqlOutOfDiskReport();
    o.primaryDnsName = 'foo';
    o.project = 'foo';
    o.pscServiceAttachmentLink = 'foo';
    o.region = 'foo';
    o.replicaConfiguration = buildReplicaConfiguration();
    o.replicaNames = buildUnnamed5();
    o.replicationCluster = buildReplicationCluster();
    o.rootPassword = 'foo';
    o.satisfiesPzs = true;
    o.scheduledMaintenance = buildSqlScheduledMaintenance();
    o.secondaryGceZone = 'foo';
    o.selfLink = 'foo';
    o.serverCaCert = buildSslCert();
    o.serviceAccountEmailAddress = 'foo';
    o.settings = buildSettings();
    o.sqlNetworkArchitecture = 'foo';
    o.state = 'foo';
    o.suspensionReason = buildUnnamed6();
    o.writeEndpoint = 'foo';
  }
  buildCounterDatabaseInstance--;
  return o;
}

void checkDatabaseInstance(api.DatabaseInstance o) {
  buildCounterDatabaseInstance++;
  if (buildCounterDatabaseInstance < 3) {
    checkUnnamed3(o.availableMaintenanceVersions!);
    unittest.expect(
      o.backendType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.connectionName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.currentDiskSize!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.databaseInstalledVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.databaseVersion!,
      unittest.equals('foo'),
    );
    checkDiskEncryptionConfiguration(o.diskEncryptionConfiguration!);
    checkDiskEncryptionStatus(o.diskEncryptionStatus!);
    unittest.expect(
      o.dnsName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    checkDatabaseInstanceFailoverReplica(o.failoverReplica!);
    unittest.expect(
      o.gceZone!,
      unittest.equals('foo'),
    );
    checkGeminiInstanceConfig(o.geminiConfig!);
    unittest.expect(
      o.instanceType!,
      unittest.equals('foo'),
    );
    checkUnnamed4(o.ipAddresses!);
    unittest.expect(
      o.ipv6Address!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maintenanceVersion!,
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
      o.primaryDnsName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.project!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pscServiceAttachmentLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.region!,
      unittest.equals('foo'),
    );
    checkReplicaConfiguration(o.replicaConfiguration!);
    checkUnnamed5(o.replicaNames!);
    checkReplicationCluster(o.replicationCluster!);
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
      o.sqlNetworkArchitecture!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    checkUnnamed6(o.suspensionReason!);
    unittest.expect(
      o.writeEndpoint!,
      unittest.equals('foo'),
    );
  }
  buildCounterDatabaseInstance--;
}

core.List<api.Database> buildUnnamed7() => [
      buildDatabase(),
      buildDatabase(),
    ];

void checkUnnamed7(core.List<api.Database> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatabase(o[0]);
  checkDatabase(o[1]);
}

core.int buildCounterDatabasesListResponse = 0;
api.DatabasesListResponse buildDatabasesListResponse() {
  final o = api.DatabasesListResponse();
  buildCounterDatabasesListResponse++;
  if (buildCounterDatabasesListResponse < 3) {
    o.items = buildUnnamed7();
    o.kind = 'foo';
  }
  buildCounterDatabasesListResponse--;
  return o;
}

void checkDatabasesListResponse(api.DatabasesListResponse o) {
  buildCounterDatabasesListResponse++;
  if (buildCounterDatabasesListResponse < 3) {
    checkUnnamed7(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterDatabasesListResponse--;
}

core.int buildCounterDemoteContext = 0;
api.DemoteContext buildDemoteContext() {
  final o = api.DemoteContext();
  buildCounterDemoteContext++;
  if (buildCounterDemoteContext < 3) {
    o.kind = 'foo';
    o.sourceRepresentativeInstanceName = 'foo';
  }
  buildCounterDemoteContext--;
  return o;
}

void checkDemoteContext(api.DemoteContext o) {
  buildCounterDemoteContext++;
  if (buildCounterDemoteContext < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sourceRepresentativeInstanceName!,
      unittest.equals('foo'),
    );
  }
  buildCounterDemoteContext--;
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
    o.skipReplicationSetup = true;
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
    unittest.expect(o.skipReplicationSetup!, unittest.isTrue);
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

core.int buildCounterExportContextBakExportOptions = 0;
api.ExportContextBakExportOptions buildExportContextBakExportOptions() {
  final o = api.ExportContextBakExportOptions();
  buildCounterExportContextBakExportOptions++;
  if (buildCounterExportContextBakExportOptions < 3) {
    o.bakType = 'foo';
    o.copyOnly = true;
    o.differentialBase = true;
    o.stripeCount = 42;
    o.striped = true;
  }
  buildCounterExportContextBakExportOptions--;
  return o;
}

void checkExportContextBakExportOptions(api.ExportContextBakExportOptions o) {
  buildCounterExportContextBakExportOptions++;
  if (buildCounterExportContextBakExportOptions < 3) {
    unittest.expect(
      o.bakType!,
      unittest.equals('foo'),
    );
    unittest.expect(o.copyOnly!, unittest.isTrue);
    unittest.expect(o.differentialBase!, unittest.isTrue);
    unittest.expect(
      o.stripeCount!,
      unittest.equals(42),
    );
    unittest.expect(o.striped!, unittest.isTrue);
  }
  buildCounterExportContextBakExportOptions--;
}

core.int buildCounterExportContextCsvExportOptions = 0;
api.ExportContextCsvExportOptions buildExportContextCsvExportOptions() {
  final o = api.ExportContextCsvExportOptions();
  buildCounterExportContextCsvExportOptions++;
  if (buildCounterExportContextCsvExportOptions < 3) {
    o.escapeCharacter = 'foo';
    o.fieldsTerminatedBy = 'foo';
    o.linesTerminatedBy = 'foo';
    o.quoteCharacter = 'foo';
    o.selectQuery = 'foo';
  }
  buildCounterExportContextCsvExportOptions--;
  return o;
}

void checkExportContextCsvExportOptions(api.ExportContextCsvExportOptions o) {
  buildCounterExportContextCsvExportOptions++;
  if (buildCounterExportContextCsvExportOptions < 3) {
    unittest.expect(
      o.escapeCharacter!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fieldsTerminatedBy!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.linesTerminatedBy!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.quoteCharacter!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.selectQuery!,
      unittest.equals('foo'),
    );
  }
  buildCounterExportContextCsvExportOptions--;
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

core.List<core.String> buildUnnamed9() => [
      'foo',
      'foo',
    ];

void checkUnnamed9(core.List<core.String> o) {
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
    o.parallel = true;
    o.schemaOnly = true;
    o.tables = buildUnnamed9();
    o.threads = 42;
  }
  buildCounterExportContextSqlExportOptions--;
  return o;
}

void checkExportContextSqlExportOptions(api.ExportContextSqlExportOptions o) {
  buildCounterExportContextSqlExportOptions++;
  if (buildCounterExportContextSqlExportOptions < 3) {
    checkExportContextSqlExportOptionsMysqlExportOptions(o.mysqlExportOptions!);
    unittest.expect(o.parallel!, unittest.isTrue);
    unittest.expect(o.schemaOnly!, unittest.isTrue);
    checkUnnamed9(o.tables!);
    unittest.expect(
      o.threads!,
      unittest.equals(42),
    );
  }
  buildCounterExportContextSqlExportOptions--;
}

core.int buildCounterExportContext = 0;
api.ExportContext buildExportContext() {
  final o = api.ExportContext();
  buildCounterExportContext++;
  if (buildCounterExportContext < 3) {
    o.bakExportOptions = buildExportContextBakExportOptions();
    o.csvExportOptions = buildExportContextCsvExportOptions();
    o.databases = buildUnnamed8();
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
    checkExportContextBakExportOptions(o.bakExportOptions!);
    checkExportContextCsvExportOptions(o.csvExportOptions!);
    checkUnnamed8(o.databases!);
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

core.List<core.String> buildUnnamed10() => [
      'foo',
      'foo',
    ];

void checkUnnamed10(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed11() => [
      'foo',
      'foo',
    ];

void checkUnnamed11(core.List<core.String> o) {
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

core.int buildCounterFlag = 0;
api.Flag buildFlag() {
  final o = api.Flag();
  buildCounterFlag++;
  if (buildCounterFlag < 3) {
    o.allowedIntValues = buildUnnamed10();
    o.allowedStringValues = buildUnnamed11();
    o.appliesTo = buildUnnamed12();
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
    checkUnnamed10(o.allowedIntValues!);
    checkUnnamed11(o.allowedStringValues!);
    checkUnnamed12(o.appliesTo!);
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

core.List<api.Flag> buildUnnamed13() => [
      buildFlag(),
      buildFlag(),
    ];

void checkUnnamed13(core.List<api.Flag> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFlag(o[0]);
  checkFlag(o[1]);
}

core.int buildCounterFlagsListResponse = 0;
api.FlagsListResponse buildFlagsListResponse() {
  final o = api.FlagsListResponse();
  buildCounterFlagsListResponse++;
  if (buildCounterFlagsListResponse < 3) {
    o.items = buildUnnamed13();
    o.kind = 'foo';
  }
  buildCounterFlagsListResponse--;
  return o;
}

void checkFlagsListResponse(api.FlagsListResponse o) {
  buildCounterFlagsListResponse++;
  if (buildCounterFlagsListResponse < 3) {
    checkUnnamed13(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterFlagsListResponse--;
}

core.int buildCounterGeminiInstanceConfig = 0;
api.GeminiInstanceConfig buildGeminiInstanceConfig() {
  final o = api.GeminiInstanceConfig();
  buildCounterGeminiInstanceConfig++;
  if (buildCounterGeminiInstanceConfig < 3) {
    o.activeQueryEnabled = true;
    o.entitled = true;
    o.flagRecommenderEnabled = true;
    o.googleVacuumMgmtEnabled = true;
    o.indexAdvisorEnabled = true;
    o.oomSessionCancelEnabled = true;
  }
  buildCounterGeminiInstanceConfig--;
  return o;
}

void checkGeminiInstanceConfig(api.GeminiInstanceConfig o) {
  buildCounterGeminiInstanceConfig++;
  if (buildCounterGeminiInstanceConfig < 3) {
    unittest.expect(o.activeQueryEnabled!, unittest.isTrue);
    unittest.expect(o.entitled!, unittest.isTrue);
    unittest.expect(o.flagRecommenderEnabled!, unittest.isTrue);
    unittest.expect(o.googleVacuumMgmtEnabled!, unittest.isTrue);
    unittest.expect(o.indexAdvisorEnabled!, unittest.isTrue);
    unittest.expect(o.oomSessionCancelEnabled!, unittest.isTrue);
  }
  buildCounterGeminiInstanceConfig--;
}

core.int buildCounterGenerateEphemeralCertRequest = 0;
api.GenerateEphemeralCertRequest buildGenerateEphemeralCertRequest() {
  final o = api.GenerateEphemeralCertRequest();
  buildCounterGenerateEphemeralCertRequest++;
  if (buildCounterGenerateEphemeralCertRequest < 3) {
    o.accessToken = 'foo';
    o.publicKey = 'foo';
    o.readTime = 'foo';
    o.validDuration = 'foo';
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
    unittest.expect(
      o.validDuration!,
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
    o.bakType = 'foo';
    o.encryptionOptions = buildImportContextBakImportOptionsEncryptionOptions();
    o.noRecovery = true;
    o.recoveryOnly = true;
    o.stopAt = 'foo';
    o.stopAtMark = 'foo';
    o.striped = true;
  }
  buildCounterImportContextBakImportOptions--;
  return o;
}

void checkImportContextBakImportOptions(api.ImportContextBakImportOptions o) {
  buildCounterImportContextBakImportOptions++;
  if (buildCounterImportContextBakImportOptions < 3) {
    unittest.expect(
      o.bakType!,
      unittest.equals('foo'),
    );
    checkImportContextBakImportOptionsEncryptionOptions(o.encryptionOptions!);
    unittest.expect(o.noRecovery!, unittest.isTrue);
    unittest.expect(o.recoveryOnly!, unittest.isTrue);
    unittest.expect(
      o.stopAt!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.stopAtMark!,
      unittest.equals('foo'),
    );
    unittest.expect(o.striped!, unittest.isTrue);
  }
  buildCounterImportContextBakImportOptions--;
}

core.List<core.String> buildUnnamed14() => [
      'foo',
      'foo',
    ];

void checkUnnamed14(core.List<core.String> o) {
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
    o.columns = buildUnnamed14();
    o.escapeCharacter = 'foo';
    o.fieldsTerminatedBy = 'foo';
    o.linesTerminatedBy = 'foo';
    o.quoteCharacter = 'foo';
    o.table = 'foo';
  }
  buildCounterImportContextCsvImportOptions--;
  return o;
}

void checkImportContextCsvImportOptions(api.ImportContextCsvImportOptions o) {
  buildCounterImportContextCsvImportOptions++;
  if (buildCounterImportContextCsvImportOptions < 3) {
    checkUnnamed14(o.columns!);
    unittest.expect(
      o.escapeCharacter!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fieldsTerminatedBy!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.linesTerminatedBy!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.quoteCharacter!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.table!,
      unittest.equals('foo'),
    );
  }
  buildCounterImportContextCsvImportOptions--;
}

core.int buildCounterImportContextSqlImportOptions = 0;
api.ImportContextSqlImportOptions buildImportContextSqlImportOptions() {
  final o = api.ImportContextSqlImportOptions();
  buildCounterImportContextSqlImportOptions++;
  if (buildCounterImportContextSqlImportOptions < 3) {
    o.parallel = true;
    o.threads = 42;
  }
  buildCounterImportContextSqlImportOptions--;
  return o;
}

void checkImportContextSqlImportOptions(api.ImportContextSqlImportOptions o) {
  buildCounterImportContextSqlImportOptions++;
  if (buildCounterImportContextSqlImportOptions < 3) {
    unittest.expect(o.parallel!, unittest.isTrue);
    unittest.expect(
      o.threads!,
      unittest.equals(42),
    );
  }
  buildCounterImportContextSqlImportOptions--;
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
    o.sqlImportOptions = buildImportContextSqlImportOptions();
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
    checkImportContextSqlImportOptions(o.sqlImportOptions!);
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

core.int buildCounterInstanceReference = 0;
api.InstanceReference buildInstanceReference() {
  final o = api.InstanceReference();
  buildCounterInstanceReference++;
  if (buildCounterInstanceReference < 3) {
    o.name = 'foo';
    o.project = 'foo';
    o.region = 'foo';
  }
  buildCounterInstanceReference--;
  return o;
}

void checkInstanceReference(api.InstanceReference o) {
  buildCounterInstanceReference++;
  if (buildCounterInstanceReference < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.project!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.region!,
      unittest.equals('foo'),
    );
  }
  buildCounterInstanceReference--;
}

core.int buildCounterInstancesAcquireSsrsLeaseRequest = 0;
api.InstancesAcquireSsrsLeaseRequest buildInstancesAcquireSsrsLeaseRequest() {
  final o = api.InstancesAcquireSsrsLeaseRequest();
  buildCounterInstancesAcquireSsrsLeaseRequest++;
  if (buildCounterInstancesAcquireSsrsLeaseRequest < 3) {
    o.acquireSsrsLeaseContext = buildAcquireSsrsLeaseContext();
  }
  buildCounterInstancesAcquireSsrsLeaseRequest--;
  return o;
}

void checkInstancesAcquireSsrsLeaseRequest(
    api.InstancesAcquireSsrsLeaseRequest o) {
  buildCounterInstancesAcquireSsrsLeaseRequest++;
  if (buildCounterInstancesAcquireSsrsLeaseRequest < 3) {
    checkAcquireSsrsLeaseContext(o.acquireSsrsLeaseContext!);
  }
  buildCounterInstancesAcquireSsrsLeaseRequest--;
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

core.int buildCounterInstancesDemoteRequest = 0;
api.InstancesDemoteRequest buildInstancesDemoteRequest() {
  final o = api.InstancesDemoteRequest();
  buildCounterInstancesDemoteRequest++;
  if (buildCounterInstancesDemoteRequest < 3) {
    o.demoteContext = buildDemoteContext();
  }
  buildCounterInstancesDemoteRequest--;
  return o;
}

void checkInstancesDemoteRequest(api.InstancesDemoteRequest o) {
  buildCounterInstancesDemoteRequest++;
  if (buildCounterInstancesDemoteRequest < 3) {
    checkDemoteContext(o.demoteContext!);
  }
  buildCounterInstancesDemoteRequest--;
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

core.List<api.DatabaseInstance> buildUnnamed15() => [
      buildDatabaseInstance(),
      buildDatabaseInstance(),
    ];

void checkUnnamed15(core.List<api.DatabaseInstance> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatabaseInstance(o[0]);
  checkDatabaseInstance(o[1]);
}

core.List<api.ApiWarning> buildUnnamed16() => [
      buildApiWarning(),
      buildApiWarning(),
    ];

void checkUnnamed16(core.List<api.ApiWarning> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApiWarning(o[0]);
  checkApiWarning(o[1]);
}

core.int buildCounterInstancesListResponse = 0;
api.InstancesListResponse buildInstancesListResponse() {
  final o = api.InstancesListResponse();
  buildCounterInstancesListResponse++;
  if (buildCounterInstancesListResponse < 3) {
    o.items = buildUnnamed15();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.warnings = buildUnnamed16();
  }
  buildCounterInstancesListResponse--;
  return o;
}

void checkInstancesListResponse(api.InstancesListResponse o) {
  buildCounterInstancesListResponse++;
  if (buildCounterInstancesListResponse < 3) {
    checkUnnamed15(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed16(o.warnings!);
  }
  buildCounterInstancesListResponse--;
}

core.List<api.SslCert> buildUnnamed17() => [
      buildSslCert(),
      buildSslCert(),
    ];

void checkUnnamed17(core.List<api.SslCert> o) {
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
    o.certs = buildUnnamed17();
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
    checkUnnamed17(o.certs!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterInstancesListServerCasResponse--;
}

core.int buildCounterInstancesReencryptRequest = 0;
api.InstancesReencryptRequest buildInstancesReencryptRequest() {
  final o = api.InstancesReencryptRequest();
  buildCounterInstancesReencryptRequest++;
  if (buildCounterInstancesReencryptRequest < 3) {
    o.backupReencryptionConfig = buildBackupReencryptionConfig();
  }
  buildCounterInstancesReencryptRequest--;
  return o;
}

void checkInstancesReencryptRequest(api.InstancesReencryptRequest o) {
  buildCounterInstancesReencryptRequest++;
  if (buildCounterInstancesReencryptRequest < 3) {
    checkBackupReencryptionConfig(o.backupReencryptionConfig!);
  }
  buildCounterInstancesReencryptRequest--;
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

core.List<api.AclEntry> buildUnnamed18() => [
      buildAclEntry(),
      buildAclEntry(),
    ];

void checkUnnamed18(core.List<api.AclEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAclEntry(o[0]);
  checkAclEntry(o[1]);
}

core.int buildCounterIpConfiguration = 0;
api.IpConfiguration buildIpConfiguration() {
  final o = api.IpConfiguration();
  buildCounterIpConfiguration++;
  if (buildCounterIpConfiguration < 3) {
    o.allocatedIpRange = 'foo';
    o.authorizedNetworks = buildUnnamed18();
    o.enablePrivatePathForGoogleCloudServices = true;
    o.ipv4Enabled = true;
    o.privateNetwork = 'foo';
    o.pscConfig = buildPscConfig();
    o.requireSsl = true;
    o.sslMode = 'foo';
  }
  buildCounterIpConfiguration--;
  return o;
}

void checkIpConfiguration(api.IpConfiguration o) {
  buildCounterIpConfiguration++;
  if (buildCounterIpConfiguration < 3) {
    unittest.expect(
      o.allocatedIpRange!,
      unittest.equals('foo'),
    );
    checkUnnamed18(o.authorizedNetworks!);
    unittest.expect(
        o.enablePrivatePathForGoogleCloudServices!, unittest.isTrue);
    unittest.expect(o.ipv4Enabled!, unittest.isTrue);
    unittest.expect(
      o.privateNetwork!,
      unittest.equals('foo'),
    );
    checkPscConfig(o.pscConfig!);
    unittest.expect(o.requireSsl!, unittest.isTrue);
    unittest.expect(
      o.sslMode!,
      unittest.equals('foo'),
    );
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

core.List<api.SyncFlags> buildUnnamed19() => [
      buildSyncFlags(),
      buildSyncFlags(),
    ];

void checkUnnamed19(core.List<api.SyncFlags> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSyncFlags(o[0]);
  checkSyncFlags(o[1]);
}

core.int buildCounterMySqlSyncConfig = 0;
api.MySqlSyncConfig buildMySqlSyncConfig() {
  final o = api.MySqlSyncConfig();
  buildCounterMySqlSyncConfig++;
  if (buildCounterMySqlSyncConfig < 3) {
    o.initialSyncFlags = buildUnnamed19();
  }
  buildCounterMySqlSyncConfig--;
  return o;
}

void checkMySqlSyncConfig(api.MySqlSyncConfig o) {
  buildCounterMySqlSyncConfig++;
  if (buildCounterMySqlSyncConfig < 3) {
    checkUnnamed19(o.initialSyncFlags!);
  }
  buildCounterMySqlSyncConfig--;
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
    o.sourceInstance = buildInstanceReference();
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
    checkInstanceReference(o.sourceInstance!);
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
    o.acquireSsrsLeaseContext = buildAcquireSsrsLeaseContext();
    o.apiWarning = buildApiWarning();
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
    checkAcquireSsrsLeaseContext(o.acquireSsrsLeaseContext!);
    checkApiWarning(o.apiWarning!);
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

core.List<api.OperationError> buildUnnamed20() => [
      buildOperationError(),
      buildOperationError(),
    ];

void checkUnnamed20(core.List<api.OperationError> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperationError(o[0]);
  checkOperationError(o[1]);
}

core.int buildCounterOperationErrors = 0;
api.OperationErrors buildOperationErrors() {
  final o = api.OperationErrors();
  buildCounterOperationErrors++;
  if (buildCounterOperationErrors < 3) {
    o.errors = buildUnnamed20();
    o.kind = 'foo';
  }
  buildCounterOperationErrors--;
  return o;
}

void checkOperationErrors(api.OperationErrors o) {
  buildCounterOperationErrors++;
  if (buildCounterOperationErrors < 3) {
    checkUnnamed20(o.errors!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterOperationErrors--;
}

core.List<api.Operation> buildUnnamed21() => [
      buildOperation(),
      buildOperation(),
    ];

void checkUnnamed21(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0]);
  checkOperation(o[1]);
}

core.int buildCounterOperationsListResponse = 0;
api.OperationsListResponse buildOperationsListResponse() {
  final o = api.OperationsListResponse();
  buildCounterOperationsListResponse++;
  if (buildCounterOperationsListResponse < 3) {
    o.items = buildUnnamed21();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterOperationsListResponse--;
  return o;
}

void checkOperationsListResponse(api.OperationsListResponse o) {
  buildCounterOperationsListResponse++;
  if (buildCounterOperationsListResponse < 3) {
    checkUnnamed21(o.items!);
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

core.int buildCounterPasswordStatus = 0;
api.PasswordStatus buildPasswordStatus() {
  final o = api.PasswordStatus();
  buildCounterPasswordStatus++;
  if (buildCounterPasswordStatus < 3) {
    o.locked = true;
    o.passwordExpirationTime = 'foo';
  }
  buildCounterPasswordStatus--;
  return o;
}

void checkPasswordStatus(api.PasswordStatus o) {
  buildCounterPasswordStatus++;
  if (buildCounterPasswordStatus < 3) {
    unittest.expect(o.locked!, unittest.isTrue);
    unittest.expect(
      o.passwordExpirationTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterPasswordStatus--;
}

core.int buildCounterPasswordValidationPolicy = 0;
api.PasswordValidationPolicy buildPasswordValidationPolicy() {
  final o = api.PasswordValidationPolicy();
  buildCounterPasswordValidationPolicy++;
  if (buildCounterPasswordValidationPolicy < 3) {
    o.complexity = 'foo';
    o.disallowCompromisedCredentials = true;
    o.disallowUsernameSubstring = true;
    o.enablePasswordPolicy = true;
    o.minLength = 42;
    o.passwordChangeInterval = 'foo';
    o.reuseInterval = 42;
  }
  buildCounterPasswordValidationPolicy--;
  return o;
}

void checkPasswordValidationPolicy(api.PasswordValidationPolicy o) {
  buildCounterPasswordValidationPolicy++;
  if (buildCounterPasswordValidationPolicy < 3) {
    unittest.expect(
      o.complexity!,
      unittest.equals('foo'),
    );
    unittest.expect(o.disallowCompromisedCredentials!, unittest.isTrue);
    unittest.expect(o.disallowUsernameSubstring!, unittest.isTrue);
    unittest.expect(o.enablePasswordPolicy!, unittest.isTrue);
    unittest.expect(
      o.minLength!,
      unittest.equals(42),
    );
    unittest.expect(
      o.passwordChangeInterval!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reuseInterval!,
      unittest.equals(42),
    );
  }
  buildCounterPasswordValidationPolicy--;
}

core.int buildCounterPerformDiskShrinkContext = 0;
api.PerformDiskShrinkContext buildPerformDiskShrinkContext() {
  final o = api.PerformDiskShrinkContext();
  buildCounterPerformDiskShrinkContext++;
  if (buildCounterPerformDiskShrinkContext < 3) {
    o.targetSizeGb = 'foo';
  }
  buildCounterPerformDiskShrinkContext--;
  return o;
}

void checkPerformDiskShrinkContext(api.PerformDiskShrinkContext o) {
  buildCounterPerformDiskShrinkContext++;
  if (buildCounterPerformDiskShrinkContext < 3) {
    unittest.expect(
      o.targetSizeGb!,
      unittest.equals('foo'),
    );
  }
  buildCounterPerformDiskShrinkContext--;
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

core.int buildCounterPscConfig = 0;
api.PscConfig buildPscConfig() {
  final o = api.PscConfig();
  buildCounterPscConfig++;
  if (buildCounterPscConfig < 3) {
    o.allowedConsumerProjects = buildUnnamed22();
    o.pscEnabled = true;
  }
  buildCounterPscConfig--;
  return o;
}

void checkPscConfig(api.PscConfig o) {
  buildCounterPscConfig++;
  if (buildCounterPscConfig < 3) {
    checkUnnamed22(o.allowedConsumerProjects!);
    unittest.expect(o.pscEnabled!, unittest.isTrue);
  }
  buildCounterPscConfig--;
}

core.int buildCounterReplicaConfiguration = 0;
api.ReplicaConfiguration buildReplicaConfiguration() {
  final o = api.ReplicaConfiguration();
  buildCounterReplicaConfiguration++;
  if (buildCounterReplicaConfiguration < 3) {
    o.cascadableReplica = true;
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
    unittest.expect(o.cascadableReplica!, unittest.isTrue);
    unittest.expect(o.failoverTarget!, unittest.isTrue);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkMySqlReplicaConfiguration(o.mysqlReplicaConfiguration!);
  }
  buildCounterReplicaConfiguration--;
}

core.int buildCounterReplicationCluster = 0;
api.ReplicationCluster buildReplicationCluster() {
  final o = api.ReplicationCluster();
  buildCounterReplicationCluster++;
  if (buildCounterReplicationCluster < 3) {
    o.drReplica = true;
    o.failoverDrReplicaName = 'foo';
  }
  buildCounterReplicationCluster--;
  return o;
}

void checkReplicationCluster(api.ReplicationCluster o) {
  buildCounterReplicationCluster++;
  if (buildCounterReplicationCluster < 3) {
    unittest.expect(o.drReplica!, unittest.isTrue);
    unittest.expect(
      o.failoverDrReplicaName!,
      unittest.equals('foo'),
    );
  }
  buildCounterReplicationCluster--;
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

core.List<api.DatabaseFlags> buildUnnamed24() => [
      buildDatabaseFlags(),
      buildDatabaseFlags(),
    ];

void checkUnnamed24(core.List<api.DatabaseFlags> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatabaseFlags(o[0]);
  checkDatabaseFlags(o[1]);
}

core.List<api.DenyMaintenancePeriod> buildUnnamed25() => [
      buildDenyMaintenancePeriod(),
      buildDenyMaintenancePeriod(),
    ];

void checkUnnamed25(core.List<api.DenyMaintenancePeriod> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDenyMaintenancePeriod(o[0]);
  checkDenyMaintenancePeriod(o[1]);
}

core.Map<core.String, core.String> buildUnnamed26() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed26(core.Map<core.String, core.String> o) {
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
    o.advancedMachineFeatures = buildAdvancedMachineFeatures();
    o.authorizedGaeApplications = buildUnnamed23();
    o.availabilityType = 'foo';
    o.backupConfiguration = buildBackupConfiguration();
    o.collation = 'foo';
    o.connectorEnforcement = 'foo';
    o.crashSafeReplicationEnabled = true;
    o.dataCacheConfig = buildDataCacheConfig();
    o.dataDiskSizeGb = 'foo';
    o.dataDiskType = 'foo';
    o.databaseFlags = buildUnnamed24();
    o.databaseReplicationEnabled = true;
    o.deletionProtectionEnabled = true;
    o.denyMaintenancePeriods = buildUnnamed25();
    o.edition = 'foo';
    o.enableGoogleMlIntegration = true;
    o.insightsConfig = buildInsightsConfig();
    o.ipConfiguration = buildIpConfiguration();
    o.kind = 'foo';
    o.locationPreference = buildLocationPreference();
    o.maintenanceWindow = buildMaintenanceWindow();
    o.passwordValidationPolicy = buildPasswordValidationPolicy();
    o.pricingPlan = 'foo';
    o.replicationType = 'foo';
    o.settingsVersion = 'foo';
    o.sqlServerAuditConfig = buildSqlServerAuditConfig();
    o.storageAutoResize = true;
    o.storageAutoResizeLimit = 'foo';
    o.tier = 'foo';
    o.timeZone = 'foo';
    o.userLabels = buildUnnamed26();
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
    checkAdvancedMachineFeatures(o.advancedMachineFeatures!);
    checkUnnamed23(o.authorizedGaeApplications!);
    unittest.expect(
      o.availabilityType!,
      unittest.equals('foo'),
    );
    checkBackupConfiguration(o.backupConfiguration!);
    unittest.expect(
      o.collation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.connectorEnforcement!,
      unittest.equals('foo'),
    );
    unittest.expect(o.crashSafeReplicationEnabled!, unittest.isTrue);
    checkDataCacheConfig(o.dataCacheConfig!);
    unittest.expect(
      o.dataDiskSizeGb!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dataDiskType!,
      unittest.equals('foo'),
    );
    checkUnnamed24(o.databaseFlags!);
    unittest.expect(o.databaseReplicationEnabled!, unittest.isTrue);
    unittest.expect(o.deletionProtectionEnabled!, unittest.isTrue);
    checkUnnamed25(o.denyMaintenancePeriods!);
    unittest.expect(
      o.edition!,
      unittest.equals('foo'),
    );
    unittest.expect(o.enableGoogleMlIntegration!, unittest.isTrue);
    checkInsightsConfig(o.insightsConfig!);
    checkIpConfiguration(o.ipConfiguration!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkLocationPreference(o.locationPreference!);
    checkMaintenanceWindow(o.maintenanceWindow!);
    checkPasswordValidationPolicy(o.passwordValidationPolicy!);
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
    checkSqlServerAuditConfig(o.sqlServerAuditConfig!);
    unittest.expect(o.storageAutoResize!, unittest.isTrue);
    unittest.expect(
      o.storageAutoResizeLimit!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tier!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.timeZone!,
      unittest.equals('foo'),
    );
    checkUnnamed26(o.userLabels!);
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

core.int buildCounterSqlInstancesAcquireSsrsLeaseResponse = 0;
api.SqlInstancesAcquireSsrsLeaseResponse
    buildSqlInstancesAcquireSsrsLeaseResponse() {
  final o = api.SqlInstancesAcquireSsrsLeaseResponse();
  buildCounterSqlInstancesAcquireSsrsLeaseResponse++;
  if (buildCounterSqlInstancesAcquireSsrsLeaseResponse < 3) {
    o.operationId = 'foo';
  }
  buildCounterSqlInstancesAcquireSsrsLeaseResponse--;
  return o;
}

void checkSqlInstancesAcquireSsrsLeaseResponse(
    api.SqlInstancesAcquireSsrsLeaseResponse o) {
  buildCounterSqlInstancesAcquireSsrsLeaseResponse++;
  if (buildCounterSqlInstancesAcquireSsrsLeaseResponse < 3) {
    unittest.expect(
      o.operationId!,
      unittest.equals('foo'),
    );
  }
  buildCounterSqlInstancesAcquireSsrsLeaseResponse--;
}

core.int buildCounterSqlInstancesGetDiskShrinkConfigResponse = 0;
api.SqlInstancesGetDiskShrinkConfigResponse
    buildSqlInstancesGetDiskShrinkConfigResponse() {
  final o = api.SqlInstancesGetDiskShrinkConfigResponse();
  buildCounterSqlInstancesGetDiskShrinkConfigResponse++;
  if (buildCounterSqlInstancesGetDiskShrinkConfigResponse < 3) {
    o.kind = 'foo';
    o.message = 'foo';
    o.minimalTargetSizeGb = 'foo';
  }
  buildCounterSqlInstancesGetDiskShrinkConfigResponse--;
  return o;
}

void checkSqlInstancesGetDiskShrinkConfigResponse(
    api.SqlInstancesGetDiskShrinkConfigResponse o) {
  buildCounterSqlInstancesGetDiskShrinkConfigResponse++;
  if (buildCounterSqlInstancesGetDiskShrinkConfigResponse < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.minimalTargetSizeGb!,
      unittest.equals('foo'),
    );
  }
  buildCounterSqlInstancesGetDiskShrinkConfigResponse--;
}

core.int buildCounterSqlInstancesGetLatestRecoveryTimeResponse = 0;
api.SqlInstancesGetLatestRecoveryTimeResponse
    buildSqlInstancesGetLatestRecoveryTimeResponse() {
  final o = api.SqlInstancesGetLatestRecoveryTimeResponse();
  buildCounterSqlInstancesGetLatestRecoveryTimeResponse++;
  if (buildCounterSqlInstancesGetLatestRecoveryTimeResponse < 3) {
    o.kind = 'foo';
    o.latestRecoveryTime = 'foo';
  }
  buildCounterSqlInstancesGetLatestRecoveryTimeResponse--;
  return o;
}

void checkSqlInstancesGetLatestRecoveryTimeResponse(
    api.SqlInstancesGetLatestRecoveryTimeResponse o) {
  buildCounterSqlInstancesGetLatestRecoveryTimeResponse++;
  if (buildCounterSqlInstancesGetLatestRecoveryTimeResponse < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.latestRecoveryTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterSqlInstancesGetLatestRecoveryTimeResponse--;
}

core.int buildCounterSqlInstancesReleaseSsrsLeaseResponse = 0;
api.SqlInstancesReleaseSsrsLeaseResponse
    buildSqlInstancesReleaseSsrsLeaseResponse() {
  final o = api.SqlInstancesReleaseSsrsLeaseResponse();
  buildCounterSqlInstancesReleaseSsrsLeaseResponse++;
  if (buildCounterSqlInstancesReleaseSsrsLeaseResponse < 3) {
    o.operationId = 'foo';
  }
  buildCounterSqlInstancesReleaseSsrsLeaseResponse--;
  return o;
}

void checkSqlInstancesReleaseSsrsLeaseResponse(
    api.SqlInstancesReleaseSsrsLeaseResponse o) {
  buildCounterSqlInstancesReleaseSsrsLeaseResponse++;
  if (buildCounterSqlInstancesReleaseSsrsLeaseResponse < 3) {
    unittest.expect(
      o.operationId!,
      unittest.equals('foo'),
    );
  }
  buildCounterSqlInstancesReleaseSsrsLeaseResponse--;
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

core.int buildCounterSqlInstancesResetReplicaSizeRequest = 0;
api.SqlInstancesResetReplicaSizeRequest
    buildSqlInstancesResetReplicaSizeRequest() {
  final o = api.SqlInstancesResetReplicaSizeRequest();
  buildCounterSqlInstancesResetReplicaSizeRequest++;
  if (buildCounterSqlInstancesResetReplicaSizeRequest < 3) {}
  buildCounterSqlInstancesResetReplicaSizeRequest--;
  return o;
}

void checkSqlInstancesResetReplicaSizeRequest(
    api.SqlInstancesResetReplicaSizeRequest o) {
  buildCounterSqlInstancesResetReplicaSizeRequest++;
  if (buildCounterSqlInstancesResetReplicaSizeRequest < 3) {}
  buildCounterSqlInstancesResetReplicaSizeRequest--;
}

core.int buildCounterSqlInstancesStartExternalSyncRequest = 0;
api.SqlInstancesStartExternalSyncRequest
    buildSqlInstancesStartExternalSyncRequest() {
  final o = api.SqlInstancesStartExternalSyncRequest();
  buildCounterSqlInstancesStartExternalSyncRequest++;
  if (buildCounterSqlInstancesStartExternalSyncRequest < 3) {
    o.migrationType = 'foo';
    o.mysqlSyncConfig = buildMySqlSyncConfig();
    o.skipVerification = true;
    o.syncMode = 'foo';
    o.syncParallelLevel = 'foo';
  }
  buildCounterSqlInstancesStartExternalSyncRequest--;
  return o;
}

void checkSqlInstancesStartExternalSyncRequest(
    api.SqlInstancesStartExternalSyncRequest o) {
  buildCounterSqlInstancesStartExternalSyncRequest++;
  if (buildCounterSqlInstancesStartExternalSyncRequest < 3) {
    unittest.expect(
      o.migrationType!,
      unittest.equals('foo'),
    );
    checkMySqlSyncConfig(o.mysqlSyncConfig!);
    unittest.expect(o.skipVerification!, unittest.isTrue);
    unittest.expect(
      o.syncMode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.syncParallelLevel!,
      unittest.equals('foo'),
    );
  }
  buildCounterSqlInstancesStartExternalSyncRequest--;
}

core.int buildCounterSqlInstancesVerifyExternalSyncSettingsRequest = 0;
api.SqlInstancesVerifyExternalSyncSettingsRequest
    buildSqlInstancesVerifyExternalSyncSettingsRequest() {
  final o = api.SqlInstancesVerifyExternalSyncSettingsRequest();
  buildCounterSqlInstancesVerifyExternalSyncSettingsRequest++;
  if (buildCounterSqlInstancesVerifyExternalSyncSettingsRequest < 3) {
    o.migrationType = 'foo';
    o.mysqlSyncConfig = buildMySqlSyncConfig();
    o.syncMode = 'foo';
    o.syncParallelLevel = 'foo';
    o.verifyConnectionOnly = true;
    o.verifyReplicationOnly = true;
  }
  buildCounterSqlInstancesVerifyExternalSyncSettingsRequest--;
  return o;
}

void checkSqlInstancesVerifyExternalSyncSettingsRequest(
    api.SqlInstancesVerifyExternalSyncSettingsRequest o) {
  buildCounterSqlInstancesVerifyExternalSyncSettingsRequest++;
  if (buildCounterSqlInstancesVerifyExternalSyncSettingsRequest < 3) {
    unittest.expect(
      o.migrationType!,
      unittest.equals('foo'),
    );
    checkMySqlSyncConfig(o.mysqlSyncConfig!);
    unittest.expect(
      o.syncMode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.syncParallelLevel!,
      unittest.equals('foo'),
    );
    unittest.expect(o.verifyConnectionOnly!, unittest.isTrue);
    unittest.expect(o.verifyReplicationOnly!, unittest.isTrue);
  }
  buildCounterSqlInstancesVerifyExternalSyncSettingsRequest--;
}

core.List<api.SqlExternalSyncSettingError> buildUnnamed27() => [
      buildSqlExternalSyncSettingError(),
      buildSqlExternalSyncSettingError(),
    ];

void checkUnnamed27(core.List<api.SqlExternalSyncSettingError> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSqlExternalSyncSettingError(o[0]);
  checkSqlExternalSyncSettingError(o[1]);
}

core.List<api.SqlExternalSyncSettingError> buildUnnamed28() => [
      buildSqlExternalSyncSettingError(),
      buildSqlExternalSyncSettingError(),
    ];

void checkUnnamed28(core.List<api.SqlExternalSyncSettingError> o) {
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
    o.errors = buildUnnamed27();
    o.kind = 'foo';
    o.warnings = buildUnnamed28();
  }
  buildCounterSqlInstancesVerifyExternalSyncSettingsResponse--;
  return o;
}

void checkSqlInstancesVerifyExternalSyncSettingsResponse(
    api.SqlInstancesVerifyExternalSyncSettingsResponse o) {
  buildCounterSqlInstancesVerifyExternalSyncSettingsResponse++;
  if (buildCounterSqlInstancesVerifyExternalSyncSettingsResponse < 3) {
    checkUnnamed27(o.errors!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed28(o.warnings!);
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

core.int buildCounterSqlServerAuditConfig = 0;
api.SqlServerAuditConfig buildSqlServerAuditConfig() {
  final o = api.SqlServerAuditConfig();
  buildCounterSqlServerAuditConfig++;
  if (buildCounterSqlServerAuditConfig < 3) {
    o.bucket = 'foo';
    o.kind = 'foo';
    o.retentionInterval = 'foo';
    o.uploadInterval = 'foo';
  }
  buildCounterSqlServerAuditConfig--;
  return o;
}

void checkSqlServerAuditConfig(api.SqlServerAuditConfig o) {
  buildCounterSqlServerAuditConfig++;
  if (buildCounterSqlServerAuditConfig < 3) {
    unittest.expect(
      o.bucket!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.retentionInterval!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uploadInterval!,
      unittest.equals('foo'),
    );
  }
  buildCounterSqlServerAuditConfig--;
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

core.List<core.String> buildUnnamed29() => [
      'foo',
      'foo',
    ];

void checkUnnamed29(core.List<core.String> o) {
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
    o.serverRoles = buildUnnamed29();
  }
  buildCounterSqlServerUserDetails--;
  return o;
}

void checkSqlServerUserDetails(api.SqlServerUserDetails o) {
  buildCounterSqlServerUserDetails++;
  if (buildCounterSqlServerUserDetails < 3) {
    unittest.expect(o.disabled!, unittest.isTrue);
    checkUnnamed29(o.serverRoles!);
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

core.List<api.SslCert> buildUnnamed30() => [
      buildSslCert(),
      buildSslCert(),
    ];

void checkUnnamed30(core.List<api.SslCert> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSslCert(o[0]);
  checkSslCert(o[1]);
}

core.int buildCounterSslCertsListResponse = 0;
api.SslCertsListResponse buildSslCertsListResponse() {
  final o = api.SslCertsListResponse();
  buildCounterSslCertsListResponse++;
  if (buildCounterSslCertsListResponse < 3) {
    o.items = buildUnnamed30();
    o.kind = 'foo';
  }
  buildCounterSslCertsListResponse--;
  return o;
}

void checkSslCertsListResponse(api.SslCertsListResponse o) {
  buildCounterSslCertsListResponse++;
  if (buildCounterSslCertsListResponse < 3) {
    checkUnnamed30(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterSslCertsListResponse--;
}

core.int buildCounterSyncFlags = 0;
api.SyncFlags buildSyncFlags() {
  final o = api.SyncFlags();
  buildCounterSyncFlags++;
  if (buildCounterSyncFlags < 3) {
    o.name = 'foo';
    o.value = 'foo';
  }
  buildCounterSyncFlags--;
  return o;
}

void checkSyncFlags(api.SyncFlags o) {
  buildCounterSyncFlags++;
  if (buildCounterSyncFlags < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterSyncFlags--;
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

core.int buildCounterTier = 0;
api.Tier buildTier() {
  final o = api.Tier();
  buildCounterTier++;
  if (buildCounterTier < 3) {
    o.DiskQuota = 'foo';
    o.RAM = 'foo';
    o.kind = 'foo';
    o.region = buildUnnamed31();
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
    checkUnnamed31(o.region!);
    unittest.expect(
      o.tier!,
      unittest.equals('foo'),
    );
  }
  buildCounterTier--;
}

core.List<api.Tier> buildUnnamed32() => [
      buildTier(),
      buildTier(),
    ];

void checkUnnamed32(core.List<api.Tier> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTier(o[0]);
  checkTier(o[1]);
}

core.int buildCounterTiersListResponse = 0;
api.TiersListResponse buildTiersListResponse() {
  final o = api.TiersListResponse();
  buildCounterTiersListResponse++;
  if (buildCounterTiersListResponse < 3) {
    o.items = buildUnnamed32();
    o.kind = 'foo';
  }
  buildCounterTiersListResponse--;
  return o;
}

void checkTiersListResponse(api.TiersListResponse o) {
  buildCounterTiersListResponse++;
  if (buildCounterTiersListResponse < 3) {
    checkUnnamed32(o.items!);
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
    o.dualPasswordType = 'foo';
    o.etag = 'foo';
    o.host = 'foo';
    o.instance = 'foo';
    o.kind = 'foo';
    o.name = 'foo';
    o.password = 'foo';
    o.passwordPolicy = buildUserPasswordValidationPolicy();
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
      o.dualPasswordType!,
      unittest.equals('foo'),
    );
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
    checkUserPasswordValidationPolicy(o.passwordPolicy!);
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

core.int buildCounterUserPasswordValidationPolicy = 0;
api.UserPasswordValidationPolicy buildUserPasswordValidationPolicy() {
  final o = api.UserPasswordValidationPolicy();
  buildCounterUserPasswordValidationPolicy++;
  if (buildCounterUserPasswordValidationPolicy < 3) {
    o.allowedFailedAttempts = 42;
    o.enableFailedAttemptsCheck = true;
    o.enablePasswordVerification = true;
    o.passwordExpirationDuration = 'foo';
    o.status = buildPasswordStatus();
  }
  buildCounterUserPasswordValidationPolicy--;
  return o;
}

void checkUserPasswordValidationPolicy(api.UserPasswordValidationPolicy o) {
  buildCounterUserPasswordValidationPolicy++;
  if (buildCounterUserPasswordValidationPolicy < 3) {
    unittest.expect(
      o.allowedFailedAttempts!,
      unittest.equals(42),
    );
    unittest.expect(o.enableFailedAttemptsCheck!, unittest.isTrue);
    unittest.expect(o.enablePasswordVerification!, unittest.isTrue);
    unittest.expect(
      o.passwordExpirationDuration!,
      unittest.equals('foo'),
    );
    checkPasswordStatus(o.status!);
  }
  buildCounterUserPasswordValidationPolicy--;
}

core.List<api.User> buildUnnamed33() => [
      buildUser(),
      buildUser(),
    ];

void checkUnnamed33(core.List<api.User> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUser(o[0]);
  checkUser(o[1]);
}

core.int buildCounterUsersListResponse = 0;
api.UsersListResponse buildUsersListResponse() {
  final o = api.UsersListResponse();
  buildCounterUsersListResponse++;
  if (buildCounterUsersListResponse < 3) {
    o.items = buildUnnamed33();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterUsersListResponse--;
  return o;
}

void checkUsersListResponse(api.UsersListResponse o) {
  buildCounterUsersListResponse++;
  if (buildCounterUsersListResponse < 3) {
    checkUnnamed33(o.items!);
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

  unittest.group('obj-schema-AcquireSsrsLeaseContext', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAcquireSsrsLeaseContext();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AcquireSsrsLeaseContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAcquireSsrsLeaseContext(od);
    });
  });

  unittest.group('obj-schema-AdvancedMachineFeatures', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdvancedMachineFeatures();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AdvancedMachineFeatures.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAdvancedMachineFeatures(od);
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

  unittest.group('obj-schema-BackupReencryptionConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBackupReencryptionConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BackupReencryptionConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBackupReencryptionConfig(od);
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

  unittest.group('obj-schema-DataCacheConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataCacheConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DataCacheConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDataCacheConfig(od);
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

  unittest.group('obj-schema-DemoteContext', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDemoteContext();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DemoteContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDemoteContext(od);
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

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Empty.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEmpty(od);
    });
  });

  unittest.group('obj-schema-ExportContextBakExportOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExportContextBakExportOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExportContextBakExportOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExportContextBakExportOptions(od);
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

  unittest.group('obj-schema-GeminiInstanceConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGeminiInstanceConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GeminiInstanceConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGeminiInstanceConfig(od);
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

  unittest.group('obj-schema-ImportContextSqlImportOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImportContextSqlImportOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImportContextSqlImportOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkImportContextSqlImportOptions(od);
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

  unittest.group('obj-schema-InstanceReference', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInstanceReference();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InstanceReference.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInstanceReference(od);
    });
  });

  unittest.group('obj-schema-InstancesAcquireSsrsLeaseRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInstancesAcquireSsrsLeaseRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InstancesAcquireSsrsLeaseRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInstancesAcquireSsrsLeaseRequest(od);
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

  unittest.group('obj-schema-InstancesDemoteRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInstancesDemoteRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InstancesDemoteRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInstancesDemoteRequest(od);
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

  unittest.group('obj-schema-InstancesReencryptRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInstancesReencryptRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InstancesReencryptRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInstancesReencryptRequest(od);
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

  unittest.group('obj-schema-MySqlSyncConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMySqlSyncConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MySqlSyncConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMySqlSyncConfig(od);
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

  unittest.group('obj-schema-PasswordStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPasswordStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PasswordStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPasswordStatus(od);
    });
  });

  unittest.group('obj-schema-PasswordValidationPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPasswordValidationPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PasswordValidationPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPasswordValidationPolicy(od);
    });
  });

  unittest.group('obj-schema-PerformDiskShrinkContext', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPerformDiskShrinkContext();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PerformDiskShrinkContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPerformDiskShrinkContext(od);
    });
  });

  unittest.group('obj-schema-PscConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPscConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.PscConfig.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPscConfig(od);
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

  unittest.group('obj-schema-ReplicationCluster', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReplicationCluster();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReplicationCluster.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReplicationCluster(od);
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

  unittest.group('obj-schema-SqlInstancesAcquireSsrsLeaseResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSqlInstancesAcquireSsrsLeaseResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SqlInstancesAcquireSsrsLeaseResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSqlInstancesAcquireSsrsLeaseResponse(od);
    });
  });

  unittest.group('obj-schema-SqlInstancesGetDiskShrinkConfigResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSqlInstancesGetDiskShrinkConfigResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SqlInstancesGetDiskShrinkConfigResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSqlInstancesGetDiskShrinkConfigResponse(od);
    });
  });

  unittest.group('obj-schema-SqlInstancesGetLatestRecoveryTimeResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSqlInstancesGetLatestRecoveryTimeResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SqlInstancesGetLatestRecoveryTimeResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSqlInstancesGetLatestRecoveryTimeResponse(od);
    });
  });

  unittest.group('obj-schema-SqlInstancesReleaseSsrsLeaseResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSqlInstancesReleaseSsrsLeaseResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SqlInstancesReleaseSsrsLeaseResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSqlInstancesReleaseSsrsLeaseResponse(od);
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

  unittest.group('obj-schema-SqlInstancesResetReplicaSizeRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSqlInstancesResetReplicaSizeRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SqlInstancesResetReplicaSizeRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSqlInstancesResetReplicaSizeRequest(od);
    });
  });

  unittest.group('obj-schema-SqlInstancesStartExternalSyncRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSqlInstancesStartExternalSyncRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SqlInstancesStartExternalSyncRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSqlInstancesStartExternalSyncRequest(od);
    });
  });

  unittest.group('obj-schema-SqlInstancesVerifyExternalSyncSettingsRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildSqlInstancesVerifyExternalSyncSettingsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SqlInstancesVerifyExternalSyncSettingsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSqlInstancesVerifyExternalSyncSettingsRequest(od);
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

  unittest.group('obj-schema-SqlServerAuditConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSqlServerAuditConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SqlServerAuditConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSqlServerAuditConfig(od);
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

  unittest.group('obj-schema-SyncFlags', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSyncFlags();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.SyncFlags.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSyncFlags(od);
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

  unittest.group('obj-schema-UserPasswordValidationPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUserPasswordValidationPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UserPasswordValidationPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUserPasswordValidationPolicy(od);
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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('sql/v1beta4/flags'),
        );
        pathOffset += 17;

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
    unittest.test('method--acquireSsrsLease', () async {
      final mock = HttpServerMock();
      final res = api.SQLAdminApi(mock).instances;
      final arg_request = buildInstancesAcquireSsrsLeaseRequest();
      final arg_project = 'foo';
      final arg_instance = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.InstancesAcquireSsrsLeaseRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkInstancesAcquireSsrsLeaseRequest(obj);

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
        index = path.indexOf('/acquireSsrsLease', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_instance'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('/acquireSsrsLease'),
        );
        pathOffset += 17;

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
        final resp =
            convert.json.encode(buildSqlInstancesAcquireSsrsLeaseResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.acquireSsrsLease(
          arg_request, arg_project, arg_instance,
          $fields: arg_$fields);
      checkSqlInstancesAcquireSsrsLeaseResponse(
          response as api.SqlInstancesAcquireSsrsLeaseResponse);
    });

    unittest.test('method--addServerCa', () async {
      final mock = HttpServerMock();
      final res = api.SQLAdminApi(mock).instances;
      final arg_project = 'foo';
      final arg_instance = 'foo';
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
          await res.delete(arg_project, arg_instance, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--demote', () async {
      final mock = HttpServerMock();
      final res = api.SQLAdminApi(mock).instances;
      final arg_request = buildInstancesDemoteRequest();
      final arg_project = 'foo';
      final arg_instance = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.InstancesDemoteRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkInstancesDemoteRequest(obj);

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
        index = path.indexOf('/demote', pathOffset);
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
          unittest.equals('/demote'),
        );
        pathOffset += 7;

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
      final response = await res.demote(arg_request, arg_project, arg_instance,
          $fields: arg_$fields);
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
      final response = await res.patch(arg_request, arg_project, arg_instance,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--promoteReplica', () async {
      final mock = HttpServerMock();
      final res = api.SQLAdminApi(mock).instances;
      final arg_project = 'foo';
      final arg_instance = 'foo';
      final arg_failover_1 = true;
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
          queryMap['failover']!.first,
          unittest.equals('$arg_failover_1'),
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
      final response = await res.promoteReplica(arg_project, arg_instance,
          failover_1: arg_failover_1, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--reencrypt', () async {
      final mock = HttpServerMock();
      final res = api.SQLAdminApi(mock).instances;
      final arg_request = buildInstancesReencryptRequest();
      final arg_project = 'foo';
      final arg_instance = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.InstancesReencryptRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkInstancesReencryptRequest(obj);

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
        index = path.indexOf('/reencrypt', pathOffset);
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
          unittest.equals('/reencrypt'),
        );
        pathOffset += 10;

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
      final response = await res.reencrypt(
          arg_request, arg_project, arg_instance,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--releaseSsrsLease', () async {
      final mock = HttpServerMock();
      final res = api.SQLAdminApi(mock).instances;
      final arg_project = 'foo';
      final arg_instance = 'foo';
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
        index = path.indexOf('/releaseSsrsLease', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_instance'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('/releaseSsrsLease'),
        );
        pathOffset += 17;

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
        final resp =
            convert.json.encode(buildSqlInstancesReleaseSsrsLeaseResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.releaseSsrsLease(arg_project, arg_instance,
          $fields: arg_$fields);
      checkSqlInstancesReleaseSsrsLeaseResponse(
          response as api.SqlInstancesReleaseSsrsLeaseResponse);
    });

    unittest.test('method--resetSslConfig', () async {
      final mock = HttpServerMock();
      final res = api.SQLAdminApi(mock).instances;
      final arg_project = 'foo';
      final arg_instance = 'foo';
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
      final response = await res.stopReplica(arg_project, arg_instance,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--switchover', () async {
      final mock = HttpServerMock();
      final res = api.SQLAdminApi(mock).instances;
      final arg_project = 'foo';
      final arg_instance = 'foo';
      final arg_dbTimeout = 'foo';
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
        index = path.indexOf('/switchover', pathOffset);
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
          unittest.equals('/switchover'),
        );
        pathOffset += 11;

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
          queryMap['dbTimeout']!.first,
          unittest.equals(arg_dbTimeout),
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
      final response = await res.switchover(arg_project, arg_instance,
          dbTimeout: arg_dbTimeout, $fields: arg_$fields);
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
      final response = await res.update(arg_request, arg_project, arg_instance,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-OperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.SQLAdminApi(mock).operations;
      final arg_project = 'foo';
      final arg_operation = 'foo';
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
        index = path.indexOf('/cancel', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_operation'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/cancel'),
        );
        pathOffset += 7;

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
      final response =
          await res.cancel(arg_project, arg_operation, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.SQLAdminApi(mock).operations;
      final arg_project = 'foo';
      final arg_operation = 'foo';
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
    unittest.test('method--getDiskShrinkConfig', () async {
      final mock = HttpServerMock();
      final res = api.SQLAdminApi(mock).projects.instances;
      final arg_project = 'foo';
      final arg_instance = 'foo';
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
        index = path.indexOf('/getDiskShrinkConfig', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_instance'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('/getDiskShrinkConfig'),
        );
        pathOffset += 20;

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
        final resp =
            convert.json.encode(buildSqlInstancesGetDiskShrinkConfigResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getDiskShrinkConfig(arg_project, arg_instance,
          $fields: arg_$fields);
      checkSqlInstancesGetDiskShrinkConfigResponse(
          response as api.SqlInstancesGetDiskShrinkConfigResponse);
    });

    unittest.test('method--getLatestRecoveryTime', () async {
      final mock = HttpServerMock();
      final res = api.SQLAdminApi(mock).projects.instances;
      final arg_project = 'foo';
      final arg_instance = 'foo';
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
        index = path.indexOf('/getLatestRecoveryTime', pathOffset);
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
          unittest.equals('/getLatestRecoveryTime'),
        );
        pathOffset += 22;

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
        final resp = convert.json
            .encode(buildSqlInstancesGetLatestRecoveryTimeResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getLatestRecoveryTime(
          arg_project, arg_instance,
          $fields: arg_$fields);
      checkSqlInstancesGetLatestRecoveryTimeResponse(
          response as api.SqlInstancesGetLatestRecoveryTimeResponse);
    });

    unittest.test('method--performDiskShrink', () async {
      final mock = HttpServerMock();
      final res = api.SQLAdminApi(mock).projects.instances;
      final arg_request = buildPerformDiskShrinkContext();
      final arg_project = 'foo';
      final arg_instance = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.PerformDiskShrinkContext.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkPerformDiskShrinkContext(obj);

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
        index = path.indexOf('/performDiskShrink', pathOffset);
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
          unittest.equals('/performDiskShrink'),
        );
        pathOffset += 18;

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
      final response = await res.performDiskShrink(
          arg_request, arg_project, arg_instance,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

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
      final response = await res.rescheduleMaintenance(
          arg_request, arg_project, arg_instance,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--resetReplicaSize', () async {
      final mock = HttpServerMock();
      final res = api.SQLAdminApi(mock).projects.instances;
      final arg_request = buildSqlInstancesResetReplicaSizeRequest();
      final arg_project = 'foo';
      final arg_instance = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SqlInstancesResetReplicaSizeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSqlInstancesResetReplicaSizeRequest(obj);

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
        index = path.indexOf('/resetReplicaSize', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_instance'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('/resetReplicaSize'),
        );
        pathOffset += 17;

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
      final response = await res.resetReplicaSize(
          arg_request, arg_project, arg_instance,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--startExternalSync', () async {
      final mock = HttpServerMock();
      final res = api.SQLAdminApi(mock).projects.instances;
      final arg_request = buildSqlInstancesStartExternalSyncRequest();
      final arg_project = 'foo';
      final arg_instance = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SqlInstancesStartExternalSyncRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSqlInstancesStartExternalSyncRequest(obj);

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
      final response = await res.startExternalSync(
          arg_request, arg_project, arg_instance,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--verifyExternalSyncSettings', () async {
      final mock = HttpServerMock();
      final res = api.SQLAdminApi(mock).projects.instances;
      final arg_request = buildSqlInstancesVerifyExternalSyncSettingsRequest();
      final arg_project = 'foo';
      final arg_instance = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SqlInstancesVerifyExternalSyncSettingsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSqlInstancesVerifyExternalSyncSettingsRequest(obj);

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
        final resp = convert.json
            .encode(buildSqlInstancesVerifyExternalSyncSettingsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.verifyExternalSyncSettings(
          arg_request, arg_project, arg_instance,
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

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.SQLAdminApi(mock).users;
      final arg_project = 'foo';
      final arg_instance = 'foo';
      final arg_name = 'foo';
      final arg_host = 'foo';
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
        index = path.indexOf('/users/', pathOffset);
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
          unittest.equals('/users/'),
        );
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_name'),
        );

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
          queryMap['host']!.first,
          unittest.equals(arg_host),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildUser());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_project, arg_instance, arg_name,
          host: arg_host, $fields: arg_$fields);
      checkUser(response as api.User);
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
