// Copyright 2024 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

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

import 'package:googleapis/oracledatabase/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAllConnectionStrings = 0;
api.AllConnectionStrings buildAllConnectionStrings() {
  final o = api.AllConnectionStrings();
  buildCounterAllConnectionStrings++;
  if (buildCounterAllConnectionStrings < 3) {
    o.high = 'foo';
    o.low = 'foo';
    o.medium = 'foo';
  }
  buildCounterAllConnectionStrings--;
  return o;
}

void checkAllConnectionStrings(api.AllConnectionStrings o) {
  buildCounterAllConnectionStrings++;
  if (buildCounterAllConnectionStrings < 3) {
    unittest.expect(o.high!, unittest.equals('foo'));
    unittest.expect(o.low!, unittest.equals('foo'));
    unittest.expect(o.medium!, unittest.equals('foo'));
  }
  buildCounterAllConnectionStrings--;
}

core.int buildCounterAmazonS3IcebergStorage = 0;
api.AmazonS3IcebergStorage buildAmazonS3IcebergStorage() {
  final o = api.AmazonS3IcebergStorage();
  buildCounterAmazonS3IcebergStorage++;
  if (buildCounterAmazonS3IcebergStorage < 3) {
    o.accessKeyId = 'foo';
    o.bucket = 'foo';
    o.endpoint = 'foo';
    o.region = 'foo';
    o.schemeType = 'foo';
    o.secretAccessKeySecret = 'foo';
  }
  buildCounterAmazonS3IcebergStorage--;
  return o;
}

void checkAmazonS3IcebergStorage(api.AmazonS3IcebergStorage o) {
  buildCounterAmazonS3IcebergStorage++;
  if (buildCounterAmazonS3IcebergStorage < 3) {
    unittest.expect(o.accessKeyId!, unittest.equals('foo'));
    unittest.expect(o.bucket!, unittest.equals('foo'));
    unittest.expect(o.endpoint!, unittest.equals('foo'));
    unittest.expect(o.region!, unittest.equals('foo'));
    unittest.expect(o.schemeType!, unittest.equals('foo'));
    unittest.expect(o.secretAccessKeySecret!, unittest.equals('foo'));
  }
  buildCounterAmazonS3IcebergStorage--;
}

core.List<core.String> buildUnnamed0() => ['foo', 'foo'];

