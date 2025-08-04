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

core.List<core.String> buildUnnamed8() => ['foo', 'foo'];

void checkUnnamed8(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.ScheduledOperationDetails> buildUnnamed9() => [
  buildScheduledOperationDetails(),
  buildScheduledOperationDetails(),
];

void checkUnnamed9(core.List<api.ScheduledOperationDetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkScheduledOperationDetails(o[0]);
  checkScheduledOperationDetails(o[1]);
}

core.List<core.String> buildUnnamed10() => ['foo', 'foo'];

void checkUnnamed10(core.List<core.String> o) {
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
    o.failedDataRecoveryDuration = 'foo';
    o.isAutoScalingEnabled = true;
    o.isLocalDataGuardEnabled = true;
    o.isStorageAutoScalingEnabled = true;
    o.licenseType = 'foo';
    o.lifecycleDetails = 'foo';
    o.localAdgAutoFailoverMaxDataLossLimit = 42;
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
    o.peerDbIds = buildUnnamed8();
    o.permissionLevel = 'foo';
    o.privateEndpoint = 'foo';
    o.privateEndpointIp = 'foo';
    o.privateEndpointLabel = 'foo';
    o.refreshableMode = 'foo';
    o.refreshableState = 'foo';
    o.role = 'foo';
    o.scheduledOperationDetails = buildUnnamed9();
    o.secretId = 'foo';
    o.sqlWebDeveloperUrl = 'foo';
    o.state = 'foo';
    o.supportedCloneRegions = buildUnnamed10();
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
    checkUnnamed8(o.peerDbIds!);
    unittest.expect(o.permissionLevel!, unittest.equals('foo'));
    unittest.expect(o.privateEndpoint!, unittest.equals('foo'));
    unittest.expect(o.privateEndpointIp!, unittest.equals('foo'));
    unittest.expect(o.privateEndpointLabel!, unittest.equals('foo'));
    unittest.expect(o.refreshableMode!, unittest.equals('foo'));
    unittest.expect(o.refreshableState!, unittest.equals('foo'));
    unittest.expect(o.role!, unittest.equals('foo'));
    checkUnnamed9(o.scheduledOperationDetails!);
    unittest.expect(o.secretId!, unittest.equals('foo'));
    unittest.expect(o.sqlWebDeveloperUrl!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    checkUnnamed10(o.supportedCloneRegions!);
    unittest.expect(o.totalAutoBackupStorageSizeGbs!, unittest.equals(42.0));
    unittest.expect(o.usedDataStorageSizeTbs!, unittest.equals(42));
    unittest.expect(o.vaultId!, unittest.equals('foo'));
  }
  buildCounterAutonomousDatabaseProperties--;
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

core.Map<core.String, core.String> buildUnnamed11() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed11(core.Map<core.String, core.String> o) {
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
    o.labels = buildUnnamed11();
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
    checkUnnamed11(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkCloudExadataInfrastructureProperties(o.properties!);
  }
  buildCounterCloudExadataInfrastructure--;
}

core.List<api.CustomerContact> buildUnnamed12() => [
  buildCustomerContact(),
  buildCustomerContact(),
];

void checkUnnamed12(core.List<api.CustomerContact> o) {
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
    o.customerContacts = buildUnnamed12();
    o.dataStorageSizeTb = 42.0;
    o.databaseServerType = 'foo';
    o.dbNodeStorageSizeGb = 42;
    o.dbServerVersion = 'foo';
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
    checkUnnamed12(o.customerContacts!);
    unittest.expect(o.dataStorageSizeTb!, unittest.equals(42.0));
    unittest.expect(o.databaseServerType!, unittest.equals('foo'));
    unittest.expect(o.dbNodeStorageSizeGb!, unittest.equals(42));
    unittest.expect(o.dbServerVersion!, unittest.equals('foo'));
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

core.Map<core.String, core.String> buildUnnamed13() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed13(core.Map<core.String, core.String> o) {
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
    o.gcpOracleZone = 'foo';
    o.labels = buildUnnamed13();
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
    unittest.expect(o.gcpOracleZone!, unittest.equals('foo'));
    checkUnnamed13(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.network!, unittest.equals('foo'));
    unittest.expect(o.odbNetwork!, unittest.equals('foo'));
    unittest.expect(o.odbSubnet!, unittest.equals('foo'));
    checkCloudVmClusterProperties(o.properties!);
  }
  buildCounterCloudVmCluster--;
}

core.List<core.String> buildUnnamed14() => ['foo', 'foo'];

void checkUnnamed14(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed15() => ['foo', 'foo'];

void checkUnnamed15(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed16() => ['foo', 'foo'];

void checkUnnamed16(core.List<core.String> o) {
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
    o.dbServerOcids = buildUnnamed14();
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
    o.scanIpIds = buildUnnamed15();
    o.scanListenerPortTcp = 42;
    o.scanListenerPortTcpSsl = 42;
    o.shape = 'foo';
    o.sparseDiskgroupEnabled = true;
    o.sshPublicKeys = buildUnnamed16();
    o.state = 'foo';
    o.storageSizeGb = 42;
    o.systemVersion = 'foo';
    o.timeZone = buildTimeZone();
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
    checkUnnamed14(o.dbServerOcids!);
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
    checkUnnamed15(o.scanIpIds!);
    unittest.expect(o.scanListenerPortTcp!, unittest.equals(42));
    unittest.expect(o.scanListenerPortTcpSsl!, unittest.equals(42));
    unittest.expect(o.shape!, unittest.equals('foo'));
    unittest.expect(o.sparseDiskgroupEnabled!, unittest.isTrue);
    checkUnnamed16(o.sshPublicKeys!);
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.storageSizeGb!, unittest.equals(42));
    unittest.expect(o.systemVersion!, unittest.equals('foo'));
    checkTimeZone(o.timeZone!);
  }
  buildCounterCloudVmClusterProperties--;
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

core.List<core.String> buildUnnamed17() => ['foo', 'foo'];

void checkUnnamed17(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterDbServerProperties = 0;
api.DbServerProperties buildDbServerProperties() {
  final o = api.DbServerProperties();
  buildCounterDbServerProperties++;
  if (buildCounterDbServerProperties < 3) {
    o.dbNodeIds = buildUnnamed17();
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
    checkUnnamed17(o.dbNodeIds!);
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

core.int buildCounterDbSystemShape = 0;
api.DbSystemShape buildDbSystemShape() {
  final o = api.DbSystemShape();
  buildCounterDbSystemShape++;
  if (buildCounterDbSystemShape < 3) {
    o.availableCoreCountPerNode = 42;
    o.availableDataStorageTb = 42;
    o.availableMemoryPerNodeGb = 42;
    o.maxNodeCount = 42;
    o.maxStorageCount = 42;
    o.minCoreCountPerNode = 42;
    o.minDbNodeStoragePerNodeGb = 42;
    o.minMemoryPerNodeGb = 42;
    o.minNodeCount = 42;
    o.minStorageCount = 42;
    o.name = 'foo';
    o.shape = 'foo';
  }
  buildCounterDbSystemShape--;
  return o;
}

void checkDbSystemShape(api.DbSystemShape o) {
  buildCounterDbSystemShape++;
  if (buildCounterDbSystemShape < 3) {
    unittest.expect(o.availableCoreCountPerNode!, unittest.equals(42));
    unittest.expect(o.availableDataStorageTb!, unittest.equals(42));
    unittest.expect(o.availableMemoryPerNodeGb!, unittest.equals(42));
    unittest.expect(o.maxNodeCount!, unittest.equals(42));
    unittest.expect(o.maxStorageCount!, unittest.equals(42));
    unittest.expect(o.minCoreCountPerNode!, unittest.equals(42));
    unittest.expect(o.minDbNodeStoragePerNodeGb!, unittest.equals(42));
    unittest.expect(o.minMemoryPerNodeGb!, unittest.equals(42));
    unittest.expect(o.minNodeCount!, unittest.equals(42));
    unittest.expect(o.minStorageCount!, unittest.equals(42));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.shape!, unittest.equals('foo'));
  }
  buildCounterDbSystemShape--;
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

core.List<api.AutonomousDatabaseBackup> buildUnnamed18() => [
  buildAutonomousDatabaseBackup(),
  buildAutonomousDatabaseBackup(),
];

void checkUnnamed18(core.List<api.AutonomousDatabaseBackup> o) {
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
    o.autonomousDatabaseBackups = buildUnnamed18();
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
    checkUnnamed18(o.autonomousDatabaseBackups!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListAutonomousDatabaseBackupsResponse--;
}

core.List<api.AutonomousDatabaseCharacterSet> buildUnnamed19() => [
  buildAutonomousDatabaseCharacterSet(),
  buildAutonomousDatabaseCharacterSet(),
];

void checkUnnamed19(core.List<api.AutonomousDatabaseCharacterSet> o) {
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
    o.autonomousDatabaseCharacterSets = buildUnnamed19();
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
    checkUnnamed19(o.autonomousDatabaseCharacterSets!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListAutonomousDatabaseCharacterSetsResponse--;
}

core.List<api.AutonomousDatabase> buildUnnamed20() => [
  buildAutonomousDatabase(),
  buildAutonomousDatabase(),
];

void checkUnnamed20(core.List<api.AutonomousDatabase> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAutonomousDatabase(o[0]);
  checkAutonomousDatabase(o[1]);
}

core.int buildCounterListAutonomousDatabasesResponse = 0;
api.ListAutonomousDatabasesResponse buildListAutonomousDatabasesResponse() {
  final o = api.ListAutonomousDatabasesResponse();
  buildCounterListAutonomousDatabasesResponse++;
  if (buildCounterListAutonomousDatabasesResponse < 3) {
    o.autonomousDatabases = buildUnnamed20();
    o.nextPageToken = 'foo';
  }
  buildCounterListAutonomousDatabasesResponse--;
  return o;
}

void checkListAutonomousDatabasesResponse(
  api.ListAutonomousDatabasesResponse o,
) {
  buildCounterListAutonomousDatabasesResponse++;
  if (buildCounterListAutonomousDatabasesResponse < 3) {
    checkUnnamed20(o.autonomousDatabases!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListAutonomousDatabasesResponse--;
}

core.List<api.AutonomousDbVersion> buildUnnamed21() => [
  buildAutonomousDbVersion(),
  buildAutonomousDbVersion(),
];

void checkUnnamed21(core.List<api.AutonomousDbVersion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAutonomousDbVersion(o[0]);
  checkAutonomousDbVersion(o[1]);
}

core.int buildCounterListAutonomousDbVersionsResponse = 0;
api.ListAutonomousDbVersionsResponse buildListAutonomousDbVersionsResponse() {
  final o = api.ListAutonomousDbVersionsResponse();
  buildCounterListAutonomousDbVersionsResponse++;
  if (buildCounterListAutonomousDbVersionsResponse < 3) {
    o.autonomousDbVersions = buildUnnamed21();
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
    checkUnnamed21(o.autonomousDbVersions!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListAutonomousDbVersionsResponse--;
}

core.List<api.CloudExadataInfrastructure> buildUnnamed22() => [
  buildCloudExadataInfrastructure(),
  buildCloudExadataInfrastructure(),
];

void checkUnnamed22(core.List<api.CloudExadataInfrastructure> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCloudExadataInfrastructure(o[0]);
  checkCloudExadataInfrastructure(o[1]);
}

core.int buildCounterListCloudExadataInfrastructuresResponse = 0;
api.ListCloudExadataInfrastructuresResponse
buildListCloudExadataInfrastructuresResponse() {
  final o = api.ListCloudExadataInfrastructuresResponse();
  buildCounterListCloudExadataInfrastructuresResponse++;
  if (buildCounterListCloudExadataInfrastructuresResponse < 3) {
    o.cloudExadataInfrastructures = buildUnnamed22();
    o.nextPageToken = 'foo';
  }
  buildCounterListCloudExadataInfrastructuresResponse--;
  return o;
}

void checkListCloudExadataInfrastructuresResponse(
  api.ListCloudExadataInfrastructuresResponse o,
) {
  buildCounterListCloudExadataInfrastructuresResponse++;
  if (buildCounterListCloudExadataInfrastructuresResponse < 3) {
    checkUnnamed22(o.cloudExadataInfrastructures!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListCloudExadataInfrastructuresResponse--;
}

core.List<api.CloudVmCluster> buildUnnamed23() => [
  buildCloudVmCluster(),
  buildCloudVmCluster(),
];

void checkUnnamed23(core.List<api.CloudVmCluster> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCloudVmCluster(o[0]);
  checkCloudVmCluster(o[1]);
}

core.int buildCounterListCloudVmClustersResponse = 0;
api.ListCloudVmClustersResponse buildListCloudVmClustersResponse() {
  final o = api.ListCloudVmClustersResponse();
  buildCounterListCloudVmClustersResponse++;
  if (buildCounterListCloudVmClustersResponse < 3) {
    o.cloudVmClusters = buildUnnamed23();
    o.nextPageToken = 'foo';
  }
  buildCounterListCloudVmClustersResponse--;
  return o;
}

void checkListCloudVmClustersResponse(api.ListCloudVmClustersResponse o) {
  buildCounterListCloudVmClustersResponse++;
  if (buildCounterListCloudVmClustersResponse < 3) {
    checkUnnamed23(o.cloudVmClusters!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListCloudVmClustersResponse--;
}

core.List<api.DbNode> buildUnnamed24() => [buildDbNode(), buildDbNode()];

void checkUnnamed24(core.List<api.DbNode> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDbNode(o[0]);
  checkDbNode(o[1]);
}

core.int buildCounterListDbNodesResponse = 0;
api.ListDbNodesResponse buildListDbNodesResponse() {
  final o = api.ListDbNodesResponse();
  buildCounterListDbNodesResponse++;
  if (buildCounterListDbNodesResponse < 3) {
    o.dbNodes = buildUnnamed24();
    o.nextPageToken = 'foo';
  }
  buildCounterListDbNodesResponse--;
  return o;
}

void checkListDbNodesResponse(api.ListDbNodesResponse o) {
  buildCounterListDbNodesResponse++;
  if (buildCounterListDbNodesResponse < 3) {
    checkUnnamed24(o.dbNodes!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListDbNodesResponse--;
}

core.List<api.DbServer> buildUnnamed25() => [buildDbServer(), buildDbServer()];

void checkUnnamed25(core.List<api.DbServer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDbServer(o[0]);
  checkDbServer(o[1]);
}

core.int buildCounterListDbServersResponse = 0;
api.ListDbServersResponse buildListDbServersResponse() {
  final o = api.ListDbServersResponse();
  buildCounterListDbServersResponse++;
  if (buildCounterListDbServersResponse < 3) {
    o.dbServers = buildUnnamed25();
    o.nextPageToken = 'foo';
  }
  buildCounterListDbServersResponse--;
  return o;
}

void checkListDbServersResponse(api.ListDbServersResponse o) {
  buildCounterListDbServersResponse++;
  if (buildCounterListDbServersResponse < 3) {
    checkUnnamed25(o.dbServers!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListDbServersResponse--;
}

core.List<api.DbSystemShape> buildUnnamed26() => [
  buildDbSystemShape(),
  buildDbSystemShape(),
];

void checkUnnamed26(core.List<api.DbSystemShape> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDbSystemShape(o[0]);
  checkDbSystemShape(o[1]);
}

core.int buildCounterListDbSystemShapesResponse = 0;
api.ListDbSystemShapesResponse buildListDbSystemShapesResponse() {
  final o = api.ListDbSystemShapesResponse();
  buildCounterListDbSystemShapesResponse++;
  if (buildCounterListDbSystemShapesResponse < 3) {
    o.dbSystemShapes = buildUnnamed26();
    o.nextPageToken = 'foo';
  }
  buildCounterListDbSystemShapesResponse--;
  return o;
}

void checkListDbSystemShapesResponse(api.ListDbSystemShapesResponse o) {
  buildCounterListDbSystemShapesResponse++;
  if (buildCounterListDbSystemShapesResponse < 3) {
    checkUnnamed26(o.dbSystemShapes!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListDbSystemShapesResponse--;
}

core.List<api.Entitlement> buildUnnamed27() => [
  buildEntitlement(),
  buildEntitlement(),
];

void checkUnnamed27(core.List<api.Entitlement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEntitlement(o[0]);
  checkEntitlement(o[1]);
}

core.int buildCounterListEntitlementsResponse = 0;
api.ListEntitlementsResponse buildListEntitlementsResponse() {
  final o = api.ListEntitlementsResponse();
  buildCounterListEntitlementsResponse++;
  if (buildCounterListEntitlementsResponse < 3) {
    o.entitlements = buildUnnamed27();
    o.nextPageToken = 'foo';
  }
  buildCounterListEntitlementsResponse--;
  return o;
}

void checkListEntitlementsResponse(api.ListEntitlementsResponse o) {
  buildCounterListEntitlementsResponse++;
  if (buildCounterListEntitlementsResponse < 3) {
    checkUnnamed27(o.entitlements!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListEntitlementsResponse--;
}

core.List<api.GiVersion> buildUnnamed28() => [
  buildGiVersion(),
  buildGiVersion(),
];

void checkUnnamed28(core.List<api.GiVersion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGiVersion(o[0]);
  checkGiVersion(o[1]);
}

core.int buildCounterListGiVersionsResponse = 0;
api.ListGiVersionsResponse buildListGiVersionsResponse() {
  final o = api.ListGiVersionsResponse();
  buildCounterListGiVersionsResponse++;
  if (buildCounterListGiVersionsResponse < 3) {
    o.giVersions = buildUnnamed28();
    o.nextPageToken = 'foo';
  }
  buildCounterListGiVersionsResponse--;
  return o;
}

void checkListGiVersionsResponse(api.ListGiVersionsResponse o) {
  buildCounterListGiVersionsResponse++;
  if (buildCounterListGiVersionsResponse < 3) {
    checkUnnamed28(o.giVersions!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListGiVersionsResponse--;
}

core.List<api.Location> buildUnnamed29() => [buildLocation(), buildLocation()];

void checkUnnamed29(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  final o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed29();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed29(o.locations!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListLocationsResponse--;
}

core.List<api.OdbNetwork> buildUnnamed30() => [
  buildOdbNetwork(),
  buildOdbNetwork(),
];

void checkUnnamed30(core.List<api.OdbNetwork> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOdbNetwork(o[0]);
  checkOdbNetwork(o[1]);
}

core.List<core.String> buildUnnamed31() => ['foo', 'foo'];

void checkUnnamed31(core.List<core.String> o) {
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
    o.odbNetworks = buildUnnamed30();
    o.unreachable = buildUnnamed31();
  }
  buildCounterListOdbNetworksResponse--;
  return o;
}

void checkListOdbNetworksResponse(api.ListOdbNetworksResponse o) {
  buildCounterListOdbNetworksResponse++;
  if (buildCounterListOdbNetworksResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed30(o.odbNetworks!);
    checkUnnamed31(o.unreachable!);
  }
  buildCounterListOdbNetworksResponse--;
}

core.List<api.OdbSubnet> buildUnnamed32() => [
  buildOdbSubnet(),
  buildOdbSubnet(),
];

void checkUnnamed32(core.List<api.OdbSubnet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOdbSubnet(o[0]);
  checkOdbSubnet(o[1]);
}

core.List<core.String> buildUnnamed33() => ['foo', 'foo'];

void checkUnnamed33(core.List<core.String> o) {
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
    o.odbSubnets = buildUnnamed32();
    o.unreachable = buildUnnamed33();
  }
  buildCounterListOdbSubnetsResponse--;
  return o;
}

void checkListOdbSubnetsResponse(api.ListOdbSubnetsResponse o) {
  buildCounterListOdbSubnetsResponse++;
  if (buildCounterListOdbSubnetsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed32(o.odbSubnets!);
    checkUnnamed33(o.unreachable!);
  }
  buildCounterListOdbSubnetsResponse--;
}

core.List<api.Operation> buildUnnamed34() => [
  buildOperation(),
  buildOperation(),
];

void checkUnnamed34(core.List<api.Operation> o) {
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
    o.operations = buildUnnamed34();
  }
  buildCounterListOperationsResponse--;
  return o;
}

void checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed34(o.operations!);
  }
  buildCounterListOperationsResponse--;
}

core.Map<core.String, core.String> buildUnnamed35() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed35(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
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
    o.labels = buildUnnamed35();
    o.locationId = 'foo';
    o.metadata = buildUnnamed36();
    o.name = 'foo';
  }
  buildCounterLocation--;
  return o;
}

void checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkUnnamed35(o.labels!);
    unittest.expect(o.locationId!, unittest.equals('foo'));
    checkUnnamed36(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterLocation--;
}

core.List<core.String> buildUnnamed37() => ['foo', 'foo'];

void checkUnnamed37(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.int> buildUnnamed38() => [42, 42];

void checkUnnamed38(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.List<core.String> buildUnnamed39() => ['foo', 'foo'];

void checkUnnamed39(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.int> buildUnnamed40() => [42, 42];

void checkUnnamed40(core.List<core.int> o) {
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
    o.daysOfWeek = buildUnnamed37();
    o.hoursOfDay = buildUnnamed38();
    o.isCustomActionTimeoutEnabled = true;
    o.leadTimeWeek = 42;
    o.months = buildUnnamed39();
    o.patchingMode = 'foo';
    o.preference = 'foo';
    o.weeksOfMonth = buildUnnamed40();
  }
  buildCounterMaintenanceWindow--;
  return o;
}

void checkMaintenanceWindow(api.MaintenanceWindow o) {
  buildCounterMaintenanceWindow++;
  if (buildCounterMaintenanceWindow < 3) {
    unittest.expect(o.customActionTimeoutMins!, unittest.equals(42));
    checkUnnamed37(o.daysOfWeek!);
    checkUnnamed38(o.hoursOfDay!);
    unittest.expect(o.isCustomActionTimeoutEnabled!, unittest.isTrue);
    unittest.expect(o.leadTimeWeek!, unittest.equals(42));
    checkUnnamed39(o.months!);
    unittest.expect(o.patchingMode!, unittest.equals('foo'));
    unittest.expect(o.preference!, unittest.equals('foo'));
    checkUnnamed40(o.weeksOfMonth!);
  }
  buildCounterMaintenanceWindow--;
}

core.Map<core.String, core.String> buildUnnamed41() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed41(core.Map<core.String, core.String> o) {
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
    o.labels = buildUnnamed41();
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
    checkUnnamed41(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.network!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
  }
  buildCounterOdbNetwork--;
}

core.Map<core.String, core.String> buildUnnamed42() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed42(core.Map<core.String, core.String> o) {
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
    o.labels = buildUnnamed42();
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
    checkUnnamed42(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.purpose!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
  }
  buildCounterOdbSubnet--;
}

core.Map<core.String, core.Object?> buildUnnamed43() => {
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

void checkUnnamed43(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed44() => {
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

void checkUnnamed44(core.Map<core.String, core.Object?> o) {
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
    o.metadata = buildUnnamed43();
    o.name = 'foo';
    o.response = buildUnnamed44();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed43(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed44(o.response!);
  }
  buildCounterOperation--;
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
    o.automaticBackupsReplicationEnabled = true;
    o.autonomousDatabase = 'foo';
  }
  buildCounterSourceConfig--;
  return o;
}

void checkSourceConfig(api.SourceConfig o) {
  buildCounterSourceConfig++;
  if (buildCounterSourceConfig < 3) {
    unittest.expect(o.automaticBackupsReplicationEnabled!, unittest.isTrue);
    unittest.expect(o.autonomousDatabase!, unittest.equals('foo'));
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

core.Map<core.String, core.Object?> buildUnnamed45() => {
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

void checkUnnamed45(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed46() => [
  buildUnnamed45(),
  buildUnnamed45(),
];

void checkUnnamed46(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed45(o[0]);
  checkUnnamed45(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed46();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code!, unittest.equals(42));
    checkUnnamed46(o.details!);
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

core.List<core.String> buildUnnamed47() => ['foo', 'foo'];

void checkUnnamed47(core.List<core.String> o) {
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
      final arg_extraLocationTypes = buildUnnamed47();
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
        final res =
            api.OracleDatabaseApi(
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
        final res =
            api.OracleDatabaseApi(
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
      final res =
          api.OracleDatabaseApi(mock).projects.locations.autonomousDatabases;
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
      final res =
          api.OracleDatabaseApi(mock).projects.locations.autonomousDatabases;
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

    unittest.test('method--generateWallet', () async {
      final mock = HttpServerMock();
      final res =
          api.OracleDatabaseApi(mock).projects.locations.autonomousDatabases;
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
      final res =
          api.OracleDatabaseApi(mock).projects.locations.autonomousDatabases;
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

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.OracleDatabaseApi(mock).projects.locations.autonomousDatabases;
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

    unittest.test('method--restart', () async {
      final mock = HttpServerMock();
      final res =
          api.OracleDatabaseApi(mock).projects.locations.autonomousDatabases;
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
      final res =
          api.OracleDatabaseApi(mock).projects.locations.autonomousDatabases;
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
      final res =
          api.OracleDatabaseApi(mock).projects.locations.autonomousDatabases;
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
      final res =
          api.OracleDatabaseApi(mock).projects.locations.autonomousDatabases;
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
      final res =
          api.OracleDatabaseApi(mock).projects.locations.autonomousDatabases;
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
      final res =
          api.OracleDatabaseApi(mock).projects.locations.autonomousDbVersions;
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
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.OracleDatabaseApi(
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
      final res =
          api.OracleDatabaseApi(
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
      final res =
          api.OracleDatabaseApi(
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
      final res =
          api.OracleDatabaseApi(
            mock,
          ).projects.locations.cloudExadataInfrastructures;
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
            buildListCloudExadataInfrastructuresResponse(),
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
        final res =
            api.OracleDatabaseApi(
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
      final res =
          api.OracleDatabaseApi(mock).projects.locations.cloudVmClusters;
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
      final res =
          api.OracleDatabaseApi(mock).projects.locations.cloudVmClusters;
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
      final res =
          api.OracleDatabaseApi(mock).projects.locations.cloudVmClusters;
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
      final res =
          api.OracleDatabaseApi(mock).projects.locations.cloudVmClusters;
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
      final res =
          api.OracleDatabaseApi(
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

  unittest.group('resource-ProjectsLocationsDbSystemShapesResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.OracleDatabaseApi(mock).projects.locations.dbSystemShapes;
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
          final resp = convert.json.encode(buildListDbSystemShapesResponse());
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
      checkListDbSystemShapesResponse(
        response as api.ListDbSystemShapesResponse,
      );
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
      final res =
          api.OracleDatabaseApi(mock).projects.locations.odbNetworks.odbSubnets;
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
      final res =
          api.OracleDatabaseApi(mock).projects.locations.odbNetworks.odbSubnets;
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
      final res =
          api.OracleDatabaseApi(mock).projects.locations.odbNetworks.odbSubnets;
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
      final res =
          api.OracleDatabaseApi(mock).projects.locations.odbNetworks.odbSubnets;
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
        $fields: arg_$fields,
      );
      checkListOperationsResponse(response as api.ListOperationsResponse);
    });
  });
}