void checkUnnamed0(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed1() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed1(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2() => ['foo', 'foo'];

void checkUnnamed2(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAutonomousDatabase = 0;
api.AutonomousDatabase buildAutonomousDatabase() {
  final o = api.AutonomousDatabase();
  buildCounterAutonomousDatabase++;
  if (buildCounterAutonomousDatabase < 3) {
    o.adminPassword = 'foo';
    o.adminPasswordSecretVersion = 'foo';
    o.cidr = 'foo';
    o.createTime = 'foo';
    o.database = 'foo';
    o.disasterRecoverySupportedLocations = buildUnnamed0();
    o.displayName = 'foo';
    o.entitlementId = 'foo';
    o.labels = buildUnnamed1();
    o.name = 'foo';
    o.network = 'foo';
    o.odbNetwork = 'foo';
    o.odbSubnet = 'foo';
    o.peerAutonomousDatabases = buildUnnamed2();
    o.properties = buildAutonomousDatabaseProperties();
    o.sourceConfig = buildSourceConfig();
  }
  buildCounterAutonomousDatabase--;
  return o;
}

void checkAutonomousDatabase(api.AutonomousDatabase o) {
  buildCounterAutonomousDatabase++;
  if (buildCounterAutonomousDatabase < 3) {
    unittest.expect(o.adminPassword!, unittest.equals('foo'));
    unittest.expect(o.adminPasswordSecretVersion!, unittest.equals('foo'));
    unittest.expect(o.cidr!, unittest.equals('foo'));
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.database!, unittest.equals('foo'));
    checkUnnamed0(o.disasterRecoverySupportedLocations!);
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.entitlementId!, unittest.equals('foo'));
    checkUnnamed1(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.network!, unittest.equals('foo'));
    unittest.expect(o.odbNetwork!, unittest.equals('foo'));
    unittest.expect(o.odbSubnet!, unittest.equals('foo'));
    checkUnnamed2(o.peerAutonomousDatabases!);
    checkAutonomousDatabaseProperties(o.properties!);
    checkSourceConfig(o.sourceConfig!);
  }
  buildCounterAutonomousDatabase--;
}

core.int buildCounterAutonomousDatabaseApex = 0;
api.AutonomousDatabaseApex buildAutonomousDatabaseApex() {
  final o = api.AutonomousDatabaseApex();
  buildCounterAutonomousDatabaseApex++;
  if (buildCounterAutonomousDatabaseApex < 3) {
    o.apexVersion = 'foo';
    o.ordsVersion = 'foo';
  }
  buildCounterAutonomousDatabaseApex--;
  return o;
}

void checkAutonomousDatabaseApex(api.AutonomousDatabaseApex o) {
  buildCounterAutonomousDatabaseApex++;
  if (buildCounterAutonomousDatabaseApex < 3) {
    unittest.expect(o.apexVersion!, unittest.equals('foo'));
    unittest.expect(o.ordsVersion!, unittest.equals('foo'));
  }
  buildCounterAutonomousDatabaseApex--;
}

core.Map<core.String, core.String> buildUnnamed3() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed3(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterAutonomousDatabaseBackup = 0;
api.AutonomousDatabaseBackup buildAutonomousDatabaseBackup() {
  final o = api.AutonomousDatabaseBackup();
  buildCounterAutonomousDatabaseBackup++;
  if (buildCounterAutonomousDatabaseBackup < 3) {
    o.autonomousDatabase = 'foo';
    o.displayName = 'foo';
    o.labels = buildUnnamed3();
    o.name = 'foo';
    o.properties = buildAutonomousDatabaseBackupProperties();
  }
  buildCounterAutonomousDatabaseBackup--;
  return o;
}

void checkAutonomousDatabaseBackup(api.AutonomousDatabaseBackup o) {
  buildCounterAutonomousDatabaseBackup++;
  if (buildCounterAutonomousDatabaseBackup < 3) {
    unittest.expect(o.autonomousDatabase!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkUnnamed3(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkAutonomousDatabaseBackupProperties(o.properties!);
  }
  buildCounterAutonomousDatabaseBackup--;
}

core.int buildCounterAutonomousDatabaseBackupProperties = 0;
api.AutonomousDatabaseBackupProperties
buildAutonomousDatabaseBackupProperties() {
  final o = api.AutonomousDatabaseBackupProperties();
  buildCounterAutonomousDatabaseBackupProperties++;
  if (buildCounterAutonomousDatabaseBackupProperties < 3) {
    o.availableTillTime = 'foo';
    o.compartmentId = 'foo';
    o.databaseSizeTb = 42.0;
    o.dbVersion = 'foo';
    o.endTime = 'foo';
    o.isAutomaticBackup = true;
    o.isLongTermBackup = true;
    o.isRestorable = true;
    o.keyStoreId = 'foo';
    o.keyStoreWallet = 'foo';
    o.kmsKeyId = 'foo';
    o.kmsKeyVersionId = 'foo';
    o.lifecycleDetails = 'foo';
    o.lifecycleState = 'foo';
    o.ocid = 'foo';
    o.retentionPeriodDays = 42;
    o.sizeTb = 42.0;
    o.startTime = 'foo';
    o.type = 'foo';
    o.vaultId = 'foo';
  }
  buildCounterAutonomousDatabaseBackupProperties--;
  return o;
}

void checkAutonomousDatabaseBackupProperties(
  api.AutonomousDatabaseBackupProperties o,
) {
  buildCounterAutonomousDatabaseBackupProperties++;
  if (buildCounterAutonomousDatabaseBackupProperties < 3) {
    unittest.expect(o.availableTillTime!, unittest.equals('foo'));
    unittest.expect(o.compartmentId!, unittest.equals('foo'));
    unittest.expect(o.databaseSizeTb!, unittest.equals(42.0));
    unittest.expect(o.dbVersion!, unittest.equals('foo'));
    unittest.expect(o.endTime!, unittest.equals('foo'));
    unittest.expect(o.isAutomaticBackup!, unittest.isTrue);
    unittest.expect(o.isLongTermBackup!, unittest.isTrue);
    unittest.expect(o.isRestorable!, unittest.isTrue);
    unittest.expect(o.keyStoreId!, unittest.equals('foo'));
    unittest.expect(o.keyStoreWallet!, unittest.equals('foo'));
    unittest.expect(o.kmsKeyId!, unittest.equals('foo'));
    unittest.expect(o.kmsKeyVersionId!, unittest.equals('foo'));
    unittest.expect(o.lifecycleDetails!, unittest.equals('foo'));
    unittest.expect(o.lifecycleState!, unittest.equals('foo'));
    unittest.expect(o.ocid!, unittest.equals('foo'));
    unittest.expect(o.retentionPeriodDays!, unittest.equals(42));
    unittest.expect(o.sizeTb!, unittest.equals(42.0));
    unittest.expect(o.startTime!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
    unittest.expect(o.vaultId!, unittest.equals('foo'));
  }
  buildCounterAutonomousDatabaseBackupProperties--;
}

core.int buildCounterAutonomousDatabaseCharacterSet = 0;
api.AutonomousDatabaseCharacterSet buildAutonomousDatabaseCharacterSet() {
  final o = api.AutonomousDatabaseCharacterSet();
  buildCounterAutonomousDatabaseCharacterSet++;
  if (buildCounterAutonomousDatabaseCharacterSet < 3) {
    o.characterSet = 'foo';
    o.characterSetType = 'foo';
    o.name = 'foo';
  }
  buildCounterAutonomousDatabaseCharacterSet--;
  return o;
}

void checkAutonomousDatabaseCharacterSet(api.AutonomousDatabaseCharacterSet o) {
  buildCounterAutonomousDatabaseCharacterSet++;
  if (buildCounterAutonomousDatabaseCharacterSet < 3) {
    unittest.expect(o.characterSet!, unittest.equals('foo'));
    unittest.expect(o.characterSetType!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterAutonomousDatabaseCharacterSet--;
}

core.List<api.DatabaseConnectionStringProfile> buildUnnamed4() => [
  buildDatabaseConnectionStringProfile(),
  buildDatabaseConnectionStringProfile(),
];

void checkUnnamed4(core.List<api.DatabaseConnectionStringProfile> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatabaseConnectionStringProfile(o[0]);
  checkDatabaseConnectionStringProfile(o[1]);
}

core.int buildCounterAutonomousDatabaseConnectionStrings = 0;
api.AutonomousDatabaseConnectionStrings
buildAutonomousDatabaseConnectionStrings() {
  final o = api.AutonomousDatabaseConnectionStrings();
  buildCounterAutonomousDatabaseConnectionStrings++;
  if (buildCounterAutonomousDatabaseConnectionStrings < 3) {
    o.allConnectionStrings = buildAllConnectionStrings();
    o.dedicated = 'foo';
    o.high = 'foo';
    o.low = 'foo';
    o.medium = 'foo';
    o.profiles = buildUnnamed4();
  }
  buildCounterAutonomousDatabaseConnectionStrings--;
  return o;
}

void checkAutonomousDatabaseConnectionStrings(
  api.AutonomousDatabaseConnectionStrings o,
) {
  buildCounterAutonomousDatabaseConnectionStrings++;
  if (buildCounterAutonomousDatabaseConnectionStrings < 3) {
    checkAllConnectionStrings(o.allConnectionStrings!);
    unittest.expect(o.dedicated!, unittest.equals('foo'));
    unittest.expect(o.high!, unittest.equals('foo'));
    unittest.expect(o.low!, unittest.equals('foo'));
    unittest.expect(o.medium!, unittest.equals('foo'));
    checkUnnamed4(o.profiles!);
  }
  buildCounterAutonomousDatabaseConnectionStrings--;
}

core.int buildCounterAutonomousDatabaseConnectionUrls = 0;
api.AutonomousDatabaseConnectionUrls buildAutonomousDatabaseConnectionUrls() {
  final o = api.AutonomousDatabaseConnectionUrls();
  buildCounterAutonomousDatabaseConnectionUrls++;
  if (buildCounterAutonomousDatabaseConnectionUrls < 3) {
    o.apexUri = 'foo';
    o.databaseTransformsUri = 'foo';
    o.graphStudioUri = 'foo';
    o.machineLearningNotebookUri = 'foo';
    o.machineLearningUserManagementUri = 'foo';
    o.mongoDbUri = 'foo';
    o.ordsUri = 'foo';
    o.sqlDevWebUri = 'foo';
  }
  buildCounterAutonomousDatabaseConnectionUrls--;
  return o;
}

void checkAutonomousDatabaseConnectionUrls(
  api.AutonomousDatabaseConnectionUrls o,
) {
  buildCounterAutonomousDatabaseConnectionUrls++;
  if (buildCounterAutonomousDatabaseConnectionUrls < 3) {
    unittest.expect(o.apexUri!, unittest.equals('foo'));
    unittest.expect(o.databaseTransformsUri!, unittest.equals('foo'));
    unittest.expect(o.graphStudioUri!, unittest.equals('foo'));
    unittest.expect(o.machineLearningNotebookUri!, unittest.equals('foo'));
    unittest.expect(
      o.machineLearningUserManagementUri!,
      unittest.equals('foo'),
    );
    unittest.expect(o.mongoDbUri!, unittest.equals('foo'));
    unittest.expect(o.ordsUri!, unittest.equals('foo'));
    unittest.expect(o.sqlDevWebUri!, unittest.equals('foo'));
  }
  buildCounterAutonomousDatabaseConnectionUrls--;
}

core.List<core.String> buildUnnamed5() => ['foo', 'foo'];

void checkUnnamed5(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed6() => ['foo', 'foo'];

void checkUnnamed6(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.CustomerContact> buildUnnamed7() => [
  buildCustomerContact(),
  buildCustomerContact(),
];

void checkUnnamed7(core.List<api.CustomerContact> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomerContact(o[0]);
  checkCustomerContact(o[1]);
}

core.List<api.EncryptionKeyHistoryEntry> buildUnnamed8() => [
  buildEncryptionKeyHistoryEntry(),
  buildEncryptionKeyHistoryEntry(),
];

void checkUnnamed8(core.List<api.EncryptionKeyHistoryEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEncryptionKeyHistoryEntry(o[0]);
  checkEncryptionKeyHistoryEntry(o[1]);
}

core.List<core.String> buildUnnamed9() => ['foo', 'foo'];

void checkUnnamed9(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.ScheduledOperationDetails> buildUnnamed10() => [
  buildScheduledOperationDetails(),
  buildScheduledOperationDetails(),
];

void checkUnnamed10(core.List<api.ScheduledOperationDetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkScheduledOperationDetails(o[0]);
  checkScheduledOperationDetails(o[1]);
}

core.List<core.String> buildUnnamed11() => ['foo', 'foo'];

void checkUnnamed11(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAutonomousDatabaseProperties = 0;
api.AutonomousDatabaseProperties buildAutonomousDatabaseProperties() {
  final o = api.AutonomousDatabaseProperties();
  buildCounterAutonomousDatabaseProperties++;
  if (buildCounterAutonomousDatabaseProperties < 3) {
    o.actualUsedDataStorageSizeTb = 42.0;
    o.allocatedStorageSizeTb = 42.0;
    o.allowlistedIps = buildUnnamed5();
    o.apexDetails = buildAutonomousDatabaseApex();
    o.arePrimaryAllowlistedIpsUsed = true;
    o.autonomousContainerDatabaseId = 'foo';
    o.availableUpgradeVersions = buildUnnamed6();
    o.backupRetentionPeriodDays = 42;
    o.characterSet = 'foo';
    o.computeCount = 42.0;
    o.connectionStrings = buildAutonomousDatabaseConnectionStrings();
    o.connectionUrls = buildAutonomousDatabaseConnectionUrls();
    o.cpuCoreCount = 42;
    o.customerContacts = buildUnnamed7();
    o.dataGuardRoleChangedTime = 'foo';
    o.dataSafeState = 'foo';
    o.dataStorageSizeGb = 42;
    o.dataStorageSizeTb = 42;
    o.databaseManagementState = 'foo';
    o.dbEdition = 'foo';
    o.dbVersion = 'foo';
    o.dbWorkload = 'foo';
    o.disasterRecoveryRoleChangedTime = 'foo';
    o.encryptionKey = buildEncryptionKey();
    o.encryptionKeyHistoryEntries = buildUnnamed8();
    o.failedDataRecoveryDuration = 'foo';
    o.isAutoScalingEnabled = true;
    o.isLocalDataGuardEnabled = true;
    o.isStorageAutoScalingEnabled = true;
    o.licenseType = 'foo';
    o.lifecycleDetails = 'foo';
    o.localAdgAutoFailoverMaxDataLossLimit = 42;
    o.localAdgAutoFailoverMaxDataLossLimitDuration = 42;
    o.localDataGuardEnabled = true;
    o.localDisasterRecoveryType = 'foo';
    o.localStandbyDb = buildAutonomousDatabaseStandbySummary();
    o.maintenanceBeginTime = 'foo';
    o.maintenanceEndTime = 'foo';
    o.maintenanceScheduleType = 'foo';
    o.memoryPerOracleComputeUnitGbs = 42;
    o.memoryTableGbs = 42;
    o.mtlsConnectionRequired = true;
    o.nCharacterSet = 'foo';
    o.nextLongTermBackupTime = 'foo';
    o.ociUrl = 'foo';
    o.ocid = 'foo';
    o.openMode = 'foo';
    o.operationsInsightsState = 'foo';
    o.peerDbIds = buildUnnamed9();
    o.permissionLevel = 'foo';
    o.privateEndpoint = 'foo';
    o.privateEndpointIp = 'foo';
    o.privateEndpointLabel = 'foo';
    o.refreshableClone = true;
    o.refreshableMode = 'foo';
    o.refreshableState = 'foo';
    o.role = 'foo';
    o.scheduledOperationDetails = buildUnnamed10();
    o.secretId = 'foo';
    o.serviceAgentEmail = 'foo';
    o.sqlWebDeveloperUrl = 'foo';
    o.state = 'foo';
    o.supportedCloneRegions = buildUnnamed11();
    o.totalAutoBackupStorageSizeGbs = 42.0;
    o.usedDataStorageSizeTbs = 42;
    o.vaultId = 'foo';
  }
  buildCounterAutonomousDatabaseProperties--;
  return o;
}

void checkAutonomousDatabaseProperties(api.AutonomousDatabaseProperties o) {
  buildCounterAutonomousDatabaseProperties++;
  if (buildCounterAutonomousDatabaseProperties < 3) {
    unittest.expect(o.actualUsedDataStorageSizeTb!, unittest.equals(42.0));
    unittest.expect(o.allocatedStorageSizeTb!, unittest.equals(42.0));
    checkUnnamed5(o.allowlistedIps!);
    checkAutonomousDatabaseApex(o.apexDetails!);
    unittest.expect(o.arePrimaryAllowlistedIpsUsed!, unittest.isTrue);
    unittest.expect(o.autonomousContainerDatabaseId!, unittest.equals('foo'));
    checkUnnamed6(o.availableUpgradeVersions!);
    unittest.expect(o.backupRetentionPeriodDays!, unittest.equals(42));
    unittest.expect(o.characterSet!, unittest.equals('foo'));
    unittest.expect(o.computeCount!, unittest.equals(42.0));
    checkAutonomousDatabaseConnectionStrings(o.connectionStrings!);
    checkAutonomousDatabaseConnectionUrls(o.connectionUrls!);
    unittest.expect(o.cpuCoreCount!, unittest.equals(42));
    checkUnnamed7(o.customerContacts!);
    unittest.expect(o.dataGuardRoleChangedTime!, unittest.equals('foo'));
    unittest.expect(o.dataSafeState!, unittest.equals('foo'));
    unittest.expect(o.dataStorageSizeGb!, unittest.equals(42));
    unittest.expect(o.dataStorageSizeTb!, unittest.equals(42));
    unittest.expect(o.databaseManagementState!, unittest.equals('foo'));
    unittest.expect(o.dbEdition!, unittest.equals('foo'));
    unittest.expect(o.dbVersion!, unittest.equals('foo'));
    unittest.expect(o.dbWorkload!, unittest.equals('foo'));
    unittest.expect(o.disasterRecoveryRoleChangedTime!, unittest.equals('foo'));
    checkEncryptionKey(o.encryptionKey!);
    checkUnnamed8(o.encryptionKeyHistoryEntries!);
    unittest.expect(o.failedDataRecoveryDuration!, unittest.equals('foo'));
    unittest.expect(o.isAutoScalingEnabled!, unittest.isTrue);
    unittest.expect(o.isLocalDataGuardEnabled!, unittest.isTrue);
    unittest.expect(o.isStorageAutoScalingEnabled!, unittest.isTrue);
    unittest.expect(o.licenseType!, unittest.equals('foo'));
    unittest.expect(o.lifecycleDetails!, unittest.equals('foo'));
    unittest.expect(
      o.localAdgAutoFailoverMaxDataLossLimit!,
      unittest.equals(42),
    );
    unittest.expect(
      o.localAdgAutoFailoverMaxDataLossLimitDuration!,
      unittest.equals(42),
    );
    unittest.expect(o.localDataGuardEnabled!, unittest.isTrue);
    unittest.expect(o.localDisasterRecoveryType!, unittest.equals('foo'));
    checkAutonomousDatabaseStandbySummary(o.localStandbyDb!);
    unittest.expect(o.maintenanceBeginTime!, unittest.equals('foo'));
    unittest.expect(o.maintenanceEndTime!, unittest.equals('foo'));
    unittest.expect(o.maintenanceScheduleType!, unittest.equals('foo'));
    unittest.expect(o.memoryPerOracleComputeUnitGbs!, unittest.equals(42));
    unittest.expect(o.memoryTableGbs!, unittest.equals(42));
    unittest.expect(o.mtlsConnectionRequired!, unittest.isTrue);
    unittest.expect(o.nCharacterSet!, unittest.equals('foo'));
    unittest.expect(o.nextLongTermBackupTime!, unittest.equals('foo'));
    unittest.expect(o.ociUrl!, unittest.equals('foo'));
    unittest.expect(o.ocid!, unittest.equals('foo'));
    unittest.expect(o.openMode!, unittest.equals('foo'));
    unittest.expect(o.operationsInsightsState!, unittest.equals('foo'));
    checkUnnamed9(o.peerDbIds!);
    unittest.expect(o.permissionLevel!, unittest.equals('foo'));
    unittest.expect(o.privateEndpoint!, unittest.equals('foo'));
    unittest.expect(o.privateEndpointIp!, unittest.equals('foo'));
    unittest.expect(o.privateEndpointLabel!, unittest.equals('foo'));
    unittest.expect(o.refreshableClone!, unittest.isTrue);
    unittest.expect(o.refreshableMode!, unittest.equals('foo'));
    unittest.expect(o.refreshableState!, unittest.equals('foo'));
    unittest.expect(o.role!, unittest.equals('foo'));
    checkUnnamed10(o.scheduledOperationDetails!);
    unittest.expect(o.secretId!, unittest.equals('foo'));
    unittest.expect(o.serviceAgentEmail!, unittest.equals('foo'));
    unittest.expect(o.sqlWebDeveloperUrl!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    checkUnnamed11(o.supportedCloneRegions!);
    unittest.expect(o.totalAutoBackupStorageSizeGbs!, unittest.equals(42.0));
    unittest.expect(o.usedDataStorageSizeTbs!, unittest.equals(42));
    unittest.expect(o.vaultId!, unittest.equals('foo'));
  }
  buildCounterAutonomousDatabaseProperties--;
}

core.int buildCounterAutonomousDatabaseRefreshableClone = 0;
api.AutonomousDatabaseRefreshableClone
buildAutonomousDatabaseRefreshableClone() {
  final o = api.AutonomousDatabaseRefreshableClone();
  buildCounterAutonomousDatabaseRefreshableClone++;
  if (buildCounterAutonomousDatabaseRefreshableClone < 3) {
    o.name = 'foo';
    o.region = 'foo';
  }
  buildCounterAutonomousDatabaseRefreshableClone--;
  return o;
}

void checkAutonomousDatabaseRefreshableClone(
  api.AutonomousDatabaseRefreshableClone o,
) {
  buildCounterAutonomousDatabaseRefreshableClone++;
  if (buildCounterAutonomousDatabaseRefreshableClone < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.region!, unittest.equals('foo'));
  }
  buildCounterAutonomousDatabaseRefreshableClone--;
}

core.List<api.AutonomousDatabaseRefreshableClone> buildUnnamed12() => [
  buildAutonomousDatabaseRefreshableClone(),
  buildAutonomousDatabaseRefreshableClone(),
];

void checkUnnamed12(core.List<api.AutonomousDatabaseRefreshableClone> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAutonomousDatabaseRefreshableClone(o[0]);
  checkAutonomousDatabaseRefreshableClone(o[1]);
}

core.int buildCounterAutonomousDatabaseRefreshableClones = 0;
api.AutonomousDatabaseRefreshableClones
buildAutonomousDatabaseRefreshableClones() {
  final o = api.AutonomousDatabaseRefreshableClones();
  buildCounterAutonomousDatabaseRefreshableClones++;
  if (buildCounterAutonomousDatabaseRefreshableClones < 3) {
    o.autonomousDatabaseRefreshableClones = buildUnnamed12();
  }
  buildCounterAutonomousDatabaseRefreshableClones--;
  return o;
}

void checkAutonomousDatabaseRefreshableClones(
  api.AutonomousDatabaseRefreshableClones o,
) {
  buildCounterAutonomousDatabaseRefreshableClones++;
  if (buildCounterAutonomousDatabaseRefreshableClones < 3) {
    checkUnnamed12(o.autonomousDatabaseRefreshableClones!);
  }
  buildCounterAutonomousDatabaseRefreshableClones--;
}

core.int buildCounterAutonomousDatabaseStandbySummary = 0;
api.AutonomousDatabaseStandbySummary buildAutonomousDatabaseStandbySummary() {
  final o = api.AutonomousDatabaseStandbySummary();
  buildCounterAutonomousDatabaseStandbySummary++;
  if (buildCounterAutonomousDatabaseStandbySummary < 3) {
    o.dataGuardRoleChangedTime = 'foo';
    o.disasterRecoveryRoleChangedTime = 'foo';
    o.lagTimeDuration = 'foo';
    o.lifecycleDetails = 'foo';
    o.state = 'foo';
  }
  buildCounterAutonomousDatabaseStandbySummary--;
  return o;
}

void checkAutonomousDatabaseStandbySummary(
  api.AutonomousDatabaseStandbySummary o,
) {
  buildCounterAutonomousDatabaseStandbySummary++;
  if (buildCounterAutonomousDatabaseStandbySummary < 3) {
    unittest.expect(o.dataGuardRoleChangedTime!, unittest.equals('foo'));
    unittest.expect(o.disasterRecoveryRoleChangedTime!, unittest.equals('foo'));
    unittest.expect(o.lagTimeDuration!, unittest.equals('foo'));
    unittest.expect(o.lifecycleDetails!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
  }
  buildCounterAutonomousDatabaseStandbySummary--;
}

core.int buildCounterAutonomousDbVersion = 0;
api.AutonomousDbVersion buildAutonomousDbVersion() {
  final o = api.AutonomousDbVersion();
  buildCounterAutonomousDbVersion++;
  if (buildCounterAutonomousDbVersion < 3) {
    o.dbWorkload = 'foo';
    o.name = 'foo';
    o.version = 'foo';
    o.workloadUri = 'foo';
  }
  buildCounterAutonomousDbVersion--;
  return o;
}

void checkAutonomousDbVersion(api.AutonomousDbVersion o) {
  buildCounterAutonomousDbVersion++;
  if (buildCounterAutonomousDbVersion < 3) {
    unittest.expect(o.dbWorkload!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals('foo'));
    unittest.expect(o.workloadUri!, unittest.equals('foo'));
  }
  buildCounterAutonomousDbVersion--;
}

core.int buildCounterAzureDataLakeStorageIcebergStorage = 0;
api.AzureDataLakeStorageIcebergStorage
buildAzureDataLakeStorageIcebergStorage() {
  final o = api.AzureDataLakeStorageIcebergStorage();
  buildCounterAzureDataLakeStorageIcebergStorage++;
  if (buildCounterAzureDataLakeStorageIcebergStorage < 3) {
    o.accountKeySecret = 'foo';
    o.azureAccount = 'foo';
    o.container = 'foo';
    o.endpoint = 'foo';
  }
  buildCounterAzureDataLakeStorageIcebergStorage--;
  return o;
}

void checkAzureDataLakeStorageIcebergStorage(
  api.AzureDataLakeStorageIcebergStorage o,
) {
  buildCounterAzureDataLakeStorageIcebergStorage++;
  if (buildCounterAzureDataLakeStorageIcebergStorage < 3) {
    unittest.expect(o.accountKeySecret!, unittest.equals('foo'));
    unittest.expect(o.azureAccount!, unittest.equals('foo'));
    unittest.expect(o.container!, unittest.equals('foo'));
    unittest.expect(o.endpoint!, unittest.equals('foo'));
  }
  buildCounterAzureDataLakeStorageIcebergStorage--;
}

core.int buildCounterBackupDestinationDetails = 0;
api.BackupDestinationDetails buildBackupDestinationDetails() {
  final o = api.BackupDestinationDetails();
  buildCounterBackupDestinationDetails++;
  if (buildCounterBackupDestinationDetails < 3) {
    o.type = 'foo';
  }
  buildCounterBackupDestinationDetails--;
  return o;
}

void checkBackupDestinationDetails(api.BackupDestinationDetails o) {
  buildCounterBackupDestinationDetails++;
  if (buildCounterBackupDestinationDetails < 3) {
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterBackupDestinationDetails--;
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

core.int buildCounterCloudAccountDetails = 0;
api.CloudAccountDetails buildCloudAccountDetails() {
  final o = api.CloudAccountDetails();
  buildCounterCloudAccountDetails++;
  if (buildCounterCloudAccountDetails < 3) {
    o.accountCreationUri = 'foo';
    o.cloudAccount = 'foo';
    o.cloudAccountHomeRegion = 'foo';
    o.linkExistingAccountUri = 'foo';
  }
  buildCounterCloudAccountDetails--;
  return o;
}

void checkCloudAccountDetails(api.CloudAccountDetails o) {
  buildCounterCloudAccountDetails++;
  if (buildCounterCloudAccountDetails < 3) {
    unittest.expect(o.accountCreationUri!, unittest.equals('foo'));
    unittest.expect(o.cloudAccount!, unittest.equals('foo'));
    unittest.expect(o.cloudAccountHomeRegion!, unittest.equals('foo'));
    unittest.expect(o.linkExistingAccountUri!, unittest.equals('foo'));
  }
  buildCounterCloudAccountDetails--;
}

core.Map<core.String, core.String> buildUnnamed13() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed13(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterCloudExadataInfrastructure = 0;
api.CloudExadataInfrastructure buildCloudExadataInfrastructure() {
  final o = api.CloudExadataInfrastructure();
  buildCounterCloudExadataInfrastructure++;
  if (buildCounterCloudExadataInfrastructure < 3) {
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.entitlementId = 'foo';
    o.gcpOracleZone = 'foo';
    o.labels = buildUnnamed13();
    o.name = 'foo';
    o.properties = buildCloudExadataInfrastructureProperties();
  }
  buildCounterCloudExadataInfrastructure--;
  return o;
}

void checkCloudExadataInfrastructure(api.CloudExadataInfrastructure o) {
  buildCounterCloudExadataInfrastructure++;
  if (buildCounterCloudExadataInfrastructure < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.entitlementId!, unittest.equals('foo'));
    unittest.expect(o.gcpOracleZone!, unittest.equals('foo'));
    checkUnnamed13(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkCloudExadataInfrastructureProperties(o.properties!);
  }
  buildCounterCloudExadataInfrastructure--;
}

core.List<api.CustomerContact> buildUnnamed14() => [
  buildCustomerContact(),
  buildCustomerContact(),
];

void checkUnnamed14(core.List<api.CustomerContact> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomerContact(o[0]);
  checkCustomerContact(o[1]);
}

core.int buildCounterCloudExadataInfrastructureProperties = 0;
api.CloudExadataInfrastructureProperties
buildCloudExadataInfrastructureProperties() {
  final o = api.CloudExadataInfrastructureProperties();
  buildCounterCloudExadataInfrastructureProperties++;
  if (buildCounterCloudExadataInfrastructureProperties < 3) {
    o.activatedStorageCount = 42;
    o.additionalStorageCount = 42;
    o.availableStorageSizeGb = 42;
    o.computeCount = 42;
    o.computeModel = 'foo';
    o.cpuCount = 42;
    o.customerContacts = buildUnnamed14();
    o.dataStorageSizeTb = 42.0;
    o.databaseServerType = 'foo';
    o.dbNodeStorageSizeGb = 42;
    o.dbServerVersion = 'foo';
    o.exascaleConfig = buildExascaleConfig();
    o.maintenanceWindow = buildMaintenanceWindow();
    o.maxCpuCount = 42;
    o.maxDataStorageTb = 42.0;
    o.maxDbNodeStorageSizeGb = 42;
    o.maxMemoryGb = 42;
    o.memorySizeGb = 42;
    o.monthlyDbServerVersion = 'foo';
    o.monthlyStorageServerVersion = 'foo';
    o.nextMaintenanceRunId = 'foo';
    o.nextMaintenanceRunTime = 'foo';
    o.nextSecurityMaintenanceRunTime = 'foo';
    o.ociUrl = 'foo';
    o.ocid = 'foo';
    o.shape = 'foo';
    o.state = 'foo';
    o.storageCount = 42;
    o.storageServerType = 'foo';
    o.storageServerVersion = 'foo';
    o.totalStorageSizeGb = 42;
  }
  buildCounterCloudExadataInfrastructureProperties--;
  return o;
}

void checkCloudExadataInfrastructureProperties(
  api.CloudExadataInfrastructureProperties o,
) {
  buildCounterCloudExadataInfrastructureProperties++;
  if (buildCounterCloudExadataInfrastructureProperties < 3) {
    unittest.expect(o.activatedStorageCount!, unittest.equals(42));
    unittest.expect(o.additionalStorageCount!, unittest.equals(42));
    unittest.expect(o.availableStorageSizeGb!, unittest.equals(42));
    unittest.expect(o.computeCount!, unittest.equals(42));
    unittest.expect(o.computeModel!, unittest.equals('foo'));
    unittest.expect(o.cpuCount!, unittest.equals(42));
    checkUnnamed14(o.customerContacts!);
    unittest.expect(o.dataStorageSizeTb!, unittest.equals(42.0));
    unittest.expect(o.databaseServerType!, unittest.equals('foo'));
    unittest.expect(o.dbNodeStorageSizeGb!, unittest.equals(42));
    unittest.expect(o.dbServerVersion!, unittest.equals('foo'));
    checkExascaleConfig(o.exascaleConfig!);
    checkMaintenanceWindow(o.maintenanceWindow!);
    unittest.expect(o.maxCpuCount!, unittest.equals(42));
    unittest.expect(o.maxDataStorageTb!, unittest.equals(42.0));
    unittest.expect(o.maxDbNodeStorageSizeGb!, unittest.equals(42));
    unittest.expect(o.maxMemoryGb!, unittest.equals(42));
    unittest.expect(o.memorySizeGb!, unittest.equals(42));
    unittest.expect(o.monthlyDbServerVersion!, unittest.equals('foo'));
    unittest.expect(o.monthlyStorageServerVersion!, unittest.equals('foo'));
    unittest.expect(o.nextMaintenanceRunId!, unittest.equals('foo'));
    unittest.expect(o.nextMaintenanceRunTime!, unittest.equals('foo'));
    unittest.expect(o.nextSecurityMaintenanceRunTime!, unittest.equals('foo'));
    unittest.expect(o.ociUrl!, unittest.equals('foo'));
    unittest.expect(o.ocid!, unittest.equals('foo'));
    unittest.expect(o.shape!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.storageCount!, unittest.equals(42));
    unittest.expect(o.storageServerType!, unittest.equals('foo'));
    unittest.expect(o.storageServerVersion!, unittest.equals('foo'));
    unittest.expect(o.totalStorageSizeGb!, unittest.equals(42));
  }
  buildCounterCloudExadataInfrastructureProperties--;
}

core.Map<core.String, core.String> buildUnnamed15() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed15(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterCloudVmCluster = 0;
api.CloudVmCluster buildCloudVmCluster() {
  final o = api.CloudVmCluster();
  buildCounterCloudVmCluster++;
  if (buildCounterCloudVmCluster < 3) {
    o.backupOdbSubnet = 'foo';
    o.backupSubnetCidr = 'foo';
    o.cidr = 'foo';
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.exadataInfrastructure = 'foo';
    o.exascaleDbStorageVault = 'foo';
    o.gcpOracleZone = 'foo';
    o.identityConnector = buildIdentityConnector();
    o.labels = buildUnnamed15();
    o.name = 'foo';
    o.network = 'foo';
    o.odbNetwork = 'foo';
    o.odbSubnet = 'foo';
    o.properties = buildCloudVmClusterProperties();
  }
  buildCounterCloudVmCluster--;
  return o;
}

void checkCloudVmCluster(api.CloudVmCluster o) {
  buildCounterCloudVmCluster++;
  if (buildCounterCloudVmCluster < 3) {
    unittest.expect(o.backupOdbSubnet!, unittest.equals('foo'));
    unittest.expect(o.backupSubnetCidr!, unittest.equals('foo'));
    unittest.expect(o.cidr!, unittest.equals('foo'));
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.exadataInfrastructure!, unittest.equals('foo'));
    unittest.expect(o.exascaleDbStorageVault!, unittest.equals('foo'));
    unittest.expect(o.gcpOracleZone!, unittest.equals('foo'));
    checkIdentityConnector(o.identityConnector!);
    checkUnnamed15(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.network!, unittest.equals('foo'));
    unittest.expect(o.odbNetwork!, unittest.equals('foo'));
    unittest.expect(o.odbSubnet!, unittest.equals('foo'));
    checkCloudVmClusterProperties(o.properties!);
  }
  buildCounterCloudVmCluster--;
}

core.List<core.String> buildUnnamed16() => ['foo', 'foo'];

void checkUnnamed16(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed17() => ['foo', 'foo'];

void checkUnnamed17(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed18() => ['foo', 'foo'];

void checkUnnamed18(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCloudVmClusterProperties = 0;
api.CloudVmClusterProperties buildCloudVmClusterProperties() {
  final o = api.CloudVmClusterProperties();
  buildCounterCloudVmClusterProperties++;
  if (buildCounterCloudVmClusterProperties < 3) {
    o.clusterName = 'foo';
    o.compartmentId = 'foo';
    o.computeModel = 'foo';
    o.cpuCoreCount = 42;
    o.dataStorageSizeTb = 42.0;
    o.dbNodeStorageSizeGb = 42;
    o.dbServerOcids = buildUnnamed16();
    o.diagnosticsDataCollectionOptions = buildDataCollectionOptions();
    o.diskRedundancy = 'foo';
    o.dnsListenerIp = 'foo';
    o.domain = 'foo';
    o.giVersion = 'foo';
    o.hostname = 'foo';
    o.hostnamePrefix = 'foo';
    o.licenseType = 'foo';
    o.localBackupEnabled = true;
    o.memorySizeGb = 42;
    o.nodeCount = 42;
    o.ociUrl = 'foo';
    o.ocid = 'foo';
    o.ocpuCount = 42.0;
    o.scanDns = 'foo';
    o.scanDnsRecordId = 'foo';
    o.scanIpIds = buildUnnamed17();
    o.scanListenerPortTcp = 42;
    o.scanListenerPortTcpSsl = 42;
    o.shape = 'foo';
    o.sparseDiskgroupEnabled = true;
    o.sshPublicKeys = buildUnnamed18();
    o.state = 'foo';
    o.storageManagementType = 'foo';
    o.storageSizeGb = 42;
    o.systemVersion = 'foo';
    o.timeZone = buildTimeZone();
    o.vmBackupStorageType = 'foo';
    o.vmFileSystemStorageType = 'foo';
  }
  buildCounterCloudVmClusterProperties--;
  return o;
}

void checkCloudVmClusterProperties(api.CloudVmClusterProperties o) {
  buildCounterCloudVmClusterProperties++;
  if (buildCounterCloudVmClusterProperties < 3) {
    unittest.expect(o.clusterName!, unittest.equals('foo'));
    unittest.expect(o.compartmentId!, unittest.equals('foo'));
    unittest.expect(o.computeModel!, unittest.equals('foo'));
    unittest.expect(o.cpuCoreCount!, unittest.equals(42));
    unittest.expect(o.dataStorageSizeTb!, unittest.equals(42.0));
    unittest.expect(o.dbNodeStorageSizeGb!, unittest.equals(42));
    checkUnnamed16(o.dbServerOcids!);
    checkDataCollectionOptions(o.diagnosticsDataCollectionOptions!);
    unittest.expect(o.diskRedundancy!, unittest.equals('foo'));
    unittest.expect(o.dnsListenerIp!, unittest.equals('foo'));
    unittest.expect(o.domain!, unittest.equals('foo'));
    unittest.expect(o.giVersion!, unittest.equals('foo'));
    unittest.expect(o.hostname!, unittest.equals('foo'));
    unittest.expect(o.hostnamePrefix!, unittest.equals('foo'));
    unittest.expect(o.licenseType!, unittest.equals('foo'));
    unittest.expect(o.localBackupEnabled!, unittest.isTrue);
    unittest.expect(o.memorySizeGb!, unittest.equals(42));
    unittest.expect(o.nodeCount!, unittest.equals(42));
    unittest.expect(o.ociUrl!, unittest.equals('foo'));
    unittest.expect(o.ocid!, unittest.equals('foo'));
    unittest.expect(o.ocpuCount!, unittest.equals(42.0));
    unittest.expect(o.scanDns!, unittest.equals('foo'));
    unittest.expect(o.scanDnsRecordId!, unittest.equals('foo'));
    checkUnnamed17(o.scanIpIds!);
    unittest.expect(o.scanListenerPortTcp!, unittest.equals(42));
    unittest.expect(o.scanListenerPortTcpSsl!, unittest.equals(42));
    unittest.expect(o.shape!, unittest.equals('foo'));
    unittest.expect(o.sparseDiskgroupEnabled!, unittest.isTrue);
    checkUnnamed18(o.sshPublicKeys!);
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.storageManagementType!, unittest.equals('foo'));
    unittest.expect(o.storageSizeGb!, unittest.equals(42));
    unittest.expect(o.systemVersion!, unittest.equals('foo'));
    checkTimeZone(o.timeZone!);
    unittest.expect(o.vmBackupStorageType!, unittest.equals('foo'));
    unittest.expect(o.vmFileSystemStorageType!, unittest.equals('foo'));
  }
  buildCounterCloudVmClusterProperties--;
}

core.int buildCounterConfigureExascaleCloudExadataInfrastructureRequest = 0;
api.ConfigureExascaleCloudExadataInfrastructureRequest
buildConfigureExascaleCloudExadataInfrastructureRequest() {
  final o = api.ConfigureExascaleCloudExadataInfrastructureRequest();
  buildCounterConfigureExascaleCloudExadataInfrastructureRequest++;
  if (buildCounterConfigureExascaleCloudExadataInfrastructureRequest < 3) {
    o.requestId = 'foo';
    o.totalStorageSizeGb = 42;
    o.totalVmStorageSizeGb = 42;
  }
  buildCounterConfigureExascaleCloudExadataInfrastructureRequest--;
  return o;
}

void checkConfigureExascaleCloudExadataInfrastructureRequest(
  api.ConfigureExascaleCloudExadataInfrastructureRequest o,
) {
  buildCounterConfigureExascaleCloudExadataInfrastructureRequest++;
  if (buildCounterConfigureExascaleCloudExadataInfrastructureRequest < 3) {
    unittest.expect(o.requestId!, unittest.equals('foo'));
    unittest.expect(o.totalStorageSizeGb!, unittest.equals(42));
    unittest.expect(o.totalVmStorageSizeGb!, unittest.equals(42));
  }
  buildCounterConfigureExascaleCloudExadataInfrastructureRequest--;
}

core.int buildCounterCustomerContact = 0;
api.CustomerContact buildCustomerContact() {
  final o = api.CustomerContact();
  buildCounterCustomerContact++;
  if (buildCounterCustomerContact < 3) {
    o.email = 'foo';
  }
  buildCounterCustomerContact--;
  return o;
}

void checkCustomerContact(api.CustomerContact o) {
  buildCounterCustomerContact++;
  if (buildCounterCustomerContact < 3) {
    unittest.expect(o.email!, unittest.equals('foo'));
  }
  buildCounterCustomerContact--;
}

core.int buildCounterDataCollectionOptions = 0;
api.DataCollectionOptions buildDataCollectionOptions() {
  final o = api.DataCollectionOptions();
  buildCounterDataCollectionOptions++;
  if (buildCounterDataCollectionOptions < 3) {
    o.diagnosticsEventsEnabled = true;
    o.healthMonitoringEnabled = true;
    o.incidentLogsEnabled = true;
  }
  buildCounterDataCollectionOptions--;
  return o;
}

void checkDataCollectionOptions(api.DataCollectionOptions o) {
  buildCounterDataCollectionOptions++;
  if (buildCounterDataCollectionOptions < 3) {
    unittest.expect(o.diagnosticsEventsEnabled!, unittest.isTrue);
    unittest.expect(o.healthMonitoringEnabled!, unittest.isTrue);
    unittest.expect(o.incidentLogsEnabled!, unittest.isTrue);
  }
  buildCounterDataCollectionOptions--;
}

core.int buildCounterDataCollectionOptionsCommon = 0;
api.DataCollectionOptionsCommon buildDataCollectionOptionsCommon() {
  final o = api.DataCollectionOptionsCommon();
  buildCounterDataCollectionOptionsCommon++;
  if (buildCounterDataCollectionOptionsCommon < 3) {
    o.isDiagnosticsEventsEnabled = true;
    o.isHealthMonitoringEnabled = true;
    o.isIncidentLogsEnabled = true;
  }
  buildCounterDataCollectionOptionsCommon--;
  return o;
}

void checkDataCollectionOptionsCommon(api.DataCollectionOptionsCommon o) {
  buildCounterDataCollectionOptionsCommon++;
  if (buildCounterDataCollectionOptionsCommon < 3) {
    unittest.expect(o.isDiagnosticsEventsEnabled!, unittest.isTrue);
    unittest.expect(o.isHealthMonitoringEnabled!, unittest.isTrue);
    unittest.expect(o.isIncidentLogsEnabled!, unittest.isTrue);
  }
  buildCounterDataCollectionOptionsCommon--;
}

core.int buildCounterDataCollectionOptionsDbSystem = 0;
api.DataCollectionOptionsDbSystem buildDataCollectionOptionsDbSystem() {
  final o = api.DataCollectionOptionsDbSystem();
  buildCounterDataCollectionOptionsDbSystem++;
  if (buildCounterDataCollectionOptionsDbSystem < 3) {
    o.isDiagnosticsEventsEnabled = true;
    o.isIncidentLogsEnabled = true;
  }
  buildCounterDataCollectionOptionsDbSystem--;
  return o;
}

void checkDataCollectionOptionsDbSystem(api.DataCollectionOptionsDbSystem o) {
  buildCounterDataCollectionOptionsDbSystem++;
  if (buildCounterDataCollectionOptionsDbSystem < 3) {
    unittest.expect(o.isDiagnosticsEventsEnabled!, unittest.isTrue);
    unittest.expect(o.isIncidentLogsEnabled!, unittest.isTrue);
  }
  buildCounterDataCollectionOptionsDbSystem--;
}

core.int buildCounterDatabase = 0;
api.Database buildDatabase() {
  final o = api.Database();
  buildCounterDatabase++;
  if (buildCounterDatabase < 3) {
    o.adminPassword = 'foo';
    o.adminPasswordSecretVersion = 'foo';
    o.characterSet = 'foo';
    o.createTime = 'foo';
    o.databaseId = 'foo';
    o.dbHomeName = 'foo';
    o.dbName = 'foo';
    o.dbUniqueName = 'foo';
    o.gcpOracleZone = 'foo';
    o.name = 'foo';
    o.ncharacterSet = 'foo';
    o.ociUrl = 'foo';
    o.opsInsightsStatus = 'foo';
    o.pluggableDatabaseId = 'foo';
    o.pluggableDatabaseName = 'foo';
    o.properties = buildDatabaseProperties();
    o.tdeWalletPassword = 'foo';
    o.tdeWalletPasswordSecretVersion = 'foo';
  }
  buildCounterDatabase--;
  return o;
}

void checkDatabase(api.Database o) {
  buildCounterDatabase++;
  if (buildCounterDatabase < 3) {
    unittest.expect(o.adminPassword!, unittest.equals('foo'));
    unittest.expect(o.adminPasswordSecretVersion!, unittest.equals('foo'));
    unittest.expect(o.characterSet!, unittest.equals('foo'));
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.databaseId!, unittest.equals('foo'));
    unittest.expect(o.dbHomeName!, unittest.equals('foo'));
    unittest.expect(o.dbName!, unittest.equals('foo'));
    unittest.expect(o.dbUniqueName!, unittest.equals('foo'));
    unittest.expect(o.gcpOracleZone!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.ncharacterSet!, unittest.equals('foo'));
    unittest.expect(o.ociUrl!, unittest.equals('foo'));
    unittest.expect(o.opsInsightsStatus!, unittest.equals('foo'));
    unittest.expect(o.pluggableDatabaseId!, unittest.equals('foo'));
    unittest.expect(o.pluggableDatabaseName!, unittest.equals('foo'));
    checkDatabaseProperties(o.properties!);
    unittest.expect(o.tdeWalletPassword!, unittest.equals('foo'));
    unittest.expect(o.tdeWalletPasswordSecretVersion!, unittest.equals('foo'));
  }
  buildCounterDatabase--;
}

core.int buildCounterDatabaseCharacterSet = 0;
api.DatabaseCharacterSet buildDatabaseCharacterSet() {
  final o = api.DatabaseCharacterSet();
  buildCounterDatabaseCharacterSet++;
  if (buildCounterDatabaseCharacterSet < 3) {
    o.characterSet = 'foo';
    o.characterSetType = 'foo';
    o.name = 'foo';
  }
  buildCounterDatabaseCharacterSet--;
  return o;
}

void checkDatabaseCharacterSet(api.DatabaseCharacterSet o) {
  buildCounterDatabaseCharacterSet++;
  if (buildCounterDatabaseCharacterSet < 3) {
    unittest.expect(o.characterSet!, unittest.equals('foo'));
    unittest.expect(o.characterSetType!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterDatabaseCharacterSet--;
}

core.int buildCounterDatabaseConnectionStringProfile = 0;
api.DatabaseConnectionStringProfile buildDatabaseConnectionStringProfile() {
  final o = api.DatabaseConnectionStringProfile();
  buildCounterDatabaseConnectionStringProfile++;
  if (buildCounterDatabaseConnectionStringProfile < 3) {
    o.consumerGroup = 'foo';
    o.displayName = 'foo';
    o.hostFormat = 'foo';
    o.isRegional = true;
    o.protocol = 'foo';
    o.sessionMode = 'foo';
    o.syntaxFormat = 'foo';
    o.tlsAuthentication = 'foo';
    o.value = 'foo';
  }
  buildCounterDatabaseConnectionStringProfile--;
  return o;
}

void checkDatabaseConnectionStringProfile(
  api.DatabaseConnectionStringProfile o,
) {
  buildCounterDatabaseConnectionStringProfile++;
  if (buildCounterDatabaseConnectionStringProfile < 3) {
    unittest.expect(o.consumerGroup!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.hostFormat!, unittest.equals('foo'));
    unittest.expect(o.isRegional!, unittest.isTrue);
    unittest.expect(o.protocol!, unittest.equals('foo'));
    unittest.expect(o.sessionMode!, unittest.equals('foo'));
    unittest.expect(o.syntaxFormat!, unittest.equals('foo'));
    unittest.expect(o.tlsAuthentication!, unittest.equals('foo'));
    unittest.expect(o.value!, unittest.equals('foo'));
  }
  buildCounterDatabaseConnectionStringProfile--;
}

core.int buildCounterDatabaseManagementConfig = 0;
api.DatabaseManagementConfig buildDatabaseManagementConfig() {
  final o = api.DatabaseManagementConfig();
  buildCounterDatabaseManagementConfig++;
  if (buildCounterDatabaseManagementConfig < 3) {
    o.managementState = 'foo';
    o.managementType = 'foo';
  }
  buildCounterDatabaseManagementConfig--;
  return o;
}

void checkDatabaseManagementConfig(api.DatabaseManagementConfig o) {
  buildCounterDatabaseManagementConfig++;
  if (buildCounterDatabaseManagementConfig < 3) {
    unittest.expect(o.managementState!, unittest.equals('foo'));
    unittest.expect(o.managementType!, unittest.equals('foo'));
  }
  buildCounterDatabaseManagementConfig--;
}

core.int buildCounterDatabaseProperties = 0;
api.DatabaseProperties buildDatabaseProperties() {
  final o = api.DatabaseProperties();
  buildCounterDatabaseProperties++;
  if (buildCounterDatabaseProperties < 3) {
    o.databaseManagementConfig = buildDatabaseManagementConfig();
    o.dbBackupConfig = buildDbBackupConfig();
    o.dbVersion = 'foo';
    o.state = 'foo';
  }
  buildCounterDatabaseProperties--;
  return o;
}

void checkDatabaseProperties(api.DatabaseProperties o) {
  buildCounterDatabaseProperties++;
  if (buildCounterDatabaseProperties < 3) {
    checkDatabaseManagementConfig(o.databaseManagementConfig!);
    checkDbBackupConfig(o.dbBackupConfig!);
    unittest.expect(o.dbVersion!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
  }
  buildCounterDatabaseProperties--;
}

core.List<api.BackupDestinationDetails> buildUnnamed19() => [
  buildBackupDestinationDetails(),
  buildBackupDestinationDetails(),
];

void checkUnnamed19(core.List<api.BackupDestinationDetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBackupDestinationDetails(o[0]);
  checkBackupDestinationDetails(o[1]);
}

core.int buildCounterDbBackupConfig = 0;
api.DbBackupConfig buildDbBackupConfig() {
  final o = api.DbBackupConfig();
  buildCounterDbBackupConfig++;
  if (buildCounterDbBackupConfig < 3) {
    o.autoBackupEnabled = true;
    o.autoFullBackupDay = 'foo';
    o.autoFullBackupWindow = 'foo';
    o.autoIncrementalBackupWindow = 'foo';
    o.backupDeletionPolicy = 'foo';
    o.backupDestinationDetails = buildUnnamed19();
    o.retentionPeriodDays = 42;
  }
  buildCounterDbBackupConfig--;
  return o;
}

void checkDbBackupConfig(api.DbBackupConfig o) {
  buildCounterDbBackupConfig++;
  if (buildCounterDbBackupConfig < 3) {
    unittest.expect(o.autoBackupEnabled!, unittest.isTrue);
    unittest.expect(o.autoFullBackupDay!, unittest.equals('foo'));
    unittest.expect(o.autoFullBackupWindow!, unittest.equals('foo'));
    unittest.expect(o.autoIncrementalBackupWindow!, unittest.equals('foo'));
    unittest.expect(o.backupDeletionPolicy!, unittest.equals('foo'));
    checkUnnamed19(o.backupDestinationDetails!);
    unittest.expect(o.retentionPeriodDays!, unittest.equals(42));
  }
  buildCounterDbBackupConfig--;
}

core.int buildCounterDbHome = 0;
api.DbHome buildDbHome() {
  final o = api.DbHome();
  buildCounterDbHome++;
  if (buildCounterDbHome < 3) {
    o.database = buildDatabase();
    o.dbVersion = 'foo';
    o.displayName = 'foo';
    o.isUnifiedAuditingEnabled = true;
  }
  buildCounterDbHome--;
  return o;
}

void checkDbHome(api.DbHome o) {
  buildCounterDbHome++;
  if (buildCounterDbHome < 3) {
    checkDatabase(o.database!);
    unittest.expect(o.dbVersion!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.isUnifiedAuditingEnabled!, unittest.isTrue);
  }
  buildCounterDbHome--;
}

core.int buildCounterDbNode = 0;
api.DbNode buildDbNode() {
  final o = api.DbNode();
  buildCounterDbNode++;
  if (buildCounterDbNode < 3) {
    o.name = 'foo';
    o.properties = buildDbNodeProperties();
  }
  buildCounterDbNode--;
  return o;
}

void checkDbNode(api.DbNode o) {
  buildCounterDbNode++;
  if (buildCounterDbNode < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
    checkDbNodeProperties(o.properties!);
  }
  buildCounterDbNode--;
}

core.int buildCounterDbNodeProperties = 0;
api.DbNodeProperties buildDbNodeProperties() {
  final o = api.DbNodeProperties();
  buildCounterDbNodeProperties++;
  if (buildCounterDbNodeProperties < 3) {
    o.createTime = 'foo';
    o.dbNodeStorageSizeGb = 42;
    o.dbServerOcid = 'foo';
    o.hostname = 'foo';
    o.memorySizeGb = 42;
    o.ocid = 'foo';
    o.ocpuCount = 42;
    o.state = 'foo';
    o.totalCpuCoreCount = 42;
  }
  buildCounterDbNodeProperties--;
  return o;
}

void checkDbNodeProperties(api.DbNodeProperties o) {
  buildCounterDbNodeProperties++;
  if (buildCounterDbNodeProperties < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.dbNodeStorageSizeGb!, unittest.equals(42));
    unittest.expect(o.dbServerOcid!, unittest.equals('foo'));
    unittest.expect(o.hostname!, unittest.equals('foo'));
    unittest.expect(o.memorySizeGb!, unittest.equals(42));
    unittest.expect(o.ocid!, unittest.equals('foo'));
    unittest.expect(o.ocpuCount!, unittest.equals(42));
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.totalCpuCoreCount!, unittest.equals(42));
  }
  buildCounterDbNodeProperties--;
}

core.int buildCounterDbServer = 0;
api.DbServer buildDbServer() {
  final o = api.DbServer();
  buildCounterDbServer++;
  if (buildCounterDbServer < 3) {
    o.displayName = 'foo';
    o.name = 'foo';
    o.properties = buildDbServerProperties();
  }
  buildCounterDbServer--;
  return o;
}

void checkDbServer(api.DbServer o) {
  buildCounterDbServer++;
  if (buildCounterDbServer < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkDbServerProperties(o.properties!);
  }
  buildCounterDbServer--;
}

core.List<core.String> buildUnnamed20() => ['foo', 'foo'];

void checkUnnamed20(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterDbServerProperties = 0;
api.DbServerProperties buildDbServerProperties() {
  final o = api.DbServerProperties();
  buildCounterDbServerProperties++;
  if (buildCounterDbServerProperties < 3) {
    o.dbNodeIds = buildUnnamed20();
    o.dbNodeStorageSizeGb = 42;
    o.maxDbNodeStorageSizeGb = 42;
    o.maxMemorySizeGb = 42;
    o.maxOcpuCount = 42;
    o.memorySizeGb = 42;
    o.ocid = 'foo';
    o.ocpuCount = 42;
    o.state = 'foo';
    o.vmCount = 42;
  }
  buildCounterDbServerProperties--;
  return o;
}

void checkDbServerProperties(api.DbServerProperties o) {
  buildCounterDbServerProperties++;
  if (buildCounterDbServerProperties < 3) {
    checkUnnamed20(o.dbNodeIds!);
    unittest.expect(o.dbNodeStorageSizeGb!, unittest.equals(42));
    unittest.expect(o.maxDbNodeStorageSizeGb!, unittest.equals(42));
    unittest.expect(o.maxMemorySizeGb!, unittest.equals(42));
    unittest.expect(o.maxOcpuCount!, unittest.equals(42));
    unittest.expect(o.memorySizeGb!, unittest.equals(42));
    unittest.expect(o.ocid!, unittest.equals('foo'));
    unittest.expect(o.ocpuCount!, unittest.equals(42));
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.vmCount!, unittest.equals(42));
  }
  buildCounterDbServerProperties--;
}

core.Map<core.String, core.String> buildUnnamed21() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed21(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterDbSystem = 0;
api.DbSystem buildDbSystem() {
  final o = api.DbSystem();
  buildCounterDbSystem++;
  if (buildCounterDbSystem < 3) {
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.entitlementId = 'foo';
    o.gcpOracleZone = 'foo';
    o.labels = buildUnnamed21();
    o.name = 'foo';
    o.ociUrl = 'foo';
    o.odbNetwork = 'foo';
    o.odbSubnet = 'foo';
    o.properties = buildDbSystemProperties();
  }
  buildCounterDbSystem--;
  return o;
}

void checkDbSystem(api.DbSystem o) {
  buildCounterDbSystem++;
  if (buildCounterDbSystem < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.entitlementId!, unittest.equals('foo'));
    unittest.expect(o.gcpOracleZone!, unittest.equals('foo'));
    checkUnnamed21(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.ociUrl!, unittest.equals('foo'));
    unittest.expect(o.odbNetwork!, unittest.equals('foo'));
    unittest.expect(o.odbSubnet!, unittest.equals('foo'));
    checkDbSystemProperties(o.properties!);
  }
  buildCounterDbSystem--;
}

core.int buildCounterDbSystemInitialStorageSize = 0;
api.DbSystemInitialStorageSize buildDbSystemInitialStorageSize() {
  final o = api.DbSystemInitialStorageSize();
  buildCounterDbSystemInitialStorageSize++;
  if (buildCounterDbSystemInitialStorageSize < 3) {
    o.name = 'foo';
    o.properties = buildDbSystemInitialStorageSizeProperties();
  }
  buildCounterDbSystemInitialStorageSize--;
  return o;
}

void checkDbSystemInitialStorageSize(api.DbSystemInitialStorageSize o) {
  buildCounterDbSystemInitialStorageSize++;
  if (buildCounterDbSystemInitialStorageSize < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
    checkDbSystemInitialStorageSizeProperties(o.properties!);
  }
  buildCounterDbSystemInitialStorageSize--;
}

core.List<api.StorageSizeDetails> buildUnnamed22() => [
  buildStorageSizeDetails(),
  buildStorageSizeDetails(),
];

void checkUnnamed22(core.List<api.StorageSizeDetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStorageSizeDetails(o[0]);
  checkStorageSizeDetails(o[1]);
}

core.List<api.StorageSizeDetails> buildUnnamed23() => [
  buildStorageSizeDetails(),
  buildStorageSizeDetails(),
];

void checkUnnamed23(core.List<api.StorageSizeDetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStorageSizeDetails(o[0]);
  checkStorageSizeDetails(o[1]);
}

core.int buildCounterDbSystemInitialStorageSizeProperties = 0;
api.DbSystemInitialStorageSizeProperties
buildDbSystemInitialStorageSizeProperties() {
  final o = api.DbSystemInitialStorageSizeProperties();
  buildCounterDbSystemInitialStorageSizeProperties++;
  if (buildCounterDbSystemInitialStorageSizeProperties < 3) {
    o.launchFromBackupStorageSizeDetails = buildUnnamed22();
    o.shapeType = 'foo';
    o.storageManagement = 'foo';
    o.storageSizeDetails = buildUnnamed23();
  }
  buildCounterDbSystemInitialStorageSizeProperties--;
  return o;
}

void checkDbSystemInitialStorageSizeProperties(
  api.DbSystemInitialStorageSizeProperties o,
) {
  buildCounterDbSystemInitialStorageSizeProperties++;
  if (buildCounterDbSystemInitialStorageSizeProperties < 3) {
    checkUnnamed22(o.launchFromBackupStorageSizeDetails!);
    unittest.expect(o.shapeType!, unittest.equals('foo'));
    unittest.expect(o.storageManagement!, unittest.equals('foo'));
    checkUnnamed23(o.storageSizeDetails!);
  }
  buildCounterDbSystemInitialStorageSizeProperties--;
}

core.int buildCounterDbSystemOptions = 0;
api.DbSystemOptions buildDbSystemOptions() {
  final o = api.DbSystemOptions();
  buildCounterDbSystemOptions++;
  if (buildCounterDbSystemOptions < 3) {
    o.storageManagement = 'foo';
  }
  buildCounterDbSystemOptions--;
  return o;
}

void checkDbSystemOptions(api.DbSystemOptions o) {
  buildCounterDbSystemOptions++;
  if (buildCounterDbSystemOptions < 3) {
    unittest.expect(o.storageManagement!, unittest.equals('foo'));
  }
  buildCounterDbSystemOptions--;
}

core.List<core.String> buildUnnamed24() => ['foo', 'foo'];

void checkUnnamed24(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterDbSystemProperties = 0;
api.DbSystemProperties buildDbSystemProperties() {
  final o = api.DbSystemProperties();
  buildCounterDbSystemProperties++;
  if (buildCounterDbSystemProperties < 3) {
    o.computeCount = 42;
    o.computeModel = 'foo';
    o.dataCollectionOptions = buildDataCollectionOptionsDbSystem();
    o.dataStorageSizeGb = 42;
    o.databaseEdition = 'foo';
    o.dbHome = buildDbHome();
    o.dbSystemOptions = buildDbSystemOptions();
    o.domain = 'foo';
    o.hostname = 'foo';
    o.hostnamePrefix = 'foo';
    o.initialDataStorageSizeGb = 42;
    o.licenseModel = 'foo';
    o.lifecycleState = 'foo';
    o.memorySizeGb = 42;
    o.nodeCount = 42;
    o.ocid = 'foo';
    o.privateIp = 'foo';
    o.recoStorageSizeGb = 42;
    o.shape = 'foo';
    o.sshPublicKeys = buildUnnamed24();
    o.timeZone = buildTimeZone();
  }
  buildCounterDbSystemProperties--;
  return o;
}

void checkDbSystemProperties(api.DbSystemProperties o) {
  buildCounterDbSystemProperties++;
  if (buildCounterDbSystemProperties < 3) {
    unittest.expect(o.computeCount!, unittest.equals(42));
    unittest.expect(o.computeModel!, unittest.equals('foo'));
    checkDataCollectionOptionsDbSystem(o.dataCollectionOptions!);
    unittest.expect(o.dataStorageSizeGb!, unittest.equals(42));
    unittest.expect(o.databaseEdition!, unittest.equals('foo'));
    checkDbHome(o.dbHome!);
    checkDbSystemOptions(o.dbSystemOptions!);
    unittest.expect(o.domain!, unittest.equals('foo'));
    unittest.expect(o.hostname!, unittest.equals('foo'));
    unittest.expect(o.hostnamePrefix!, unittest.equals('foo'));
    unittest.expect(o.initialDataStorageSizeGb!, unittest.equals(42));
    unittest.expect(o.licenseModel!, unittest.equals('foo'));
    unittest.expect(o.lifecycleState!, unittest.equals('foo'));
    unittest.expect(o.memorySizeGb!, unittest.equals(42));
    unittest.expect(o.nodeCount!, unittest.equals(42));
    unittest.expect(o.ocid!, unittest.equals('foo'));
    unittest.expect(o.privateIp!, unittest.equals('foo'));
    unittest.expect(o.recoStorageSizeGb!, unittest.equals(42));
    unittest.expect(o.shape!, unittest.equals('foo'));
    checkUnnamed24(o.sshPublicKeys!);
    checkTimeZone(o.timeZone!);
  }
  buildCounterDbSystemProperties--;
}

core.int buildCounterDbSystemShape = 0;
api.DbSystemShape buildDbSystemShape() {
  final o = api.DbSystemShape();
  buildCounterDbSystemShape++;
  if (buildCounterDbSystemShape < 3) {
    o.availableCoreCount = 42;
    o.availableCoreCountPerNode = 42;
    o.availableDataStorageTb = 42;
    o.availableMemoryPerNodeGb = 42;
    o.coreCountIncrement = 42;
    o.maxNodeCount = 42;
    o.maxStorageCount = 42;
    o.minCoreCountPerNode = 42;
    o.minDbNodeStoragePerNodeGb = 42;
    o.minMemoryPerNodeGb = 42;
    o.minNodeCount = 42;
    o.minStorageCount = 42;
    o.minimumCoreCount = 42;
    o.name = 'foo';
    o.shape = 'foo';
  }
  buildCounterDbSystemShape--;
  return o;
}

void checkDbSystemShape(api.DbSystemShape o) {
  buildCounterDbSystemShape++;
  if (buildCounterDbSystemShape < 3) {
    unittest.expect(o.availableCoreCount!, unittest.equals(42));
    unittest.expect(o.availableCoreCountPerNode!, unittest.equals(42));
    unittest.expect(o.availableDataStorageTb!, unittest.equals(42));
    unittest.expect(o.availableMemoryPerNodeGb!, unittest.equals(42));
    unittest.expect(o.coreCountIncrement!, unittest.equals(42));
    unittest.expect(o.maxNodeCount!, unittest.equals(42));
    unittest.expect(o.maxStorageCount!, unittest.equals(42));
    unittest.expect(o.minCoreCountPerNode!, unittest.equals(42));
    unittest.expect(o.minDbNodeStoragePerNodeGb!, unittest.equals(42));
    unittest.expect(o.minMemoryPerNodeGb!, unittest.equals(42));
    unittest.expect(o.minNodeCount!, unittest.equals(42));
    unittest.expect(o.minStorageCount!, unittest.equals(42));
    unittest.expect(o.minimumCoreCount!, unittest.equals(42));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.shape!, unittest.equals('foo'));
  }
  buildCounterDbSystemShape--;
}

core.int buildCounterDbVersion = 0;
api.DbVersion buildDbVersion() {
  final o = api.DbVersion();
  buildCounterDbVersion++;
  if (buildCounterDbVersion < 3) {
    o.name = 'foo';
    o.properties = buildDbVersionProperties();
  }
  buildCounterDbVersion--;
  return o;
}

void checkDbVersion(api.DbVersion o) {
  buildCounterDbVersion++;
  if (buildCounterDbVersion < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
    checkDbVersionProperties(o.properties!);
  }
  buildCounterDbVersion--;
}

core.int buildCounterDbVersionProperties = 0;
api.DbVersionProperties buildDbVersionProperties() {
  final o = api.DbVersionProperties();
  buildCounterDbVersionProperties++;
  if (buildCounterDbVersionProperties < 3) {
    o.isLatestForMajorVersion = true;
    o.isPreviewDbVersion = true;
    o.isUpgradeSupported = true;
    o.supportsPdb = true;
    o.version = 'foo';
  }
  buildCounterDbVersionProperties--;
  return o;
}

void checkDbVersionProperties(api.DbVersionProperties o) {
  buildCounterDbVersionProperties++;
  if (buildCounterDbVersionProperties < 3) {
    unittest.expect(o.isLatestForMajorVersion!, unittest.isTrue);
    unittest.expect(o.isPreviewDbVersion!, unittest.isTrue);
    unittest.expect(o.isUpgradeSupported!, unittest.isTrue);
    unittest.expect(o.supportsPdb!, unittest.isTrue);
    unittest.expect(o.version!, unittest.equals('foo'));
  }
  buildCounterDbVersionProperties--;
}

core.Map<core.String, core.String> buildUnnamed25() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed25(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterDefinedTagValue = 0;
api.DefinedTagValue buildDefinedTagValue() {
  final o = api.DefinedTagValue();
  buildCounterDefinedTagValue++;
  if (buildCounterDefinedTagValue < 3) {
    o.tags = buildUnnamed25();
  }
  buildCounterDefinedTagValue--;
  return o;
}

void checkDefinedTagValue(api.DefinedTagValue o) {
  buildCounterDefinedTagValue++;
  if (buildCounterDefinedTagValue < 3) {
    checkUnnamed25(o.tags!);
  }
  buildCounterDefinedTagValue--;
}

core.int buildCounterDeploymentDiagnosticData = 0;
api.DeploymentDiagnosticData buildDeploymentDiagnosticData() {
  final o = api.DeploymentDiagnosticData();
  buildCounterDeploymentDiagnosticData++;
  if (buildCounterDeploymentDiagnosticData < 3) {
    o.bucket = 'foo';
    o.diagnosticEndTime = 'foo';
    o.diagnosticStartTime = 'foo';
    o.diagnosticState = 'foo';
    o.namespace = 'foo';
    o.object = 'foo';
  }
  buildCounterDeploymentDiagnosticData--;
  return o;
}

void checkDeploymentDiagnosticData(api.DeploymentDiagnosticData o) {
  buildCounterDeploymentDiagnosticData++;
  if (buildCounterDeploymentDiagnosticData < 3) {
    unittest.expect(o.bucket!, unittest.equals('foo'));
    unittest.expect(o.diagnosticEndTime!, unittest.equals('foo'));
    unittest.expect(o.diagnosticStartTime!, unittest.equals('foo'));
    unittest.expect(o.diagnosticState!, unittest.equals('foo'));
    unittest.expect(o.namespace!, unittest.equals('foo'));
    unittest.expect(o.object!, unittest.equals('foo'));
  }
  buildCounterDeploymentDiagnosticData--;
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

core.int buildCounterEncryptionKey = 0;
api.EncryptionKey buildEncryptionKey() {
  final o = api.EncryptionKey();
  buildCounterEncryptionKey++;
  if (buildCounterEncryptionKey < 3) {
    o.kmsKey = 'foo';
    o.provider = 'foo';
  }
  buildCounterEncryptionKey--;
  return o;
}

void checkEncryptionKey(api.EncryptionKey o) {
  buildCounterEncryptionKey++;
  if (buildCounterEncryptionKey < 3) {
    unittest.expect(o.kmsKey!, unittest.equals('foo'));
    unittest.expect(o.provider!, unittest.equals('foo'));
  }
  buildCounterEncryptionKey--;
}

core.int buildCounterEncryptionKeyHistoryEntry = 0;
api.EncryptionKeyHistoryEntry buildEncryptionKeyHistoryEntry() {
  final o = api.EncryptionKeyHistoryEntry();
  buildCounterEncryptionKeyHistoryEntry++;
  if (buildCounterEncryptionKeyHistoryEntry < 3) {
    o.activationTime = 'foo';
    o.encryptionKey = buildEncryptionKey();
  }
  buildCounterEncryptionKeyHistoryEntry--;
  return o;
}

void checkEncryptionKeyHistoryEntry(api.EncryptionKeyHistoryEntry o) {
  buildCounterEncryptionKeyHistoryEntry++;
  if (buildCounterEncryptionKeyHistoryEntry < 3) {
    unittest.expect(o.activationTime!, unittest.equals('foo'));
    checkEncryptionKey(o.encryptionKey!);
  }
  buildCounterEncryptionKeyHistoryEntry--;
}

core.int buildCounterEntitlement = 0;
api.Entitlement buildEntitlement() {
  final o = api.Entitlement();
  buildCounterEntitlement++;
  if (buildCounterEntitlement < 3) {
    o.cloudAccountDetails = buildCloudAccountDetails();
    o.entitlementId = 'foo';
    o.name = 'foo';
    o.state = 'foo';
  }
  buildCounterEntitlement--;
  return o;
}

void checkEntitlement(api.Entitlement o) {
  buildCounterEntitlement++;
  if (buildCounterEntitlement < 3) {
    checkCloudAccountDetails(o.cloudAccountDetails!);
    unittest.expect(o.entitlementId!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
  }
  buildCounterEntitlement--;
}

core.Map<core.String, core.String> buildUnnamed26() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed26(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterExadbVmCluster = 0;
api.ExadbVmCluster buildExadbVmCluster() {
  final o = api.ExadbVmCluster();
  buildCounterExadbVmCluster++;
  if (buildCounterExadbVmCluster < 3) {
    o.backupOdbSubnet = 'foo';
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.entitlementId = 'foo';
    o.gcpOracleZone = 'foo';
    o.identityConnector = buildIdentityConnector();
    o.labels = buildUnnamed26();
    o.name = 'foo';
    o.odbNetwork = 'foo';
    o.odbSubnet = 'foo';
    o.properties = buildExadbVmClusterProperties();
  }
  buildCounterExadbVmCluster--;
  return o;
}

void checkExadbVmCluster(api.ExadbVmCluster o) {
  buildCounterExadbVmCluster++;
  if (buildCounterExadbVmCluster < 3) {
    unittest.expect(o.backupOdbSubnet!, unittest.equals('foo'));
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.entitlementId!, unittest.equals('foo'));
    unittest.expect(o.gcpOracleZone!, unittest.equals('foo'));
    checkIdentityConnector(o.identityConnector!);
    checkUnnamed26(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.odbNetwork!, unittest.equals('foo'));
    unittest.expect(o.odbSubnet!, unittest.equals('foo'));
    checkExadbVmClusterProperties(o.properties!);
  }
  buildCounterExadbVmCluster--;
}

core.List<core.String> buildUnnamed27() => ['foo', 'foo'];

void checkUnnamed27(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterExadbVmClusterProperties = 0;
api.ExadbVmClusterProperties buildExadbVmClusterProperties() {
  final o = api.ExadbVmClusterProperties();
  buildCounterExadbVmClusterProperties++;
  if (buildCounterExadbVmClusterProperties < 3) {
    o.additionalEcpuCountPerNode = 42;
    o.clusterName = 'foo';
    o.dataCollectionOptions = buildDataCollectionOptionsCommon();
    o.enabledEcpuCountPerNode = 42;
    o.exascaleDbStorageVault = 'foo';
    o.giVersion = 'foo';
    o.gridImageId = 'foo';
    o.hostname = 'foo';
    o.hostnamePrefix = 'foo';
    o.licenseModel = 'foo';
    o.lifecycleState = 'foo';
    o.memorySizeGb = 42;
    o.nodeCount = 42;
    o.ociUri = 'foo';
    o.scanListenerPortTcp = 42;
    o.shapeAttribute = 'foo';
    o.sshPublicKeys = buildUnnamed27();
    o.timeZone = buildTimeZone();
    o.vmFileSystemStorage = buildExadbVmClusterStorageDetails();
  }
  buildCounterExadbVmClusterProperties--;
  return o;
}

void checkExadbVmClusterProperties(api.ExadbVmClusterProperties o) {
  buildCounterExadbVmClusterProperties++;
  if (buildCounterExadbVmClusterProperties < 3) {
    unittest.expect(o.additionalEcpuCountPerNode!, unittest.equals(42));
    unittest.expect(o.clusterName!, unittest.equals('foo'));
    checkDataCollectionOptionsCommon(o.dataCollectionOptions!);
    unittest.expect(o.enabledEcpuCountPerNode!, unittest.equals(42));
    unittest.expect(o.exascaleDbStorageVault!, unittest.equals('foo'));
    unittest.expect(o.giVersion!, unittest.equals('foo'));
    unittest.expect(o.gridImageId!, unittest.equals('foo'));
    unittest.expect(o.hostname!, unittest.equals('foo'));
    unittest.expect(o.hostnamePrefix!, unittest.equals('foo'));
    unittest.expect(o.licenseModel!, unittest.equals('foo'));
    unittest.expect(o.lifecycleState!, unittest.equals('foo'));
    unittest.expect(o.memorySizeGb!, unittest.equals(42));
    unittest.expect(o.nodeCount!, unittest.equals(42));
    unittest.expect(o.ociUri!, unittest.equals('foo'));
    unittest.expect(o.scanListenerPortTcp!, unittest.equals(42));
    unittest.expect(o.shapeAttribute!, unittest.equals('foo'));
    checkUnnamed27(o.sshPublicKeys!);
    checkTimeZone(o.timeZone!);
    checkExadbVmClusterStorageDetails(o.vmFileSystemStorage!);
  }
  buildCounterExadbVmClusterProperties--;
}

core.int buildCounterExadbVmClusterStorageDetails = 0;
api.ExadbVmClusterStorageDetails buildExadbVmClusterStorageDetails() {
  final o = api.ExadbVmClusterStorageDetails();
  buildCounterExadbVmClusterStorageDetails++;
  if (buildCounterExadbVmClusterStorageDetails < 3) {
    o.sizeInGbsPerNode = 42;
  }
  buildCounterExadbVmClusterStorageDetails--;
  return o;
}

void checkExadbVmClusterStorageDetails(api.ExadbVmClusterStorageDetails o) {
  buildCounterExadbVmClusterStorageDetails++;
  if (buildCounterExadbVmClusterStorageDetails < 3) {
    unittest.expect(o.sizeInGbsPerNode!, unittest.equals(42));
  }
  buildCounterExadbVmClusterStorageDetails--;
}

core.int buildCounterExascaleConfig = 0;
api.ExascaleConfig buildExascaleConfig() {
  final o = api.ExascaleConfig();
  buildCounterExascaleConfig++;
  if (buildCounterExascaleConfig < 3) {
    o.availableStorageSizeGb = 42;
    o.availableVmStorageSizeGb = 42;
    o.totalStorageSizeGb = 42;
    o.totalVmStorageSizeGb = 42;
  }
  buildCounterExascaleConfig--;
  return o;
}

void checkExascaleConfig(api.ExascaleConfig o) {
  buildCounterExascaleConfig++;
  if (buildCounterExascaleConfig < 3) {
    unittest.expect(o.availableStorageSizeGb!, unittest.equals(42));
    unittest.expect(o.availableVmStorageSizeGb!, unittest.equals(42));
    unittest.expect(o.totalStorageSizeGb!, unittest.equals(42));
    unittest.expect(o.totalVmStorageSizeGb!, unittest.equals(42));
  }
  buildCounterExascaleConfig--;
}

core.int buildCounterExascaleDbStorageDetails = 0;
api.ExascaleDbStorageDetails buildExascaleDbStorageDetails() {
  final o = api.ExascaleDbStorageDetails();
  buildCounterExascaleDbStorageDetails++;
  if (buildCounterExascaleDbStorageDetails < 3) {
    o.availableSizeGbs = 42;
    o.totalSizeGbs = 42;
  }
  buildCounterExascaleDbStorageDetails--;
  return o;
}

void checkExascaleDbStorageDetails(api.ExascaleDbStorageDetails o) {
  buildCounterExascaleDbStorageDetails++;
  if (buildCounterExascaleDbStorageDetails < 3) {
    unittest.expect(o.availableSizeGbs!, unittest.equals(42));
    unittest.expect(o.totalSizeGbs!, unittest.equals(42));
  }
  buildCounterExascaleDbStorageDetails--;
}

core.Map<core.String, core.String> buildUnnamed28() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed28(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterExascaleDbStorageVault = 0;
api.ExascaleDbStorageVault buildExascaleDbStorageVault() {
  final o = api.ExascaleDbStorageVault();
  buildCounterExascaleDbStorageVault++;
  if (buildCounterExascaleDbStorageVault < 3) {
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.entitlementId = 'foo';
    o.exadataInfrastructure = 'foo';
    o.gcpOracleZone = 'foo';
    o.labels = buildUnnamed28();
    o.name = 'foo';
    o.properties = buildExascaleDbStorageVaultProperties();
  }
  buildCounterExascaleDbStorageVault--;
  return o;
}

void checkExascaleDbStorageVault(api.ExascaleDbStorageVault o) {
  buildCounterExascaleDbStorageVault++;
  if (buildCounterExascaleDbStorageVault < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.entitlementId!, unittest.equals('foo'));
    unittest.expect(o.exadataInfrastructure!, unittest.equals('foo'));
    unittest.expect(o.gcpOracleZone!, unittest.equals('foo'));
    checkUnnamed28(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkExascaleDbStorageVaultProperties(o.properties!);
  }
  buildCounterExascaleDbStorageVault--;
}

core.List<core.String> buildUnnamed29() => ['foo', 'foo'];

void checkUnnamed29(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed30() => ['foo', 'foo'];

void checkUnnamed30(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed31() => ['foo', 'foo'];

void checkUnnamed31(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterExascaleDbStorageVaultProperties = 0;
api.ExascaleDbStorageVaultProperties buildExascaleDbStorageVaultProperties() {
  final o = api.ExascaleDbStorageVaultProperties();
  buildCounterExascaleDbStorageVaultProperties++;
  if (buildCounterExascaleDbStorageVaultProperties < 3) {
    o.additionalFlashCachePercent = 42;
    o.attachedShapeAttributes = buildUnnamed29();
    o.availableShapeAttributes = buildUnnamed30();
    o.description = 'foo';
    o.exascaleDbStorageDetails = buildExascaleDbStorageDetails();
    o.ociUri = 'foo';
    o.ocid = 'foo';
    o.state = 'foo';
    o.timeZone = buildTimeZone();
    o.vmClusterCount = 42;
    o.vmClusterIds = buildUnnamed31();
  }
  buildCounterExascaleDbStorageVaultProperties--;
  return o;
}

void checkExascaleDbStorageVaultProperties(
  api.ExascaleDbStorageVaultProperties o,
) {
  buildCounterExascaleDbStorageVaultProperties++;
  if (buildCounterExascaleDbStorageVaultProperties < 3) {
    unittest.expect(o.additionalFlashCachePercent!, unittest.equals(42));
    checkUnnamed29(o.attachedShapeAttributes!);
    checkUnnamed30(o.availableShapeAttributes!);
    unittest.expect(o.description!, unittest.equals('foo'));
    checkExascaleDbStorageDetails(o.exascaleDbStorageDetails!);
    unittest.expect(o.ociUri!, unittest.equals('foo'));
    unittest.expect(o.ocid!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    checkTimeZone(o.timeZone!);
    unittest.expect(o.vmClusterCount!, unittest.equals(42));
    checkUnnamed31(o.vmClusterIds!);
  }
  buildCounterExascaleDbStorageVaultProperties--;
}

core.int buildCounterFailoverAutonomousDatabaseRequest = 0;
api.FailoverAutonomousDatabaseRequest buildFailoverAutonomousDatabaseRequest() {
  final o = api.FailoverAutonomousDatabaseRequest();
  buildCounterFailoverAutonomousDatabaseRequest++;
  if (buildCounterFailoverAutonomousDatabaseRequest < 3) {
    o.peerAutonomousDatabase = 'foo';
  }
  buildCounterFailoverAutonomousDatabaseRequest--;
  return o;
}

void checkFailoverAutonomousDatabaseRequest(
  api.FailoverAutonomousDatabaseRequest o,
) {
  buildCounterFailoverAutonomousDatabaseRequest++;
  if (buildCounterFailoverAutonomousDatabaseRequest < 3) {
    unittest.expect(o.peerAutonomousDatabase!, unittest.equals('foo'));
  }
  buildCounterFailoverAutonomousDatabaseRequest--;
}

core.int buildCounterGenerateAutonomousDatabaseWalletRequest = 0;
api.GenerateAutonomousDatabaseWalletRequest
buildGenerateAutonomousDatabaseWalletRequest() {
  final o = api.GenerateAutonomousDatabaseWalletRequest();
  buildCounterGenerateAutonomousDatabaseWalletRequest++;
  if (buildCounterGenerateAutonomousDatabaseWalletRequest < 3) {
    o.isRegional = true;
    o.password = 'foo';
    o.type = 'foo';
  }
  buildCounterGenerateAutonomousDatabaseWalletRequest--;
  return o;
}

void checkGenerateAutonomousDatabaseWalletRequest(
  api.GenerateAutonomousDatabaseWalletRequest o,
) {
  buildCounterGenerateAutonomousDatabaseWalletRequest++;
  if (buildCounterGenerateAutonomousDatabaseWalletRequest < 3) {
    unittest.expect(o.isRegional!, unittest.isTrue);
    unittest.expect(o.password!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterGenerateAutonomousDatabaseWalletRequest--;
}

core.int buildCounterGenerateAutonomousDatabaseWalletResponse = 0;
api.GenerateAutonomousDatabaseWalletResponse
buildGenerateAutonomousDatabaseWalletResponse() {
  final o = api.GenerateAutonomousDatabaseWalletResponse();
  buildCounterGenerateAutonomousDatabaseWalletResponse++;
  if (buildCounterGenerateAutonomousDatabaseWalletResponse < 3) {
    o.archiveContent = 'foo';
  }
  buildCounterGenerateAutonomousDatabaseWalletResponse--;
  return o;
}

void checkGenerateAutonomousDatabaseWalletResponse(
  api.GenerateAutonomousDatabaseWalletResponse o,
) {
  buildCounterGenerateAutonomousDatabaseWalletResponse++;
  if (buildCounterGenerateAutonomousDatabaseWalletResponse < 3) {
    unittest.expect(o.archiveContent!, unittest.equals('foo'));
  }
  buildCounterGenerateAutonomousDatabaseWalletResponse--;
}

core.int buildCounterGiVersion = 0;
api.GiVersion buildGiVersion() {
  final o = api.GiVersion();
  buildCounterGiVersion++;
  if (buildCounterGiVersion < 3) {
    o.name = 'foo';
    o.version = 'foo';
  }
  buildCounterGiVersion--;
  return o;
}

void checkGiVersion(api.GiVersion o) {
  buildCounterGiVersion++;
  if (buildCounterGiVersion < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals('foo'));
  }
  buildCounterGiVersion--;
}

core.int buildCounterGlueIcebergCatalog = 0;
api.GlueIcebergCatalog buildGlueIcebergCatalog() {
  final o = api.GlueIcebergCatalog();
  buildCounterGlueIcebergCatalog++;
  if (buildCounterGlueIcebergCatalog < 3) {
    o.glueId = 'foo';
  }
  buildCounterGlueIcebergCatalog--;
  return o;
}

void checkGlueIcebergCatalog(api.GlueIcebergCatalog o) {
  buildCounterGlueIcebergCatalog++;
  if (buildCounterGlueIcebergCatalog < 3) {
    unittest.expect(o.glueId!, unittest.equals('foo'));
  }
  buildCounterGlueIcebergCatalog--;
}

core.int buildCounterGoldengateAmazonKinesisConnectionProperties = 0;
api.GoldengateAmazonKinesisConnectionProperties
buildGoldengateAmazonKinesisConnectionProperties() {
  final o = api.GoldengateAmazonKinesisConnectionProperties();
  buildCounterGoldengateAmazonKinesisConnectionProperties++;
  if (buildCounterGoldengateAmazonKinesisConnectionProperties < 3) {
    o.accessKeyId = 'foo';
    o.awsRegion = 'foo';
    o.endpoint = 'foo';
    o.secretAccessKeySecret = 'foo';
    o.technologyType = 'foo';
  }
  buildCounterGoldengateAmazonKinesisConnectionProperties--;
  return o;
}

void checkGoldengateAmazonKinesisConnectionProperties(
  api.GoldengateAmazonKinesisConnectionProperties o,
) {
  buildCounterGoldengateAmazonKinesisConnectionProperties++;
  if (buildCounterGoldengateAmazonKinesisConnectionProperties < 3) {
    unittest.expect(o.accessKeyId!, unittest.equals('foo'));
    unittest.expect(o.awsRegion!, unittest.equals('foo'));
    unittest.expect(o.endpoint!, unittest.equals('foo'));
    unittest.expect(o.secretAccessKeySecret!, unittest.equals('foo'));
    unittest.expect(o.technologyType!, unittest.equals('foo'));
  }
  buildCounterGoldengateAmazonKinesisConnectionProperties--;
}

core.int buildCounterGoldengateAmazonRedshiftConnectionProperties = 0;
api.GoldengateAmazonRedshiftConnectionProperties
buildGoldengateAmazonRedshiftConnectionProperties() {
  final o = api.GoldengateAmazonRedshiftConnectionProperties();
  buildCounterGoldengateAmazonRedshiftConnectionProperties++;
  if (buildCounterGoldengateAmazonRedshiftConnectionProperties < 3) {
    o.connectionUrl = 'foo';
    o.password = 'foo';
    o.passwordSecretVersion = 'foo';
    o.technologyType = 'foo';
    o.username = 'foo';
  }
  buildCounterGoldengateAmazonRedshiftConnectionProperties--;
  return o;
}

void checkGoldengateAmazonRedshiftConnectionProperties(
  api.GoldengateAmazonRedshiftConnectionProperties o,
) {
  buildCounterGoldengateAmazonRedshiftConnectionProperties++;
  if (buildCounterGoldengateAmazonRedshiftConnectionProperties < 3) {
    unittest.expect(o.connectionUrl!, unittest.equals('foo'));
    unittest.expect(o.password!, unittest.equals('foo'));
    unittest.expect(o.passwordSecretVersion!, unittest.equals('foo'));
    unittest.expect(o.technologyType!, unittest.equals('foo'));
    unittest.expect(o.username!, unittest.equals('foo'));
  }
  buildCounterGoldengateAmazonRedshiftConnectionProperties--;
}

core.int buildCounterGoldengateAmazonS3ConnectionProperties = 0;
api.GoldengateAmazonS3ConnectionProperties
buildGoldengateAmazonS3ConnectionProperties() {
  final o = api.GoldengateAmazonS3ConnectionProperties();
  buildCounterGoldengateAmazonS3ConnectionProperties++;
  if (buildCounterGoldengateAmazonS3ConnectionProperties < 3) {
    o.accessKeyId = 'foo';
    o.endpoint = 'foo';
    o.region = 'foo';
    o.secretAccessKeySecret = 'foo';
    o.technologyType = 'foo';
  }
  buildCounterGoldengateAmazonS3ConnectionProperties--;
  return o;
}

void checkGoldengateAmazonS3ConnectionProperties(
  api.GoldengateAmazonS3ConnectionProperties o,
) {
  buildCounterGoldengateAmazonS3ConnectionProperties++;
  if (buildCounterGoldengateAmazonS3ConnectionProperties < 3) {
    unittest.expect(o.accessKeyId!, unittest.equals('foo'));
    unittest.expect(o.endpoint!, unittest.equals('foo'));
    unittest.expect(o.region!, unittest.equals('foo'));
    unittest.expect(o.secretAccessKeySecret!, unittest.equals('foo'));
    unittest.expect(o.technologyType!, unittest.equals('foo'));
  }
  buildCounterGoldengateAmazonS3ConnectionProperties--;
}

core.int buildCounterGoldengateAzureDataLakeStorageConnectionProperties = 0;
api.GoldengateAzureDataLakeStorageConnectionProperties
buildGoldengateAzureDataLakeStorageConnectionProperties() {
  final o = api.GoldengateAzureDataLakeStorageConnectionProperties();
  buildCounterGoldengateAzureDataLakeStorageConnectionProperties++;
  if (buildCounterGoldengateAzureDataLakeStorageConnectionProperties < 3) {
    o.account = 'foo';
    o.accountKeySecret = 'foo';
    o.authenticationType = 'foo';
    o.azureAuthorityHost = 'foo';
    o.azureTenantId = 'foo';
    o.clientId = 'foo';
    o.clientSecret = 'foo';
    o.endpoint = 'foo';
    o.sasTokenSecret = 'foo';
    o.technologyType = 'foo';
  }
  buildCounterGoldengateAzureDataLakeStorageConnectionProperties--;
  return o;
}

void checkGoldengateAzureDataLakeStorageConnectionProperties(
  api.GoldengateAzureDataLakeStorageConnectionProperties o,
) {
  buildCounterGoldengateAzureDataLakeStorageConnectionProperties++;
  if (buildCounterGoldengateAzureDataLakeStorageConnectionProperties < 3) {
    unittest.expect(o.account!, unittest.equals('foo'));
    unittest.expect(o.accountKeySecret!, unittest.equals('foo'));
    unittest.expect(o.authenticationType!, unittest.equals('foo'));
    unittest.expect(o.azureAuthorityHost!, unittest.equals('foo'));
    unittest.expect(o.azureTenantId!, unittest.equals('foo'));
    unittest.expect(o.clientId!, unittest.equals('foo'));
    unittest.expect(o.clientSecret!, unittest.equals('foo'));
    unittest.expect(o.endpoint!, unittest.equals('foo'));
    unittest.expect(o.sasTokenSecret!, unittest.equals('foo'));
    unittest.expect(o.technologyType!, unittest.equals('foo'));
  }
  buildCounterGoldengateAzureDataLakeStorageConnectionProperties--;
}

core.int buildCounterGoldengateAzureSynapseAnalyticsConnectionProperties = 0;
api.GoldengateAzureSynapseAnalyticsConnectionProperties
buildGoldengateAzureSynapseAnalyticsConnectionProperties() {
  final o = api.GoldengateAzureSynapseAnalyticsConnectionProperties();
  buildCounterGoldengateAzureSynapseAnalyticsConnectionProperties++;
  if (buildCounterGoldengateAzureSynapseAnalyticsConnectionProperties < 3) {
    o.connectionString = 'foo';
    o.password = 'foo';
    o.passwordSecretVersion = 'foo';
    o.technologyType = 'foo';
    o.username = 'foo';
  }
  buildCounterGoldengateAzureSynapseAnalyticsConnectionProperties--;
  return o;
}

void checkGoldengateAzureSynapseAnalyticsConnectionProperties(
  api.GoldengateAzureSynapseAnalyticsConnectionProperties o,
) {
  buildCounterGoldengateAzureSynapseAnalyticsConnectionProperties++;
  if (buildCounterGoldengateAzureSynapseAnalyticsConnectionProperties < 3) {
    unittest.expect(o.connectionString!, unittest.equals('foo'));
    unittest.expect(o.password!, unittest.equals('foo'));
    unittest.expect(o.passwordSecretVersion!, unittest.equals('foo'));
    unittest.expect(o.technologyType!, unittest.equals('foo'));
    unittest.expect(o.username!, unittest.equals('foo'));
  }
  buildCounterGoldengateAzureSynapseAnalyticsConnectionProperties--;
}

core.int buildCounterGoldengateBackupSchedule = 0;
api.GoldengateBackupSchedule buildGoldengateBackupSchedule() {
  final o = api.GoldengateBackupSchedule();
  buildCounterGoldengateBackupSchedule++;
  if (buildCounterGoldengateBackupSchedule < 3) {
    o.backupScheduledTime = 'foo';
    o.bucket = 'foo';
    o.compartmentId = 'foo';
    o.frequencyBackupScheduled = 'foo';
    o.metadataOnly = true;
    o.namespace = 'foo';
  }
  buildCounterGoldengateBackupSchedule--;
  return o;
}

void checkGoldengateBackupSchedule(api.GoldengateBackupSchedule o) {
  buildCounterGoldengateBackupSchedule++;
  if (buildCounterGoldengateBackupSchedule < 3) {
    unittest.expect(o.backupScheduledTime!, unittest.equals('foo'));
    unittest.expect(o.bucket!, unittest.equals('foo'));
    unittest.expect(o.compartmentId!, unittest.equals('foo'));
    unittest.expect(o.frequencyBackupScheduled!, unittest.equals('foo'));
    unittest.expect(o.metadataOnly!, unittest.isTrue);
    unittest.expect(o.namespace!, unittest.equals('foo'));
  }
  buildCounterGoldengateBackupSchedule--;
}

core.Map<core.String, core.String> buildUnnamed32() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed32(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterGoldengateConnection = 0;
api.GoldengateConnection buildGoldengateConnection() {
  final o = api.GoldengateConnection();
  buildCounterGoldengateConnection++;
  if (buildCounterGoldengateConnection < 3) {
    o.createTime = 'foo';
    o.entitlementId = 'foo';
    o.gcpOracleZone = 'foo';
    o.labels = buildUnnamed32();
    o.name = 'foo';
    o.ociUrl = 'foo';
    o.odbNetwork = 'foo';
    o.odbSubnet = 'foo';
    o.properties = buildGoldengateConnectionProperties();
  }
  buildCounterGoldengateConnection--;
  return o;
}

void checkGoldengateConnection(api.GoldengateConnection o) {
  buildCounterGoldengateConnection++;
  if (buildCounterGoldengateConnection < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.entitlementId!, unittest.equals('foo'));
    unittest.expect(o.gcpOracleZone!, unittest.equals('foo'));
    checkUnnamed32(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.ociUrl!, unittest.equals('foo'));
    unittest.expect(o.odbNetwork!, unittest.equals('foo'));
    unittest.expect(o.odbSubnet!, unittest.equals('foo'));
    checkGoldengateConnectionProperties(o.properties!);
  }
  buildCounterGoldengateConnection--;
}

core.Map<core.String, core.String> buildUnnamed33() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed33(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterGoldengateConnectionAssignment = 0;
api.GoldengateConnectionAssignment buildGoldengateConnectionAssignment() {
  final o = api.GoldengateConnectionAssignment();
  buildCounterGoldengateConnectionAssignment++;
  if (buildCounterGoldengateConnectionAssignment < 3) {
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.entitlementId = 'foo';
    o.labels = buildUnnamed33();
    o.name = 'foo';
    o.properties = buildGoldengateConnectionAssignmentProperties();
  }
  buildCounterGoldengateConnectionAssignment--;
  return o;
}

void checkGoldengateConnectionAssignment(api.GoldengateConnectionAssignment o) {
  buildCounterGoldengateConnectionAssignment++;
  if (buildCounterGoldengateConnectionAssignment < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.entitlementId!, unittest.equals('foo'));
    checkUnnamed33(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkGoldengateConnectionAssignmentProperties(o.properties!);
  }
  buildCounterGoldengateConnectionAssignment--;
}

core.int buildCounterGoldengateConnectionAssignmentProperties = 0;
api.GoldengateConnectionAssignmentProperties
buildGoldengateConnectionAssignmentProperties() {
  final o = api.GoldengateConnectionAssignmentProperties();
  buildCounterGoldengateConnectionAssignmentProperties++;
  if (buildCounterGoldengateConnectionAssignmentProperties < 3) {
    o.alias = 'foo';
    o.goldengateConnection = 'foo';
    o.goldengateDeployment = 'foo';
    o.ocid = 'foo';
    o.state = 'foo';
  }
  buildCounterGoldengateConnectionAssignmentProperties--;
  return o;
}

void checkGoldengateConnectionAssignmentProperties(
  api.GoldengateConnectionAssignmentProperties o,
) {
  buildCounterGoldengateConnectionAssignmentProperties++;
  if (buildCounterGoldengateConnectionAssignmentProperties < 3) {
    unittest.expect(o.alias!, unittest.equals('foo'));
    unittest.expect(o.goldengateConnection!, unittest.equals('foo'));
    unittest.expect(o.goldengateDeployment!, unittest.equals('foo'));
    unittest.expect(o.ocid!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
  }
  buildCounterGoldengateConnectionAssignmentProperties--;
}

core.List<core.String> buildUnnamed34() => ['foo', 'foo'];

void checkUnnamed34(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoldengateConnectionProperties = 0;
api.GoldengateConnectionProperties buildGoldengateConnectionProperties() {
  final o = api.GoldengateConnectionProperties();
  buildCounterGoldengateConnectionProperties++;
  if (buildCounterGoldengateConnectionProperties < 3) {
    o.amazonKinesisConnectionProperties =
        buildGoldengateAmazonKinesisConnectionProperties();
    o.amazonRedshiftConnectionProperties =
        buildGoldengateAmazonRedshiftConnectionProperties();
    o.amazonS3ConnectionProperties =
        buildGoldengateAmazonS3ConnectionProperties();
    o.azureDataLakeStorageConnectionProperties =
        buildGoldengateAzureDataLakeStorageConnectionProperties();
    o.azureSynapseAnalyticsConnectionProperties =
        buildGoldengateAzureSynapseAnalyticsConnectionProperties();
    o.connectionType = 'foo';
    o.databricksConnectionProperties =
        buildGoldengateDatabricksConnectionProperties();
    o.db2ConnectionProperties = buildGoldengateDb2ConnectionProperties();
    o.description = 'foo';
    o.displayName = 'foo';
    o.elasticsearchConnectionProperties =
        buildGoldengateElasticsearchConnectionProperties();
    o.genericConnectionProperties =
        buildGoldengateGenericConnectionProperties();
    o.goldengateConnectionProperties =
        buildGoldengateGoldengateConnectionProperties();
    o.googleBigQueryConnectionProperties =
        buildGoldengateGoogleBigQueryConnectionProperties();
    o.googleCloudStorageConnectionProperties =
        buildGoldengateGoogleCloudStorageConnectionProperties();
    o.googlePubsubConnectionProperties =
        buildGoldengateGooglePubsubConnectionProperties();
    o.hdfsConnectionProperties = buildGoldengateHdfsConnectionProperties();
    o.icebergConnectionProperties =
        buildGoldengateIcebergConnectionProperties();
    o.ingressIpAddresses = buildUnnamed34();
    o.javaMessageServiceConnectionProperties =
        buildGoldengateJavaMessageServiceConnectionProperties();
    o.kafkaConnectionProperties = buildGoldengateKafkaConnectionProperties();
    o.kafkaSchemaRegistryConnectionProperties =
        buildGoldengateKafkaSchemaRegistryConnectionProperties();
    o.lifecycleDetails = 'foo';
    o.lifecycleState = 'foo';
    o.microsoftFabricConnectionProperties =
        buildGoldengateMicrosoftFabricConnectionProperties();
    o.microsoftSqlserverConnectionProperties =
        buildGoldengateMicrosoftSqlserverConnectionProperties();
    o.mongodbConnectionProperties =
        buildGoldengateMongodbConnectionProperties();
    o.mysqlConnectionProperties = buildGoldengateMysqlConnectionProperties();
    o.ociObjectStorageConnectionProperties =
        buildGoldengateOciObjectStorageConnectionProperties();
    o.ocid = 'foo';
    o.oracleAiDataPlatformConnectionProperties =
        buildGoldengateOracleAIDataPlatformConnectionProperties();
    o.oracleConnectionProperties = buildGoldengateOracleConnectionProperties();
    o.oracleNosqlConnectionProperties =
        buildGoldengateOracleNosqlConnectionProperties();
    o.postgresqlConnectionProperties =
        buildGoldengatePostgresqlConnectionProperties();
    o.redisConnectionProperties = buildGoldengateRedisConnectionProperties();
    o.routingMethod = 'foo';
    o.snowflakeConnectionProperties =
        buildGoldengateSnowflakeConnectionProperties();
    o.updateTime = 'foo';
  }
  buildCounterGoldengateConnectionProperties--;
  return o;
}

void checkGoldengateConnectionProperties(api.GoldengateConnectionProperties o) {
  buildCounterGoldengateConnectionProperties++;
  if (buildCounterGoldengateConnectionProperties < 3) {
    checkGoldengateAmazonKinesisConnectionProperties(
      o.amazonKinesisConnectionProperties!,
    );
    checkGoldengateAmazonRedshiftConnectionProperties(
      o.amazonRedshiftConnectionProperties!,
    );
    checkGoldengateAmazonS3ConnectionProperties(
      o.amazonS3ConnectionProperties!,
    );
    checkGoldengateAzureDataLakeStorageConnectionProperties(
      o.azureDataLakeStorageConnectionProperties!,
    );
    checkGoldengateAzureSynapseAnalyticsConnectionProperties(
      o.azureSynapseAnalyticsConnectionProperties!,
    );
    unittest.expect(o.connectionType!, unittest.equals('foo'));
    checkGoldengateDatabricksConnectionProperties(
      o.databricksConnectionProperties!,
    );
    checkGoldengateDb2ConnectionProperties(o.db2ConnectionProperties!);
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkGoldengateElasticsearchConnectionProperties(
      o.elasticsearchConnectionProperties!,
    );
    checkGoldengateGenericConnectionProperties(o.genericConnectionProperties!);
    checkGoldengateGoldengateConnectionProperties(
      o.goldengateConnectionProperties!,
    );
    checkGoldengateGoogleBigQueryConnectionProperties(
      o.googleBigQueryConnectionProperties!,
    );
    checkGoldengateGoogleCloudStorageConnectionProperties(
      o.googleCloudStorageConnectionProperties!,
    );
    checkGoldengateGooglePubsubConnectionProperties(
      o.googlePubsubConnectionProperties!,
    );
    checkGoldengateHdfsConnectionProperties(o.hdfsConnectionProperties!);
    checkGoldengateIcebergConnectionProperties(o.icebergConnectionProperties!);
    checkUnnamed34(o.ingressIpAddresses!);
    checkGoldengateJavaMessageServiceConnectionProperties(
      o.javaMessageServiceConnectionProperties!,
    );
    checkGoldengateKafkaConnectionProperties(o.kafkaConnectionProperties!);
    checkGoldengateKafkaSchemaRegistryConnectionProperties(
      o.kafkaSchemaRegistryConnectionProperties!,
    );
    unittest.expect(o.lifecycleDetails!, unittest.equals('foo'));
    unittest.expect(o.lifecycleState!, unittest.equals('foo'));
    checkGoldengateMicrosoftFabricConnectionProperties(
      o.microsoftFabricConnectionProperties!,
    );
    checkGoldengateMicrosoftSqlserverConnectionProperties(
      o.microsoftSqlserverConnectionProperties!,
    );
    checkGoldengateMongodbConnectionProperties(o.mongodbConnectionProperties!);
    checkGoldengateMysqlConnectionProperties(o.mysqlConnectionProperties!);
    checkGoldengateOciObjectStorageConnectionProperties(
      o.ociObjectStorageConnectionProperties!,
    );
    unittest.expect(o.ocid!, unittest.equals('foo'));
    checkGoldengateOracleAIDataPlatformConnectionProperties(
      o.oracleAiDataPlatformConnectionProperties!,
    );
    checkGoldengateOracleConnectionProperties(o.oracleConnectionProperties!);
    checkGoldengateOracleNosqlConnectionProperties(
      o.oracleNosqlConnectionProperties!,
    );
    checkGoldengatePostgresqlConnectionProperties(
      o.postgresqlConnectionProperties!,
    );
    checkGoldengateRedisConnectionProperties(o.redisConnectionProperties!);
    unittest.expect(o.routingMethod!, unittest.equals('foo'));
    checkGoldengateSnowflakeConnectionProperties(
      o.snowflakeConnectionProperties!,
    );
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterGoldengateConnectionProperties--;
}

core.List<core.String> buildUnnamed35() => ['foo', 'foo'];

void checkUnnamed35(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoldengateConnectionType = 0;
api.GoldengateConnectionType buildGoldengateConnectionType() {
  final o = api.GoldengateConnectionType();
  buildCounterGoldengateConnectionType++;
  if (buildCounterGoldengateConnectionType < 3) {
    o.connectionType = 'foo';
    o.name = 'foo';
    o.technologyTypes = buildUnnamed35();
  }
  buildCounterGoldengateConnectionType--;
  return o;
}

void checkGoldengateConnectionType(api.GoldengateConnectionType o) {
  buildCounterGoldengateConnectionType++;
  if (buildCounterGoldengateConnectionType < 3) {
    unittest.expect(o.connectionType!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed35(o.technologyTypes!);
  }
  buildCounterGoldengateConnectionType--;
}

core.int buildCounterGoldengateDatabricksConnectionProperties = 0;
api.GoldengateDatabricksConnectionProperties
buildGoldengateDatabricksConnectionProperties() {
  final o = api.GoldengateDatabricksConnectionProperties();
  buildCounterGoldengateDatabricksConnectionProperties++;
  if (buildCounterGoldengateDatabricksConnectionProperties < 3) {
    o.authenticationType = 'foo';
    o.clientId = 'foo';
    o.clientSecret = 'foo';
    o.connectionUrl = 'foo';
    o.password = 'foo';
    o.passwordSecretVersion = 'foo';
    o.storageCredential = 'foo';
    o.technologyType = 'foo';
  }
  buildCounterGoldengateDatabricksConnectionProperties--;
  return o;
}

void checkGoldengateDatabricksConnectionProperties(
  api.GoldengateDatabricksConnectionProperties o,
) {
  buildCounterGoldengateDatabricksConnectionProperties++;
  if (buildCounterGoldengateDatabricksConnectionProperties < 3) {
    unittest.expect(o.authenticationType!, unittest.equals('foo'));
    unittest.expect(o.clientId!, unittest.equals('foo'));
    unittest.expect(o.clientSecret!, unittest.equals('foo'));
    unittest.expect(o.connectionUrl!, unittest.equals('foo'));
    unittest.expect(o.password!, unittest.equals('foo'));
    unittest.expect(o.passwordSecretVersion!, unittest.equals('foo'));
    unittest.expect(o.storageCredential!, unittest.equals('foo'));
    unittest.expect(o.technologyType!, unittest.equals('foo'));
  }
  buildCounterGoldengateDatabricksConnectionProperties--;
}

core.List<api.NameValuePair> buildUnnamed36() => [
  buildNameValuePair(),
  buildNameValuePair(),
];

void checkUnnamed36(core.List<api.NameValuePair> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNameValuePair(o[0]);
  checkNameValuePair(o[1]);
}

core.int buildCounterGoldengateDb2ConnectionProperties = 0;
api.GoldengateDb2ConnectionProperties buildGoldengateDb2ConnectionProperties() {
  final o = api.GoldengateDb2ConnectionProperties();
  buildCounterGoldengateDb2ConnectionProperties++;
  if (buildCounterGoldengateDb2ConnectionProperties < 3) {
    o.additionalAttributes = buildUnnamed36();
    o.database = 'foo';
    o.host = 'foo';
    o.password = 'foo';
    o.passwordSecretVersion = 'foo';
    o.port = 42;
    o.securityProtocol = 'foo';
    o.sslClientKeystashFile = 'foo';
    o.sslClientKeystoredbFile = 'foo';
    o.sslServerCertificateFile = 'foo';
    o.technologyType = 'foo';
    o.username = 'foo';
  }
  buildCounterGoldengateDb2ConnectionProperties--;
  return o;
}

void checkGoldengateDb2ConnectionProperties(
  api.GoldengateDb2ConnectionProperties o,
) {
  buildCounterGoldengateDb2ConnectionProperties++;
  if (buildCounterGoldengateDb2ConnectionProperties < 3) {
    checkUnnamed36(o.additionalAttributes!);
    unittest.expect(o.database!, unittest.equals('foo'));
    unittest.expect(o.host!, unittest.equals('foo'));
    unittest.expect(o.password!, unittest.equals('foo'));
    unittest.expect(o.passwordSecretVersion!, unittest.equals('foo'));
    unittest.expect(o.port!, unittest.equals(42));
    unittest.expect(o.securityProtocol!, unittest.equals('foo'));
    unittest.expect(o.sslClientKeystashFile!, unittest.equals('foo'));
    unittest.expect(o.sslClientKeystoredbFile!, unittest.equals('foo'));
    unittest.expect(o.sslServerCertificateFile!, unittest.equals('foo'));
    unittest.expect(o.technologyType!, unittest.equals('foo'));
    unittest.expect(o.username!, unittest.equals('foo'));
  }
  buildCounterGoldengateDb2ConnectionProperties--;
}

core.Map<core.String, core.String> buildUnnamed37() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed37(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterGoldengateDeployment = 0;
api.GoldengateDeployment buildGoldengateDeployment() {
  final o = api.GoldengateDeployment();
  buildCounterGoldengateDeployment++;
  if (buildCounterGoldengateDeployment < 3) {
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.entitlementId = 'foo';
    o.gcpOracleZone = 'foo';
    o.labels = buildUnnamed37();
    o.name = 'foo';
    o.ociUrl = 'foo';
    o.odbNetwork = 'foo';
    o.odbSubnet = 'foo';
    o.properties = buildGoldengateDeploymentProperties();
  }
  buildCounterGoldengateDeployment--;
  return o;
}

void checkGoldengateDeployment(api.GoldengateDeployment o) {
  buildCounterGoldengateDeployment++;
  if (buildCounterGoldengateDeployment < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.entitlementId!, unittest.equals('foo'));
    unittest.expect(o.gcpOracleZone!, unittest.equals('foo'));
    checkUnnamed37(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.ociUrl!, unittest.equals('foo'));
    unittest.expect(o.odbNetwork!, unittest.equals('foo'));
    unittest.expect(o.odbSubnet!, unittest.equals('foo'));
    checkGoldengateDeploymentProperties(o.properties!);
  }
  buildCounterGoldengateDeployment--;
}

core.int buildCounterGoldengateDeploymentEnvironment = 0;
api.GoldengateDeploymentEnvironment buildGoldengateDeploymentEnvironment() {
  final o = api.GoldengateDeploymentEnvironment();
  buildCounterGoldengateDeploymentEnvironment++;
  if (buildCounterGoldengateDeploymentEnvironment < 3) {
    o.autoScalingEnabled = true;
    o.category = 'foo';
    o.defaultCpuCoreCount = 42;
    o.displayName = 'foo';
    o.environmentType = 'foo';
    o.maxCpuCoreCount = 42;
    o.memoryGbPerCpuCore = 42;
    o.minCpuCoreCount = 42;
    o.name = 'foo';
    o.networkBandwidthGbpsPerCpuCore = 42;
    o.storageUsageLimitGbPerCpuCore = 42;
  }
  buildCounterGoldengateDeploymentEnvironment--;
  return o;
}

void checkGoldengateDeploymentEnvironment(
  api.GoldengateDeploymentEnvironment o,
) {
  buildCounterGoldengateDeploymentEnvironment++;
  if (buildCounterGoldengateDeploymentEnvironment < 3) {
    unittest.expect(o.autoScalingEnabled!, unittest.isTrue);
    unittest.expect(o.category!, unittest.equals('foo'));
    unittest.expect(o.defaultCpuCoreCount!, unittest.equals(42));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.environmentType!, unittest.equals('foo'));
    unittest.expect(o.maxCpuCoreCount!, unittest.equals(42));
    unittest.expect(o.memoryGbPerCpuCore!, unittest.equals(42));
    unittest.expect(o.minCpuCoreCount!, unittest.equals(42));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.networkBandwidthGbpsPerCpuCore!, unittest.equals(42));
    unittest.expect(o.storageUsageLimitGbPerCpuCore!, unittest.equals(42));
  }
  buildCounterGoldengateDeploymentEnvironment--;
}

core.int buildCounterGoldengateDeploymentLock = 0;
api.GoldengateDeploymentLock buildGoldengateDeploymentLock() {
  final o = api.GoldengateDeploymentLock();
  buildCounterGoldengateDeploymentLock++;
  if (buildCounterGoldengateDeploymentLock < 3) {
    o.compartmentId = 'foo';
    o.createTime = 'foo';
    o.message = 'foo';
    o.relatedResourceId = 'foo';
    o.type = 'foo';
  }
  buildCounterGoldengateDeploymentLock--;
  return o;
}

void checkGoldengateDeploymentLock(api.GoldengateDeploymentLock o) {
  buildCounterGoldengateDeploymentLock++;
  if (buildCounterGoldengateDeploymentLock < 3) {
    unittest.expect(o.compartmentId!, unittest.equals('foo'));
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.message!, unittest.equals('foo'));
    unittest.expect(o.relatedResourceId!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterGoldengateDeploymentLock--;
}

core.List<api.IngressIp> buildUnnamed38() => [
  buildIngressIp(),
  buildIngressIp(),
];

void checkUnnamed38(core.List<api.IngressIp> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIngressIp(o[0]);
  checkIngressIp(o[1]);
}

core.List<api.GoldengateDeploymentLock> buildUnnamed39() => [
  buildGoldengateDeploymentLock(),
  buildGoldengateDeploymentLock(),
];

void checkUnnamed39(core.List<api.GoldengateDeploymentLock> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoldengateDeploymentLock(o[0]);
  checkGoldengateDeploymentLock(o[1]);
}

core.List<core.String> buildUnnamed40() => ['foo', 'foo'];

void checkUnnamed40(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoldengatePlacement> buildUnnamed41() => [
  buildGoldengatePlacement(),
  buildGoldengatePlacement(),
];

void checkUnnamed41(core.List<api.GoldengatePlacement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoldengatePlacement(o[0]);
  checkGoldengatePlacement(o[1]);
}

core.int buildCounterGoldengateDeploymentProperties = 0;
api.GoldengateDeploymentProperties buildGoldengateDeploymentProperties() {
  final o = api.GoldengateDeploymentProperties();
  buildCounterGoldengateDeploymentProperties++;
  if (buildCounterGoldengateDeploymentProperties < 3) {
    o.backupSchedule = buildGoldengateBackupSchedule();
    o.category = 'foo';
    o.cpuCoreCount = 42;
    o.deploymentBackupId = 'foo';
    o.deploymentDiagnosticData = buildDeploymentDiagnosticData();
    o.deploymentRole = 'foo';
    o.deploymentType = 'foo';
    o.deploymentUrl = 'foo';
    o.description = 'foo';
    o.environmentType = 'foo';
    o.fqdn = 'foo';
    o.healthy = true;
    o.ingressIps = buildUnnamed38();
    o.isAutoScalingEnabled = true;
    o.isLatestVersion = true;
    o.isPublic = true;
    o.isStorageUtilizationLimitExceeded = true;
    o.lastBackupScheduleTime = 'foo';
    o.licenseModel = 'foo';
    o.lifecycleDetails = 'foo';
    o.lifecycleState = 'foo';
    o.lifecycleSubState = 'foo';
    o.loadBalancerId = 'foo';
    o.loadBalancerSubnetId = 'foo';
    o.locks = buildUnnamed39();
    o.maintenanceConfig = buildGoldengateMaintenanceConfig();
    o.maintenanceWindow = buildGoldengateMaintenanceWindow();
    o.nextBackupScheduleTime = 'foo';
    o.nextMaintenanceActionType = 'foo';
    o.nextMaintenanceDescription = 'foo';
    o.nextMaintenanceTime = 'foo';
    o.nsgIds = buildUnnamed40();
    o.ocid = 'foo';
    o.oggData = buildGoldengateOggDeployment();
    o.oggVersionSupportEndTime = 'foo';
    o.placements = buildUnnamed41();
    o.privateIpAddress = 'foo';
    o.publicIpAddress = 'foo';
    o.roleChangeTime = 'foo';
    o.storageUtilizationBytes = 'foo';
    o.updateTime = 'foo';
    o.upgradeRequiredTime = 'foo';
  }
  buildCounterGoldengateDeploymentProperties--;
  return o;
}

void checkGoldengateDeploymentProperties(api.GoldengateDeploymentProperties o) {
  buildCounterGoldengateDeploymentProperties++;
  if (buildCounterGoldengateDeploymentProperties < 3) {
    checkGoldengateBackupSchedule(o.backupSchedule!);
    unittest.expect(o.category!, unittest.equals('foo'));
    unittest.expect(o.cpuCoreCount!, unittest.equals(42));
    unittest.expect(o.deploymentBackupId!, unittest.equals('foo'));
    checkDeploymentDiagnosticData(o.deploymentDiagnosticData!);
    unittest.expect(o.deploymentRole!, unittest.equals('foo'));
    unittest.expect(o.deploymentType!, unittest.equals('foo'));
    unittest.expect(o.deploymentUrl!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.environmentType!, unittest.equals('foo'));
    unittest.expect(o.fqdn!, unittest.equals('foo'));
    unittest.expect(o.healthy!, unittest.isTrue);
    checkUnnamed38(o.ingressIps!);
    unittest.expect(o.isAutoScalingEnabled!, unittest.isTrue);
    unittest.expect(o.isLatestVersion!, unittest.isTrue);
    unittest.expect(o.isPublic!, unittest.isTrue);
    unittest.expect(o.isStorageUtilizationLimitExceeded!, unittest.isTrue);
    unittest.expect(o.lastBackupScheduleTime!, unittest.equals('foo'));
    unittest.expect(o.licenseModel!, unittest.equals('foo'));
    unittest.expect(o.lifecycleDetails!, unittest.equals('foo'));
    unittest.expect(o.lifecycleState!, unittest.equals('foo'));
    unittest.expect(o.lifecycleSubState!, unittest.equals('foo'));
    unittest.expect(o.loadBalancerId!, unittest.equals('foo'));
    unittest.expect(o.loadBalancerSubnetId!, unittest.equals('foo'));
    checkUnnamed39(o.locks!);
    checkGoldengateMaintenanceConfig(o.maintenanceConfig!);
    checkGoldengateMaintenanceWindow(o.maintenanceWindow!);
    unittest.expect(o.nextBackupScheduleTime!, unittest.equals('foo'));
    unittest.expect(o.nextMaintenanceActionType!, unittest.equals('foo'));
    unittest.expect(o.nextMaintenanceDescription!, unittest.equals('foo'));
    unittest.expect(o.nextMaintenanceTime!, unittest.equals('foo'));
    checkUnnamed40(o.nsgIds!);
    unittest.expect(o.ocid!, unittest.equals('foo'));
    checkGoldengateOggDeployment(o.oggData!);
    unittest.expect(o.oggVersionSupportEndTime!, unittest.equals('foo'));
    checkUnnamed41(o.placements!);
    unittest.expect(o.privateIpAddress!, unittest.equals('foo'));
    unittest.expect(o.publicIpAddress!, unittest.equals('foo'));
    unittest.expect(o.roleChangeTime!, unittest.equals('foo'));
    unittest.expect(o.storageUtilizationBytes!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
    unittest.expect(o.upgradeRequiredTime!, unittest.equals('foo'));
  }
  buildCounterGoldengateDeploymentProperties--;
}

core.List<core.String> buildUnnamed42() => ['foo', 'foo'];

void checkUnnamed42(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed43() => ['foo', 'foo'];

void checkUnnamed43(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed44() => ['foo', 'foo'];

void checkUnnamed44(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed45() => ['foo', 'foo'];

void checkUnnamed45(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoldengateDeploymentType = 0;
api.GoldengateDeploymentType buildGoldengateDeploymentType() {
  final o = api.GoldengateDeploymentType();
  buildCounterGoldengateDeploymentType++;
  if (buildCounterGoldengateDeploymentType < 3) {
    o.category = 'foo';
    o.connectionTypes = buildUnnamed42();
    o.defaultUsername = 'foo';
    o.deploymentType = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
    o.oggVersion = 'foo';
    o.sourceTechnologies = buildUnnamed43();
    o.supportedCapabilities = buildUnnamed44();
    o.supportedTechnologiesUrl = 'foo';
    o.targetTechnologies = buildUnnamed45();
  }
  buildCounterGoldengateDeploymentType--;
  return o;
}

void checkGoldengateDeploymentType(api.GoldengateDeploymentType o) {
  buildCounterGoldengateDeploymentType++;
  if (buildCounterGoldengateDeploymentType < 3) {
    unittest.expect(o.category!, unittest.equals('foo'));
    checkUnnamed42(o.connectionTypes!);
    unittest.expect(o.defaultUsername!, unittest.equals('foo'));
    unittest.expect(o.deploymentType!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.oggVersion!, unittest.equals('foo'));
    checkUnnamed43(o.sourceTechnologies!);
    checkUnnamed44(o.supportedCapabilities!);
    unittest.expect(o.supportedTechnologiesUrl!, unittest.equals('foo'));
    checkUnnamed45(o.targetTechnologies!);
  }
  buildCounterGoldengateDeploymentType--;
}

core.int buildCounterGoldengateDeploymentVersion = 0;
api.GoldengateDeploymentVersion buildGoldengateDeploymentVersion() {
  final o = api.GoldengateDeploymentVersion();
  buildCounterGoldengateDeploymentVersion++;
  if (buildCounterGoldengateDeploymentVersion < 3) {
    o.name = 'foo';
    o.ocid = 'foo';
    o.properties = buildGoldengateDeploymentVersionProperties();
  }
  buildCounterGoldengateDeploymentVersion--;
  return o;
}

void checkGoldengateDeploymentVersion(api.GoldengateDeploymentVersion o) {
  buildCounterGoldengateDeploymentVersion++;
  if (buildCounterGoldengateDeploymentVersion < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.ocid!, unittest.equals('foo'));
    checkGoldengateDeploymentVersionProperties(o.properties!);
  }
  buildCounterGoldengateDeploymentVersion--;
}

core.int buildCounterGoldengateDeploymentVersionProperties = 0;
api.GoldengateDeploymentVersionProperties
buildGoldengateDeploymentVersionProperties() {
  final o = api.GoldengateDeploymentVersionProperties();
  buildCounterGoldengateDeploymentVersionProperties++;
  if (buildCounterGoldengateDeploymentVersionProperties < 3) {
    o.deploymentType = 'foo';
    o.oggVersion = 'foo';
    o.releaseTime = 'foo';
    o.releaseType = 'foo';
    o.securityFix = true;
    o.supportEndTime = 'foo';
  }
  buildCounterGoldengateDeploymentVersionProperties--;
  return o;
}

void checkGoldengateDeploymentVersionProperties(
  api.GoldengateDeploymentVersionProperties o,
) {
  buildCounterGoldengateDeploymentVersionProperties++;
  if (buildCounterGoldengateDeploymentVersionProperties < 3) {
    unittest.expect(o.deploymentType!, unittest.equals('foo'));
    unittest.expect(o.oggVersion!, unittest.equals('foo'));
    unittest.expect(o.releaseTime!, unittest.equals('foo'));
    unittest.expect(o.releaseType!, unittest.equals('foo'));
    unittest.expect(o.securityFix!, unittest.isTrue);
    unittest.expect(o.supportEndTime!, unittest.equals('foo'));
  }
  buildCounterGoldengateDeploymentVersionProperties--;
}

core.int buildCounterGoldengateElasticsearchConnectionProperties = 0;
api.GoldengateElasticsearchConnectionProperties
buildGoldengateElasticsearchConnectionProperties() {
  final o = api.GoldengateElasticsearchConnectionProperties();
  buildCounterGoldengateElasticsearchConnectionProperties++;
  if (buildCounterGoldengateElasticsearchConnectionProperties < 3) {
    o.authenticationType = 'foo';
    o.fingerprint = 'foo';
    o.password = 'foo';
    o.passwordSecretVersion = 'foo';
    o.securityProtocol = 'foo';
    o.servers = 'foo';
    o.technologyType = 'foo';
    o.username = 'foo';
  }
  buildCounterGoldengateElasticsearchConnectionProperties--;
  return o;
}

void checkGoldengateElasticsearchConnectionProperties(
  api.GoldengateElasticsearchConnectionProperties o,
) {
  buildCounterGoldengateElasticsearchConnectionProperties++;
  if (buildCounterGoldengateElasticsearchConnectionProperties < 3) {
    unittest.expect(o.authenticationType!, unittest.equals('foo'));
    unittest.expect(o.fingerprint!, unittest.equals('foo'));
    unittest.expect(o.password!, unittest.equals('foo'));
    unittest.expect(o.passwordSecretVersion!, unittest.equals('foo'));
    unittest.expect(o.securityProtocol!, unittest.equals('foo'));
    unittest.expect(o.servers!, unittest.equals('foo'));
    unittest.expect(o.technologyType!, unittest.equals('foo'));
    unittest.expect(o.username!, unittest.equals('foo'));
  }
  buildCounterGoldengateElasticsearchConnectionProperties--;
}

core.int buildCounterGoldengateGenericConnectionProperties = 0;
api.GoldengateGenericConnectionProperties
buildGoldengateGenericConnectionProperties() {
  final o = api.GoldengateGenericConnectionProperties();
  buildCounterGoldengateGenericConnectionProperties++;
  if (buildCounterGoldengateGenericConnectionProperties < 3) {
    o.host = 'foo';
    o.technologyType = 'foo';
  }
  buildCounterGoldengateGenericConnectionProperties--;
  return o;
}

void checkGoldengateGenericConnectionProperties(
  api.GoldengateGenericConnectionProperties o,
) {
  buildCounterGoldengateGenericConnectionProperties++;
  if (buildCounterGoldengateGenericConnectionProperties < 3) {
    unittest.expect(o.host!, unittest.equals('foo'));
    unittest.expect(o.technologyType!, unittest.equals('foo'));
  }
  buildCounterGoldengateGenericConnectionProperties--;
}

core.int buildCounterGoldengateGoldengateConnectionProperties = 0;
api.GoldengateGoldengateConnectionProperties
buildGoldengateGoldengateConnectionProperties() {
  final o = api.GoldengateGoldengateConnectionProperties();
  buildCounterGoldengateGoldengateConnectionProperties++;
  if (buildCounterGoldengateGoldengateConnectionProperties < 3) {
    o.goldengateDeploymentId = 'foo';
    o.host = 'foo';
    o.password = 'foo';
    o.passwordSecretVersion = 'foo';
    o.port = 42;
    o.technologyType = 'foo';
    o.username = 'foo';
  }
  buildCounterGoldengateGoldengateConnectionProperties--;
  return o;
}

void checkGoldengateGoldengateConnectionProperties(
  api.GoldengateGoldengateConnectionProperties o,
) {
  buildCounterGoldengateGoldengateConnectionProperties++;
  if (buildCounterGoldengateGoldengateConnectionProperties < 3) {
    unittest.expect(o.goldengateDeploymentId!, unittest.equals('foo'));
    unittest.expect(o.host!, unittest.equals('foo'));
    unittest.expect(o.password!, unittest.equals('foo'));
    unittest.expect(o.passwordSecretVersion!, unittest.equals('foo'));
    unittest.expect(o.port!, unittest.equals(42));
    unittest.expect(o.technologyType!, unittest.equals('foo'));
    unittest.expect(o.username!, unittest.equals('foo'));
  }
  buildCounterGoldengateGoldengateConnectionProperties--;
}

core.int buildCounterGoldengateGoogleBigQueryConnectionProperties = 0;
api.GoldengateGoogleBigQueryConnectionProperties
buildGoldengateGoogleBigQueryConnectionProperties() {
  final o = api.GoldengateGoogleBigQueryConnectionProperties();
  buildCounterGoldengateGoogleBigQueryConnectionProperties++;
  if (buildCounterGoldengateGoogleBigQueryConnectionProperties < 3) {
    o.serviceAccountKeyFile = 'foo';
    o.technologyType = 'foo';
  }
  buildCounterGoldengateGoogleBigQueryConnectionProperties--;
  return o;
}

void checkGoldengateGoogleBigQueryConnectionProperties(
  api.GoldengateGoogleBigQueryConnectionProperties o,
) {
  buildCounterGoldengateGoogleBigQueryConnectionProperties++;
  if (buildCounterGoldengateGoogleBigQueryConnectionProperties < 3) {
    unittest.expect(o.serviceAccountKeyFile!, unittest.equals('foo'));
    unittest.expect(o.technologyType!, unittest.equals('foo'));
  }
  buildCounterGoldengateGoogleBigQueryConnectionProperties--;
}

core.int buildCounterGoldengateGoogleCloudStorageConnectionProperties = 0;
api.GoldengateGoogleCloudStorageConnectionProperties
buildGoldengateGoogleCloudStorageConnectionProperties() {
  final o = api.GoldengateGoogleCloudStorageConnectionProperties();
  buildCounterGoldengateGoogleCloudStorageConnectionProperties++;
  if (buildCounterGoldengateGoogleCloudStorageConnectionProperties < 3) {
    o.serviceAccountKeyFile = 'foo';
    o.technologyType = 'foo';
  }
  buildCounterGoldengateGoogleCloudStorageConnectionProperties--;
  return o;
}

void checkGoldengateGoogleCloudStorageConnectionProperties(
  api.GoldengateGoogleCloudStorageConnectionProperties o,
) {
  buildCounterGoldengateGoogleCloudStorageConnectionProperties++;
  if (buildCounterGoldengateGoogleCloudStorageConnectionProperties < 3) {
    unittest.expect(o.serviceAccountKeyFile!, unittest.equals('foo'));
    unittest.expect(o.technologyType!, unittest.equals('foo'));
  }
  buildCounterGoldengateGoogleCloudStorageConnectionProperties--;
}

core.int buildCounterGoldengateGooglePubsubConnectionProperties = 0;
api.GoldengateGooglePubsubConnectionProperties
buildGoldengateGooglePubsubConnectionProperties() {
  final o = api.GoldengateGooglePubsubConnectionProperties();
  buildCounterGoldengateGooglePubsubConnectionProperties++;
  if (buildCounterGoldengateGooglePubsubConnectionProperties < 3) {
    o.serviceAccountKeyFile = 'foo';
    o.technologyType = 'foo';
  }
  buildCounterGoldengateGooglePubsubConnectionProperties--;
  return o;
}

void checkGoldengateGooglePubsubConnectionProperties(
  api.GoldengateGooglePubsubConnectionProperties o,
) {
  buildCounterGoldengateGooglePubsubConnectionProperties++;
  if (buildCounterGoldengateGooglePubsubConnectionProperties < 3) {
    unittest.expect(o.serviceAccountKeyFile!, unittest.equals('foo'));
    unittest.expect(o.technologyType!, unittest.equals('foo'));
  }
  buildCounterGoldengateGooglePubsubConnectionProperties--;
}

core.int buildCounterGoldengateGroupToRolesMapping = 0;
api.GoldengateGroupToRolesMapping buildGoldengateGroupToRolesMapping() {
  final o = api.GoldengateGroupToRolesMapping();
  buildCounterGoldengateGroupToRolesMapping++;
  if (buildCounterGoldengateGroupToRolesMapping < 3) {
    o.administratorGroupId = 'foo';
    o.operatorGroupId = 'foo';
    o.securityGroupId = 'foo';
    o.userGroupId = 'foo';
  }
  buildCounterGoldengateGroupToRolesMapping--;
  return o;
}

void checkGoldengateGroupToRolesMapping(api.GoldengateGroupToRolesMapping o) {
  buildCounterGoldengateGroupToRolesMapping++;
  if (buildCounterGoldengateGroupToRolesMapping < 3) {
    unittest.expect(o.administratorGroupId!, unittest.equals('foo'));
    unittest.expect(o.operatorGroupId!, unittest.equals('foo'));
    unittest.expect(o.securityGroupId!, unittest.equals('foo'));
    unittest.expect(o.userGroupId!, unittest.equals('foo'));
  }
  buildCounterGoldengateGroupToRolesMapping--;
}

core.int buildCounterGoldengateHdfsConnectionProperties = 0;
api.GoldengateHdfsConnectionProperties
buildGoldengateHdfsConnectionProperties() {
  final o = api.GoldengateHdfsConnectionProperties();
  buildCounterGoldengateHdfsConnectionProperties++;
  if (buildCounterGoldengateHdfsConnectionProperties < 3) {
    o.coreSiteXml = 'foo';
    o.technologyType = 'foo';
  }
  buildCounterGoldengateHdfsConnectionProperties--;
  return o;
}

void checkGoldengateHdfsConnectionProperties(
  api.GoldengateHdfsConnectionProperties o,
) {
  buildCounterGoldengateHdfsConnectionProperties++;
  if (buildCounterGoldengateHdfsConnectionProperties < 3) {
    unittest.expect(o.coreSiteXml!, unittest.equals('foo'));
    unittest.expect(o.technologyType!, unittest.equals('foo'));
  }
  buildCounterGoldengateHdfsConnectionProperties--;
}

core.int buildCounterGoldengateIcebergConnectionProperties = 0;
api.GoldengateIcebergConnectionProperties
buildGoldengateIcebergConnectionProperties() {
  final o = api.GoldengateIcebergConnectionProperties();
  buildCounterGoldengateIcebergConnectionProperties++;
  if (buildCounterGoldengateIcebergConnectionProperties < 3) {
    o.catalog = buildIcebergCatalog();
    o.storage = buildIcebergStorage();
    o.technologyType = 'foo';
  }
  buildCounterGoldengateIcebergConnectionProperties--;
  return o;
}

void checkGoldengateIcebergConnectionProperties(
  api.GoldengateIcebergConnectionProperties o,
) {
  buildCounterGoldengateIcebergConnectionProperties++;
  if (buildCounterGoldengateIcebergConnectionProperties < 3) {
    checkIcebergCatalog(o.catalog!);
    checkIcebergStorage(o.storage!);
    unittest.expect(o.technologyType!, unittest.equals('foo'));
  }
  buildCounterGoldengateIcebergConnectionProperties--;
}

core.int buildCounterGoldengateJavaMessageServiceConnectionProperties = 0;
api.GoldengateJavaMessageServiceConnectionProperties
buildGoldengateJavaMessageServiceConnectionProperties() {
  final o = api.GoldengateJavaMessageServiceConnectionProperties();
  buildCounterGoldengateJavaMessageServiceConnectionProperties++;
  if (buildCounterGoldengateJavaMessageServiceConnectionProperties < 3) {
    o.authenticationType = 'foo';
    o.connectionFactory = 'foo';
    o.connectionUrl = 'foo';
    o.jndiConnectionFactory = 'foo';
    o.jndiInitialContextFactory = 'foo';
    o.jndiProviderUrl = 'foo';
    o.jndiSecurityCredentialsSecret = 'foo';
    o.jndiSecurityPrincipal = 'foo';
    o.keyStoreFile = 'foo';
    o.keyStorePassword = 'foo';
    o.keyStorePasswordSecretVersion = 'foo';
    o.password = 'foo';
    o.passwordSecretVersion = 'foo';
    o.securityProtocol = 'foo';
    o.sslKeyPassword = 'foo';
    o.sslKeyPasswordSecretVersion = 'foo';
    o.technologyType = 'foo';
    o.trustStoreFile = 'foo';
    o.trustStorePassword = 'foo';
    o.trustStorePasswordSecretVersion = 'foo';
    o.useJndi = true;
    o.username = 'foo';
  }
  buildCounterGoldengateJavaMessageServiceConnectionProperties--;
  return o;
}

void checkGoldengateJavaMessageServiceConnectionProperties(
  api.GoldengateJavaMessageServiceConnectionProperties o,
) {
  buildCounterGoldengateJavaMessageServiceConnectionProperties++;
  if (buildCounterGoldengateJavaMessageServiceConnectionProperties < 3) {
    unittest.expect(o.authenticationType!, unittest.equals('foo'));
    unittest.expect(o.connectionFactory!, unittest.equals('foo'));
    unittest.expect(o.connectionUrl!, unittest.equals('foo'));
    unittest.expect(o.jndiConnectionFactory!, unittest.equals('foo'));
    unittest.expect(o.jndiInitialContextFactory!, unittest.equals('foo'));
    unittest.expect(o.jndiProviderUrl!, unittest.equals('foo'));
    unittest.expect(o.jndiSecurityCredentialsSecret!, unittest.equals('foo'));
    unittest.expect(o.jndiSecurityPrincipal!, unittest.equals('foo'));
    unittest.expect(o.keyStoreFile!, unittest.equals('foo'));
    unittest.expect(o.keyStorePassword!, unittest.equals('foo'));
    unittest.expect(o.keyStorePasswordSecretVersion!, unittest.equals('foo'));
    unittest.expect(o.password!, unittest.equals('foo'));
    unittest.expect(o.passwordSecretVersion!, unittest.equals('foo'));
    unittest.expect(o.securityProtocol!, unittest.equals('foo'));
    unittest.expect(o.sslKeyPassword!, unittest.equals('foo'));
    unittest.expect(o.sslKeyPasswordSecretVersion!, unittest.equals('foo'));
    unittest.expect(o.technologyType!, unittest.equals('foo'));
    unittest.expect(o.trustStoreFile!, unittest.equals('foo'));
    unittest.expect(o.trustStorePassword!, unittest.equals('foo'));
    unittest.expect(o.trustStorePasswordSecretVersion!, unittest.equals('foo'));
    unittest.expect(o.useJndi!, unittest.isTrue);
    unittest.expect(o.username!, unittest.equals('foo'));
  }
  buildCounterGoldengateJavaMessageServiceConnectionProperties--;
}

core.List<api.KafkaBootstrapServer> buildUnnamed46() => [
  buildKafkaBootstrapServer(),
  buildKafkaBootstrapServer(),
];

void checkUnnamed46(core.List<api.KafkaBootstrapServer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkKafkaBootstrapServer(o[0]);
  checkKafkaBootstrapServer(o[1]);
}

core.int buildCounterGoldengateKafkaConnectionProperties = 0;
api.GoldengateKafkaConnectionProperties
buildGoldengateKafkaConnectionProperties() {
  final o = api.GoldengateKafkaConnectionProperties();
  buildCounterGoldengateKafkaConnectionProperties++;
  if (buildCounterGoldengateKafkaConnectionProperties < 3) {
    o.bootstrapServers = buildUnnamed46();
    o.clusterId = 'foo';
    o.consumerPropertiesFile = 'foo';
    o.keyStoreFile = 'foo';
    o.keyStorePassword = 'foo';
    o.keyStorePasswordSecretVersion = 'foo';
    o.password = 'foo';
    o.passwordSecretVersion = 'foo';
    o.producerPropertiesFile = 'foo';
    o.securityProtocol = 'foo';
    o.sslKeyPassword = 'foo';
    o.sslKeyPasswordSecretVersion = 'foo';
    o.streamPoolId = 'foo';
    o.technologyType = 'foo';
    o.trustStoreFile = 'foo';
    o.trustStorePassword = 'foo';
    o.trustStorePasswordSecretVersion = 'foo';
    o.useResourcePrincipal = true;
    o.username = 'foo';
  }
  buildCounterGoldengateKafkaConnectionProperties--;
  return o;
}

void checkGoldengateKafkaConnectionProperties(
  api.GoldengateKafkaConnectionProperties o,
) {
  buildCounterGoldengateKafkaConnectionProperties++;
  if (buildCounterGoldengateKafkaConnectionProperties < 3) {
    checkUnnamed46(o.bootstrapServers!);
    unittest.expect(o.clusterId!, unittest.equals('foo'));
    unittest.expect(o.consumerPropertiesFile!, unittest.equals('foo'));
    unittest.expect(o.keyStoreFile!, unittest.equals('foo'));
    unittest.expect(o.keyStorePassword!, unittest.equals('foo'));
    unittest.expect(o.keyStorePasswordSecretVersion!, unittest.equals('foo'));
    unittest.expect(o.password!, unittest.equals('foo'));
    unittest.expect(o.passwordSecretVersion!, unittest.equals('foo'));
    unittest.expect(o.producerPropertiesFile!, unittest.equals('foo'));
    unittest.expect(o.securityProtocol!, unittest.equals('foo'));
    unittest.expect(o.sslKeyPassword!, unittest.equals('foo'));
    unittest.expect(o.sslKeyPasswordSecretVersion!, unittest.equals('foo'));
    unittest.expect(o.streamPoolId!, unittest.equals('foo'));
    unittest.expect(o.technologyType!, unittest.equals('foo'));
    unittest.expect(o.trustStoreFile!, unittest.equals('foo'));
    unittest.expect(o.trustStorePassword!, unittest.equals('foo'));
    unittest.expect(o.trustStorePasswordSecretVersion!, unittest.equals('foo'));
    unittest.expect(o.useResourcePrincipal!, unittest.isTrue);
    unittest.expect(o.username!, unittest.equals('foo'));
  }
  buildCounterGoldengateKafkaConnectionProperties--;
}

core.int buildCounterGoldengateKafkaSchemaRegistryConnectionProperties = 0;
api.GoldengateKafkaSchemaRegistryConnectionProperties
buildGoldengateKafkaSchemaRegistryConnectionProperties() {
  final o = api.GoldengateKafkaSchemaRegistryConnectionProperties();
  buildCounterGoldengateKafkaSchemaRegistryConnectionProperties++;
  if (buildCounterGoldengateKafkaSchemaRegistryConnectionProperties < 3) {
    o.authenticationType = 'foo';
    o.keyStoreFile = 'foo';
    o.keyStorePassword = 'foo';
    o.keyStorePasswordSecretVersion = 'foo';
    o.password = 'foo';
    o.passwordSecretVersion = 'foo';
    o.sslKeyPassword = 'foo';
    o.sslKeyPasswordSecretVersion = 'foo';
    o.technologyType = 'foo';
    o.trustStoreFile = 'foo';
    o.trustStorePassword = 'foo';
    o.trustStorePasswordSecretVersion = 'foo';
    o.url = 'foo';
    o.username = 'foo';
  }
  buildCounterGoldengateKafkaSchemaRegistryConnectionProperties--;
  return o;
}

void checkGoldengateKafkaSchemaRegistryConnectionProperties(
  api.GoldengateKafkaSchemaRegistryConnectionProperties o,
) {
  buildCounterGoldengateKafkaSchemaRegistryConnectionProperties++;
  if (buildCounterGoldengateKafkaSchemaRegistryConnectionProperties < 3) {
    unittest.expect(o.authenticationType!, unittest.equals('foo'));
    unittest.expect(o.keyStoreFile!, unittest.equals('foo'));
    unittest.expect(o.keyStorePassword!, unittest.equals('foo'));
    unittest.expect(o.keyStorePasswordSecretVersion!, unittest.equals('foo'));
    unittest.expect(o.password!, unittest.equals('foo'));
    unittest.expect(o.passwordSecretVersion!, unittest.equals('foo'));
    unittest.expect(o.sslKeyPassword!, unittest.equals('foo'));
    unittest.expect(o.sslKeyPasswordSecretVersion!, unittest.equals('foo'));
    unittest.expect(o.technologyType!, unittest.equals('foo'));
    unittest.expect(o.trustStoreFile!, unittest.equals('foo'));
    unittest.expect(o.trustStorePassword!, unittest.equals('foo'));
    unittest.expect(o.trustStorePasswordSecretVersion!, unittest.equals('foo'));
    unittest.expect(o.url!, unittest.equals('foo'));
    unittest.expect(o.username!, unittest.equals('foo'));
  }
  buildCounterGoldengateKafkaSchemaRegistryConnectionProperties--;
}

core.int buildCounterGoldengateMaintenanceConfig = 0;
api.GoldengateMaintenanceConfig buildGoldengateMaintenanceConfig() {
  final o = api.GoldengateMaintenanceConfig();
  buildCounterGoldengateMaintenanceConfig++;
  if (buildCounterGoldengateMaintenanceConfig < 3) {
    o.bundleReleaseUpgradePeriodDays = 42;
    o.interimReleaseUpgradePeriodDays = 42;
    o.isInterimReleaseAutoUpgradeEnabled = true;
    o.majorReleaseUpgradePeriodDays = 42;
    o.securityPatchUpgradePeriodDays = 42;
  }
  buildCounterGoldengateMaintenanceConfig--;
  return o;
}

void checkGoldengateMaintenanceConfig(api.GoldengateMaintenanceConfig o) {
  buildCounterGoldengateMaintenanceConfig++;
  if (buildCounterGoldengateMaintenanceConfig < 3) {
    unittest.expect(o.bundleReleaseUpgradePeriodDays!, unittest.equals(42));
    unittest.expect(o.interimReleaseUpgradePeriodDays!, unittest.equals(42));
    unittest.expect(o.isInterimReleaseAutoUpgradeEnabled!, unittest.isTrue);
    unittest.expect(o.majorReleaseUpgradePeriodDays!, unittest.equals(42));
    unittest.expect(o.securityPatchUpgradePeriodDays!, unittest.equals(42));
  }
  buildCounterGoldengateMaintenanceConfig--;
}

core.int buildCounterGoldengateMaintenanceWindow = 0;
api.GoldengateMaintenanceWindow buildGoldengateMaintenanceWindow() {
  final o = api.GoldengateMaintenanceWindow();
  buildCounterGoldengateMaintenanceWindow++;
  if (buildCounterGoldengateMaintenanceWindow < 3) {
    o.day = 'foo';
    o.startHour = 42;
  }
  buildCounterGoldengateMaintenanceWindow--;
  return o;
}

void checkGoldengateMaintenanceWindow(api.GoldengateMaintenanceWindow o) {
  buildCounterGoldengateMaintenanceWindow++;
  if (buildCounterGoldengateMaintenanceWindow < 3) {
    unittest.expect(o.day!, unittest.equals('foo'));
    unittest.expect(o.startHour!, unittest.equals(42));
  }
  buildCounterGoldengateMaintenanceWindow--;
}

core.int buildCounterGoldengateMicrosoftFabricConnectionProperties = 0;
api.GoldengateMicrosoftFabricConnectionProperties
buildGoldengateMicrosoftFabricConnectionProperties() {
  final o = api.GoldengateMicrosoftFabricConnectionProperties();
  buildCounterGoldengateMicrosoftFabricConnectionProperties++;
  if (buildCounterGoldengateMicrosoftFabricConnectionProperties < 3) {
    o.clientId = 'foo';
    o.clientSecret = 'foo';
    o.endpoint = 'foo';
    o.technologyType = 'foo';
    o.tenantId = 'foo';
  }
  buildCounterGoldengateMicrosoftFabricConnectionProperties--;
  return o;
}

void checkGoldengateMicrosoftFabricConnectionProperties(
  api.GoldengateMicrosoftFabricConnectionProperties o,
) {
  buildCounterGoldengateMicrosoftFabricConnectionProperties++;
  if (buildCounterGoldengateMicrosoftFabricConnectionProperties < 3) {
    unittest.expect(o.clientId!, unittest.equals('foo'));
    unittest.expect(o.clientSecret!, unittest.equals('foo'));
    unittest.expect(o.endpoint!, unittest.equals('foo'));
    unittest.expect(o.technologyType!, unittest.equals('foo'));
    unittest.expect(o.tenantId!, unittest.equals('foo'));
  }
  buildCounterGoldengateMicrosoftFabricConnectionProperties--;
}

core.List<api.NameValuePair> buildUnnamed47() => [
  buildNameValuePair(),
  buildNameValuePair(),
];

void checkUnnamed47(core.List<api.NameValuePair> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNameValuePair(o[0]);
  checkNameValuePair(o[1]);
}

core.int buildCounterGoldengateMicrosoftSqlserverConnectionProperties = 0;
api.GoldengateMicrosoftSqlserverConnectionProperties
buildGoldengateMicrosoftSqlserverConnectionProperties() {
  final o = api.GoldengateMicrosoftSqlserverConnectionProperties();
  buildCounterGoldengateMicrosoftSqlserverConnectionProperties++;
  if (buildCounterGoldengateMicrosoftSqlserverConnectionProperties < 3) {
    o.additionalAttributes = buildUnnamed47();
    o.database = 'foo';
    o.host = 'foo';
    o.password = 'foo';
    o.passwordSecretVersion = 'foo';
    o.port = 42;
    o.securityProtocol = 'foo';
    o.serverCertificateValidationRequired = true;
    o.sslCaFile = 'foo';
    o.technologyType = 'foo';
    o.username = 'foo';
  }
  buildCounterGoldengateMicrosoftSqlserverConnectionProperties--;
  return o;
}

void checkGoldengateMicrosoftSqlserverConnectionProperties(
  api.GoldengateMicrosoftSqlserverConnectionProperties o,
) {
  buildCounterGoldengateMicrosoftSqlserverConnectionProperties++;
  if (buildCounterGoldengateMicrosoftSqlserverConnectionProperties < 3) {
    checkUnnamed47(o.additionalAttributes!);
    unittest.expect(o.database!, unittest.equals('foo'));
    unittest.expect(o.host!, unittest.equals('foo'));
    unittest.expect(o.password!, unittest.equals('foo'));
    unittest.expect(o.passwordSecretVersion!, unittest.equals('foo'));
    unittest.expect(o.port!, unittest.equals(42));
    unittest.expect(o.securityProtocol!, unittest.equals('foo'));
    unittest.expect(o.serverCertificateValidationRequired!, unittest.isTrue);
    unittest.expect(o.sslCaFile!, unittest.equals('foo'));
    unittest.expect(o.technologyType!, unittest.equals('foo'));
    unittest.expect(o.username!, unittest.equals('foo'));
  }
  buildCounterGoldengateMicrosoftSqlserverConnectionProperties--;
}

core.int buildCounterGoldengateMongodbConnectionProperties = 0;
api.GoldengateMongodbConnectionProperties
buildGoldengateMongodbConnectionProperties() {
  final o = api.GoldengateMongodbConnectionProperties();
  buildCounterGoldengateMongodbConnectionProperties++;
  if (buildCounterGoldengateMongodbConnectionProperties < 3) {
    o.connectionString = 'foo';
    o.databaseId = 'foo';
    o.password = 'foo';
    o.passwordSecretVersion = 'foo';
    o.securityProtocol = 'foo';
    o.technologyType = 'foo';
    o.tlsCaFile = 'foo';
    o.tlsCertificateKeyFile = 'foo';
    o.tlsCertificateKeyFilePassword = 'foo';
    o.tlsCertificateKeyFilePasswordSecretVersion = 'foo';
    o.username = 'foo';
  }
  buildCounterGoldengateMongodbConnectionProperties--;
  return o;
}

void checkGoldengateMongodbConnectionProperties(
  api.GoldengateMongodbConnectionProperties o,
) {
  buildCounterGoldengateMongodbConnectionProperties++;
  if (buildCounterGoldengateMongodbConnectionProperties < 3) {
    unittest.expect(o.connectionString!, unittest.equals('foo'));
    unittest.expect(o.databaseId!, unittest.equals('foo'));
    unittest.expect(o.password!, unittest.equals('foo'));
    unittest.expect(o.passwordSecretVersion!, unittest.equals('foo'));
    unittest.expect(o.securityProtocol!, unittest.equals('foo'));
    unittest.expect(o.technologyType!, unittest.equals('foo'));
    unittest.expect(o.tlsCaFile!, unittest.equals('foo'));
    unittest.expect(o.tlsCertificateKeyFile!, unittest.equals('foo'));
    unittest.expect(o.tlsCertificateKeyFilePassword!, unittest.equals('foo'));
    unittest.expect(
      o.tlsCertificateKeyFilePasswordSecretVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(o.username!, unittest.equals('foo'));
  }
  buildCounterGoldengateMongodbConnectionProperties--;
}

core.List<api.NameValuePair> buildUnnamed48() => [
  buildNameValuePair(),
  buildNameValuePair(),
];

void checkUnnamed48(core.List<api.NameValuePair> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNameValuePair(o[0]);
  checkNameValuePair(o[1]);
}

core.int buildCounterGoldengateMysqlConnectionProperties = 0;
api.GoldengateMysqlConnectionProperties
buildGoldengateMysqlConnectionProperties() {
  final o = api.GoldengateMysqlConnectionProperties();
  buildCounterGoldengateMysqlConnectionProperties++;
  if (buildCounterGoldengateMysqlConnectionProperties < 3) {
    o.additionalAttributes = buildUnnamed48();
    o.database = 'foo';
    o.dbSystemId = 'foo';
    o.host = 'foo';
    o.password = 'foo';
    o.passwordSecretVersion = 'foo';
    o.port = 42;
    o.securityProtocol = 'foo';
    o.sslCaFile = 'foo';
    o.sslCertFile = 'foo';
    o.sslCrlFile = 'foo';
    o.sslKeyFile = 'foo';
    o.sslMode = 'foo';
    o.technologyType = 'foo';
    o.username = 'foo';
  }
  buildCounterGoldengateMysqlConnectionProperties--;
  return o;
}

void checkGoldengateMysqlConnectionProperties(
  api.GoldengateMysqlConnectionProperties o,
) {
  buildCounterGoldengateMysqlConnectionProperties++;
  if (buildCounterGoldengateMysqlConnectionProperties < 3) {
    checkUnnamed48(o.additionalAttributes!);
    unittest.expect(o.database!, unittest.equals('foo'));
    unittest.expect(o.dbSystemId!, unittest.equals('foo'));
    unittest.expect(o.host!, unittest.equals('foo'));
    unittest.expect(o.password!, unittest.equals('foo'));
    unittest.expect(o.passwordSecretVersion!, unittest.equals('foo'));
    unittest.expect(o.port!, unittest.equals(42));
    unittest.expect(o.securityProtocol!, unittest.equals('foo'));
    unittest.expect(o.sslCaFile!, unittest.equals('foo'));
    unittest.expect(o.sslCertFile!, unittest.equals('foo'));
    unittest.expect(o.sslCrlFile!, unittest.equals('foo'));
    unittest.expect(o.sslKeyFile!, unittest.equals('foo'));
    unittest.expect(o.sslMode!, unittest.equals('foo'));
    unittest.expect(o.technologyType!, unittest.equals('foo'));
    unittest.expect(o.username!, unittest.equals('foo'));
  }
  buildCounterGoldengateMysqlConnectionProperties--;
}

core.int buildCounterGoldengateOciObjectStorageConnectionProperties = 0;
api.GoldengateOciObjectStorageConnectionProperties
buildGoldengateOciObjectStorageConnectionProperties() {
  final o = api.GoldengateOciObjectStorageConnectionProperties();
  buildCounterGoldengateOciObjectStorageConnectionProperties++;
  if (buildCounterGoldengateOciObjectStorageConnectionProperties < 3) {
    o.privateKeyFile = 'foo';
    o.privateKeyPassphraseSecret = 'foo';
    o.publicKeyFingerprint = 'foo';
    o.region = 'foo';
    o.technologyType = 'foo';
    o.tenancyId = 'foo';
    o.useResourcePrincipal = true;
    o.userId = 'foo';
  }
  buildCounterGoldengateOciObjectStorageConnectionProperties--;
  return o;
}

void checkGoldengateOciObjectStorageConnectionProperties(
  api.GoldengateOciObjectStorageConnectionProperties o,
) {
  buildCounterGoldengateOciObjectStorageConnectionProperties++;
  if (buildCounterGoldengateOciObjectStorageConnectionProperties < 3) {
    unittest.expect(o.privateKeyFile!, unittest.equals('foo'));
    unittest.expect(o.privateKeyPassphraseSecret!, unittest.equals('foo'));
    unittest.expect(o.publicKeyFingerprint!, unittest.equals('foo'));
    unittest.expect(o.region!, unittest.equals('foo'));
    unittest.expect(o.technologyType!, unittest.equals('foo'));
    unittest.expect(o.tenancyId!, unittest.equals('foo'));
    unittest.expect(o.useResourcePrincipal!, unittest.isTrue);
    unittest.expect(o.userId!, unittest.equals('foo'));
  }
  buildCounterGoldengateOciObjectStorageConnectionProperties--;
}

core.int buildCounterGoldengateOggDeployment = 0;
api.GoldengateOggDeployment buildGoldengateOggDeployment() {
  final o = api.GoldengateOggDeployment();
  buildCounterGoldengateOggDeployment++;
  if (buildCounterGoldengateOggDeployment < 3) {
    o.adminPassword = 'foo';
    o.adminPasswordSecretVersion = 'foo';
    o.adminUsername = 'foo';
    o.certificate = 'foo';
    o.credentialStore = 'foo';
    o.deployment = 'foo';
    o.groupRolesMapping = buildGoldengateGroupToRolesMapping();
    o.identityDomainId = 'foo';
    o.oggVersion = 'foo';
    o.passwordSecretId = 'foo';
  }
  buildCounterGoldengateOggDeployment--;
  return o;
}

void checkGoldengateOggDeployment(api.GoldengateOggDeployment o) {
  buildCounterGoldengateOggDeployment++;
  if (buildCounterGoldengateOggDeployment < 3) {
    unittest.expect(o.adminPassword!, unittest.equals('foo'));
    unittest.expect(o.adminPasswordSecretVersion!, unittest.equals('foo'));
    unittest.expect(o.adminUsername!, unittest.equals('foo'));
    unittest.expect(o.certificate!, unittest.equals('foo'));
    unittest.expect(o.credentialStore!, unittest.equals('foo'));
    unittest.expect(o.deployment!, unittest.equals('foo'));
    checkGoldengateGroupToRolesMapping(o.groupRolesMapping!);
    unittest.expect(o.identityDomainId!, unittest.equals('foo'));
    unittest.expect(o.oggVersion!, unittest.equals('foo'));
    unittest.expect(o.passwordSecretId!, unittest.equals('foo'));
  }
  buildCounterGoldengateOggDeployment--;
}

core.int buildCounterGoldengateOracleAIDataPlatformConnectionProperties = 0;
api.GoldengateOracleAIDataPlatformConnectionProperties
buildGoldengateOracleAIDataPlatformConnectionProperties() {
  final o = api.GoldengateOracleAIDataPlatformConnectionProperties();
  buildCounterGoldengateOracleAIDataPlatformConnectionProperties++;
  if (buildCounterGoldengateOracleAIDataPlatformConnectionProperties < 3) {
    o.connectionUrl = 'foo';
    o.privateKeyFile = 'foo';
    o.privateKeyPassphraseSecret = 'foo';
    o.publicKeyFingerprint = 'foo';
    o.region = 'foo';
    o.technologyType = 'foo';
    o.tenancyId = 'foo';
    o.useResourcePrincipal = true;
    o.userId = 'foo';
  }
  buildCounterGoldengateOracleAIDataPlatformConnectionProperties--;
  return o;
}

void checkGoldengateOracleAIDataPlatformConnectionProperties(
  api.GoldengateOracleAIDataPlatformConnectionProperties o,
) {
  buildCounterGoldengateOracleAIDataPlatformConnectionProperties++;
  if (buildCounterGoldengateOracleAIDataPlatformConnectionProperties < 3) {
    unittest.expect(o.connectionUrl!, unittest.equals('foo'));
    unittest.expect(o.privateKeyFile!, unittest.equals('foo'));
    unittest.expect(o.privateKeyPassphraseSecret!, unittest.equals('foo'));
    unittest.expect(o.publicKeyFingerprint!, unittest.equals('foo'));
    unittest.expect(o.region!, unittest.equals('foo'));
    unittest.expect(o.technologyType!, unittest.equals('foo'));
    unittest.expect(o.tenancyId!, unittest.equals('foo'));
    unittest.expect(o.useResourcePrincipal!, unittest.isTrue);
    unittest.expect(o.userId!, unittest.equals('foo'));
  }
  buildCounterGoldengateOracleAIDataPlatformConnectionProperties--;
}

core.int buildCounterGoldengateOracleConnectionProperties = 0;
api.GoldengateOracleConnectionProperties
buildGoldengateOracleConnectionProperties() {
  final o = api.GoldengateOracleConnectionProperties();
  buildCounterGoldengateOracleConnectionProperties++;
  if (buildCounterGoldengateOracleConnectionProperties < 3) {
    o.authenticationMode = 'foo';
    o.connectionString = 'foo';
    o.gcpOracleDatabaseId = 'foo';
    o.password = 'foo';
    o.passwordSecretVersion = 'foo';
    o.sessionMode = 'foo';
    o.technologyType = 'foo';
    o.username = 'foo';
    o.walletFile = 'foo';
  }
  buildCounterGoldengateOracleConnectionProperties--;
  return o;
}

void checkGoldengateOracleConnectionProperties(
  api.GoldengateOracleConnectionProperties o,
) {
  buildCounterGoldengateOracleConnectionProperties++;
  if (buildCounterGoldengateOracleConnectionProperties < 3) {
    unittest.expect(o.authenticationMode!, unittest.equals('foo'));
    unittest.expect(o.connectionString!, unittest.equals('foo'));
    unittest.expect(o.gcpOracleDatabaseId!, unittest.equals('foo'));
    unittest.expect(o.password!, unittest.equals('foo'));
    unittest.expect(o.passwordSecretVersion!, unittest.equals('foo'));
    unittest.expect(o.sessionMode!, unittest.equals('foo'));
    unittest.expect(o.technologyType!, unittest.equals('foo'));
    unittest.expect(o.username!, unittest.equals('foo'));
    unittest.expect(o.walletFile!, unittest.equals('foo'));
  }
  buildCounterGoldengateOracleConnectionProperties--;
}

core.int buildCounterGoldengateOracleNosqlConnectionProperties = 0;
api.GoldengateOracleNosqlConnectionProperties
buildGoldengateOracleNosqlConnectionProperties() {
  final o = api.GoldengateOracleNosqlConnectionProperties();
  buildCounterGoldengateOracleNosqlConnectionProperties++;
  if (buildCounterGoldengateOracleNosqlConnectionProperties < 3) {
    o.privateKeyFile = 'foo';
    o.privateKeyPassphraseSecret = 'foo';
    o.publicKeyFingerprint = 'foo';
    o.region = 'foo';
    o.technologyType = 'foo';
    o.tenancyId = 'foo';
    o.useResourcePrincipal = true;
    o.userId = 'foo';
  }
  buildCounterGoldengateOracleNosqlConnectionProperties--;
  return o;
}

void checkGoldengateOracleNosqlConnectionProperties(
  api.GoldengateOracleNosqlConnectionProperties o,
) {
  buildCounterGoldengateOracleNosqlConnectionProperties++;
  if (buildCounterGoldengateOracleNosqlConnectionProperties < 3) {
    unittest.expect(o.privateKeyFile!, unittest.equals('foo'));
    unittest.expect(o.privateKeyPassphraseSecret!, unittest.equals('foo'));
    unittest.expect(o.publicKeyFingerprint!, unittest.equals('foo'));
    unittest.expect(o.region!, unittest.equals('foo'));
    unittest.expect(o.technologyType!, unittest.equals('foo'));
    unittest.expect(o.tenancyId!, unittest.equals('foo'));
    unittest.expect(o.useResourcePrincipal!, unittest.isTrue);
    unittest.expect(o.userId!, unittest.equals('foo'));
  }
  buildCounterGoldengateOracleNosqlConnectionProperties--;
}

core.int buildCounterGoldengatePlacement = 0;
api.GoldengatePlacement buildGoldengatePlacement() {
  final o = api.GoldengatePlacement();
  buildCounterGoldengatePlacement++;
  if (buildCounterGoldengatePlacement < 3) {
    o.availabilityDomain = 'foo';
    o.faultDomain = 'foo';
  }
  buildCounterGoldengatePlacement--;
  return o;
}

void checkGoldengatePlacement(api.GoldengatePlacement o) {
  buildCounterGoldengatePlacement++;
  if (buildCounterGoldengatePlacement < 3) {
    unittest.expect(o.availabilityDomain!, unittest.equals('foo'));
    unittest.expect(o.faultDomain!, unittest.equals('foo'));
  }
  buildCounterGoldengatePlacement--;
}

core.List<api.NameValuePair> buildUnnamed49() => [
  buildNameValuePair(),
  buildNameValuePair(),
];

void checkUnnamed49(core.List<api.NameValuePair> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNameValuePair(o[0]);
  checkNameValuePair(o[1]);
}

core.int buildCounterGoldengatePostgresqlConnectionProperties = 0;
api.GoldengatePostgresqlConnectionProperties
buildGoldengatePostgresqlConnectionProperties() {
  final o = api.GoldengatePostgresqlConnectionProperties();
  buildCounterGoldengatePostgresqlConnectionProperties++;
  if (buildCounterGoldengatePostgresqlConnectionProperties < 3) {
    o.additionalAttributes = buildUnnamed49();
    o.database = 'foo';
    o.dbSystemId = 'foo';
    o.host = 'foo';
    o.password = 'foo';
    o.passwordSecretVersion = 'foo';
    o.port = 42;
    o.securityProtocol = 'foo';
    o.sslCaFile = 'foo';
    o.sslCertFile = 'foo';
    o.sslCrlFile = 'foo';
    o.sslKeyFile = 'foo';
    o.sslMode = 'foo';
    o.technologyType = 'foo';
    o.username = 'foo';
  }
  buildCounterGoldengatePostgresqlConnectionProperties--;
  return o;
}

void checkGoldengatePostgresqlConnectionProperties(
  api.GoldengatePostgresqlConnectionProperties o,
) {
  buildCounterGoldengatePostgresqlConnectionProperties++;
  if (buildCounterGoldengatePostgresqlConnectionProperties < 3) {
    checkUnnamed49(o.additionalAttributes!);
    unittest.expect(o.database!, unittest.equals('foo'));
    unittest.expect(o.dbSystemId!, unittest.equals('foo'));
    unittest.expect(o.host!, unittest.equals('foo'));
    unittest.expect(o.password!, unittest.equals('foo'));
    unittest.expect(o.passwordSecretVersion!, unittest.equals('foo'));
    unittest.expect(o.port!, unittest.equals(42));
    unittest.expect(o.securityProtocol!, unittest.equals('foo'));
    unittest.expect(o.sslCaFile!, unittest.equals('foo'));
    unittest.expect(o.sslCertFile!, unittest.equals('foo'));
    unittest.expect(o.sslCrlFile!, unittest.equals('foo'));
    unittest.expect(o.sslKeyFile!, unittest.equals('foo'));
    unittest.expect(o.sslMode!, unittest.equals('foo'));
    unittest.expect(o.technologyType!, unittest.equals('foo'));
    unittest.expect(o.username!, unittest.equals('foo'));
  }
  buildCounterGoldengatePostgresqlConnectionProperties--;
}

core.int buildCounterGoldengateRedisConnectionProperties = 0;
api.GoldengateRedisConnectionProperties
buildGoldengateRedisConnectionProperties() {
  final o = api.GoldengateRedisConnectionProperties();
  buildCounterGoldengateRedisConnectionProperties++;
  if (buildCounterGoldengateRedisConnectionProperties < 3) {
    o.authenticationType = 'foo';
    o.keyStoreFile = 'foo';
    o.keyStorePassword = 'foo';
    o.keyStorePasswordSecretVersion = 'foo';
    o.password = 'foo';
    o.passwordSecretVersion = 'foo';
    o.redisClusterId = 'foo';
    o.securityProtocol = 'foo';
    o.servers = 'foo';
    o.technologyType = 'foo';
    o.trustStoreFile = 'foo';
    o.trustStorePassword = 'foo';
    o.trustStorePasswordSecretVersion = 'foo';
    o.username = 'foo';
  }
  buildCounterGoldengateRedisConnectionProperties--;
  return o;
}

void checkGoldengateRedisConnectionProperties(
  api.GoldengateRedisConnectionProperties o,
) {
  buildCounterGoldengateRedisConnectionProperties++;
  if (buildCounterGoldengateRedisConnectionProperties < 3) {
    unittest.expect(o.authenticationType!, unittest.equals('foo'));
    unittest.expect(o.keyStoreFile!, unittest.equals('foo'));
    unittest.expect(o.keyStorePassword!, unittest.equals('foo'));
    unittest.expect(o.keyStorePasswordSecretVersion!, unittest.equals('foo'));
    unittest.expect(o.password!, unittest.equals('foo'));
    unittest.expect(o.passwordSecretVersion!, unittest.equals('foo'));
    unittest.expect(o.redisClusterId!, unittest.equals('foo'));
    unittest.expect(o.securityProtocol!, unittest.equals('foo'));
    unittest.expect(o.servers!, unittest.equals('foo'));
    unittest.expect(o.technologyType!, unittest.equals('foo'));
    unittest.expect(o.trustStoreFile!, unittest.equals('foo'));
    unittest.expect(o.trustStorePassword!, unittest.equals('foo'));
    unittest.expect(o.trustStorePasswordSecretVersion!, unittest.equals('foo'));
    unittest.expect(o.username!, unittest.equals('foo'));
  }
  buildCounterGoldengateRedisConnectionProperties--;
}

core.int buildCounterGoldengateSnowflakeConnectionProperties = 0;
api.GoldengateSnowflakeConnectionProperties
buildGoldengateSnowflakeConnectionProperties() {
  final o = api.GoldengateSnowflakeConnectionProperties();
  buildCounterGoldengateSnowflakeConnectionProperties++;
  if (buildCounterGoldengateSnowflakeConnectionProperties < 3) {
    o.authenticationType = 'foo';
    o.connectionUrl = 'foo';
    o.password = 'foo';
    o.passwordSecretVersion = 'foo';
    o.privateKeyFile = 'foo';
    o.privateKeyPassphraseSecret = 'foo';
    o.technologyType = 'foo';
    o.username = 'foo';
  }
  buildCounterGoldengateSnowflakeConnectionProperties--;
  return o;
}

void checkGoldengateSnowflakeConnectionProperties(
  api.GoldengateSnowflakeConnectionProperties o,
) {
  buildCounterGoldengateSnowflakeConnectionProperties++;
  if (buildCounterGoldengateSnowflakeConnectionProperties < 3) {
    unittest.expect(o.authenticationType!, unittest.equals('foo'));
    unittest.expect(o.connectionUrl!, unittest.equals('foo'));
    unittest.expect(o.password!, unittest.equals('foo'));
    unittest.expect(o.passwordSecretVersion!, unittest.equals('foo'));
    unittest.expect(o.privateKeyFile!, unittest.equals('foo'));
    unittest.expect(o.privateKeyPassphraseSecret!, unittest.equals('foo'));
    unittest.expect(o.technologyType!, unittest.equals('foo'));
    unittest.expect(o.username!, unittest.equals('foo'));
  }
  buildCounterGoldengateSnowflakeConnectionProperties--;
}

core.int buildCounterGoogleCloudStorageIcebergStorage = 0;
api.GoogleCloudStorageIcebergStorage buildGoogleCloudStorageIcebergStorage() {
  final o = api.GoogleCloudStorageIcebergStorage();
  buildCounterGoogleCloudStorageIcebergStorage++;
  if (buildCounterGoogleCloudStorageIcebergStorage < 3) {
    o.bucket = 'foo';
    o.projectId = 'foo';
    o.serviceAccountKeyFile = 'foo';
  }
  buildCounterGoogleCloudStorageIcebergStorage--;
  return o;
}

void checkGoogleCloudStorageIcebergStorage(
  api.GoogleCloudStorageIcebergStorage o,
) {
  buildCounterGoogleCloudStorageIcebergStorage++;
  if (buildCounterGoogleCloudStorageIcebergStorage < 3) {
    unittest.expect(o.bucket!, unittest.equals('foo'));
    unittest.expect(o.projectId!, unittest.equals('foo'));
    unittest.expect(o.serviceAccountKeyFile!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudStorageIcebergStorage--;
}

core.int buildCounterIcebergCatalog = 0;
api.IcebergCatalog buildIcebergCatalog() {
  final o = api.IcebergCatalog();
  buildCounterIcebergCatalog++;
  if (buildCounterIcebergCatalog < 3) {
    o.catalogType = 'foo';
    o.glueIcebergCatalog = buildGlueIcebergCatalog();
    o.nessieIcebergCatalog = buildNessieIcebergCatalog();
    o.polarisIcebergCatalog = buildPolarisIcebergCatalog();
    o.restIcebergCatalog = buildRestIcebergCatalog();
  }
  buildCounterIcebergCatalog--;
  return o;
}

void checkIcebergCatalog(api.IcebergCatalog o) {
  buildCounterIcebergCatalog++;
  if (buildCounterIcebergCatalog < 3) {
    unittest.expect(o.catalogType!, unittest.equals('foo'));
    checkGlueIcebergCatalog(o.glueIcebergCatalog!);
    checkNessieIcebergCatalog(o.nessieIcebergCatalog!);
    checkPolarisIcebergCatalog(o.polarisIcebergCatalog!);
    checkRestIcebergCatalog(o.restIcebergCatalog!);
  }
  buildCounterIcebergCatalog--;
}

core.int buildCounterIcebergStorage = 0;
api.IcebergStorage buildIcebergStorage() {
  final o = api.IcebergStorage();
  buildCounterIcebergStorage++;
  if (buildCounterIcebergStorage < 3) {
    o.amazonS3IcebergStorage = buildAmazonS3IcebergStorage();
    o.azureDataLakeStorageIcebergStorage =
        buildAzureDataLakeStorageIcebergStorage();
    o.googleCloudStorageIcebergStorage =
        buildGoogleCloudStorageIcebergStorage();
    o.storageType = 'foo';
  }
  buildCounterIcebergStorage--;
  return o;
}

void checkIcebergStorage(api.IcebergStorage o) {
  buildCounterIcebergStorage++;
  if (buildCounterIcebergStorage < 3) {
    checkAmazonS3IcebergStorage(o.amazonS3IcebergStorage!);
    checkAzureDataLakeStorageIcebergStorage(
      o.azureDataLakeStorageIcebergStorage!,
    );
    checkGoogleCloudStorageIcebergStorage(o.googleCloudStorageIcebergStorage!);
    unittest.expect(o.storageType!, unittest.equals('foo'));
  }
  buildCounterIcebergStorage--;
}

core.int buildCounterIdentityConnector = 0;
api.IdentityConnector buildIdentityConnector() {
  final o = api.IdentityConnector();
  buildCounterIdentityConnector++;
  if (buildCounterIdentityConnector < 3) {
    o.connectionState = 'foo';
    o.serviceAgentEmail = 'foo';
  }
  buildCounterIdentityConnector--;
  return o;
}

void checkIdentityConnector(api.IdentityConnector o) {
  buildCounterIdentityConnector++;
  if (buildCounterIdentityConnector < 3) {
    unittest.expect(o.connectionState!, unittest.equals('foo'));
    unittest.expect(o.serviceAgentEmail!, unittest.equals('foo'));
  }
  buildCounterIdentityConnector--;
}

core.int buildCounterIngressIp = 0;
api.IngressIp buildIngressIp() {
  final o = api.IngressIp();
  buildCounterIngressIp++;
  if (buildCounterIngressIp < 3) {
    o.ingressIpAddress = 'foo';
  }
  buildCounterIngressIp--;
  return o;
}

void checkIngressIp(api.IngressIp o) {
  buildCounterIngressIp++;
  if (buildCounterIngressIp < 3) {
    unittest.expect(o.ingressIpAddress!, unittest.equals('foo'));
  }
  buildCounterIngressIp--;
}

core.int buildCounterKafkaBootstrapServer = 0;
api.KafkaBootstrapServer buildKafkaBootstrapServer() {
  final o = api.KafkaBootstrapServer();
  buildCounterKafkaBootstrapServer++;
  if (buildCounterKafkaBootstrapServer < 3) {
    o.host = 'foo';
    o.port = 42;
    o.privateIpAddress = 'foo';
  }
  buildCounterKafkaBootstrapServer--;
  return o;
}

void checkKafkaBootstrapServer(api.KafkaBootstrapServer o) {
  buildCounterKafkaBootstrapServer++;
  if (buildCounterKafkaBootstrapServer < 3) {
    unittest.expect(o.host!, unittest.equals('foo'));
    unittest.expect(o.port!, unittest.equals(42));
    unittest.expect(o.privateIpAddress!, unittest.equals('foo'));
  }
  buildCounterKafkaBootstrapServer--;
}

core.List<api.AutonomousDatabaseBackup> buildUnnamed50() => [
  buildAutonomousDatabaseBackup(),
  buildAutonomousDatabaseBackup(),
];

void checkUnnamed50(core.List<api.AutonomousDatabaseBackup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAutonomousDatabaseBackup(o[0]);
  checkAutonomousDatabaseBackup(o[1]);
}

core.int buildCounterListAutonomousDatabaseBackupsResponse = 0;
api.ListAutonomousDatabaseBackupsResponse
buildListAutonomousDatabaseBackupsResponse() {
  final o = api.ListAutonomousDatabaseBackupsResponse();
  buildCounterListAutonomousDatabaseBackupsResponse++;
  if (buildCounterListAutonomousDatabaseBackupsResponse < 3) {
    o.autonomousDatabaseBackups = buildUnnamed50();
    o.nextPageToken = 'foo';
  }
  buildCounterListAutonomousDatabaseBackupsResponse--;
  return o;
}

void checkListAutonomousDatabaseBackupsResponse(
  api.ListAutonomousDatabaseBackupsResponse o,
) {
  buildCounterListAutonomousDatabaseBackupsResponse++;
  if (buildCounterListAutonomousDatabaseBackupsResponse < 3) {
    checkUnnamed50(o.autonomousDatabaseBackups!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListAutonomousDatabaseBackupsResponse--;
}

core.List<api.AutonomousDatabaseCharacterSet> buildUnnamed51() => [
  buildAutonomousDatabaseCharacterSet(),
  buildAutonomousDatabaseCharacterSet(),
];

void checkUnnamed51(core.List<api.AutonomousDatabaseCharacterSet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAutonomousDatabaseCharacterSet(o[0]);
  checkAutonomousDatabaseCharacterSet(o[1]);
}

core.int buildCounterListAutonomousDatabaseCharacterSetsResponse = 0;
api.ListAutonomousDatabaseCharacterSetsResponse
buildListAutonomousDatabaseCharacterSetsResponse() {
  final o = api.ListAutonomousDatabaseCharacterSetsResponse();
  buildCounterListAutonomousDatabaseCharacterSetsResponse++;
  if (buildCounterListAutonomousDatabaseCharacterSetsResponse < 3) {
    o.autonomousDatabaseCharacterSets = buildUnnamed51();
    o.nextPageToken = 'foo';
  }
  buildCounterListAutonomousDatabaseCharacterSetsResponse--;
  return o;
}

void checkListAutonomousDatabaseCharacterSetsResponse(
  api.ListAutonomousDatabaseCharacterSetsResponse o,
) {
  buildCounterListAutonomousDatabaseCharacterSetsResponse++;
  if (buildCounterListAutonomousDatabaseCharacterSetsResponse < 3) {
    checkUnnamed51(o.autonomousDatabaseCharacterSets!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListAutonomousDatabaseCharacterSetsResponse--;
}

core.List<api.AutonomousDatabase> buildUnnamed52() => [
  buildAutonomousDatabase(),
  buildAutonomousDatabase(),
];

void checkUnnamed52(core.List<api.AutonomousDatabase> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAutonomousDatabase(o[0]);
  checkAutonomousDatabase(o[1]);
}

core.List<core.String> buildUnnamed53() => ['foo', 'foo'];

void checkUnnamed53(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListAutonomousDatabasesResponse = 0;
api.ListAutonomousDatabasesResponse buildListAutonomousDatabasesResponse() {
  final o = api.ListAutonomousDatabasesResponse();
  buildCounterListAutonomousDatabasesResponse++;
  if (buildCounterListAutonomousDatabasesResponse < 3) {
    o.autonomousDatabases = buildUnnamed52();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed53();
  }
  buildCounterListAutonomousDatabasesResponse--;
  return o;
}

void checkListAutonomousDatabasesResponse(
  api.ListAutonomousDatabasesResponse o,
) {
  buildCounterListAutonomousDatabasesResponse++;
  if (buildCounterListAutonomousDatabasesResponse < 3) {
    checkUnnamed52(o.autonomousDatabases!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed53(o.unreachable!);
  }
  buildCounterListAutonomousDatabasesResponse--;
}

core.List<api.AutonomousDbVersion> buildUnnamed54() => [
  buildAutonomousDbVersion(),
  buildAutonomousDbVersion(),
];

void checkUnnamed54(core.List<api.AutonomousDbVersion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAutonomousDbVersion(o[0]);
  checkAutonomousDbVersion(o[1]);
}

core.int buildCounterListAutonomousDbVersionsResponse = 0;
api.ListAutonomousDbVersionsResponse buildListAutonomousDbVersionsResponse() {
  final o = api.ListAutonomousDbVersionsResponse();
  buildCounterListAutonomousDbVersionsResponse++;
  if (buildCounterListAutonomousDbVersionsResponse < 3) {
    o.autonomousDbVersions = buildUnnamed54();
    o.nextPageToken = 'foo';
  }
  buildCounterListAutonomousDbVersionsResponse--;
  return o;
}

void checkListAutonomousDbVersionsResponse(
  api.ListAutonomousDbVersionsResponse o,
) {
  buildCounterListAutonomousDbVersionsResponse++;
  if (buildCounterListAutonomousDbVersionsResponse < 3) {
    checkUnnamed54(o.autonomousDbVersions!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListAutonomousDbVersionsResponse--;
}

core.List<api.CloudExadataInfrastructure> buildUnnamed55() => [
  buildCloudExadataInfrastructure(),
  buildCloudExadataInfrastructure(),
];

void checkUnnamed55(core.List<api.CloudExadataInfrastructure> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCloudExadataInfrastructure(o[0]);
  checkCloudExadataInfrastructure(o[1]);
}

core.List<core.String> buildUnnamed56() => ['foo', 'foo'];

void checkUnnamed56(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListCloudExadataInfrastructuresResponse = 0;
api.ListCloudExadataInfrastructuresResponse
buildListCloudExadataInfrastructuresResponse() {
  final o = api.ListCloudExadataInfrastructuresResponse();
  buildCounterListCloudExadataInfrastructuresResponse++;
  if (buildCounterListCloudExadataInfrastructuresResponse < 3) {
    o.cloudExadataInfrastructures = buildUnnamed55();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed56();
  }
  buildCounterListCloudExadataInfrastructuresResponse--;
  return o;
}

void checkListCloudExadataInfrastructuresResponse(
  api.ListCloudExadataInfrastructuresResponse o,
) {
  buildCounterListCloudExadataInfrastructuresResponse++;
  if (buildCounterListCloudExadataInfrastructuresResponse < 3) {
    checkUnnamed55(o.cloudExadataInfrastructures!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed56(o.unreachable!);
  }
  buildCounterListCloudExadataInfrastructuresResponse--;
}

core.List<api.CloudVmCluster> buildUnnamed57() => [
  buildCloudVmCluster(),
  buildCloudVmCluster(),
];

void checkUnnamed57(core.List<api.CloudVmCluster> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCloudVmCluster(o[0]);
  checkCloudVmCluster(o[1]);
}

core.List<core.String> buildUnnamed58() => ['foo', 'foo'];

void checkUnnamed58(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListCloudVmClustersResponse = 0;
api.ListCloudVmClustersResponse buildListCloudVmClustersResponse() {
  final o = api.ListCloudVmClustersResponse();
  buildCounterListCloudVmClustersResponse++;
  if (buildCounterListCloudVmClustersResponse < 3) {
    o.cloudVmClusters = buildUnnamed57();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed58();
  }
  buildCounterListCloudVmClustersResponse--;
  return o;
}

void checkListCloudVmClustersResponse(api.ListCloudVmClustersResponse o) {
  buildCounterListCloudVmClustersResponse++;
  if (buildCounterListCloudVmClustersResponse < 3) {
    checkUnnamed57(o.cloudVmClusters!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed58(o.unreachable!);
  }
  buildCounterListCloudVmClustersResponse--;
}

core.List<api.DatabaseCharacterSet> buildUnnamed59() => [
  buildDatabaseCharacterSet(),
  buildDatabaseCharacterSet(),
];

void checkUnnamed59(core.List<api.DatabaseCharacterSet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatabaseCharacterSet(o[0]);
  checkDatabaseCharacterSet(o[1]);
}

core.int buildCounterListDatabaseCharacterSetsResponse = 0;
api.ListDatabaseCharacterSetsResponse buildListDatabaseCharacterSetsResponse() {
  final o = api.ListDatabaseCharacterSetsResponse();
  buildCounterListDatabaseCharacterSetsResponse++;
  if (buildCounterListDatabaseCharacterSetsResponse < 3) {
    o.databaseCharacterSets = buildUnnamed59();
    o.nextPageToken = 'foo';
  }
  buildCounterListDatabaseCharacterSetsResponse--;
  return o;
}

void checkListDatabaseCharacterSetsResponse(
  api.ListDatabaseCharacterSetsResponse o,
) {
  buildCounterListDatabaseCharacterSetsResponse++;
  if (buildCounterListDatabaseCharacterSetsResponse < 3) {
    checkUnnamed59(o.databaseCharacterSets!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListDatabaseCharacterSetsResponse--;
}

core.List<api.Database> buildUnnamed60() => [buildDatabase(), buildDatabase()];

void checkUnnamed60(core.List<api.Database> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatabase(o[0]);
  checkDatabase(o[1]);
}

core.int buildCounterListDatabasesResponse = 0;
api.ListDatabasesResponse buildListDatabasesResponse() {
  final o = api.ListDatabasesResponse();
  buildCounterListDatabasesResponse++;
  if (buildCounterListDatabasesResponse < 3) {
    o.databases = buildUnnamed60();
    o.nextPageToken = 'foo';
  }
  buildCounterListDatabasesResponse--;
  return o;
}

void checkListDatabasesResponse(api.ListDatabasesResponse o) {
  buildCounterListDatabasesResponse++;
  if (buildCounterListDatabasesResponse < 3) {
    checkUnnamed60(o.databases!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListDatabasesResponse--;
}

core.List<api.DbNode> buildUnnamed61() => [buildDbNode(), buildDbNode()];

void checkUnnamed61(core.List<api.DbNode> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDbNode(o[0]);
  checkDbNode(o[1]);
}

core.int buildCounterListDbNodesResponse = 0;
api.ListDbNodesResponse buildListDbNodesResponse() {
  final o = api.ListDbNodesResponse();
  buildCounterListDbNodesResponse++;
  if (buildCounterListDbNodesResponse < 3) {
    o.dbNodes = buildUnnamed61();
    o.nextPageToken = 'foo';
  }
  buildCounterListDbNodesResponse--;
  return o;
}

void checkListDbNodesResponse(api.ListDbNodesResponse o) {
  buildCounterListDbNodesResponse++;
  if (buildCounterListDbNodesResponse < 3) {
    checkUnnamed61(o.dbNodes!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListDbNodesResponse--;
}

core.List<api.DbServer> buildUnnamed62() => [buildDbServer(), buildDbServer()];

void checkUnnamed62(core.List<api.DbServer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDbServer(o[0]);
  checkDbServer(o[1]);
}

core.int buildCounterListDbServersResponse = 0;
api.ListDbServersResponse buildListDbServersResponse() {
  final o = api.ListDbServersResponse();
  buildCounterListDbServersResponse++;
  if (buildCounterListDbServersResponse < 3) {
    o.dbServers = buildUnnamed62();
    o.nextPageToken = 'foo';
  }
  buildCounterListDbServersResponse--;
  return o;
}

void checkListDbServersResponse(api.ListDbServersResponse o) {
  buildCounterListDbServersResponse++;
  if (buildCounterListDbServersResponse < 3) {
    checkUnnamed62(o.dbServers!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListDbServersResponse--;
}

core.List<api.DbSystemInitialStorageSize> buildUnnamed63() => [
  buildDbSystemInitialStorageSize(),
  buildDbSystemInitialStorageSize(),
];

void checkUnnamed63(core.List<api.DbSystemInitialStorageSize> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDbSystemInitialStorageSize(o[0]);
  checkDbSystemInitialStorageSize(o[1]);
}

core.int buildCounterListDbSystemInitialStorageSizesResponse = 0;
api.ListDbSystemInitialStorageSizesResponse
buildListDbSystemInitialStorageSizesResponse() {
  final o = api.ListDbSystemInitialStorageSizesResponse();
  buildCounterListDbSystemInitialStorageSizesResponse++;
  if (buildCounterListDbSystemInitialStorageSizesResponse < 3) {
    o.dbSystemInitialStorageSizes = buildUnnamed63();
    o.nextPageToken = 'foo';
  }
  buildCounterListDbSystemInitialStorageSizesResponse--;
  return o;
}

void checkListDbSystemInitialStorageSizesResponse(
  api.ListDbSystemInitialStorageSizesResponse o,
) {
  buildCounterListDbSystemInitialStorageSizesResponse++;
  if (buildCounterListDbSystemInitialStorageSizesResponse < 3) {
    checkUnnamed63(o.dbSystemInitialStorageSizes!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListDbSystemInitialStorageSizesResponse--;
}

core.List<api.DbSystemShape> buildUnnamed64() => [
  buildDbSystemShape(),
  buildDbSystemShape(),
];

void checkUnnamed64(core.List<api.DbSystemShape> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDbSystemShape(o[0]);
  checkDbSystemShape(o[1]);
}

core.int buildCounterListDbSystemShapesResponse = 0;
api.ListDbSystemShapesResponse buildListDbSystemShapesResponse() {
  final o = api.ListDbSystemShapesResponse();
  buildCounterListDbSystemShapesResponse++;
  if (buildCounterListDbSystemShapesResponse < 3) {
    o.dbSystemShapes = buildUnnamed64();
    o.nextPageToken = 'foo';
  }
  buildCounterListDbSystemShapesResponse--;
  return o;
}

void checkListDbSystemShapesResponse(api.ListDbSystemShapesResponse o) {
  buildCounterListDbSystemShapesResponse++;
  if (buildCounterListDbSystemShapesResponse < 3) {
    checkUnnamed64(o.dbSystemShapes!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListDbSystemShapesResponse--;
}

core.List<api.DbSystem> buildUnnamed65() => [buildDbSystem(), buildDbSystem()];

void checkUnnamed65(core.List<api.DbSystem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDbSystem(o[0]);
  checkDbSystem(o[1]);
}

core.List<core.String> buildUnnamed66() => ['foo', 'foo'];

void checkUnnamed66(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListDbSystemsResponse = 0;
api.ListDbSystemsResponse buildListDbSystemsResponse() {
  final o = api.ListDbSystemsResponse();
  buildCounterListDbSystemsResponse++;
  if (buildCounterListDbSystemsResponse < 3) {
    o.dbSystems = buildUnnamed65();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed66();
  }
  buildCounterListDbSystemsResponse--;
  return o;
}

void checkListDbSystemsResponse(api.ListDbSystemsResponse o) {
  buildCounterListDbSystemsResponse++;
  if (buildCounterListDbSystemsResponse < 3) {
    checkUnnamed65(o.dbSystems!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed66(o.unreachable!);
  }
  buildCounterListDbSystemsResponse--;
}

core.List<api.DbVersion> buildUnnamed67() => [
  buildDbVersion(),
  buildDbVersion(),
];

void checkUnnamed67(core.List<api.DbVersion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDbVersion(o[0]);
  checkDbVersion(o[1]);
}

core.int buildCounterListDbVersionsResponse = 0;
api.ListDbVersionsResponse buildListDbVersionsResponse() {
  final o = api.ListDbVersionsResponse();
  buildCounterListDbVersionsResponse++;
  if (buildCounterListDbVersionsResponse < 3) {
    o.dbVersions = buildUnnamed67();
    o.nextPageToken = 'foo';
  }
  buildCounterListDbVersionsResponse--;
  return o;
}

void checkListDbVersionsResponse(api.ListDbVersionsResponse o) {
  buildCounterListDbVersionsResponse++;
  if (buildCounterListDbVersionsResponse < 3) {
    checkUnnamed67(o.dbVersions!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListDbVersionsResponse--;
}

core.List<api.Entitlement> buildUnnamed68() => [
  buildEntitlement(),
  buildEntitlement(),
];

void checkUnnamed68(core.List<api.Entitlement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEntitlement(o[0]);
  checkEntitlement(o[1]);
}

core.int buildCounterListEntitlementsResponse = 0;
api.ListEntitlementsResponse buildListEntitlementsResponse() {
  final o = api.ListEntitlementsResponse();
  buildCounterListEntitlementsResponse++;
  if (buildCounterListEntitlementsResponse < 3) {
    o.entitlements = buildUnnamed68();
    o.nextPageToken = 'foo';
  }
  buildCounterListEntitlementsResponse--;
  return o;
}

void checkListEntitlementsResponse(api.ListEntitlementsResponse o) {
  buildCounterListEntitlementsResponse++;
  if (buildCounterListEntitlementsResponse < 3) {
    checkUnnamed68(o.entitlements!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListEntitlementsResponse--;
}

core.List<api.ExadbVmCluster> buildUnnamed69() => [
  buildExadbVmCluster(),
  buildExadbVmCluster(),
];

void checkUnnamed69(core.List<api.ExadbVmCluster> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExadbVmCluster(o[0]);
  checkExadbVmCluster(o[1]);
}

core.List<core.String> buildUnnamed70() => ['foo', 'foo'];

void checkUnnamed70(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListExadbVmClustersResponse = 0;
api.ListExadbVmClustersResponse buildListExadbVmClustersResponse() {
  final o = api.ListExadbVmClustersResponse();
  buildCounterListExadbVmClustersResponse++;
  if (buildCounterListExadbVmClustersResponse < 3) {
    o.exadbVmClusters = buildUnnamed69();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed70();
  }
  buildCounterListExadbVmClustersResponse--;
  return o;
}

void checkListExadbVmClustersResponse(api.ListExadbVmClustersResponse o) {
  buildCounterListExadbVmClustersResponse++;
  if (buildCounterListExadbVmClustersResponse < 3) {
    checkUnnamed69(o.exadbVmClusters!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed70(o.unreachable!);
  }
  buildCounterListExadbVmClustersResponse--;
}

core.List<api.ExascaleDbStorageVault> buildUnnamed71() => [
  buildExascaleDbStorageVault(),
  buildExascaleDbStorageVault(),
];

void checkUnnamed71(core.List<api.ExascaleDbStorageVault> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExascaleDbStorageVault(o[0]);
  checkExascaleDbStorageVault(o[1]);
}

core.List<core.String> buildUnnamed72() => ['foo', 'foo'];

void checkUnnamed72(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListExascaleDbStorageVaultsResponse = 0;
api.ListExascaleDbStorageVaultsResponse
buildListExascaleDbStorageVaultsResponse() {
  final o = api.ListExascaleDbStorageVaultsResponse();
  buildCounterListExascaleDbStorageVaultsResponse++;
  if (buildCounterListExascaleDbStorageVaultsResponse < 3) {
    o.exascaleDbStorageVaults = buildUnnamed71();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed72();
  }
  buildCounterListExascaleDbStorageVaultsResponse--;
  return o;
}

void checkListExascaleDbStorageVaultsResponse(
  api.ListExascaleDbStorageVaultsResponse o,
) {
  buildCounterListExascaleDbStorageVaultsResponse++;
  if (buildCounterListExascaleDbStorageVaultsResponse < 3) {
    checkUnnamed71(o.exascaleDbStorageVaults!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed72(o.unreachable!);
  }
  buildCounterListExascaleDbStorageVaultsResponse--;
}

core.List<api.GiVersion> buildUnnamed73() => [
  buildGiVersion(),
  buildGiVersion(),
];

void checkUnnamed73(core.List<api.GiVersion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGiVersion(o[0]);
  checkGiVersion(o[1]);
}

core.int buildCounterListGiVersionsResponse = 0;
api.ListGiVersionsResponse buildListGiVersionsResponse() {
  final o = api.ListGiVersionsResponse();
  buildCounterListGiVersionsResponse++;
  if (buildCounterListGiVersionsResponse < 3) {
    o.giVersions = buildUnnamed73();
    o.nextPageToken = 'foo';
  }
  buildCounterListGiVersionsResponse--;
  return o;
}

void checkListGiVersionsResponse(api.ListGiVersionsResponse o) {
  buildCounterListGiVersionsResponse++;
  if (buildCounterListGiVersionsResponse < 3) {
    checkUnnamed73(o.giVersions!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListGiVersionsResponse--;
}

core.List<api.GoldengateConnectionAssignment> buildUnnamed74() => [
  buildGoldengateConnectionAssignment(),
  buildGoldengateConnectionAssignment(),
];

void checkUnnamed74(core.List<api.GoldengateConnectionAssignment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoldengateConnectionAssignment(o[0]);
  checkGoldengateConnectionAssignment(o[1]);
}

core.List<core.String> buildUnnamed75() => ['foo', 'foo'];

void checkUnnamed75(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListGoldengateConnectionAssignmentsResponse = 0;
api.ListGoldengateConnectionAssignmentsResponse
buildListGoldengateConnectionAssignmentsResponse() {
  final o = api.ListGoldengateConnectionAssignmentsResponse();
  buildCounterListGoldengateConnectionAssignmentsResponse++;
  if (buildCounterListGoldengateConnectionAssignmentsResponse < 3) {
    o.goldengateConnectionAssignments = buildUnnamed74();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed75();
  }
  buildCounterListGoldengateConnectionAssignmentsResponse--;
  return o;
}

void checkListGoldengateConnectionAssignmentsResponse(
  api.ListGoldengateConnectionAssignmentsResponse o,
) {
  buildCounterListGoldengateConnectionAssignmentsResponse++;
  if (buildCounterListGoldengateConnectionAssignmentsResponse < 3) {
    checkUnnamed74(o.goldengateConnectionAssignments!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed75(o.unreachable!);
  }
  buildCounterListGoldengateConnectionAssignmentsResponse--;
}

core.List<api.GoldengateConnectionType> buildUnnamed76() => [
  buildGoldengateConnectionType(),
  buildGoldengateConnectionType(),
];

void checkUnnamed76(core.List<api.GoldengateConnectionType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoldengateConnectionType(o[0]);
  checkGoldengateConnectionType(o[1]);
}

core.List<core.String> buildUnnamed77() => ['foo', 'foo'];

void checkUnnamed77(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListGoldengateConnectionTypesResponse = 0;
api.ListGoldengateConnectionTypesResponse
buildListGoldengateConnectionTypesResponse() {
  final o = api.ListGoldengateConnectionTypesResponse();
  buildCounterListGoldengateConnectionTypesResponse++;
  if (buildCounterListGoldengateConnectionTypesResponse < 3) {
    o.goldengateConnectionTypes = buildUnnamed76();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed77();
  }
  buildCounterListGoldengateConnectionTypesResponse--;
  return o;
}

void checkListGoldengateConnectionTypesResponse(
  api.ListGoldengateConnectionTypesResponse o,
) {
  buildCounterListGoldengateConnectionTypesResponse++;
  if (buildCounterListGoldengateConnectionTypesResponse < 3) {
    checkUnnamed76(o.goldengateConnectionTypes!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed77(o.unreachable!);
  }
  buildCounterListGoldengateConnectionTypesResponse--;
}

core.List<api.GoldengateConnection> buildUnnamed78() => [
  buildGoldengateConnection(),
  buildGoldengateConnection(),
];

void checkUnnamed78(core.List<api.GoldengateConnection> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoldengateConnection(o[0]);
  checkGoldengateConnection(o[1]);
}

core.List<core.String> buildUnnamed79() => ['foo', 'foo'];

void checkUnnamed79(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListGoldengateConnectionsResponse = 0;
api.ListGoldengateConnectionsResponse buildListGoldengateConnectionsResponse() {
  final o = api.ListGoldengateConnectionsResponse();
  buildCounterListGoldengateConnectionsResponse++;
  if (buildCounterListGoldengateConnectionsResponse < 3) {
    o.goldengateConnections = buildUnnamed78();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed79();
  }
  buildCounterListGoldengateConnectionsResponse--;
  return o;
}

void checkListGoldengateConnectionsResponse(
  api.ListGoldengateConnectionsResponse o,
) {
  buildCounterListGoldengateConnectionsResponse++;
  if (buildCounterListGoldengateConnectionsResponse < 3) {
    checkUnnamed78(o.goldengateConnections!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed79(o.unreachable!);
  }
  buildCounterListGoldengateConnectionsResponse--;
}

core.List<api.GoldengateDeploymentEnvironment> buildUnnamed80() => [
  buildGoldengateDeploymentEnvironment(),
  buildGoldengateDeploymentEnvironment(),
];

void checkUnnamed80(core.List<api.GoldengateDeploymentEnvironment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoldengateDeploymentEnvironment(o[0]);
  checkGoldengateDeploymentEnvironment(o[1]);
}

core.List<core.String> buildUnnamed81() => ['foo', 'foo'];

void checkUnnamed81(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListGoldengateDeploymentEnvironmentsResponse = 0;
api.ListGoldengateDeploymentEnvironmentsResponse
buildListGoldengateDeploymentEnvironmentsResponse() {
  final o = api.ListGoldengateDeploymentEnvironmentsResponse();
  buildCounterListGoldengateDeploymentEnvironmentsResponse++;
  if (buildCounterListGoldengateDeploymentEnvironmentsResponse < 3) {
    o.goldengateDeploymentEnvironments = buildUnnamed80();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed81();
  }
  buildCounterListGoldengateDeploymentEnvironmentsResponse--;
  return o;
}

void checkListGoldengateDeploymentEnvironmentsResponse(
  api.ListGoldengateDeploymentEnvironmentsResponse o,
) {
  buildCounterListGoldengateDeploymentEnvironmentsResponse++;
  if (buildCounterListGoldengateDeploymentEnvironmentsResponse < 3) {
    checkUnnamed80(o.goldengateDeploymentEnvironments!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed81(o.unreachable!);
  }
  buildCounterListGoldengateDeploymentEnvironmentsResponse--;
}

core.List<api.GoldengateDeploymentType> buildUnnamed82() => [
  buildGoldengateDeploymentType(),
  buildGoldengateDeploymentType(),
];

void checkUnnamed82(core.List<api.GoldengateDeploymentType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoldengateDeploymentType(o[0]);
  checkGoldengateDeploymentType(o[1]);
}

core.List<core.String> buildUnnamed83() => ['foo', 'foo'];

void checkUnnamed83(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListGoldengateDeploymentTypesResponse = 0;
api.ListGoldengateDeploymentTypesResponse
buildListGoldengateDeploymentTypesResponse() {
  final o = api.ListGoldengateDeploymentTypesResponse();
  buildCounterListGoldengateDeploymentTypesResponse++;
  if (buildCounterListGoldengateDeploymentTypesResponse < 3) {
    o.goldengateDeploymentTypes = buildUnnamed82();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed83();
  }
  buildCounterListGoldengateDeploymentTypesResponse--;
  return o;
}

void checkListGoldengateDeploymentTypesResponse(
  api.ListGoldengateDeploymentTypesResponse o,
) {
  buildCounterListGoldengateDeploymentTypesResponse++;
  if (buildCounterListGoldengateDeploymentTypesResponse < 3) {
    checkUnnamed82(o.goldengateDeploymentTypes!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed83(o.unreachable!);
  }
  buildCounterListGoldengateDeploymentTypesResponse--;
}

core.List<api.GoldengateDeploymentVersion> buildUnnamed84() => [
  buildGoldengateDeploymentVersion(),
  buildGoldengateDeploymentVersion(),
];

void checkUnnamed84(core.List<api.GoldengateDeploymentVersion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoldengateDeploymentVersion(o[0]);
  checkGoldengateDeploymentVersion(o[1]);
}

core.List<core.String> buildUnnamed85() => ['foo', 'foo'];

void checkUnnamed85(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListGoldengateDeploymentVersionsResponse = 0;
api.ListGoldengateDeploymentVersionsResponse
buildListGoldengateDeploymentVersionsResponse() {
  final o = api.ListGoldengateDeploymentVersionsResponse();
  buildCounterListGoldengateDeploymentVersionsResponse++;
  if (buildCounterListGoldengateDeploymentVersionsResponse < 3) {
    o.goldengateDeploymentVersions = buildUnnamed84();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed85();
  }
  buildCounterListGoldengateDeploymentVersionsResponse--;
  return o;
}

void checkListGoldengateDeploymentVersionsResponse(
  api.ListGoldengateDeploymentVersionsResponse o,
) {
  buildCounterListGoldengateDeploymentVersionsResponse++;
  if (buildCounterListGoldengateDeploymentVersionsResponse < 3) {
    checkUnnamed84(o.goldengateDeploymentVersions!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed85(o.unreachable!);
  }
  buildCounterListGoldengateDeploymentVersionsResponse--;
}

core.List<api.GoldengateDeployment> buildUnnamed86() => [
  buildGoldengateDeployment(),
  buildGoldengateDeployment(),
];

void checkUnnamed86(core.List<api.GoldengateDeployment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoldengateDeployment(o[0]);
  checkGoldengateDeployment(o[1]);
}

core.List<core.String> buildUnnamed87() => ['foo', 'foo'];

void checkUnnamed87(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListGoldengateDeploymentsResponse = 0;
api.ListGoldengateDeploymentsResponse buildListGoldengateDeploymentsResponse() {
  final o = api.ListGoldengateDeploymentsResponse();
  buildCounterListGoldengateDeploymentsResponse++;
  if (buildCounterListGoldengateDeploymentsResponse < 3) {
    o.goldengateDeployments = buildUnnamed86();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed87();
  }
  buildCounterListGoldengateDeploymentsResponse--;
  return o;
}

void checkListGoldengateDeploymentsResponse(
  api.ListGoldengateDeploymentsResponse o,
) {
  buildCounterListGoldengateDeploymentsResponse++;
  if (buildCounterListGoldengateDeploymentsResponse < 3) {
    checkUnnamed86(o.goldengateDeployments!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed87(o.unreachable!);
  }
  buildCounterListGoldengateDeploymentsResponse--;
}

core.List<api.Location> buildUnnamed88() => [buildLocation(), buildLocation()];

void checkUnnamed88(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  final o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed88();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed88(o.locations!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListLocationsResponse--;
}

core.List<api.MinorVersion> buildUnnamed89() => [
  buildMinorVersion(),
  buildMinorVersion(),
];

void checkUnnamed89(core.List<api.MinorVersion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMinorVersion(o[0]);
  checkMinorVersion(o[1]);
}

core.int buildCounterListMinorVersionsResponse = 0;
api.ListMinorVersionsResponse buildListMinorVersionsResponse() {
  final o = api.ListMinorVersionsResponse();
  buildCounterListMinorVersionsResponse++;
  if (buildCounterListMinorVersionsResponse < 3) {
    o.minorVersions = buildUnnamed89();
    o.nextPageToken = 'foo';
  }
  buildCounterListMinorVersionsResponse--;
  return o;
}

void checkListMinorVersionsResponse(api.ListMinorVersionsResponse o) {
  buildCounterListMinorVersionsResponse++;
  if (buildCounterListMinorVersionsResponse < 3) {
    checkUnnamed89(o.minorVersions!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListMinorVersionsResponse--;
}

core.List<api.OdbNetwork> buildUnnamed90() => [
  buildOdbNetwork(),
  buildOdbNetwork(),
];

void checkUnnamed90(core.List<api.OdbNetwork> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOdbNetwork(o[0]);
  checkOdbNetwork(o[1]);
}

core.List<core.String> buildUnnamed91() => ['foo', 'foo'];

void checkUnnamed91(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListOdbNetworksResponse = 0;
api.ListOdbNetworksResponse buildListOdbNetworksResponse() {
  final o = api.ListOdbNetworksResponse();
  buildCounterListOdbNetworksResponse++;
  if (buildCounterListOdbNetworksResponse < 3) {
    o.nextPageToken = 'foo';
    o.odbNetworks = buildUnnamed90();
    o.unreachable = buildUnnamed91();
  }
  buildCounterListOdbNetworksResponse--;
  return o;
}

void checkListOdbNetworksResponse(api.ListOdbNetworksResponse o) {
  buildCounterListOdbNetworksResponse++;
  if (buildCounterListOdbNetworksResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed90(o.odbNetworks!);
    checkUnnamed91(o.unreachable!);
  }
  buildCounterListOdbNetworksResponse--;
}

core.List<api.OdbSubnet> buildUnnamed92() => [
  buildOdbSubnet(),
  buildOdbSubnet(),
];

void checkUnnamed92(core.List<api.OdbSubnet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOdbSubnet(o[0]);
  checkOdbSubnet(o[1]);
}

core.List<core.String> buildUnnamed93() => ['foo', 'foo'];

void checkUnnamed93(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListOdbSubnetsResponse = 0;
api.ListOdbSubnetsResponse buildListOdbSubnetsResponse() {
  final o = api.ListOdbSubnetsResponse();
  buildCounterListOdbSubnetsResponse++;
  if (buildCounterListOdbSubnetsResponse < 3) {
    o.nextPageToken = 'foo';
    o.odbSubnets = buildUnnamed92();
    o.unreachable = buildUnnamed93();
  }
  buildCounterListOdbSubnetsResponse--;
  return o;
}

void checkListOdbSubnetsResponse(api.ListOdbSubnetsResponse o) {
  buildCounterListOdbSubnetsResponse++;
  if (buildCounterListOdbSubnetsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed92(o.odbSubnets!);
    checkUnnamed93(o.unreachable!);
  }
  buildCounterListOdbSubnetsResponse--;
}

core.List<api.Operation> buildUnnamed94() => [
  buildOperation(),
  buildOperation(),
];

void checkUnnamed94(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0]);
  checkOperation(o[1]);
}

core.List<core.String> buildUnnamed95() => ['foo', 'foo'];

void checkUnnamed95(core.List<core.String> o) {
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
    o.operations = buildUnnamed94();
    o.unreachable = buildUnnamed95();
  }
  buildCounterListOperationsResponse--;
  return o;
}

void checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed94(o.operations!);
    checkUnnamed95(o.unreachable!);
  }
  buildCounterListOperationsResponse--;
}

core.List<api.PluggableDatabase> buildUnnamed96() => [
  buildPluggableDatabase(),
  buildPluggableDatabase(),
];

void checkUnnamed96(core.List<api.PluggableDatabase> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPluggableDatabase(o[0]);
  checkPluggableDatabase(o[1]);
}

core.int buildCounterListPluggableDatabasesResponse = 0;
api.ListPluggableDatabasesResponse buildListPluggableDatabasesResponse() {
  final o = api.ListPluggableDatabasesResponse();
  buildCounterListPluggableDatabasesResponse++;
  if (buildCounterListPluggableDatabasesResponse < 3) {
    o.nextPageToken = 'foo';
    o.pluggableDatabases = buildUnnamed96();
  }
  buildCounterListPluggableDatabasesResponse--;
  return o;
}

void checkListPluggableDatabasesResponse(api.ListPluggableDatabasesResponse o) {
  buildCounterListPluggableDatabasesResponse++;
  if (buildCounterListPluggableDatabasesResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed96(o.pluggableDatabases!);
  }
  buildCounterListPluggableDatabasesResponse--;
}

core.Map<core.String, core.String> buildUnnamed97() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed97(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.Object?> buildUnnamed98() => {
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

void checkUnnamed98(core.Map<core.String, core.Object?> o) {
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
    o.labels = buildUnnamed97();
    o.locationId = 'foo';
    o.metadata = buildUnnamed98();
    o.name = 'foo';
  }
  buildCounterLocation--;
  return o;
}

void checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkUnnamed97(o.labels!);
    unittest.expect(o.locationId!, unittest.equals('foo'));
    checkUnnamed98(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterLocation--;
}

core.List<core.String> buildUnnamed99() => ['foo', 'foo'];

void checkUnnamed99(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.int> buildUnnamed100() => [42, 42];

void checkUnnamed100(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.List<core.String> buildUnnamed101() => ['foo', 'foo'];

void checkUnnamed101(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.int> buildUnnamed102() => [42, 42];

void checkUnnamed102(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.int buildCounterMaintenanceWindow = 0;
api.MaintenanceWindow buildMaintenanceWindow() {
  final o = api.MaintenanceWindow();
  buildCounterMaintenanceWindow++;
  if (buildCounterMaintenanceWindow < 3) {
    o.customActionTimeoutMins = 42;
    o.daysOfWeek = buildUnnamed99();
    o.hoursOfDay = buildUnnamed100();
    o.isCustomActionTimeoutEnabled = true;
    o.leadTimeWeek = 42;
    o.months = buildUnnamed101();
    o.patchingMode = 'foo';
    o.preference = 'foo';
    o.weeksOfMonth = buildUnnamed102();
  }
  buildCounterMaintenanceWindow--;
  return o;
}

void checkMaintenanceWindow(api.MaintenanceWindow o) {
  buildCounterMaintenanceWindow++;
  if (buildCounterMaintenanceWindow < 3) {
    unittest.expect(o.customActionTimeoutMins!, unittest.equals(42));
    checkUnnamed99(o.daysOfWeek!);
    checkUnnamed100(o.hoursOfDay!);
    unittest.expect(o.isCustomActionTimeoutEnabled!, unittest.isTrue);
    unittest.expect(o.leadTimeWeek!, unittest.equals(42));
    checkUnnamed101(o.months!);
    unittest.expect(o.patchingMode!, unittest.equals('foo'));
    unittest.expect(o.preference!, unittest.equals('foo'));
    checkUnnamed102(o.weeksOfMonth!);
  }
  buildCounterMaintenanceWindow--;
}

core.int buildCounterMinorVersion = 0;
api.MinorVersion buildMinorVersion() {
  final o = api.MinorVersion();
  buildCounterMinorVersion++;
  if (buildCounterMinorVersion < 3) {
    o.gridImageId = 'foo';
    o.name = 'foo';
    o.version = 'foo';
  }
  buildCounterMinorVersion--;
  return o;
}

void checkMinorVersion(api.MinorVersion o) {
  buildCounterMinorVersion++;
  if (buildCounterMinorVersion < 3) {
    unittest.expect(o.gridImageId!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals('foo'));
  }
  buildCounterMinorVersion--;
}

core.int buildCounterNameValuePair = 0;
api.NameValuePair buildNameValuePair() {
  final o = api.NameValuePair();
  buildCounterNameValuePair++;
  if (buildCounterNameValuePair < 3) {
    o.key = 'foo';
    o.value = 'foo';
  }
  buildCounterNameValuePair--;
  return o;
}

void checkNameValuePair(api.NameValuePair o) {
  buildCounterNameValuePair++;
  if (buildCounterNameValuePair < 3) {
    unittest.expect(o.key!, unittest.equals('foo'));
    unittest.expect(o.value!, unittest.equals('foo'));
  }
  buildCounterNameValuePair--;
}

core.int buildCounterNessieIcebergCatalog = 0;
api.NessieIcebergCatalog buildNessieIcebergCatalog() {
  final o = api.NessieIcebergCatalog();
  buildCounterNessieIcebergCatalog++;
  if (buildCounterNessieIcebergCatalog < 3) {
    o.branch = 'foo';
    o.uri = 'foo';
  }
  buildCounterNessieIcebergCatalog--;
  return o;
}

void checkNessieIcebergCatalog(api.NessieIcebergCatalog o) {
  buildCounterNessieIcebergCatalog++;
  if (buildCounterNessieIcebergCatalog < 3) {
    unittest.expect(o.branch!, unittest.equals('foo'));
    unittest.expect(o.uri!, unittest.equals('foo'));
  }
  buildCounterNessieIcebergCatalog--;
}

core.Map<core.String, core.String> buildUnnamed103() => {
  'x': 'foo',
  'y': 'foo',
};

void checkUnnamed103(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterOdbNetwork = 0;
api.OdbNetwork buildOdbNetwork() {
  final o = api.OdbNetwork();
  buildCounterOdbNetwork++;
  if (buildCounterOdbNetwork < 3) {
    o.createTime = 'foo';
    o.entitlementId = 'foo';
    o.gcpOracleZone = 'foo';
    o.labels = buildUnnamed103();
    o.name = 'foo';
    o.network = 'foo';
    o.state = 'foo';
  }
  buildCounterOdbNetwork--;
  return o;
}

void checkOdbNetwork(api.OdbNetwork o) {
  buildCounterOdbNetwork++;
  if (buildCounterOdbNetwork < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.entitlementId!, unittest.equals('foo'));
    unittest.expect(o.gcpOracleZone!, unittest.equals('foo'));
    checkUnnamed103(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.network!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
  }
  buildCounterOdbNetwork--;
}

core.Map<core.String, core.String> buildUnnamed104() => {
  'x': 'foo',
  'y': 'foo',
};

void checkUnnamed104(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterOdbSubnet = 0;
api.OdbSubnet buildOdbSubnet() {
  final o = api.OdbSubnet();
  buildCounterOdbSubnet++;
  if (buildCounterOdbSubnet < 3) {
    o.cidrRange = 'foo';
    o.createTime = 'foo';
    o.labels = buildUnnamed104();
    o.name = 'foo';
    o.purpose = 'foo';
    o.state = 'foo';
  }
  buildCounterOdbSubnet--;
  return o;
}

void checkOdbSubnet(api.OdbSubnet o) {
  buildCounterOdbSubnet++;
  if (buildCounterOdbSubnet < 3) {
    unittest.expect(o.cidrRange!, unittest.equals('foo'));
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkUnnamed104(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.purpose!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
  }
  buildCounterOdbSubnet--;
}

core.Map<core.String, core.Object?> buildUnnamed105() => {
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

void checkUnnamed105(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed106() => {
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

void checkUnnamed106(core.Map<core.String, core.Object?> o) {
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
    o.metadata = buildUnnamed105();
    o.name = 'foo';
    o.response = buildUnnamed106();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed105(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed106(o.response!);
  }
  buildCounterOperation--;
}

core.int buildCounterPluggableDatabase = 0;
api.PluggableDatabase buildPluggableDatabase() {
  final o = api.PluggableDatabase();
  buildCounterPluggableDatabase++;
  if (buildCounterPluggableDatabase < 3) {
    o.createTime = 'foo';
    o.name = 'foo';
    o.ociUrl = 'foo';
    o.properties = buildPluggableDatabaseProperties();
  }
  buildCounterPluggableDatabase--;
  return o;
}

void checkPluggableDatabase(api.PluggableDatabase o) {
  buildCounterPluggableDatabase++;
  if (buildCounterPluggableDatabase < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.ociUrl!, unittest.equals('foo'));
    checkPluggableDatabaseProperties(o.properties!);
  }
  buildCounterPluggableDatabase--;
}

core.Map<core.String, core.String> buildUnnamed107() => {
  'x': 'foo',
  'y': 'foo',
};

void checkUnnamed107(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterPluggableDatabaseConnectionStrings = 0;
api.PluggableDatabaseConnectionStrings
buildPluggableDatabaseConnectionStrings() {
  final o = api.PluggableDatabaseConnectionStrings();
  buildCounterPluggableDatabaseConnectionStrings++;
  if (buildCounterPluggableDatabaseConnectionStrings < 3) {
    o.allConnectionStrings = buildUnnamed107();
    o.pdbDefault = 'foo';
    o.pdbIpDefault = 'foo';
  }
  buildCounterPluggableDatabaseConnectionStrings--;
  return o;
}

void checkPluggableDatabaseConnectionStrings(
  api.PluggableDatabaseConnectionStrings o,
) {
  buildCounterPluggableDatabaseConnectionStrings++;
  if (buildCounterPluggableDatabaseConnectionStrings < 3) {
    checkUnnamed107(o.allConnectionStrings!);
    unittest.expect(o.pdbDefault!, unittest.equals('foo'));
    unittest.expect(o.pdbIpDefault!, unittest.equals('foo'));
  }
  buildCounterPluggableDatabaseConnectionStrings--;
}

core.int buildCounterPluggableDatabaseNodeLevelDetails = 0;
api.PluggableDatabaseNodeLevelDetails buildPluggableDatabaseNodeLevelDetails() {
  final o = api.PluggableDatabaseNodeLevelDetails();
  buildCounterPluggableDatabaseNodeLevelDetails++;
  if (buildCounterPluggableDatabaseNodeLevelDetails < 3) {
    o.nodeName = 'foo';
    o.openMode = 'foo';
    o.pluggableDatabaseId = 'foo';
  }
  buildCounterPluggableDatabaseNodeLevelDetails--;
  return o;
}

void checkPluggableDatabaseNodeLevelDetails(
  api.PluggableDatabaseNodeLevelDetails o,
) {
  buildCounterPluggableDatabaseNodeLevelDetails++;
  if (buildCounterPluggableDatabaseNodeLevelDetails < 3) {
    unittest.expect(o.nodeName!, unittest.equals('foo'));
    unittest.expect(o.openMode!, unittest.equals('foo'));
    unittest.expect(o.pluggableDatabaseId!, unittest.equals('foo'));
  }
  buildCounterPluggableDatabaseNodeLevelDetails--;
}

core.Map<core.String, api.DefinedTagValue> buildUnnamed108() => {
  'x': buildDefinedTagValue(),
  'y': buildDefinedTagValue(),
};

void checkUnnamed108(core.Map<core.String, api.DefinedTagValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDefinedTagValue(o['x']!);
  checkDefinedTagValue(o['y']!);
}

core.Map<core.String, core.String> buildUnnamed109() => {
  'x': 'foo',
  'y': 'foo',
};

void checkUnnamed109(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<api.PluggableDatabaseNodeLevelDetails> buildUnnamed110() => [
  buildPluggableDatabaseNodeLevelDetails(),
  buildPluggableDatabaseNodeLevelDetails(),
];

void checkUnnamed110(core.List<api.PluggableDatabaseNodeLevelDetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPluggableDatabaseNodeLevelDetails(o[0]);
  checkPluggableDatabaseNodeLevelDetails(o[1]);
}

core.int buildCounterPluggableDatabaseProperties = 0;
api.PluggableDatabaseProperties buildPluggableDatabaseProperties() {
  final o = api.PluggableDatabaseProperties();
  buildCounterPluggableDatabaseProperties++;
  if (buildCounterPluggableDatabaseProperties < 3) {
    o.compartmentId = 'foo';
    o.connectionStrings = buildPluggableDatabaseConnectionStrings();
    o.containerDatabaseOcid = 'foo';
    o.databaseManagementConfig = buildDatabaseManagementConfig();
    o.definedTags = buildUnnamed108();
    o.freeformTags = buildUnnamed109();
    o.isRestricted = true;
    o.lifecycleDetails = 'foo';
    o.lifecycleState = 'foo';
    o.ocid = 'foo';
    o.operationsInsightsState = 'foo';
    o.pdbName = 'foo';
    o.pdbNodeLevelDetails = buildUnnamed110();
  }
  buildCounterPluggableDatabaseProperties--;
  return o;
}

void checkPluggableDatabaseProperties(api.PluggableDatabaseProperties o) {
  buildCounterPluggableDatabaseProperties++;
  if (buildCounterPluggableDatabaseProperties < 3) {
    unittest.expect(o.compartmentId!, unittest.equals('foo'));
    checkPluggableDatabaseConnectionStrings(o.connectionStrings!);
    unittest.expect(o.containerDatabaseOcid!, unittest.equals('foo'));
    checkDatabaseManagementConfig(o.databaseManagementConfig!);
    checkUnnamed108(o.definedTags!);
    checkUnnamed109(o.freeformTags!);
    unittest.expect(o.isRestricted!, unittest.isTrue);
    unittest.expect(o.lifecycleDetails!, unittest.equals('foo'));
    unittest.expect(o.lifecycleState!, unittest.equals('foo'));
    unittest.expect(o.ocid!, unittest.equals('foo'));
    unittest.expect(o.operationsInsightsState!, unittest.equals('foo'));
    unittest.expect(o.pdbName!, unittest.equals('foo'));
    checkUnnamed110(o.pdbNodeLevelDetails!);
  }
  buildCounterPluggableDatabaseProperties--;
}

core.int buildCounterPolarisIcebergCatalog = 0;
api.PolarisIcebergCatalog buildPolarisIcebergCatalog() {
  final o = api.PolarisIcebergCatalog();
  buildCounterPolarisIcebergCatalog++;
  if (buildCounterPolarisIcebergCatalog < 3) {
    o.clientId = 'foo';
    o.clientSecret = 'foo';
    o.polarisCatalog = 'foo';
    o.principalRole = 'foo';
    o.uri = 'foo';
  }
  buildCounterPolarisIcebergCatalog--;
  return o;
}

void checkPolarisIcebergCatalog(api.PolarisIcebergCatalog o) {
  buildCounterPolarisIcebergCatalog++;
  if (buildCounterPolarisIcebergCatalog < 3) {
    unittest.expect(o.clientId!, unittest.equals('foo'));
    unittest.expect(o.clientSecret!, unittest.equals('foo'));
    unittest.expect(o.polarisCatalog!, unittest.equals('foo'));
    unittest.expect(o.principalRole!, unittest.equals('foo'));
    unittest.expect(o.uri!, unittest.equals('foo'));
  }
  buildCounterPolarisIcebergCatalog--;
}

core.int buildCounterRefreshAutonomousDatabaseRequest = 0;
api.RefreshAutonomousDatabaseRequest buildRefreshAutonomousDatabaseRequest() {
  final o = api.RefreshAutonomousDatabaseRequest();
  buildCounterRefreshAutonomousDatabaseRequest++;
  if (buildCounterRefreshAutonomousDatabaseRequest < 3) {
    o.refreshCutoffTime = 'foo';
  }
  buildCounterRefreshAutonomousDatabaseRequest--;
  return o;
}

void checkRefreshAutonomousDatabaseRequest(
  api.RefreshAutonomousDatabaseRequest o,
) {
  buildCounterRefreshAutonomousDatabaseRequest++;
  if (buildCounterRefreshAutonomousDatabaseRequest < 3) {
    unittest.expect(o.refreshCutoffTime!, unittest.equals('foo'));
  }
  buildCounterRefreshAutonomousDatabaseRequest--;
}

core.List<core.String> buildUnnamed111() => ['foo', 'foo'];

void checkUnnamed111(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterRemoveVirtualMachineExadbVmClusterRequest = 0;
api.RemoveVirtualMachineExadbVmClusterRequest
buildRemoveVirtualMachineExadbVmClusterRequest() {
  final o = api.RemoveVirtualMachineExadbVmClusterRequest();
  buildCounterRemoveVirtualMachineExadbVmClusterRequest++;
  if (buildCounterRemoveVirtualMachineExadbVmClusterRequest < 3) {
    o.hostnames = buildUnnamed111();
    o.requestId = 'foo';
  }
  buildCounterRemoveVirtualMachineExadbVmClusterRequest--;
  return o;
}

void checkRemoveVirtualMachineExadbVmClusterRequest(
  api.RemoveVirtualMachineExadbVmClusterRequest o,
) {
  buildCounterRemoveVirtualMachineExadbVmClusterRequest++;
  if (buildCounterRemoveVirtualMachineExadbVmClusterRequest < 3) {
    checkUnnamed111(o.hostnames!);
    unittest.expect(o.requestId!, unittest.equals('foo'));
  }
  buildCounterRemoveVirtualMachineExadbVmClusterRequest--;
}

core.int buildCounterRestIcebergCatalog = 0;
api.RestIcebergCatalog buildRestIcebergCatalog() {
  final o = api.RestIcebergCatalog();
  buildCounterRestIcebergCatalog++;
  if (buildCounterRestIcebergCatalog < 3) {
    o.properties = 'foo';
    o.uri = 'foo';
  }
  buildCounterRestIcebergCatalog--;
  return o;
}

void checkRestIcebergCatalog(api.RestIcebergCatalog o) {
  buildCounterRestIcebergCatalog++;
  if (buildCounterRestIcebergCatalog < 3) {
    unittest.expect(o.properties!, unittest.equals('foo'));
    unittest.expect(o.uri!, unittest.equals('foo'));
  }
  buildCounterRestIcebergCatalog--;
}

core.int buildCounterRestartAutonomousDatabaseRequest = 0;
api.RestartAutonomousDatabaseRequest buildRestartAutonomousDatabaseRequest() {
  final o = api.RestartAutonomousDatabaseRequest();
  buildCounterRestartAutonomousDatabaseRequest++;
  if (buildCounterRestartAutonomousDatabaseRequest < 3) {}
  buildCounterRestartAutonomousDatabaseRequest--;
  return o;
}

void checkRestartAutonomousDatabaseRequest(
  api.RestartAutonomousDatabaseRequest o,
) {
  buildCounterRestartAutonomousDatabaseRequest++;
  if (buildCounterRestartAutonomousDatabaseRequest < 3) {}
  buildCounterRestartAutonomousDatabaseRequest--;
}

core.int buildCounterRestoreAutonomousDatabaseRequest = 0;
api.RestoreAutonomousDatabaseRequest buildRestoreAutonomousDatabaseRequest() {
  final o = api.RestoreAutonomousDatabaseRequest();
  buildCounterRestoreAutonomousDatabaseRequest++;
  if (buildCounterRestoreAutonomousDatabaseRequest < 3) {
    o.restoreTime = 'foo';
  }
  buildCounterRestoreAutonomousDatabaseRequest--;
  return o;
}

void checkRestoreAutonomousDatabaseRequest(
  api.RestoreAutonomousDatabaseRequest o,
) {
  buildCounterRestoreAutonomousDatabaseRequest++;
  if (buildCounterRestoreAutonomousDatabaseRequest < 3) {
    unittest.expect(o.restoreTime!, unittest.equals('foo'));
  }
  buildCounterRestoreAutonomousDatabaseRequest--;
}

core.int buildCounterScheduledOperationDetails = 0;
api.ScheduledOperationDetails buildScheduledOperationDetails() {
  final o = api.ScheduledOperationDetails();
  buildCounterScheduledOperationDetails++;
  if (buildCounterScheduledOperationDetails < 3) {
    o.dayOfWeek = 'foo';
    o.startTime = buildTimeOfDay();
    o.stopTime = buildTimeOfDay();
  }
  buildCounterScheduledOperationDetails--;
  return o;
}

void checkScheduledOperationDetails(api.ScheduledOperationDetails o) {
  buildCounterScheduledOperationDetails++;
  if (buildCounterScheduledOperationDetails < 3) {
    unittest.expect(o.dayOfWeek!, unittest.equals('foo'));
    checkTimeOfDay(o.startTime!);
    checkTimeOfDay(o.stopTime!);
  }
  buildCounterScheduledOperationDetails--;
}

core.int buildCounterSourceConfig = 0;
api.SourceConfig buildSourceConfig() {
  final o = api.SourceConfig();
  buildCounterSourceConfig++;
  if (buildCounterSourceConfig < 3) {
    o.autoRefreshFrequencySeconds = 42;
    o.autoRefreshPointLagSeconds = 42;
    o.autoRefreshStartTime = 'foo';
    o.automaticBackupsReplicationEnabled = true;
    o.autonomousDatabase = 'foo';
    o.autonomousDatabaseBackup = 'foo';
    o.backupTime = 'foo';
    o.cloneType = 'foo';
    o.refreshableMode = 'foo';
    o.sourceType = 'foo';
    o.useLatestAvailableBackup = true;
  }
  buildCounterSourceConfig--;
  return o;
}

void checkSourceConfig(api.SourceConfig o) {
  buildCounterSourceConfig++;
  if (buildCounterSourceConfig < 3) {
    unittest.expect(o.autoRefreshFrequencySeconds!, unittest.equals(42));
    unittest.expect(o.autoRefreshPointLagSeconds!, unittest.equals(42));
    unittest.expect(o.autoRefreshStartTime!, unittest.equals('foo'));
    unittest.expect(o.automaticBackupsReplicationEnabled!, unittest.isTrue);
    unittest.expect(o.autonomousDatabase!, unittest.equals('foo'));
    unittest.expect(o.autonomousDatabaseBackup!, unittest.equals('foo'));
    unittest.expect(o.backupTime!, unittest.equals('foo'));
    unittest.expect(o.cloneType!, unittest.equals('foo'));
    unittest.expect(o.refreshableMode!, unittest.equals('foo'));
    unittest.expect(o.sourceType!, unittest.equals('foo'));
    unittest.expect(o.useLatestAvailableBackup!, unittest.isTrue);
  }
  buildCounterSourceConfig--;
}

core.int buildCounterStartAutonomousDatabaseRequest = 0;
api.StartAutonomousDatabaseRequest buildStartAutonomousDatabaseRequest() {
  final o = api.StartAutonomousDatabaseRequest();
  buildCounterStartAutonomousDatabaseRequest++;
  if (buildCounterStartAutonomousDatabaseRequest < 3) {}
  buildCounterStartAutonomousDatabaseRequest--;
  return o;
}

void checkStartAutonomousDatabaseRequest(api.StartAutonomousDatabaseRequest o) {
  buildCounterStartAutonomousDatabaseRequest++;
  if (buildCounterStartAutonomousDatabaseRequest < 3) {}
  buildCounterStartAutonomousDatabaseRequest--;
}

core.int buildCounterStartGoldengateDeploymentRequest = 0;
api.StartGoldengateDeploymentRequest buildStartGoldengateDeploymentRequest() {
  final o = api.StartGoldengateDeploymentRequest();
  buildCounterStartGoldengateDeploymentRequest++;
  if (buildCounterStartGoldengateDeploymentRequest < 3) {}
  buildCounterStartGoldengateDeploymentRequest--;
  return o;
}

void checkStartGoldengateDeploymentRequest(
  api.StartGoldengateDeploymentRequest o,
) {
  buildCounterStartGoldengateDeploymentRequest++;
  if (buildCounterStartGoldengateDeploymentRequest < 3) {}
  buildCounterStartGoldengateDeploymentRequest--;
}

core.Map<core.String, core.Object?> buildUnnamed112() => {
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

void checkUnnamed112(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed113() => [
  buildUnnamed112(),
  buildUnnamed112(),
];

void checkUnnamed113(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed112(o[0]);
  checkUnnamed112(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed113();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code!, unittest.equals(42));
    checkUnnamed113(o.details!);
    unittest.expect(o.message!, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.int buildCounterStopAutonomousDatabaseRequest = 0;
api.StopAutonomousDatabaseRequest buildStopAutonomousDatabaseRequest() {
  final o = api.StopAutonomousDatabaseRequest();
  buildCounterStopAutonomousDatabaseRequest++;
  if (buildCounterStopAutonomousDatabaseRequest < 3) {}
  buildCounterStopAutonomousDatabaseRequest--;
  return o;
}

void checkStopAutonomousDatabaseRequest(api.StopAutonomousDatabaseRequest o) {
  buildCounterStopAutonomousDatabaseRequest++;
  if (buildCounterStopAutonomousDatabaseRequest < 3) {}
  buildCounterStopAutonomousDatabaseRequest--;
}

core.int buildCounterStopGoldengateDeploymentRequest = 0;
api.StopGoldengateDeploymentRequest buildStopGoldengateDeploymentRequest() {
  final o = api.StopGoldengateDeploymentRequest();
  buildCounterStopGoldengateDeploymentRequest++;
  if (buildCounterStopGoldengateDeploymentRequest < 3) {}
  buildCounterStopGoldengateDeploymentRequest--;
  return o;
}

void checkStopGoldengateDeploymentRequest(
  api.StopGoldengateDeploymentRequest o,
) {
  buildCounterStopGoldengateDeploymentRequest++;
  if (buildCounterStopGoldengateDeploymentRequest < 3) {}
  buildCounterStopGoldengateDeploymentRequest--;
}

core.int buildCounterStorageSizeDetails = 0;
api.StorageSizeDetails buildStorageSizeDetails() {
  final o = api.StorageSizeDetails();
  buildCounterStorageSizeDetails++;
  if (buildCounterStorageSizeDetails < 3) {
    o.dataStorageSizeInGbs = 42;
    o.recoStorageSizeInGbs = 42;
  }
  buildCounterStorageSizeDetails--;
  return o;
}

void checkStorageSizeDetails(api.StorageSizeDetails o) {
  buildCounterStorageSizeDetails++;
  if (buildCounterStorageSizeDetails < 3) {
    unittest.expect(o.dataStorageSizeInGbs!, unittest.equals(42));
    unittest.expect(o.recoStorageSizeInGbs!, unittest.equals(42));
  }
  buildCounterStorageSizeDetails--;
}

core.int buildCounterSwitchoverAutonomousDatabaseRequest = 0;
api.SwitchoverAutonomousDatabaseRequest
buildSwitchoverAutonomousDatabaseRequest() {
  final o = api.SwitchoverAutonomousDatabaseRequest();
  buildCounterSwitchoverAutonomousDatabaseRequest++;
  if (buildCounterSwitchoverAutonomousDatabaseRequest < 3) {
    o.peerAutonomousDatabase = 'foo';
  }
  buildCounterSwitchoverAutonomousDatabaseRequest--;
  return o;
}

void checkSwitchoverAutonomousDatabaseRequest(
  api.SwitchoverAutonomousDatabaseRequest o,
) {
  buildCounterSwitchoverAutonomousDatabaseRequest++;
  if (buildCounterSwitchoverAutonomousDatabaseRequest < 3) {
    unittest.expect(o.peerAutonomousDatabase!, unittest.equals('foo'));
  }
  buildCounterSwitchoverAutonomousDatabaseRequest--;
}

core.int buildCounterTestConnectionAssignmentError = 0;
api.TestConnectionAssignmentError buildTestConnectionAssignmentError() {
  final o = api.TestConnectionAssignmentError();
  buildCounterTestConnectionAssignmentError++;
  if (buildCounterTestConnectionAssignmentError < 3) {
    o.action = 'foo';
    o.code = 'foo';
    o.issue = 'foo';
    o.message = 'foo';
  }
  buildCounterTestConnectionAssignmentError--;
  return o;
}

void checkTestConnectionAssignmentError(api.TestConnectionAssignmentError o) {
  buildCounterTestConnectionAssignmentError++;
  if (buildCounterTestConnectionAssignmentError < 3) {
    unittest.expect(o.action!, unittest.equals('foo'));
    unittest.expect(o.code!, unittest.equals('foo'));
    unittest.expect(o.issue!, unittest.equals('foo'));
    unittest.expect(o.message!, unittest.equals('foo'));
  }
  buildCounterTestConnectionAssignmentError--;
}

core.int buildCounterTestGoldengateConnectionAssignmentRequest = 0;
api.TestGoldengateConnectionAssignmentRequest
buildTestGoldengateConnectionAssignmentRequest() {
  final o = api.TestGoldengateConnectionAssignmentRequest();
  buildCounterTestGoldengateConnectionAssignmentRequest++;
  if (buildCounterTestGoldengateConnectionAssignmentRequest < 3) {
    o.type = 'foo';
  }
  buildCounterTestGoldengateConnectionAssignmentRequest--;
  return o;
}

void checkTestGoldengateConnectionAssignmentRequest(
  api.TestGoldengateConnectionAssignmentRequest o,
) {
  buildCounterTestGoldengateConnectionAssignmentRequest++;
  if (buildCounterTestGoldengateConnectionAssignmentRequest < 3) {
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterTestGoldengateConnectionAssignmentRequest--;
}

core.List<api.TestConnectionAssignmentError> buildUnnamed114() => [
  buildTestConnectionAssignmentError(),
  buildTestConnectionAssignmentError(),
];

void checkUnnamed114(core.List<api.TestConnectionAssignmentError> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTestConnectionAssignmentError(o[0]);
  checkTestConnectionAssignmentError(o[1]);
}

core.int buildCounterTestGoldengateConnectionAssignmentResponse = 0;
api.TestGoldengateConnectionAssignmentResponse
buildTestGoldengateConnectionAssignmentResponse() {
  final o = api.TestGoldengateConnectionAssignmentResponse();
  buildCounterTestGoldengateConnectionAssignmentResponse++;
  if (buildCounterTestGoldengateConnectionAssignmentResponse < 3) {
    o.error = buildTestConnectionAssignmentError();
    o.errors = buildUnnamed114();
    o.resultType = 'foo';
  }
  buildCounterTestGoldengateConnectionAssignmentResponse--;
  return o;
}

void checkTestGoldengateConnectionAssignmentResponse(
  api.TestGoldengateConnectionAssignmentResponse o,
) {
  buildCounterTestGoldengateConnectionAssignmentResponse++;
  if (buildCounterTestGoldengateConnectionAssignmentResponse < 3) {
    checkTestConnectionAssignmentError(o.error!);
    checkUnnamed114(o.errors!);
    unittest.expect(o.resultType!, unittest.equals('foo'));
  }
  buildCounterTestGoldengateConnectionAssignmentResponse--;
}

core.int buildCounterTimeOfDay = 0;
api.TimeOfDay buildTimeOfDay() {
  final o = api.TimeOfDay();
  buildCounterTimeOfDay++;
  if (buildCounterTimeOfDay < 3) {
    o.hours = 42;
    o.minutes = 42;
    o.nanos = 42;
    o.seconds = 42;
  }
  buildCounterTimeOfDay--;
  return o;
}

void checkTimeOfDay(api.TimeOfDay o) {
  buildCounterTimeOfDay++;
  if (buildCounterTimeOfDay < 3) {
    unittest.expect(o.hours!, unittest.equals(42));
    unittest.expect(o.minutes!, unittest.equals(42));
    unittest.expect(o.nanos!, unittest.equals(42));
    unittest.expect(o.seconds!, unittest.equals(42));
  }
  buildCounterTimeOfDay--;
}

core.int buildCounterTimeZone = 0;
api.TimeZone buildTimeZone() {
  final o = api.TimeZone();
  buildCounterTimeZone++;
  if (buildCounterTimeZone < 3) {
    o.id = 'foo';
    o.version = 'foo';
  }
  buildCounterTimeZone--;
  return o;
}

void checkTimeZone(api.TimeZone o) {
  buildCounterTimeZone++;
  if (buildCounterTimeZone < 3) {
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals('foo'));
  }
  buildCounterTimeZone--;
}

core.List<core.String> buildUnnamed115() => ['foo', 'foo'];

void checkUnnamed115(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

void main() {
  unittest.group('obj-schema-AllConnectionStrings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAllConnectionStrings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AllConnectionStrings.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAllConnectionStrings(od);
    });
  });

  unittest.group('obj-schema-AmazonS3IcebergStorage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAmazonS3IcebergStorage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AmazonS3IcebergStorage.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAmazonS3IcebergStorage(od);
    });
  });

  unittest.group('obj-schema-AutonomousDatabase', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAutonomousDatabase();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AutonomousDatabase.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAutonomousDatabase(od);
    });
  });

  unittest.group('obj-schema-AutonomousDatabaseApex', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAutonomousDatabaseApex();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AutonomousDatabaseApex.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAutonomousDatabaseApex(od);
    });
  });

  unittest.group('obj-schema-AutonomousDatabaseBackup', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAutonomousDatabaseBackup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AutonomousDatabaseBackup.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAutonomousDatabaseBackup(od);
    });
  });

  unittest.group('obj-schema-AutonomousDatabaseBackupProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAutonomousDatabaseBackupProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AutonomousDatabaseBackupProperties.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAutonomousDatabaseBackupProperties(od);
    });
  });

  unittest.group('obj-schema-AutonomousDatabaseCharacterSet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAutonomousDatabaseCharacterSet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AutonomousDatabaseCharacterSet.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAutonomousDatabaseCharacterSet(od);
    });
  });

  unittest.group('obj-schema-AutonomousDatabaseConnectionStrings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAutonomousDatabaseConnectionStrings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AutonomousDatabaseConnectionStrings.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAutonomousDatabaseConnectionStrings(od);
    });
  });

  unittest.group('obj-schema-AutonomousDatabaseConnectionUrls', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAutonomousDatabaseConnectionUrls();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AutonomousDatabaseConnectionUrls.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAutonomousDatabaseConnectionUrls(od);
    });
  });

  unittest.group('obj-schema-AutonomousDatabaseProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAutonomousDatabaseProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AutonomousDatabaseProperties.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAutonomousDatabaseProperties(od);
    });
  });

  unittest.group('obj-schema-AutonomousDatabaseRefreshableClone', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAutonomousDatabaseRefreshableClone();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AutonomousDatabaseRefreshableClone.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAutonomousDatabaseRefreshableClone(od);
    });
  });

  unittest.group('obj-schema-AutonomousDatabaseRefreshableClones', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAutonomousDatabaseRefreshableClones();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AutonomousDatabaseRefreshableClones.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAutonomousDatabaseRefreshableClones(od);
    });
  });

  unittest.group('obj-schema-AutonomousDatabaseStandbySummary', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAutonomousDatabaseStandbySummary();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AutonomousDatabaseStandbySummary.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAutonomousDatabaseStandbySummary(od);
    });
  });

  unittest.group('obj-schema-AutonomousDbVersion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAutonomousDbVersion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AutonomousDbVersion.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAutonomousDbVersion(od);
    });
  });

  unittest.group('obj-schema-AzureDataLakeStorageIcebergStorage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAzureDataLakeStorageIcebergStorage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AzureDataLakeStorageIcebergStorage.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAzureDataLakeStorageIcebergStorage(od);
    });
  });

  unittest.group('obj-schema-BackupDestinationDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBackupDestinationDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BackupDestinationDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBackupDestinationDetails(od);
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

  unittest.group('obj-schema-CloudAccountDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCloudAccountDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CloudAccountDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCloudAccountDetails(od);
    });
  });

  unittest.group('obj-schema-CloudExadataInfrastructure', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCloudExadataInfrastructure();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CloudExadataInfrastructure.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCloudExadataInfrastructure(od);
    });
  });

  unittest.group('obj-schema-CloudExadataInfrastructureProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCloudExadataInfrastructureProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CloudExadataInfrastructureProperties.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCloudExadataInfrastructureProperties(od);
    });
  });

  unittest.group('obj-schema-CloudVmCluster', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCloudVmCluster();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CloudVmCluster.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCloudVmCluster(od);
    });
  });

  unittest.group('obj-schema-CloudVmClusterProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCloudVmClusterProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CloudVmClusterProperties.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCloudVmClusterProperties(od);
    });
  });

  unittest.group(
    'obj-schema-ConfigureExascaleCloudExadataInfrastructureRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildConfigureExascaleCloudExadataInfrastructureRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.ConfigureExascaleCloudExadataInfrastructureRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkConfigureExascaleCloudExadataInfrastructureRequest(od);
      });
    },
  );

  unittest.group('obj-schema-CustomerContact', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomerContact();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomerContact.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCustomerContact(od);
    });
  });

  unittest.group('obj-schema-DataCollectionOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataCollectionOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DataCollectionOptions.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDataCollectionOptions(od);
    });
  });

  unittest.group('obj-schema-DataCollectionOptionsCommon', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataCollectionOptionsCommon();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DataCollectionOptionsCommon.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDataCollectionOptionsCommon(od);
    });
  });

  unittest.group('obj-schema-DataCollectionOptionsDbSystem', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataCollectionOptionsDbSystem();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DataCollectionOptionsDbSystem.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDataCollectionOptionsDbSystem(od);
    });
  });

  unittest.group('obj-schema-Database', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDatabase();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Database.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDatabase(od);
    });
  });

  unittest.group('obj-schema-DatabaseCharacterSet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDatabaseCharacterSet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DatabaseCharacterSet.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDatabaseCharacterSet(od);
    });
  });

  unittest.group('obj-schema-DatabaseConnectionStringProfile', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDatabaseConnectionStringProfile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DatabaseConnectionStringProfile.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDatabaseConnectionStringProfile(od);
    });
  });

  unittest.group('obj-schema-DatabaseManagementConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDatabaseManagementConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DatabaseManagementConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDatabaseManagementConfig(od);
    });
  });

  unittest.group('obj-schema-DatabaseProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDatabaseProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DatabaseProperties.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDatabaseProperties(od);
    });
  });

  unittest.group('obj-schema-DbBackupConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDbBackupConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DbBackupConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDbBackupConfig(od);
    });
  });

  unittest.group('obj-schema-DbHome', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDbHome();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DbHome.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDbHome(od);
    });
  });

  unittest.group('obj-schema-DbNode', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDbNode();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DbNode.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDbNode(od);
    });
  });

  unittest.group('obj-schema-DbNodeProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDbNodeProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DbNodeProperties.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDbNodeProperties(od);
    });
  });

  unittest.group('obj-schema-DbServer', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDbServer();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DbServer.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDbServer(od);
    });
  });

  unittest.group('obj-schema-DbServerProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDbServerProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DbServerProperties.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDbServerProperties(od);
    });
  });

  unittest.group('obj-schema-DbSystem', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDbSystem();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DbSystem.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDbSystem(od);
    });
  });

  unittest.group('obj-schema-DbSystemInitialStorageSize', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDbSystemInitialStorageSize();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DbSystemInitialStorageSize.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDbSystemInitialStorageSize(od);
    });
  });

  unittest.group('obj-schema-DbSystemInitialStorageSizeProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDbSystemInitialStorageSizeProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DbSystemInitialStorageSizeProperties.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDbSystemInitialStorageSizeProperties(od);
    });
  });

  unittest.group('obj-schema-DbSystemOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDbSystemOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DbSystemOptions.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDbSystemOptions(od);
    });
  });

  unittest.group('obj-schema-DbSystemProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDbSystemProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DbSystemProperties.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDbSystemProperties(od);
    });
  });

  unittest.group('obj-schema-DbSystemShape', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDbSystemShape();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DbSystemShape.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDbSystemShape(od);
    });
  });

  unittest.group('obj-schema-DbVersion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDbVersion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DbVersion.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDbVersion(od);
    });
  });

  unittest.group('obj-schema-DbVersionProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDbVersionProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DbVersionProperties.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDbVersionProperties(od);
    });
  });

  unittest.group('obj-schema-DefinedTagValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDefinedTagValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DefinedTagValue.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDefinedTagValue(od);
    });
  });

  unittest.group('obj-schema-DeploymentDiagnosticData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeploymentDiagnosticData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeploymentDiagnosticData.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDeploymentDiagnosticData(od);
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

  unittest.group('obj-schema-EncryptionKey', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEncryptionKey();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EncryptionKey.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEncryptionKey(od);
    });
  });

  unittest.group('obj-schema-EncryptionKeyHistoryEntry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEncryptionKeyHistoryEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EncryptionKeyHistoryEntry.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEncryptionKeyHistoryEntry(od);
    });
  });

  unittest.group('obj-schema-Entitlement', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEntitlement();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Entitlement.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEntitlement(od);
    });
  });

  unittest.group('obj-schema-ExadbVmCluster', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExadbVmCluster();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExadbVmCluster.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExadbVmCluster(od);
    });
  });

  unittest.group('obj-schema-ExadbVmClusterProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExadbVmClusterProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExadbVmClusterProperties.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExadbVmClusterProperties(od);
    });
  });

  unittest.group('obj-schema-ExadbVmClusterStorageDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExadbVmClusterStorageDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExadbVmClusterStorageDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExadbVmClusterStorageDetails(od);
    });
  });

  unittest.group('obj-schema-ExascaleConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExascaleConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExascaleConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExascaleConfig(od);
    });
  });

  unittest.group('obj-schema-ExascaleDbStorageDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExascaleDbStorageDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExascaleDbStorageDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExascaleDbStorageDetails(od);
    });
  });

  unittest.group('obj-schema-ExascaleDbStorageVault', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExascaleDbStorageVault();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExascaleDbStorageVault.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExascaleDbStorageVault(od);
    });
  });

  unittest.group('obj-schema-ExascaleDbStorageVaultProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExascaleDbStorageVaultProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExascaleDbStorageVaultProperties.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExascaleDbStorageVaultProperties(od);
    });
  });

  unittest.group('obj-schema-FailoverAutonomousDatabaseRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFailoverAutonomousDatabaseRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FailoverAutonomousDatabaseRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFailoverAutonomousDatabaseRequest(od);
    });
  });

  unittest.group('obj-schema-GenerateAutonomousDatabaseWalletRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGenerateAutonomousDatabaseWalletRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GenerateAutonomousDatabaseWalletRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGenerateAutonomousDatabaseWalletRequest(od);
    });
  });

  unittest.group('obj-schema-GenerateAutonomousDatabaseWalletResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGenerateAutonomousDatabaseWalletResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GenerateAutonomousDatabaseWalletResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGenerateAutonomousDatabaseWalletResponse(od);
    });
  });

  unittest.group('obj-schema-GiVersion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGiVersion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GiVersion.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGiVersion(od);
    });
  });

  unittest.group('obj-schema-GlueIcebergCatalog', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGlueIcebergCatalog();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GlueIcebergCatalog.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGlueIcebergCatalog(od);
    });
  });

  unittest.group('obj-schema-GoldengateAmazonKinesisConnectionProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoldengateAmazonKinesisConnectionProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoldengateAmazonKinesisConnectionProperties.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoldengateAmazonKinesisConnectionProperties(od);
    });
  });

  unittest.group('obj-schema-GoldengateAmazonRedshiftConnectionProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoldengateAmazonRedshiftConnectionProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoldengateAmazonRedshiftConnectionProperties.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoldengateAmazonRedshiftConnectionProperties(od);
    });
  });

  unittest.group('obj-schema-GoldengateAmazonS3ConnectionProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoldengateAmazonS3ConnectionProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoldengateAmazonS3ConnectionProperties.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoldengateAmazonS3ConnectionProperties(od);
    });
  });

  unittest.group(
    'obj-schema-GoldengateAzureDataLakeStorageConnectionProperties',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoldengateAzureDataLakeStorageConnectionProperties();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoldengateAzureDataLakeStorageConnectionProperties.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoldengateAzureDataLakeStorageConnectionProperties(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoldengateAzureSynapseAnalyticsConnectionProperties',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoldengateAzureSynapseAnalyticsConnectionProperties();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoldengateAzureSynapseAnalyticsConnectionProperties.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoldengateAzureSynapseAnalyticsConnectionProperties(od);
      });
    },
  );

  unittest.group('obj-schema-GoldengateBackupSchedule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoldengateBackupSchedule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoldengateBackupSchedule.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoldengateBackupSchedule(od);
    });
  });

  unittest.group('obj-schema-GoldengateConnection', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoldengateConnection();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoldengateConnection.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoldengateConnection(od);
    });
  });

  unittest.group('obj-schema-GoldengateConnectionAssignment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoldengateConnectionAssignment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoldengateConnectionAssignment.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoldengateConnectionAssignment(od);
    });
  });

  unittest.group('obj-schema-GoldengateConnectionAssignmentProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoldengateConnectionAssignmentProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoldengateConnectionAssignmentProperties.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoldengateConnectionAssignmentProperties(od);
    });
  });

  unittest.group('obj-schema-GoldengateConnectionProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoldengateConnectionProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoldengateConnectionProperties.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoldengateConnectionProperties(od);
    });
  });

  unittest.group('obj-schema-GoldengateConnectionType', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoldengateConnectionType();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoldengateConnectionType.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoldengateConnectionType(od);
    });
  });

  unittest.group('obj-schema-GoldengateDatabricksConnectionProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoldengateDatabricksConnectionProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoldengateDatabricksConnectionProperties.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoldengateDatabricksConnectionProperties(od);
    });
  });

  unittest.group('obj-schema-GoldengateDb2ConnectionProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoldengateDb2ConnectionProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoldengateDb2ConnectionProperties.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoldengateDb2ConnectionProperties(od);
    });
  });

  unittest.group('obj-schema-GoldengateDeployment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoldengateDeployment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoldengateDeployment.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoldengateDeployment(od);
    });
  });

  unittest.group('obj-schema-GoldengateDeploymentEnvironment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoldengateDeploymentEnvironment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoldengateDeploymentEnvironment.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoldengateDeploymentEnvironment(od);
    });
  });

  unittest.group('obj-schema-GoldengateDeploymentLock', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoldengateDeploymentLock();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoldengateDeploymentLock.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoldengateDeploymentLock(od);
    });
  });

  unittest.group('obj-schema-GoldengateDeploymentProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoldengateDeploymentProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoldengateDeploymentProperties.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoldengateDeploymentProperties(od);
    });
  });

  unittest.group('obj-schema-GoldengateDeploymentType', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoldengateDeploymentType();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoldengateDeploymentType.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoldengateDeploymentType(od);
    });
  });

  unittest.group('obj-schema-GoldengateDeploymentVersion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoldengateDeploymentVersion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoldengateDeploymentVersion.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoldengateDeploymentVersion(od);
    });
  });

  unittest.group('obj-schema-GoldengateDeploymentVersionProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoldengateDeploymentVersionProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoldengateDeploymentVersionProperties.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoldengateDeploymentVersionProperties(od);
    });
  });

  unittest.group('obj-schema-GoldengateElasticsearchConnectionProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoldengateElasticsearchConnectionProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoldengateElasticsearchConnectionProperties.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoldengateElasticsearchConnectionProperties(od);
    });
  });

  unittest.group('obj-schema-GoldengateGenericConnectionProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoldengateGenericConnectionProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoldengateGenericConnectionProperties.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoldengateGenericConnectionProperties(od);
    });
  });

  unittest.group('obj-schema-GoldengateGoldengateConnectionProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoldengateGoldengateConnectionProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoldengateGoldengateConnectionProperties.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoldengateGoldengateConnectionProperties(od);
    });
  });

  unittest.group('obj-schema-GoldengateGoogleBigQueryConnectionProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoldengateGoogleBigQueryConnectionProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoldengateGoogleBigQueryConnectionProperties.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoldengateGoogleBigQueryConnectionProperties(od);
    });
  });

  unittest.group(
    'obj-schema-GoldengateGoogleCloudStorageConnectionProperties',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoldengateGoogleCloudStorageConnectionProperties();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoldengateGoogleCloudStorageConnectionProperties.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoldengateGoogleCloudStorageConnectionProperties(od);
      });
    },
  );

  unittest.group('obj-schema-GoldengateGooglePubsubConnectionProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoldengateGooglePubsubConnectionProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoldengateGooglePubsubConnectionProperties.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoldengateGooglePubsubConnectionProperties(od);
    });
  });

  unittest.group('obj-schema-GoldengateGroupToRolesMapping', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoldengateGroupToRolesMapping();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoldengateGroupToRolesMapping.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoldengateGroupToRolesMapping(od);
    });
  });

  unittest.group('obj-schema-GoldengateHdfsConnectionProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoldengateHdfsConnectionProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoldengateHdfsConnectionProperties.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoldengateHdfsConnectionProperties(od);
    });
  });

  unittest.group('obj-schema-GoldengateIcebergConnectionProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoldengateIcebergConnectionProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoldengateIcebergConnectionProperties.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoldengateIcebergConnectionProperties(od);
    });
  });

  unittest.group(
    'obj-schema-GoldengateJavaMessageServiceConnectionProperties',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoldengateJavaMessageServiceConnectionProperties();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoldengateJavaMessageServiceConnectionProperties.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoldengateJavaMessageServiceConnectionProperties(od);
      });
    },
  );

  unittest.group('obj-schema-GoldengateKafkaConnectionProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoldengateKafkaConnectionProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoldengateKafkaConnectionProperties.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoldengateKafkaConnectionProperties(od);
    });
  });

  unittest.group(
    'obj-schema-GoldengateKafkaSchemaRegistryConnectionProperties',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoldengateKafkaSchemaRegistryConnectionProperties();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoldengateKafkaSchemaRegistryConnectionProperties.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoldengateKafkaSchemaRegistryConnectionProperties(od);
      });
    },
  );

  unittest.group('obj-schema-GoldengateMaintenanceConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoldengateMaintenanceConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoldengateMaintenanceConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoldengateMaintenanceConfig(od);
    });
  });

  unittest.group('obj-schema-GoldengateMaintenanceWindow', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoldengateMaintenanceWindow();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoldengateMaintenanceWindow.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoldengateMaintenanceWindow(od);
    });
  });

  unittest.group(
    'obj-schema-GoldengateMicrosoftFabricConnectionProperties',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoldengateMicrosoftFabricConnectionProperties();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoldengateMicrosoftFabricConnectionProperties.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoldengateMicrosoftFabricConnectionProperties(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoldengateMicrosoftSqlserverConnectionProperties',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoldengateMicrosoftSqlserverConnectionProperties();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoldengateMicrosoftSqlserverConnectionProperties.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoldengateMicrosoftSqlserverConnectionProperties(od);
      });
    },
  );

  unittest.group('obj-schema-GoldengateMongodbConnectionProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoldengateMongodbConnectionProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoldengateMongodbConnectionProperties.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoldengateMongodbConnectionProperties(od);
    });
  });

  unittest.group('obj-schema-GoldengateMysqlConnectionProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoldengateMysqlConnectionProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoldengateMysqlConnectionProperties.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoldengateMysqlConnectionProperties(od);
    });
  });

  unittest.group(
    'obj-schema-GoldengateOciObjectStorageConnectionProperties',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoldengateOciObjectStorageConnectionProperties();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoldengateOciObjectStorageConnectionProperties.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoldengateOciObjectStorageConnectionProperties(od);
      });
    },
  );

  unittest.group('obj-schema-GoldengateOggDeployment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoldengateOggDeployment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoldengateOggDeployment.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoldengateOggDeployment(od);
    });
  });

  unittest.group(
    'obj-schema-GoldengateOracleAIDataPlatformConnectionProperties',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoldengateOracleAIDataPlatformConnectionProperties();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoldengateOracleAIDataPlatformConnectionProperties.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoldengateOracleAIDataPlatformConnectionProperties(od);
      });
    },
  );

  unittest.group('obj-schema-GoldengateOracleConnectionProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoldengateOracleConnectionProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoldengateOracleConnectionProperties.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoldengateOracleConnectionProperties(od);
    });
  });

  unittest.group('obj-schema-GoldengateOracleNosqlConnectionProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoldengateOracleNosqlConnectionProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoldengateOracleNosqlConnectionProperties.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoldengateOracleNosqlConnectionProperties(od);
    });
  });

  unittest.group('obj-schema-GoldengatePlacement', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoldengatePlacement();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoldengatePlacement.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoldengatePlacement(od);
    });
  });

  unittest.group('obj-schema-GoldengatePostgresqlConnectionProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoldengatePostgresqlConnectionProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoldengatePostgresqlConnectionProperties.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoldengatePostgresqlConnectionProperties(od);
    });
  });

  unittest.group('obj-schema-GoldengateRedisConnectionProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoldengateRedisConnectionProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoldengateRedisConnectionProperties.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoldengateRedisConnectionProperties(od);
    });
  });

  unittest.group('obj-schema-GoldengateSnowflakeConnectionProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoldengateSnowflakeConnectionProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoldengateSnowflakeConnectionProperties.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoldengateSnowflakeConnectionProperties(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudStorageIcebergStorage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudStorageIcebergStorage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudStorageIcebergStorage.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudStorageIcebergStorage(od);
    });
  });

  unittest.group('obj-schema-IcebergCatalog', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIcebergCatalog();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IcebergCatalog.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkIcebergCatalog(od);
    });
  });

  unittest.group('obj-schema-IcebergStorage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIcebergStorage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IcebergStorage.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkIcebergStorage(od);
    });
  });

  unittest.group('obj-schema-IdentityConnector', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIdentityConnector();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IdentityConnector.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkIdentityConnector(od);
    });
  });

  unittest.group('obj-schema-IngressIp', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIngressIp();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IngressIp.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkIngressIp(od);
    });
  });

  unittest.group('obj-schema-KafkaBootstrapServer', () {
    unittest.test('to-json--from-json', () async {
      final o = buildKafkaBootstrapServer();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.KafkaBootstrapServer.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkKafkaBootstrapServer(od);
    });
  });

  unittest.group('obj-schema-ListAutonomousDatabaseBackupsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAutonomousDatabaseBackupsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAutonomousDatabaseBackupsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListAutonomousDatabaseBackupsResponse(od);
    });
  });

  unittest.group('obj-schema-ListAutonomousDatabaseCharacterSetsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAutonomousDatabaseCharacterSetsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAutonomousDatabaseCharacterSetsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListAutonomousDatabaseCharacterSetsResponse(od);
    });
  });

  unittest.group('obj-schema-ListAutonomousDatabasesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAutonomousDatabasesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAutonomousDatabasesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListAutonomousDatabasesResponse(od);
    });
  });

  unittest.group('obj-schema-ListAutonomousDbVersionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAutonomousDbVersionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAutonomousDbVersionsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListAutonomousDbVersionsResponse(od);
    });
  });

  unittest.group('obj-schema-ListCloudExadataInfrastructuresResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListCloudExadataInfrastructuresResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListCloudExadataInfrastructuresResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListCloudExadataInfrastructuresResponse(od);
    });
  });

  unittest.group('obj-schema-ListCloudVmClustersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListCloudVmClustersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListCloudVmClustersResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListCloudVmClustersResponse(od);
    });
  });

  unittest.group('obj-schema-ListDatabaseCharacterSetsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListDatabaseCharacterSetsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListDatabaseCharacterSetsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListDatabaseCharacterSetsResponse(od);
    });
  });

  unittest.group('obj-schema-ListDatabasesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListDatabasesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListDatabasesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListDatabasesResponse(od);
    });
  });

  unittest.group('obj-schema-ListDbNodesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListDbNodesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListDbNodesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListDbNodesResponse(od);
    });
  });

  unittest.group('obj-schema-ListDbServersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListDbServersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListDbServersResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListDbServersResponse(od);
    });
  });

  unittest.group('obj-schema-ListDbSystemInitialStorageSizesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListDbSystemInitialStorageSizesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListDbSystemInitialStorageSizesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListDbSystemInitialStorageSizesResponse(od);
    });
  });

  unittest.group('obj-schema-ListDbSystemShapesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListDbSystemShapesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListDbSystemShapesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListDbSystemShapesResponse(od);
    });
  });

  unittest.group('obj-schema-ListDbSystemsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListDbSystemsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListDbSystemsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListDbSystemsResponse(od);
    });
  });

  unittest.group('obj-schema-ListDbVersionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListDbVersionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListDbVersionsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListDbVersionsResponse(od);
    });
  });

  unittest.group('obj-schema-ListEntitlementsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListEntitlementsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListEntitlementsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListEntitlementsResponse(od);
    });
  });

  unittest.group('obj-schema-ListExadbVmClustersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListExadbVmClustersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListExadbVmClustersResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListExadbVmClustersResponse(od);
    });
  });

  unittest.group('obj-schema-ListExascaleDbStorageVaultsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListExascaleDbStorageVaultsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListExascaleDbStorageVaultsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListExascaleDbStorageVaultsResponse(od);
    });
  });

  unittest.group('obj-schema-ListGiVersionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListGiVersionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListGiVersionsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListGiVersionsResponse(od);
    });
  });

  unittest.group('obj-schema-ListGoldengateConnectionAssignmentsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListGoldengateConnectionAssignmentsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListGoldengateConnectionAssignmentsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListGoldengateConnectionAssignmentsResponse(od);
    });
  });

  unittest.group('obj-schema-ListGoldengateConnectionTypesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListGoldengateConnectionTypesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListGoldengateConnectionTypesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListGoldengateConnectionTypesResponse(od);
    });
  });

  unittest.group('obj-schema-ListGoldengateConnectionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListGoldengateConnectionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListGoldengateConnectionsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListGoldengateConnectionsResponse(od);
    });
  });

  unittest.group('obj-schema-ListGoldengateDeploymentEnvironmentsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListGoldengateDeploymentEnvironmentsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListGoldengateDeploymentEnvironmentsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListGoldengateDeploymentEnvironmentsResponse(od);
    });
  });

  unittest.group('obj-schema-ListGoldengateDeploymentTypesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListGoldengateDeploymentTypesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListGoldengateDeploymentTypesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListGoldengateDeploymentTypesResponse(od);
    });
  });

  unittest.group('obj-schema-ListGoldengateDeploymentVersionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListGoldengateDeploymentVersionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListGoldengateDeploymentVersionsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListGoldengateDeploymentVersionsResponse(od);
    });
  });

  unittest.group('obj-schema-ListGoldengateDeploymentsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListGoldengateDeploymentsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListGoldengateDeploymentsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListGoldengateDeploymentsResponse(od);
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

  unittest.group('obj-schema-ListMinorVersionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListMinorVersionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListMinorVersionsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListMinorVersionsResponse(od);
    });
  });

  unittest.group('obj-schema-ListOdbNetworksResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListOdbNetworksResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListOdbNetworksResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListOdbNetworksResponse(od);
    });
  });

  unittest.group('obj-schema-ListOdbSubnetsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListOdbSubnetsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListOdbSubnetsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListOdbSubnetsResponse(od);
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

  unittest.group('obj-schema-ListPluggableDatabasesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListPluggableDatabasesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListPluggableDatabasesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListPluggableDatabasesResponse(od);
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

  unittest.group('obj-schema-MinorVersion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMinorVersion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MinorVersion.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMinorVersion(od);
    });
  });

  unittest.group('obj-schema-NameValuePair', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNameValuePair();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NameValuePair.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkNameValuePair(od);
    });
  });

  unittest.group('obj-schema-NessieIcebergCatalog', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNessieIcebergCatalog();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NessieIcebergCatalog.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkNessieIcebergCatalog(od);
    });
  });

  unittest.group('obj-schema-OdbNetwork', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOdbNetwork();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OdbNetwork.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOdbNetwork(od);
    });
  });

  unittest.group('obj-schema-OdbSubnet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOdbSubnet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OdbSubnet.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOdbSubnet(od);
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

  unittest.group('obj-schema-PluggableDatabase', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPluggableDatabase();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PluggableDatabase.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPluggableDatabase(od);
    });
  });

  unittest.group('obj-schema-PluggableDatabaseConnectionStrings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPluggableDatabaseConnectionStrings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PluggableDatabaseConnectionStrings.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPluggableDatabaseConnectionStrings(od);
    });
  });

  unittest.group('obj-schema-PluggableDatabaseNodeLevelDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPluggableDatabaseNodeLevelDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PluggableDatabaseNodeLevelDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPluggableDatabaseNodeLevelDetails(od);
    });
  });

  unittest.group('obj-schema-PluggableDatabaseProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPluggableDatabaseProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PluggableDatabaseProperties.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPluggableDatabaseProperties(od);
    });
  });

  unittest.group('obj-schema-PolarisIcebergCatalog', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPolarisIcebergCatalog();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PolarisIcebergCatalog.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPolarisIcebergCatalog(od);
    });
  });

  unittest.group('obj-schema-RefreshAutonomousDatabaseRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRefreshAutonomousDatabaseRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RefreshAutonomousDatabaseRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRefreshAutonomousDatabaseRequest(od);
    });
  });

  unittest.group('obj-schema-RemoveVirtualMachineExadbVmClusterRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRemoveVirtualMachineExadbVmClusterRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RemoveVirtualMachineExadbVmClusterRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRemoveVirtualMachineExadbVmClusterRequest(od);
    });
  });

  unittest.group('obj-schema-RestIcebergCatalog', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRestIcebergCatalog();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RestIcebergCatalog.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRestIcebergCatalog(od);
    });
  });

  unittest.group('obj-schema-RestartAutonomousDatabaseRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRestartAutonomousDatabaseRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RestartAutonomousDatabaseRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRestartAutonomousDatabaseRequest(od);
    });
  });

  unittest.group('obj-schema-RestoreAutonomousDatabaseRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRestoreAutonomousDatabaseRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RestoreAutonomousDatabaseRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRestoreAutonomousDatabaseRequest(od);
    });
  });

  unittest.group('obj-schema-ScheduledOperationDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildScheduledOperationDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ScheduledOperationDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkScheduledOperationDetails(od);
    });
  });

  unittest.group('obj-schema-SourceConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSourceConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SourceConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSourceConfig(od);
    });
  });

  unittest.group('obj-schema-StartAutonomousDatabaseRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStartAutonomousDatabaseRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StartAutonomousDatabaseRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkStartAutonomousDatabaseRequest(od);
    });
  });

  unittest.group('obj-schema-StartGoldengateDeploymentRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStartGoldengateDeploymentRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StartGoldengateDeploymentRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkStartGoldengateDeploymentRequest(od);
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

  unittest.group('obj-schema-StopAutonomousDatabaseRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStopAutonomousDatabaseRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StopAutonomousDatabaseRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkStopAutonomousDatabaseRequest(od);
    });
  });

  unittest.group('obj-schema-StopGoldengateDeploymentRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStopGoldengateDeploymentRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StopGoldengateDeploymentRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkStopGoldengateDeploymentRequest(od);
    });
  });

  unittest.group('obj-schema-StorageSizeDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStorageSizeDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StorageSizeDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkStorageSizeDetails(od);
    });
  });

  unittest.group('obj-schema-SwitchoverAutonomousDatabaseRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSwitchoverAutonomousDatabaseRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SwitchoverAutonomousDatabaseRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSwitchoverAutonomousDatabaseRequest(od);
    });
  });

  unittest.group('obj-schema-TestConnectionAssignmentError', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTestConnectionAssignmentError();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TestConnectionAssignmentError.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTestConnectionAssignmentError(od);
    });
  });

  unittest.group('obj-schema-TestGoldengateConnectionAssignmentRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTestGoldengateConnectionAssignmentRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TestGoldengateConnectionAssignmentRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTestGoldengateConnectionAssignmentRequest(od);
    });
  });

  unittest.group('obj-schema-TestGoldengateConnectionAssignmentResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTestGoldengateConnectionAssignmentResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TestGoldengateConnectionAssignmentResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTestGoldengateConnectionAssignmentResponse(od);
    });
  });

  unittest.group('obj-schema-TimeOfDay', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTimeOfDay();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TimeOfDay.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTimeOfDay(od);
    });
  });

  unittest.group('obj-schema-TimeZone', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTimeZone();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TimeZone.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTimeZone(od);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.OracleDatabaseApi(mock).projects.locations;
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
          final resp = convert.json.encode(buildLocation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkLocation(response as api.Location);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.OracleDatabaseApi(mock).projects.locations;
      final arg_name = 'foo';
      final arg_extraLocationTypes = buildUnnamed115();
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

  unittest.group(
    'resource-ProjectsLocationsAutonomousDatabaseBackupsResource',
    () {
      unittest.test('method--list', () async {
        final mock = HttpServerMock();
        final res = api.OracleDatabaseApi(
          mock,
        ).projects.locations.autonomousDatabaseBackups;
        final arg_parent = 'foo';
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
              buildListAutonomousDatabaseBackupsResponse(),
            );
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.list(
          arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields,
        );
        checkListAutonomousDatabaseBackupsResponse(
          response as api.ListAutonomousDatabaseBackupsResponse,
        );
      });
    },
  );

  unittest.group(
    'resource-ProjectsLocationsAutonomousDatabaseCharacterSetsResource',
    () {
      unittest.test('method--list', () async {
        final mock = HttpServerMock();
        final res = api.OracleDatabaseApi(
          mock,
        ).projects.locations.autonomousDatabaseCharacterSets;
        final arg_parent = 'foo';
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
              buildListAutonomousDatabaseCharacterSetsResponse(),
            );
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.list(
          arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields,
        );
        checkListAutonomousDatabaseCharacterSetsResponse(
          response as api.ListAutonomousDatabaseCharacterSetsResponse,
        );
      });
    },
  );

  unittest.group('resource-ProjectsLocationsAutonomousDatabasesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.OracleDatabaseApi(
        mock,
      ).projects.locations.autonomousDatabases;
      final arg_request = buildAutonomousDatabase();
      final arg_parent = 'foo';
      final arg_autonomousDatabaseId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AutonomousDatabase.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAutonomousDatabase(obj);

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
            queryMap['autonomousDatabaseId']!.first,
            unittest.equals(arg_autonomousDatabaseId),
          );
          unittest.expect(
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
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
        autonomousDatabaseId: arg_autonomousDatabaseId,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.OracleDatabaseApi(
        mock,
      ).projects.locations.autonomousDatabases;
      final arg_name = 'foo';
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
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--failover', () async {
      final mock = HttpServerMock();
      final res = api.OracleDatabaseApi(
        mock,
      ).projects.locations.autonomousDatabases;
      final arg_request = buildFailoverAutonomousDatabaseRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.FailoverAutonomousDatabaseRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkFailoverAutonomousDatabaseRequest(obj);

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

    unittest.test('method--generateWallet', () async {
      final mock = HttpServerMock();
      final res = api.OracleDatabaseApi(
        mock,
      ).projects.locations.autonomousDatabases;
      final arg_request = buildGenerateAutonomousDatabaseWalletRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GenerateAutonomousDatabaseWalletRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGenerateAutonomousDatabaseWalletRequest(obj);

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
          final resp = convert.json.encode(
            buildGenerateAutonomousDatabaseWalletResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.generateWallet(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGenerateAutonomousDatabaseWalletResponse(
        response as api.GenerateAutonomousDatabaseWalletResponse,
      );
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.OracleDatabaseApi(
        mock,
      ).projects.locations.autonomousDatabases;
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
          final resp = convert.json.encode(buildAutonomousDatabase());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkAutonomousDatabase(response as api.AutonomousDatabase);
    });

    unittest.test('method--getRefreshableClones', () async {
      final mock = HttpServerMock();
      final res = api.OracleDatabaseApi(
        mock,
      ).projects.locations.autonomousDatabases;
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
          final resp = convert.json.encode(
            buildAutonomousDatabaseRefreshableClones(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getRefreshableClones(
        arg_name,
        $fields: arg_$fields,
      );
      checkAutonomousDatabaseRefreshableClones(
        response as api.AutonomousDatabaseRefreshableClones,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.OracleDatabaseApi(
        mock,
      ).projects.locations.autonomousDatabases;
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
          final resp = convert.json.encode(
            buildListAutonomousDatabasesResponse(),
          );
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
      checkListAutonomousDatabasesResponse(
        response as api.ListAutonomousDatabasesResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.OracleDatabaseApi(
        mock,
      ).projects.locations.autonomousDatabases;
      final arg_request = buildAutonomousDatabase();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AutonomousDatabase.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAutonomousDatabase(obj);

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
        requestId: arg_requestId,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--refresh', () async {
      final mock = HttpServerMock();
      final res = api.OracleDatabaseApi(
        mock,
      ).projects.locations.autonomousDatabases;
      final arg_request = buildRefreshAutonomousDatabaseRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.RefreshAutonomousDatabaseRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkRefreshAutonomousDatabaseRequest(obj);

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
      final response = await res.refresh(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--restart', () async {
      final mock = HttpServerMock();
      final res = api.OracleDatabaseApi(
        mock,
      ).projects.locations.autonomousDatabases;
      final arg_request = buildRestartAutonomousDatabaseRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.RestartAutonomousDatabaseRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkRestartAutonomousDatabaseRequest(obj);

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

    unittest.test('method--restore', () async {
      final mock = HttpServerMock();
      final res = api.OracleDatabaseApi(
        mock,
      ).projects.locations.autonomousDatabases;
      final arg_request = buildRestoreAutonomousDatabaseRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.RestoreAutonomousDatabaseRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkRestoreAutonomousDatabaseRequest(obj);

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
        arg_name,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--start', () async {
      final mock = HttpServerMock();
      final res = api.OracleDatabaseApi(
        mock,
      ).projects.locations.autonomousDatabases;
      final arg_request = buildStartAutonomousDatabaseRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.StartAutonomousDatabaseRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkStartAutonomousDatabaseRequest(obj);

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
      final response = await res.start(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--stop', () async {
      final mock = HttpServerMock();
      final res = api.OracleDatabaseApi(
        mock,
      ).projects.locations.autonomousDatabases;
      final arg_request = buildStopAutonomousDatabaseRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.StopAutonomousDatabaseRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkStopAutonomousDatabaseRequest(obj);

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
      final response = await res.stop(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--switchover', () async {
      final mock = HttpServerMock();
      final res = api.OracleDatabaseApi(
        mock,
      ).projects.locations.autonomousDatabases;
      final arg_request = buildSwitchoverAutonomousDatabaseRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SwitchoverAutonomousDatabaseRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSwitchoverAutonomousDatabaseRequest(obj);

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
  });

  unittest.group('resource-ProjectsLocationsAutonomousDbVersionsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.OracleDatabaseApi(
        mock,
      ).projects.locations.autonomousDbVersions;
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
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildListAutonomousDbVersionsResponse(),
          );
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
      checkListAutonomousDbVersionsResponse(
        response as api.ListAutonomousDbVersionsResponse,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsCloudExadataInfrastructuresResource', () {
    unittest.test('method--configureExascale', () async {
      final mock = HttpServerMock();
      final res = api.OracleDatabaseApi(
        mock,
      ).projects.locations.cloudExadataInfrastructures;
      final arg_request =
          buildConfigureExascaleCloudExadataInfrastructureRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.ConfigureExascaleCloudExadataInfrastructureRequest.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkConfigureExascaleCloudExadataInfrastructureRequest(obj);

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
      final response = await res.configureExascale(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.OracleDatabaseApi(
        mock,
      ).projects.locations.cloudExadataInfrastructures;
      final arg_request = buildCloudExadataInfrastructure();
      final arg_parent = 'foo';
      final arg_cloudExadataInfrastructureId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.CloudExadataInfrastructure.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkCloudExadataInfrastructure(obj);

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
            queryMap['cloudExadataInfrastructureId']!.first,
            unittest.equals(arg_cloudExadataInfrastructureId),
          );
          unittest.expect(
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
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
        cloudExadataInfrastructureId: arg_cloudExadataInfrastructureId,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.OracleDatabaseApi(
        mock,
      ).projects.locations.cloudExadataInfrastructures;
      final arg_name = 'foo';
      final arg_force = true;
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
            queryMap['force']!.first,
            unittest.equals('$arg_force'),
          );
          unittest.expect(
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
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
        force: arg_force,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.OracleDatabaseApi(
        mock,
      ).projects.locations.cloudExadataInfrastructures;
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
          final resp = convert.json.encode(buildCloudExadataInfrastructure());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkCloudExadataInfrastructure(
        response as api.CloudExadataInfrastructure,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.OracleDatabaseApi(
        mock,
      ).projects.locations.cloudExadataInfrastructures;
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
          final resp = convert.json.encode(
            buildListCloudExadataInfrastructuresResponse(),
          );
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
      checkListCloudExadataInfrastructuresResponse(
        response as api.ListCloudExadataInfrastructuresResponse,
      );
    });
  });

  unittest.group(
    'resource-ProjectsLocationsCloudExadataInfrastructuresDbServersResource',
    () {
      unittest.test('method--list', () async {
        final mock = HttpServerMock();
        final res = api.OracleDatabaseApi(
          mock,
        ).projects.locations.cloudExadataInfrastructures.dbServers;
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
            unittest.expect(
              queryMap['fields']!.first,
              unittest.equals(arg_$fields),
            );

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(buildListDbServersResponse());
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
        checkListDbServersResponse(response as api.ListDbServersResponse);
      });
    },
  );

  unittest.group('resource-ProjectsLocationsCloudVmClustersResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.OracleDatabaseApi(
        mock,
      ).projects.locations.cloudVmClusters;
      final arg_request = buildCloudVmCluster();
      final arg_parent = 'foo';
      final arg_cloudVmClusterId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.CloudVmCluster.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkCloudVmCluster(obj);

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
            queryMap['cloudVmClusterId']!.first,
            unittest.equals(arg_cloudVmClusterId),
          );
          unittest.expect(
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
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
        cloudVmClusterId: arg_cloudVmClusterId,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.OracleDatabaseApi(
        mock,
      ).projects.locations.cloudVmClusters;
      final arg_name = 'foo';
      final arg_force = true;
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
            queryMap['force']!.first,
            unittest.equals('$arg_force'),
          );
          unittest.expect(
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
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
        force: arg_force,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.OracleDatabaseApi(
        mock,
      ).projects.locations.cloudVmClusters;
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
          final resp = convert.json.encode(buildCloudVmCluster());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkCloudVmCluster(response as api.CloudVmCluster);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.OracleDatabaseApi(
        mock,
      ).projects.locations.cloudVmClusters;
      final arg_parent = 'foo';
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
          final resp = convert.json.encode(buildListCloudVmClustersResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListCloudVmClustersResponse(
        response as api.ListCloudVmClustersResponse,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsCloudVmClustersDbNodesResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.OracleDatabaseApi(
        mock,
      ).projects.locations.cloudVmClusters.dbNodes;
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
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListDbNodesResponse());
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
      checkListDbNodesResponse(response as api.ListDbNodesResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsDatabaseCharacterSetsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.OracleDatabaseApi(
        mock,
      ).projects.locations.databaseCharacterSets;
      final arg_parent = 'foo';
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
            buildListDatabaseCharacterSetsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListDatabaseCharacterSetsResponse(
        response as api.ListDatabaseCharacterSetsResponse,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsDatabasesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.OracleDatabaseApi(mock).projects.locations.databases;
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
          final resp = convert.json.encode(buildDatabase());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkDatabase(response as api.Database);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.OracleDatabaseApi(mock).projects.locations.databases;
      final arg_parent = 'foo';
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
          final resp = convert.json.encode(buildListDatabasesResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListDatabasesResponse(response as api.ListDatabasesResponse);
    });
  });

  unittest.group(
    'resource-ProjectsLocationsDbSystemInitialStorageSizesResource',
    () {
      unittest.test('method--list', () async {
        final mock = HttpServerMock();
        final res = api.OracleDatabaseApi(
          mock,
        ).projects.locations.dbSystemInitialStorageSizes;
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
            unittest.expect(
              queryMap['fields']!.first,
              unittest.equals(arg_$fields),
            );

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(
              buildListDbSystemInitialStorageSizesResponse(),
            );
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
        checkListDbSystemInitialStorageSizesResponse(
          response as api.ListDbSystemInitialStorageSizesResponse,
        );
      });
    },
  );

  unittest.group('resource-ProjectsLocationsDbSystemShapesResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.OracleDatabaseApi(mock).projects.locations.dbSystemShapes;
      final arg_parent = 'foo';
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
          final resp = convert.json.encode(buildListDbSystemShapesResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListDbSystemShapesResponse(
        response as api.ListDbSystemShapesResponse,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsDbSystemsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.OracleDatabaseApi(mock).projects.locations.dbSystems;
      final arg_request = buildDbSystem();
      final arg_parent = 'foo';
      final arg_dbSystemId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.DbSystem.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkDbSystem(obj);

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
            queryMap['dbSystemId']!.first,
            unittest.equals(arg_dbSystemId),
          );
          unittest.expect(
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
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
        dbSystemId: arg_dbSystemId,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.OracleDatabaseApi(mock).projects.locations.dbSystems;
      final arg_name = 'foo';
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
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.OracleDatabaseApi(mock).projects.locations.dbSystems;
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
          final resp = convert.json.encode(buildDbSystem());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkDbSystem(response as api.DbSystem);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.OracleDatabaseApi(mock).projects.locations.dbSystems;
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
          final resp = convert.json.encode(buildListDbSystemsResponse());
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
      checkListDbSystemsResponse(response as api.ListDbSystemsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsDbVersionsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.OracleDatabaseApi(mock).projects.locations.dbVersions;
      final arg_parent = 'foo';
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
          final resp = convert.json.encode(buildListDbVersionsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListDbVersionsResponse(response as api.ListDbVersionsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsEntitlementsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.OracleDatabaseApi(mock).projects.locations.entitlements;
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
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListEntitlementsResponse());
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
      checkListEntitlementsResponse(response as api.ListEntitlementsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsExadbVmClustersResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.OracleDatabaseApi(
        mock,
      ).projects.locations.exadbVmClusters;
      final arg_request = buildExadbVmCluster();
      final arg_parent = 'foo';
      final arg_exadbVmClusterId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ExadbVmCluster.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkExadbVmCluster(obj);

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
            queryMap['exadbVmClusterId']!.first,
            unittest.equals(arg_exadbVmClusterId),
          );
          unittest.expect(
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
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
        exadbVmClusterId: arg_exadbVmClusterId,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.OracleDatabaseApi(
        mock,
      ).projects.locations.exadbVmClusters;
      final arg_name = 'foo';
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
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.OracleDatabaseApi(
        mock,
      ).projects.locations.exadbVmClusters;
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
          final resp = convert.json.encode(buildExadbVmCluster());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkExadbVmCluster(response as api.ExadbVmCluster);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.OracleDatabaseApi(
        mock,
      ).projects.locations.exadbVmClusters;
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
          final resp = convert.json.encode(buildListExadbVmClustersResponse());
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
      checkListExadbVmClustersResponse(
        response as api.ListExadbVmClustersResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.OracleDatabaseApi(
        mock,
      ).projects.locations.exadbVmClusters;
      final arg_request = buildExadbVmCluster();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ExadbVmCluster.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkExadbVmCluster(obj);

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
        requestId: arg_requestId,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--removeVirtualMachine', () async {
      final mock = HttpServerMock();
      final res = api.OracleDatabaseApi(
        mock,
      ).projects.locations.exadbVmClusters;
      final arg_request = buildRemoveVirtualMachineExadbVmClusterRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.RemoveVirtualMachineExadbVmClusterRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkRemoveVirtualMachineExadbVmClusterRequest(obj);

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
      final response = await res.removeVirtualMachine(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsExadbVmClustersDbNodesResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.OracleDatabaseApi(
        mock,
      ).projects.locations.exadbVmClusters.dbNodes;
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
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListDbNodesResponse());
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
      checkListDbNodesResponse(response as api.ListDbNodesResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsExascaleDbStorageVaultsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.OracleDatabaseApi(
        mock,
      ).projects.locations.exascaleDbStorageVaults;
      final arg_request = buildExascaleDbStorageVault();
      final arg_parent = 'foo';
      final arg_exascaleDbStorageVaultId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ExascaleDbStorageVault.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkExascaleDbStorageVault(obj);

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
            queryMap['exascaleDbStorageVaultId']!.first,
            unittest.equals(arg_exascaleDbStorageVaultId),
          );
          unittest.expect(
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
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
        exascaleDbStorageVaultId: arg_exascaleDbStorageVaultId,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.OracleDatabaseApi(
        mock,
      ).projects.locations.exascaleDbStorageVaults;
      final arg_name = 'foo';
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
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.OracleDatabaseApi(
        mock,
      ).projects.locations.exascaleDbStorageVaults;
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
          final resp = convert.json.encode(buildExascaleDbStorageVault());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkExascaleDbStorageVault(response as api.ExascaleDbStorageVault);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.OracleDatabaseApi(
        mock,
      ).projects.locations.exascaleDbStorageVaults;
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
          final resp = convert.json.encode(
            buildListExascaleDbStorageVaultsResponse(),
          );
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
      checkListExascaleDbStorageVaultsResponse(
        response as api.ListExascaleDbStorageVaultsResponse,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsGiVersionsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.OracleDatabaseApi(mock).projects.locations.giVersions;
      final arg_parent = 'foo';
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
          final resp = convert.json.encode(buildListGiVersionsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListGiVersionsResponse(response as api.ListGiVersionsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsGiVersionsMinorVersionsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.OracleDatabaseApi(
        mock,
      ).projects.locations.giVersions.minorVersions;
      final arg_parent = 'foo';
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
          final resp = convert.json.encode(buildListMinorVersionsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListMinorVersionsResponse(response as api.ListMinorVersionsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsGoldengateConnectionAssignmentsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.OracleDatabaseApi(
        mock,
      ).projects.locations.goldengateConnectionAssignments;
      final arg_request = buildGoldengateConnectionAssignment();
      final arg_parent = 'foo';
      final arg_goldengateConnectionAssignmentId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoldengateConnectionAssignment.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoldengateConnectionAssignment(obj);

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
            queryMap['goldengateConnectionAssignmentId']!.first,
            unittest.equals(arg_goldengateConnectionAssignmentId),
          );
          unittest.expect(
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
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
        goldengateConnectionAssignmentId: arg_goldengateConnectionAssignmentId,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.OracleDatabaseApi(
        mock,
      ).projects.locations.goldengateConnectionAssignments;
      final arg_name = 'foo';
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
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.OracleDatabaseApi(
        mock,
      ).projects.locations.goldengateConnectionAssignments;
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
          final resp = convert.json.encode(
            buildGoldengateConnectionAssignment(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoldengateConnectionAssignment(
        response as api.GoldengateConnectionAssignment,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.OracleDatabaseApi(
        mock,
      ).projects.locations.goldengateConnectionAssignments;
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
          final resp = convert.json.encode(
            buildListGoldengateConnectionAssignmentsResponse(),
          );
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
      checkListGoldengateConnectionAssignmentsResponse(
        response as api.ListGoldengateConnectionAssignmentsResponse,
      );
    });

    unittest.test('method--test', () async {
      final mock = HttpServerMock();
      final res = api.OracleDatabaseApi(
        mock,
      ).projects.locations.goldengateConnectionAssignments;
      final arg_request = buildTestGoldengateConnectionAssignmentRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.TestGoldengateConnectionAssignmentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkTestGoldengateConnectionAssignmentRequest(obj);

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
          final resp = convert.json.encode(
            buildTestGoldengateConnectionAssignmentResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.test(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkTestGoldengateConnectionAssignmentResponse(
        response as api.TestGoldengateConnectionAssignmentResponse,
      );
    });
  });

  unittest.group(
    'resource-ProjectsLocationsGoldengateConnectionTypesResource',
    () {
      unittest.test('method--list', () async {
        final mock = HttpServerMock();
        final res = api.OracleDatabaseApi(
          mock,
        ).projects.locations.goldengateConnectionTypes;
        final arg_parent = 'foo';
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
              buildListGoldengateConnectionTypesResponse(),
            );
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.list(
          arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields,
        );
        checkListGoldengateConnectionTypesResponse(
          response as api.ListGoldengateConnectionTypesResponse,
        );
      });
    },
  );

  unittest.group('resource-ProjectsLocationsGoldengateConnectionsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.OracleDatabaseApi(
        mock,
      ).projects.locations.goldengateConnections;
      final arg_request = buildGoldengateConnection();
      final arg_parent = 'foo';
      final arg_goldengateConnectionId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoldengateConnection.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoldengateConnection(obj);

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
            queryMap['goldengateConnectionId']!.first,
            unittest.equals(arg_goldengateConnectionId),
          );
          unittest.expect(
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
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
        goldengateConnectionId: arg_goldengateConnectionId,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.OracleDatabaseApi(
        mock,
      ).projects.locations.goldengateConnections;
      final arg_name = 'foo';
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
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.OracleDatabaseApi(
        mock,
      ).projects.locations.goldengateConnections;
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
          final resp = convert.json.encode(buildGoldengateConnection());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoldengateConnection(response as api.GoldengateConnection);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.OracleDatabaseApi(
        mock,
      ).projects.locations.goldengateConnections;
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
          final resp = convert.json.encode(
            buildListGoldengateConnectionsResponse(),
          );
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
      checkListGoldengateConnectionsResponse(
        response as api.ListGoldengateConnectionsResponse,
      );
    });
  });

  unittest.group(
    'resource-ProjectsLocationsGoldengateDeploymentEnvironmentsResource',
    () {
      unittest.test('method--list', () async {
        final mock = HttpServerMock();
        final res = api.OracleDatabaseApi(
          mock,
        ).projects.locations.goldengateDeploymentEnvironments;
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
            unittest.expect(
              queryMap['fields']!.first,
              unittest.equals(arg_$fields),
            );

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(
              buildListGoldengateDeploymentEnvironmentsResponse(),
            );
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
        checkListGoldengateDeploymentEnvironmentsResponse(
          response as api.ListGoldengateDeploymentEnvironmentsResponse,
        );
      });
    },
  );

  unittest.group(
    'resource-ProjectsLocationsGoldengateDeploymentTypesResource',
    () {
      unittest.test('method--list', () async {
        final mock = HttpServerMock();
        final res = api.OracleDatabaseApi(
          mock,
        ).projects.locations.goldengateDeploymentTypes;
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
            final resp = convert.json.encode(
              buildListGoldengateDeploymentTypesResponse(),
            );
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
        checkListGoldengateDeploymentTypesResponse(
          response as api.ListGoldengateDeploymentTypesResponse,
        );
      });
    },
  );

  unittest.group(
    'resource-ProjectsLocationsGoldengateDeploymentVersionsResource',
    () {
      unittest.test('method--list', () async {
        final mock = HttpServerMock();
        final res = api.OracleDatabaseApi(
          mock,
        ).projects.locations.goldengateDeploymentVersions;
        final arg_parent = 'foo';
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
              buildListGoldengateDeploymentVersionsResponse(),
            );
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.list(
          arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields,
        );
        checkListGoldengateDeploymentVersionsResponse(
          response as api.ListGoldengateDeploymentVersionsResponse,
        );
      });
    },
  );

  unittest.group('resource-ProjectsLocationsGoldengateDeploymentsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.OracleDatabaseApi(
        mock,
      ).projects.locations.goldengateDeployments;
      final arg_request = buildGoldengateDeployment();
      final arg_parent = 'foo';
      final arg_goldengateDeploymentId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoldengateDeployment.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoldengateDeployment(obj);

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
            queryMap['goldengateDeploymentId']!.first,
            unittest.equals(arg_goldengateDeploymentId),
          );
          unittest.expect(
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
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
        goldengateDeploymentId: arg_goldengateDeploymentId,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.OracleDatabaseApi(
        mock,
      ).projects.locations.goldengateDeployments;
      final arg_name = 'foo';
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
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.OracleDatabaseApi(
        mock,
      ).projects.locations.goldengateDeployments;
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
          final resp = convert.json.encode(buildGoldengateDeployment());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoldengateDeployment(response as api.GoldengateDeployment);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.OracleDatabaseApi(
        mock,
      ).projects.locations.goldengateDeployments;
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
          final resp = convert.json.encode(
            buildListGoldengateDeploymentsResponse(),
          );
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
      checkListGoldengateDeploymentsResponse(
        response as api.ListGoldengateDeploymentsResponse,
      );
    });

    unittest.test('method--start', () async {
      final mock = HttpServerMock();
      final res = api.OracleDatabaseApi(
        mock,
      ).projects.locations.goldengateDeployments;
      final arg_request = buildStartGoldengateDeploymentRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.StartGoldengateDeploymentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkStartGoldengateDeploymentRequest(obj);

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
      final response = await res.start(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--stop', () async {
      final mock = HttpServerMock();
      final res = api.OracleDatabaseApi(
        mock,
      ).projects.locations.goldengateDeployments;
      final arg_request = buildStopGoldengateDeploymentRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.StopGoldengateDeploymentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkStopGoldengateDeploymentRequest(obj);

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
      final response = await res.stop(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsOdbNetworksResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.OracleDatabaseApi(mock).projects.locations.odbNetworks;
      final arg_request = buildOdbNetwork();
      final arg_parent = 'foo';
      final arg_odbNetworkId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.OdbNetwork.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkOdbNetwork(obj);

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
            queryMap['odbNetworkId']!.first,
            unittest.equals(arg_odbNetworkId),
          );
          unittest.expect(
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
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
        odbNetworkId: arg_odbNetworkId,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.OracleDatabaseApi(mock).projects.locations.odbNetworks;
      final arg_name = 'foo';
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
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.OracleDatabaseApi(mock).projects.locations.odbNetworks;
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
          final resp = convert.json.encode(buildOdbNetwork());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkOdbNetwork(response as api.OdbNetwork);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.OracleDatabaseApi(mock).projects.locations.odbNetworks;
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
          final resp = convert.json.encode(buildListOdbNetworksResponse());
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
      checkListOdbNetworksResponse(response as api.ListOdbNetworksResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsOdbNetworksOdbSubnetsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.OracleDatabaseApi(
        mock,
      ).projects.locations.odbNetworks.odbSubnets;
      final arg_request = buildOdbSubnet();
      final arg_parent = 'foo';
      final arg_odbSubnetId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.OdbSubnet.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkOdbSubnet(obj);

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
            queryMap['odbSubnetId']!.first,
            unittest.equals(arg_odbSubnetId),
          );
          unittest.expect(
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
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
        odbSubnetId: arg_odbSubnetId,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.OracleDatabaseApi(
        mock,
      ).projects.locations.odbNetworks.odbSubnets;
      final arg_name = 'foo';
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
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.OracleDatabaseApi(
        mock,
      ).projects.locations.odbNetworks.odbSubnets;
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
          final resp = convert.json.encode(buildOdbSubnet());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkOdbSubnet(response as api.OdbSubnet);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.OracleDatabaseApi(
        mock,
      ).projects.locations.odbNetworks.odbSubnets;
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
          final resp = convert.json.encode(buildListOdbSubnetsResponse());
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
      checkListOdbSubnetsResponse(response as api.ListOdbSubnetsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.OracleDatabaseApi(mock).projects.locations.operations;
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
      final res = api.OracleDatabaseApi(mock).projects.locations.operations;
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
      final res = api.OracleDatabaseApi(mock).projects.locations.operations;
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
      final res = api.OracleDatabaseApi(mock).projects.locations.operations;
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

  unittest.group('resource-ProjectsLocationsPluggableDatabasesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.OracleDatabaseApi(
        mock,
      ).projects.locations.pluggableDatabases;
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
          final resp = convert.json.encode(buildPluggableDatabase());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkPluggableDatabase(response as api.PluggableDatabase);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.OracleDatabaseApi(
        mock,
      ).projects.locations.pluggableDatabases;
      final arg_parent = 'foo';
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
            buildListPluggableDatabasesResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListPluggableDatabasesResponse(
        response as api.ListPluggableDatabasesResponse,
      );
    });
  });
}
