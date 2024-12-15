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

import 'package:googleapis/netapp/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<core.String> buildUnnamed0() => [
      'foo',
      'foo',
    ];

void checkUnnamed0(core.List<core.String> o) {
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

core.Map<core.String, core.String> buildUnnamed2() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed2(core.Map<core.String, core.String> o) {
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

core.int buildCounterActiveDirectory = 0;
api.ActiveDirectory buildActiveDirectory() {
  final o = api.ActiveDirectory();
  buildCounterActiveDirectory++;
  if (buildCounterActiveDirectory < 3) {
    o.administrators = buildUnnamed0();
    o.aesEncryption = true;
    o.backupOperators = buildUnnamed1();
    o.createTime = 'foo';
    o.description = 'foo';
    o.dns = 'foo';
    o.domain = 'foo';
    o.encryptDcConnections = true;
    o.kdcHostname = 'foo';
    o.kdcIp = 'foo';
    o.labels = buildUnnamed2();
    o.ldapSigning = true;
    o.name = 'foo';
    o.netBiosPrefix = 'foo';
    o.nfsUsersWithLdap = true;
    o.organizationalUnit = 'foo';
    o.password = 'foo';
    o.securityOperators = buildUnnamed3();
    o.site = 'foo';
    o.state = 'foo';
    o.stateDetails = 'foo';
    o.username = 'foo';
  }
  buildCounterActiveDirectory--;
  return o;
}

void checkActiveDirectory(api.ActiveDirectory o) {
  buildCounterActiveDirectory++;
  if (buildCounterActiveDirectory < 3) {
    checkUnnamed0(o.administrators!);
    unittest.expect(o.aesEncryption!, unittest.isTrue);
    checkUnnamed1(o.backupOperators!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dns!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.domain!,
      unittest.equals('foo'),
    );
    unittest.expect(o.encryptDcConnections!, unittest.isTrue);
    unittest.expect(
      o.kdcHostname!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kdcIp!,
      unittest.equals('foo'),
    );
    checkUnnamed2(o.labels!);
    unittest.expect(o.ldapSigning!, unittest.isTrue);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.netBiosPrefix!,
      unittest.equals('foo'),
    );
    unittest.expect(o.nfsUsersWithLdap!, unittest.isTrue);
    unittest.expect(
      o.organizationalUnit!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.password!,
      unittest.equals('foo'),
    );
    checkUnnamed3(o.securityOperators!);
    unittest.expect(
      o.site!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.stateDetails!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.username!,
      unittest.equals('foo'),
    );
  }
  buildCounterActiveDirectory--;
}

core.Map<core.String, core.String> buildUnnamed4() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed4(core.Map<core.String, core.String> o) {
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

core.int buildCounterBackup = 0;
api.Backup buildBackup() {
  final o = api.Backup();
  buildCounterBackup++;
  if (buildCounterBackup < 3) {
    o.backupType = 'foo';
    o.chainStorageBytes = 'foo';
    o.createTime = 'foo';
    o.description = 'foo';
    o.labels = buildUnnamed4();
    o.name = 'foo';
    o.sourceSnapshot = 'foo';
    o.sourceVolume = 'foo';
    o.state = 'foo';
    o.volumeUsageBytes = 'foo';
  }
  buildCounterBackup--;
  return o;
}

void checkBackup(api.Backup o) {
  buildCounterBackup++;
  if (buildCounterBackup < 3) {
    unittest.expect(
      o.backupType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.chainStorageBytes!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkUnnamed4(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sourceSnapshot!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sourceVolume!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.volumeUsageBytes!,
      unittest.equals('foo'),
    );
  }
  buildCounterBackup--;
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

core.int buildCounterBackupConfig = 0;
api.BackupConfig buildBackupConfig() {
  final o = api.BackupConfig();
  buildCounterBackupConfig++;
  if (buildCounterBackupConfig < 3) {
    o.backupChainBytes = 'foo';
    o.backupPolicies = buildUnnamed5();
    o.backupVault = 'foo';
    o.scheduledBackupEnabled = true;
  }
  buildCounterBackupConfig--;
  return o;
}

void checkBackupConfig(api.BackupConfig o) {
  buildCounterBackupConfig++;
  if (buildCounterBackupConfig < 3) {
    unittest.expect(
      o.backupChainBytes!,
      unittest.equals('foo'),
    );
    checkUnnamed5(o.backupPolicies!);
    unittest.expect(
      o.backupVault!,
      unittest.equals('foo'),
    );
    unittest.expect(o.scheduledBackupEnabled!, unittest.isTrue);
  }
  buildCounterBackupConfig--;
}

core.Map<core.String, core.String> buildUnnamed6() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed6(core.Map<core.String, core.String> o) {
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

core.int buildCounterBackupPolicy = 0;
api.BackupPolicy buildBackupPolicy() {
  final o = api.BackupPolicy();
  buildCounterBackupPolicy++;
  if (buildCounterBackupPolicy < 3) {
    o.assignedVolumeCount = 42;
    o.createTime = 'foo';
    o.dailyBackupLimit = 42;
    o.description = 'foo';
    o.enabled = true;
    o.labels = buildUnnamed6();
    o.monthlyBackupLimit = 42;
    o.name = 'foo';
    o.state = 'foo';
    o.weeklyBackupLimit = 42;
  }
  buildCounterBackupPolicy--;
  return o;
}

void checkBackupPolicy(api.BackupPolicy o) {
  buildCounterBackupPolicy++;
  if (buildCounterBackupPolicy < 3) {
    unittest.expect(
      o.assignedVolumeCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dailyBackupLimit!,
      unittest.equals(42),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(o.enabled!, unittest.isTrue);
    checkUnnamed6(o.labels!);
    unittest.expect(
      o.monthlyBackupLimit!,
      unittest.equals(42),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.weeklyBackupLimit!,
      unittest.equals(42),
    );
  }
  buildCounterBackupPolicy--;
}

core.Map<core.String, core.String> buildUnnamed7() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed7(core.Map<core.String, core.String> o) {
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

core.int buildCounterBackupVault = 0;
api.BackupVault buildBackupVault() {
  final o = api.BackupVault();
  buildCounterBackupVault++;
  if (buildCounterBackupVault < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.labels = buildUnnamed7();
    o.name = 'foo';
    o.state = 'foo';
  }
  buildCounterBackupVault--;
  return o;
}

void checkBackupVault(api.BackupVault o) {
  buildCounterBackupVault++;
  if (buildCounterBackupVault < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkUnnamed7(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterBackupVault--;
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

core.int buildCounterDailySchedule = 0;
api.DailySchedule buildDailySchedule() {
  final o = api.DailySchedule();
  buildCounterDailySchedule++;
  if (buildCounterDailySchedule < 3) {
    o.hour = 42.0;
    o.minute = 42.0;
    o.snapshotsToKeep = 42.0;
  }
  buildCounterDailySchedule--;
  return o;
}

void checkDailySchedule(api.DailySchedule o) {
  buildCounterDailySchedule++;
  if (buildCounterDailySchedule < 3) {
    unittest.expect(
      o.hour!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.minute!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.snapshotsToKeep!,
      unittest.equals(42.0),
    );
  }
  buildCounterDailySchedule--;
}

core.int buildCounterDestinationVolumeParameters = 0;
api.DestinationVolumeParameters buildDestinationVolumeParameters() {
  final o = api.DestinationVolumeParameters();
  buildCounterDestinationVolumeParameters++;
  if (buildCounterDestinationVolumeParameters < 3) {
    o.description = 'foo';
    o.shareName = 'foo';
    o.storagePool = 'foo';
    o.tieringPolicy = buildTieringPolicy();
    o.volumeId = 'foo';
  }
  buildCounterDestinationVolumeParameters--;
  return o;
}

void checkDestinationVolumeParameters(api.DestinationVolumeParameters o) {
  buildCounterDestinationVolumeParameters++;
  if (buildCounterDestinationVolumeParameters < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.shareName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.storagePool!,
      unittest.equals('foo'),
    );
    checkTieringPolicy(o.tieringPolicy!);
    unittest.expect(
      o.volumeId!,
      unittest.equals('foo'),
    );
  }
  buildCounterDestinationVolumeParameters--;
}

core.int buildCounterEncryptVolumesRequest = 0;
api.EncryptVolumesRequest buildEncryptVolumesRequest() {
  final o = api.EncryptVolumesRequest();
  buildCounterEncryptVolumesRequest++;
  if (buildCounterEncryptVolumesRequest < 3) {}
  buildCounterEncryptVolumesRequest--;
  return o;
}

void checkEncryptVolumesRequest(api.EncryptVolumesRequest o) {
  buildCounterEncryptVolumesRequest++;
  if (buildCounterEncryptVolumesRequest < 3) {}
  buildCounterEncryptVolumesRequest--;
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

core.int buildCounterEstablishPeeringRequest = 0;
api.EstablishPeeringRequest buildEstablishPeeringRequest() {
  final o = api.EstablishPeeringRequest();
  buildCounterEstablishPeeringRequest++;
  if (buildCounterEstablishPeeringRequest < 3) {
    o.peerClusterName = 'foo';
    o.peerIpAddresses = buildUnnamed8();
    o.peerSvmName = 'foo';
    o.peerVolumeName = 'foo';
  }
  buildCounterEstablishPeeringRequest--;
  return o;
}

void checkEstablishPeeringRequest(api.EstablishPeeringRequest o) {
  buildCounterEstablishPeeringRequest++;
  if (buildCounterEstablishPeeringRequest < 3) {
    unittest.expect(
      o.peerClusterName!,
      unittest.equals('foo'),
    );
    checkUnnamed8(o.peerIpAddresses!);
    unittest.expect(
      o.peerSvmName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.peerVolumeName!,
      unittest.equals('foo'),
    );
  }
  buildCounterEstablishPeeringRequest--;
}

core.List<api.SimpleExportPolicyRule> buildUnnamed9() => [
      buildSimpleExportPolicyRule(),
      buildSimpleExportPolicyRule(),
    ];

void checkUnnamed9(core.List<api.SimpleExportPolicyRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSimpleExportPolicyRule(o[0]);
  checkSimpleExportPolicyRule(o[1]);
}

core.int buildCounterExportPolicy = 0;
api.ExportPolicy buildExportPolicy() {
  final o = api.ExportPolicy();
  buildCounterExportPolicy++;
  if (buildCounterExportPolicy < 3) {
    o.rules = buildUnnamed9();
  }
  buildCounterExportPolicy--;
  return o;
}

void checkExportPolicy(api.ExportPolicy o) {
  buildCounterExportPolicy++;
  if (buildCounterExportPolicy < 3) {
    checkUnnamed9(o.rules!);
  }
  buildCounterExportPolicy--;
}

core.int buildCounterGoogleProtobufEmpty = 0;
api.GoogleProtobufEmpty buildGoogleProtobufEmpty() {
  final o = api.GoogleProtobufEmpty();
  buildCounterGoogleProtobufEmpty++;
  if (buildCounterGoogleProtobufEmpty < 3) {}
  buildCounterGoogleProtobufEmpty--;
  return o;
}

void checkGoogleProtobufEmpty(api.GoogleProtobufEmpty o) {
  buildCounterGoogleProtobufEmpty++;
  if (buildCounterGoogleProtobufEmpty < 3) {}
  buildCounterGoogleProtobufEmpty--;
}

core.int buildCounterHourlySchedule = 0;
api.HourlySchedule buildHourlySchedule() {
  final o = api.HourlySchedule();
  buildCounterHourlySchedule++;
  if (buildCounterHourlySchedule < 3) {
    o.minute = 42.0;
    o.snapshotsToKeep = 42.0;
  }
  buildCounterHourlySchedule--;
  return o;
}

void checkHourlySchedule(api.HourlySchedule o) {
  buildCounterHourlySchedule++;
  if (buildCounterHourlySchedule < 3) {
    unittest.expect(
      o.minute!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.snapshotsToKeep!,
      unittest.equals(42.0),
    );
  }
  buildCounterHourlySchedule--;
}

core.int buildCounterHybridPeeringDetails = 0;
api.HybridPeeringDetails buildHybridPeeringDetails() {
  final o = api.HybridPeeringDetails();
  buildCounterHybridPeeringDetails++;
  if (buildCounterHybridPeeringDetails < 3) {
    o.command = 'foo';
    o.commandExpiryTime = 'foo';
    o.passphrase = 'foo';
    o.subnetIp = 'foo';
  }
  buildCounterHybridPeeringDetails--;
  return o;
}

void checkHybridPeeringDetails(api.HybridPeeringDetails o) {
  buildCounterHybridPeeringDetails++;
  if (buildCounterHybridPeeringDetails < 3) {
    unittest.expect(
      o.command!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.commandExpiryTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.passphrase!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subnetIp!,
      unittest.equals('foo'),
    );
  }
  buildCounterHybridPeeringDetails--;
}

core.Map<core.String, core.String> buildUnnamed10() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed10(core.Map<core.String, core.String> o) {
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

core.int buildCounterHybridReplicationParameters = 0;
api.HybridReplicationParameters buildHybridReplicationParameters() {
  final o = api.HybridReplicationParameters();
  buildCounterHybridReplicationParameters++;
  if (buildCounterHybridReplicationParameters < 3) {
    o.clusterLocation = 'foo';
    o.description = 'foo';
    o.labels = buildUnnamed10();
    o.peerClusterName = 'foo';
    o.peerIpAddresses = buildUnnamed11();
    o.peerSvmName = 'foo';
    o.peerVolumeName = 'foo';
    o.replication = 'foo';
  }
  buildCounterHybridReplicationParameters--;
  return o;
}

void checkHybridReplicationParameters(api.HybridReplicationParameters o) {
  buildCounterHybridReplicationParameters++;
  if (buildCounterHybridReplicationParameters < 3) {
    unittest.expect(
      o.clusterLocation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkUnnamed10(o.labels!);
    unittest.expect(
      o.peerClusterName!,
      unittest.equals('foo'),
    );
    checkUnnamed11(o.peerIpAddresses!);
    unittest.expect(
      o.peerSvmName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.peerVolumeName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.replication!,
      unittest.equals('foo'),
    );
  }
  buildCounterHybridReplicationParameters--;
}

core.Map<core.String, core.String> buildUnnamed12() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed12(core.Map<core.String, core.String> o) {
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

core.int buildCounterKmsConfig = 0;
api.KmsConfig buildKmsConfig() {
  final o = api.KmsConfig();
  buildCounterKmsConfig++;
  if (buildCounterKmsConfig < 3) {
    o.createTime = 'foo';
    o.cryptoKeyName = 'foo';
    o.description = 'foo';
    o.instructions = 'foo';
    o.labels = buildUnnamed12();
    o.name = 'foo';
    o.serviceAccount = 'foo';
    o.state = 'foo';
    o.stateDetails = 'foo';
  }
  buildCounterKmsConfig--;
  return o;
}

void checkKmsConfig(api.KmsConfig o) {
  buildCounterKmsConfig++;
  if (buildCounterKmsConfig < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.cryptoKeyName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.instructions!,
      unittest.equals('foo'),
    );
    checkUnnamed12(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serviceAccount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.stateDetails!,
      unittest.equals('foo'),
    );
  }
  buildCounterKmsConfig--;
}

core.List<api.ActiveDirectory> buildUnnamed13() => [
      buildActiveDirectory(),
      buildActiveDirectory(),
    ];

void checkUnnamed13(core.List<api.ActiveDirectory> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkActiveDirectory(o[0]);
  checkActiveDirectory(o[1]);
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

core.int buildCounterListActiveDirectoriesResponse = 0;
api.ListActiveDirectoriesResponse buildListActiveDirectoriesResponse() {
  final o = api.ListActiveDirectoriesResponse();
  buildCounterListActiveDirectoriesResponse++;
  if (buildCounterListActiveDirectoriesResponse < 3) {
    o.activeDirectories = buildUnnamed13();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed14();
  }
  buildCounterListActiveDirectoriesResponse--;
  return o;
}

void checkListActiveDirectoriesResponse(api.ListActiveDirectoriesResponse o) {
  buildCounterListActiveDirectoriesResponse++;
  if (buildCounterListActiveDirectoriesResponse < 3) {
    checkUnnamed13(o.activeDirectories!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed14(o.unreachable!);
  }
  buildCounterListActiveDirectoriesResponse--;
}

core.List<api.BackupPolicy> buildUnnamed15() => [
      buildBackupPolicy(),
      buildBackupPolicy(),
    ];

void checkUnnamed15(core.List<api.BackupPolicy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBackupPolicy(o[0]);
  checkBackupPolicy(o[1]);
}

core.List<core.String> buildUnnamed16() => [
      'foo',
      'foo',
    ];

void checkUnnamed16(core.List<core.String> o) {
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

core.int buildCounterListBackupPoliciesResponse = 0;
api.ListBackupPoliciesResponse buildListBackupPoliciesResponse() {
  final o = api.ListBackupPoliciesResponse();
  buildCounterListBackupPoliciesResponse++;
  if (buildCounterListBackupPoliciesResponse < 3) {
    o.backupPolicies = buildUnnamed15();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed16();
  }
  buildCounterListBackupPoliciesResponse--;
  return o;
}

void checkListBackupPoliciesResponse(api.ListBackupPoliciesResponse o) {
  buildCounterListBackupPoliciesResponse++;
  if (buildCounterListBackupPoliciesResponse < 3) {
    checkUnnamed15(o.backupPolicies!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed16(o.unreachable!);
  }
  buildCounterListBackupPoliciesResponse--;
}

core.List<api.BackupVault> buildUnnamed17() => [
      buildBackupVault(),
      buildBackupVault(),
    ];

void checkUnnamed17(core.List<api.BackupVault> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBackupVault(o[0]);
  checkBackupVault(o[1]);
}

core.List<core.String> buildUnnamed18() => [
      'foo',
      'foo',
    ];

void checkUnnamed18(core.List<core.String> o) {
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

core.int buildCounterListBackupVaultsResponse = 0;
api.ListBackupVaultsResponse buildListBackupVaultsResponse() {
  final o = api.ListBackupVaultsResponse();
  buildCounterListBackupVaultsResponse++;
  if (buildCounterListBackupVaultsResponse < 3) {
    o.backupVaults = buildUnnamed17();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed18();
  }
  buildCounterListBackupVaultsResponse--;
  return o;
}

void checkListBackupVaultsResponse(api.ListBackupVaultsResponse o) {
  buildCounterListBackupVaultsResponse++;
  if (buildCounterListBackupVaultsResponse < 3) {
    checkUnnamed17(o.backupVaults!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed18(o.unreachable!);
  }
  buildCounterListBackupVaultsResponse--;
}

core.List<api.Backup> buildUnnamed19() => [
      buildBackup(),
      buildBackup(),
    ];

void checkUnnamed19(core.List<api.Backup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBackup(o[0]);
  checkBackup(o[1]);
}

core.List<core.String> buildUnnamed20() => [
      'foo',
      'foo',
    ];

void checkUnnamed20(core.List<core.String> o) {
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

core.int buildCounterListBackupsResponse = 0;
api.ListBackupsResponse buildListBackupsResponse() {
  final o = api.ListBackupsResponse();
  buildCounterListBackupsResponse++;
  if (buildCounterListBackupsResponse < 3) {
    o.backups = buildUnnamed19();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed20();
  }
  buildCounterListBackupsResponse--;
  return o;
}

void checkListBackupsResponse(api.ListBackupsResponse o) {
  buildCounterListBackupsResponse++;
  if (buildCounterListBackupsResponse < 3) {
    checkUnnamed19(o.backups!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed20(o.unreachable!);
  }
  buildCounterListBackupsResponse--;
}

core.List<api.KmsConfig> buildUnnamed21() => [
      buildKmsConfig(),
      buildKmsConfig(),
    ];

void checkUnnamed21(core.List<api.KmsConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkKmsConfig(o[0]);
  checkKmsConfig(o[1]);
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

core.int buildCounterListKmsConfigsResponse = 0;
api.ListKmsConfigsResponse buildListKmsConfigsResponse() {
  final o = api.ListKmsConfigsResponse();
  buildCounterListKmsConfigsResponse++;
  if (buildCounterListKmsConfigsResponse < 3) {
    o.kmsConfigs = buildUnnamed21();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed22();
  }
  buildCounterListKmsConfigsResponse--;
  return o;
}

void checkListKmsConfigsResponse(api.ListKmsConfigsResponse o) {
  buildCounterListKmsConfigsResponse++;
  if (buildCounterListKmsConfigsResponse < 3) {
    checkUnnamed21(o.kmsConfigs!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed22(o.unreachable!);
  }
  buildCounterListKmsConfigsResponse--;
}

core.List<api.Location> buildUnnamed23() => [
      buildLocation(),
      buildLocation(),
    ];

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
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListLocationsResponse--;
}

core.List<api.Operation> buildUnnamed24() => [
      buildOperation(),
      buildOperation(),
    ];

void checkUnnamed24(core.List<api.Operation> o) {
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
    o.operations = buildUnnamed24();
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
    checkUnnamed24(o.operations!);
  }
  buildCounterListOperationsResponse--;
}

core.List<api.Replication> buildUnnamed25() => [
      buildReplication(),
      buildReplication(),
    ];

void checkUnnamed25(core.List<api.Replication> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReplication(o[0]);
  checkReplication(o[1]);
}

core.List<core.String> buildUnnamed26() => [
      'foo',
      'foo',
    ];

void checkUnnamed26(core.List<core.String> o) {
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

core.int buildCounterListReplicationsResponse = 0;
api.ListReplicationsResponse buildListReplicationsResponse() {
  final o = api.ListReplicationsResponse();
  buildCounterListReplicationsResponse++;
  if (buildCounterListReplicationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.replications = buildUnnamed25();
    o.unreachable = buildUnnamed26();
  }
  buildCounterListReplicationsResponse--;
  return o;
}

void checkListReplicationsResponse(api.ListReplicationsResponse o) {
  buildCounterListReplicationsResponse++;
  if (buildCounterListReplicationsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed25(o.replications!);
    checkUnnamed26(o.unreachable!);
  }
  buildCounterListReplicationsResponse--;
}

core.List<api.Snapshot> buildUnnamed27() => [
      buildSnapshot(),
      buildSnapshot(),
    ];

void checkUnnamed27(core.List<api.Snapshot> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSnapshot(o[0]);
  checkSnapshot(o[1]);
}

core.List<core.String> buildUnnamed28() => [
      'foo',
      'foo',
    ];

void checkUnnamed28(core.List<core.String> o) {
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

core.int buildCounterListSnapshotsResponse = 0;
api.ListSnapshotsResponse buildListSnapshotsResponse() {
  final o = api.ListSnapshotsResponse();
  buildCounterListSnapshotsResponse++;
  if (buildCounterListSnapshotsResponse < 3) {
    o.nextPageToken = 'foo';
    o.snapshots = buildUnnamed27();
    o.unreachable = buildUnnamed28();
  }
  buildCounterListSnapshotsResponse--;
  return o;
}

void checkListSnapshotsResponse(api.ListSnapshotsResponse o) {
  buildCounterListSnapshotsResponse++;
  if (buildCounterListSnapshotsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed27(o.snapshots!);
    checkUnnamed28(o.unreachable!);
  }
  buildCounterListSnapshotsResponse--;
}

core.List<api.StoragePool> buildUnnamed29() => [
      buildStoragePool(),
      buildStoragePool(),
    ];

void checkUnnamed29(core.List<api.StoragePool> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStoragePool(o[0]);
  checkStoragePool(o[1]);
}

core.List<core.String> buildUnnamed30() => [
      'foo',
      'foo',
    ];

void checkUnnamed30(core.List<core.String> o) {
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

core.int buildCounterListStoragePoolsResponse = 0;
api.ListStoragePoolsResponse buildListStoragePoolsResponse() {
  final o = api.ListStoragePoolsResponse();
  buildCounterListStoragePoolsResponse++;
  if (buildCounterListStoragePoolsResponse < 3) {
    o.nextPageToken = 'foo';
    o.storagePools = buildUnnamed29();
    o.unreachable = buildUnnamed30();
  }
  buildCounterListStoragePoolsResponse--;
  return o;
}

void checkListStoragePoolsResponse(api.ListStoragePoolsResponse o) {
  buildCounterListStoragePoolsResponse++;
  if (buildCounterListStoragePoolsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed29(o.storagePools!);
    checkUnnamed30(o.unreachable!);
  }
  buildCounterListStoragePoolsResponse--;
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

core.List<api.Volume> buildUnnamed32() => [
      buildVolume(),
      buildVolume(),
    ];

void checkUnnamed32(core.List<api.Volume> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVolume(o[0]);
  checkVolume(o[1]);
}

core.int buildCounterListVolumesResponse = 0;
api.ListVolumesResponse buildListVolumesResponse() {
  final o = api.ListVolumesResponse();
  buildCounterListVolumesResponse++;
  if (buildCounterListVolumesResponse < 3) {
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed31();
    o.volumes = buildUnnamed32();
  }
  buildCounterListVolumesResponse--;
  return o;
}

void checkListVolumesResponse(api.ListVolumesResponse o) {
  buildCounterListVolumesResponse++;
  if (buildCounterListVolumesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed31(o.unreachable!);
    checkUnnamed32(o.volumes!);
  }
  buildCounterListVolumesResponse--;
}

core.Map<core.String, core.String> buildUnnamed33() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed33(core.Map<core.String, core.String> o) {
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

core.Map<core.String, core.Object?> buildUnnamed34() => {
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

void checkUnnamed34(core.Map<core.String, core.Object?> o) {
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
    o.labels = buildUnnamed33();
    o.locationId = 'foo';
    o.metadata = buildUnnamed34();
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
    checkUnnamed33(o.labels!);
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
    checkUnnamed34(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterLocation--;
}

core.int buildCounterMonthlySchedule = 0;
api.MonthlySchedule buildMonthlySchedule() {
  final o = api.MonthlySchedule();
  buildCounterMonthlySchedule++;
  if (buildCounterMonthlySchedule < 3) {
    o.daysOfMonth = 'foo';
    o.hour = 42.0;
    o.minute = 42.0;
    o.snapshotsToKeep = 42.0;
  }
  buildCounterMonthlySchedule--;
  return o;
}

void checkMonthlySchedule(api.MonthlySchedule o) {
  buildCounterMonthlySchedule++;
  if (buildCounterMonthlySchedule < 3) {
    unittest.expect(
      o.daysOfMonth!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.hour!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.minute!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.snapshotsToKeep!,
      unittest.equals(42.0),
    );
  }
  buildCounterMonthlySchedule--;
}

core.int buildCounterMountOption = 0;
api.MountOption buildMountOption() {
  final o = api.MountOption();
  buildCounterMountOption++;
  if (buildCounterMountOption < 3) {
    o.export = 'foo';
    o.exportFull = 'foo';
    o.instructions = 'foo';
    o.protocol = 'foo';
  }
  buildCounterMountOption--;
  return o;
}

void checkMountOption(api.MountOption o) {
  buildCounterMountOption++;
  if (buildCounterMountOption < 3) {
    unittest.expect(
      o.export!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.exportFull!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.instructions!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.protocol!,
      unittest.equals('foo'),
    );
  }
  buildCounterMountOption--;
}

core.Map<core.String, core.Object?> buildUnnamed35() => {
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

void checkUnnamed35(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed36() => {
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

void checkUnnamed36(core.Map<core.String, core.Object?> o) {
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
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed36(o.response!);
  }
  buildCounterOperation--;
}

core.Map<core.String, core.String> buildUnnamed37() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed37(core.Map<core.String, core.String> o) {
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

core.int buildCounterReplication = 0;
api.Replication buildReplication() {
  final o = api.Replication();
  buildCounterReplication++;
  if (buildCounterReplication < 3) {
    o.clusterLocation = 'foo';
    o.createTime = 'foo';
    o.description = 'foo';
    o.destinationVolume = 'foo';
    o.destinationVolumeParameters = buildDestinationVolumeParameters();
    o.healthy = true;
    o.hybridPeeringDetails = buildHybridPeeringDetails();
    o.hybridReplicationType = 'foo';
    o.labels = buildUnnamed37();
    o.mirrorState = 'foo';
    o.name = 'foo';
    o.replicationSchedule = 'foo';
    o.role = 'foo';
    o.sourceVolume = 'foo';
    o.state = 'foo';
    o.stateDetails = 'foo';
    o.transferStats = buildTransferStats();
  }
  buildCounterReplication--;
  return o;
}

void checkReplication(api.Replication o) {
  buildCounterReplication++;
  if (buildCounterReplication < 3) {
    unittest.expect(
      o.clusterLocation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.destinationVolume!,
      unittest.equals('foo'),
    );
    checkDestinationVolumeParameters(o.destinationVolumeParameters!);
    unittest.expect(o.healthy!, unittest.isTrue);
    checkHybridPeeringDetails(o.hybridPeeringDetails!);
    unittest.expect(
      o.hybridReplicationType!,
      unittest.equals('foo'),
    );
    checkUnnamed37(o.labels!);
    unittest.expect(
      o.mirrorState!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.replicationSchedule!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.role!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sourceVolume!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.stateDetails!,
      unittest.equals('foo'),
    );
    checkTransferStats(o.transferStats!);
  }
  buildCounterReplication--;
}

core.int buildCounterRestoreParameters = 0;
api.RestoreParameters buildRestoreParameters() {
  final o = api.RestoreParameters();
  buildCounterRestoreParameters++;
  if (buildCounterRestoreParameters < 3) {
    o.sourceBackup = 'foo';
    o.sourceSnapshot = 'foo';
  }
  buildCounterRestoreParameters--;
  return o;
}

void checkRestoreParameters(api.RestoreParameters o) {
  buildCounterRestoreParameters++;
  if (buildCounterRestoreParameters < 3) {
    unittest.expect(
      o.sourceBackup!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sourceSnapshot!,
      unittest.equals('foo'),
    );
  }
  buildCounterRestoreParameters--;
}

core.int buildCounterResumeReplicationRequest = 0;
api.ResumeReplicationRequest buildResumeReplicationRequest() {
  final o = api.ResumeReplicationRequest();
  buildCounterResumeReplicationRequest++;
  if (buildCounterResumeReplicationRequest < 3) {}
  buildCounterResumeReplicationRequest--;
  return o;
}

void checkResumeReplicationRequest(api.ResumeReplicationRequest o) {
  buildCounterResumeReplicationRequest++;
  if (buildCounterResumeReplicationRequest < 3) {}
  buildCounterResumeReplicationRequest--;
}

core.int buildCounterReverseReplicationDirectionRequest = 0;
api.ReverseReplicationDirectionRequest
    buildReverseReplicationDirectionRequest() {
  final o = api.ReverseReplicationDirectionRequest();
  buildCounterReverseReplicationDirectionRequest++;
  if (buildCounterReverseReplicationDirectionRequest < 3) {}
  buildCounterReverseReplicationDirectionRequest--;
  return o;
}

void checkReverseReplicationDirectionRequest(
    api.ReverseReplicationDirectionRequest o) {
  buildCounterReverseReplicationDirectionRequest++;
  if (buildCounterReverseReplicationDirectionRequest < 3) {}
  buildCounterReverseReplicationDirectionRequest--;
}

core.int buildCounterRevertVolumeRequest = 0;
api.RevertVolumeRequest buildRevertVolumeRequest() {
  final o = api.RevertVolumeRequest();
  buildCounterRevertVolumeRequest++;
  if (buildCounterRevertVolumeRequest < 3) {
    o.snapshotId = 'foo';
  }
  buildCounterRevertVolumeRequest--;
  return o;
}

void checkRevertVolumeRequest(api.RevertVolumeRequest o) {
  buildCounterRevertVolumeRequest++;
  if (buildCounterRevertVolumeRequest < 3) {
    unittest.expect(
      o.snapshotId!,
      unittest.equals('foo'),
    );
  }
  buildCounterRevertVolumeRequest--;
}

core.int buildCounterSimpleExportPolicyRule = 0;
api.SimpleExportPolicyRule buildSimpleExportPolicyRule() {
  final o = api.SimpleExportPolicyRule();
  buildCounterSimpleExportPolicyRule++;
  if (buildCounterSimpleExportPolicyRule < 3) {
    o.accessType = 'foo';
    o.allowedClients = 'foo';
    o.hasRootAccess = 'foo';
    o.kerberos5ReadOnly = true;
    o.kerberos5ReadWrite = true;
    o.kerberos5iReadOnly = true;
    o.kerberos5iReadWrite = true;
    o.kerberos5pReadOnly = true;
    o.kerberos5pReadWrite = true;
    o.nfsv3 = true;
    o.nfsv4 = true;
  }
  buildCounterSimpleExportPolicyRule--;
  return o;
}

void checkSimpleExportPolicyRule(api.SimpleExportPolicyRule o) {
  buildCounterSimpleExportPolicyRule++;
  if (buildCounterSimpleExportPolicyRule < 3) {
    unittest.expect(
      o.accessType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.allowedClients!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.hasRootAccess!,
      unittest.equals('foo'),
    );
    unittest.expect(o.kerberos5ReadOnly!, unittest.isTrue);
    unittest.expect(o.kerberos5ReadWrite!, unittest.isTrue);
    unittest.expect(o.kerberos5iReadOnly!, unittest.isTrue);
    unittest.expect(o.kerberos5iReadWrite!, unittest.isTrue);
    unittest.expect(o.kerberos5pReadOnly!, unittest.isTrue);
    unittest.expect(o.kerberos5pReadWrite!, unittest.isTrue);
    unittest.expect(o.nfsv3!, unittest.isTrue);
    unittest.expect(o.nfsv4!, unittest.isTrue);
  }
  buildCounterSimpleExportPolicyRule--;
}

core.Map<core.String, core.String> buildUnnamed38() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed38(core.Map<core.String, core.String> o) {
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

core.int buildCounterSnapshot = 0;
api.Snapshot buildSnapshot() {
  final o = api.Snapshot();
  buildCounterSnapshot++;
  if (buildCounterSnapshot < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.labels = buildUnnamed38();
    o.name = 'foo';
    o.state = 'foo';
    o.stateDetails = 'foo';
    o.usedBytes = 42.0;
  }
  buildCounterSnapshot--;
  return o;
}

void checkSnapshot(api.Snapshot o) {
  buildCounterSnapshot++;
  if (buildCounterSnapshot < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkUnnamed38(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.stateDetails!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.usedBytes!,
      unittest.equals(42.0),
    );
  }
  buildCounterSnapshot--;
}

core.int buildCounterSnapshotPolicy = 0;
api.SnapshotPolicy buildSnapshotPolicy() {
  final o = api.SnapshotPolicy();
  buildCounterSnapshotPolicy++;
  if (buildCounterSnapshotPolicy < 3) {
    o.dailySchedule = buildDailySchedule();
    o.enabled = true;
    o.hourlySchedule = buildHourlySchedule();
    o.monthlySchedule = buildMonthlySchedule();
    o.weeklySchedule = buildWeeklySchedule();
  }
  buildCounterSnapshotPolicy--;
  return o;
}

void checkSnapshotPolicy(api.SnapshotPolicy o) {
  buildCounterSnapshotPolicy++;
  if (buildCounterSnapshotPolicy < 3) {
    checkDailySchedule(o.dailySchedule!);
    unittest.expect(o.enabled!, unittest.isTrue);
    checkHourlySchedule(o.hourlySchedule!);
    checkMonthlySchedule(o.monthlySchedule!);
    checkWeeklySchedule(o.weeklySchedule!);
  }
  buildCounterSnapshotPolicy--;
}

core.Map<core.String, core.Object?> buildUnnamed39() => {
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

void checkUnnamed39(core.Map<core.String, core.Object?> o) {
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
    unittest.expect(
      o.code!,
      unittest.equals(42),
    );
    checkUnnamed40(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.int buildCounterStopReplicationRequest = 0;
api.StopReplicationRequest buildStopReplicationRequest() {
  final o = api.StopReplicationRequest();
  buildCounterStopReplicationRequest++;
  if (buildCounterStopReplicationRequest < 3) {
    o.force = true;
  }
  buildCounterStopReplicationRequest--;
  return o;
}

void checkStopReplicationRequest(api.StopReplicationRequest o) {
  buildCounterStopReplicationRequest++;
  if (buildCounterStopReplicationRequest < 3) {
    unittest.expect(o.force!, unittest.isTrue);
  }
  buildCounterStopReplicationRequest--;
}

core.Map<core.String, core.String> buildUnnamed41() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed41(core.Map<core.String, core.String> o) {
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

core.int buildCounterStoragePool = 0;
api.StoragePool buildStoragePool() {
  final o = api.StoragePool();
  buildCounterStoragePool++;
  if (buildCounterStoragePool < 3) {
    o.activeDirectory = 'foo';
    o.allowAutoTiering = true;
    o.capacityGib = 'foo';
    o.createTime = 'foo';
    o.description = 'foo';
    o.encryptionType = 'foo';
    o.globalAccessAllowed = true;
    o.kmsConfig = 'foo';
    o.labels = buildUnnamed41();
    o.ldapEnabled = true;
    o.name = 'foo';
    o.network = 'foo';
    o.psaRange = 'foo';
    o.replicaZone = 'foo';
    o.serviceLevel = 'foo';
    o.state = 'foo';
    o.stateDetails = 'foo';
    o.volumeCapacityGib = 'foo';
    o.volumeCount = 42;
    o.zone = 'foo';
  }
  buildCounterStoragePool--;
  return o;
}

void checkStoragePool(api.StoragePool o) {
  buildCounterStoragePool++;
  if (buildCounterStoragePool < 3) {
    unittest.expect(
      o.activeDirectory!,
      unittest.equals('foo'),
    );
    unittest.expect(o.allowAutoTiering!, unittest.isTrue);
    unittest.expect(
      o.capacityGib!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.encryptionType!,
      unittest.equals('foo'),
    );
    unittest.expect(o.globalAccessAllowed!, unittest.isTrue);
    unittest.expect(
      o.kmsConfig!,
      unittest.equals('foo'),
    );
    checkUnnamed41(o.labels!);
    unittest.expect(o.ldapEnabled!, unittest.isTrue);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.network!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.psaRange!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.replicaZone!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serviceLevel!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.stateDetails!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.volumeCapacityGib!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.volumeCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.zone!,
      unittest.equals('foo'),
    );
  }
  buildCounterStoragePool--;
}

core.int buildCounterSwitchActiveReplicaZoneRequest = 0;
api.SwitchActiveReplicaZoneRequest buildSwitchActiveReplicaZoneRequest() {
  final o = api.SwitchActiveReplicaZoneRequest();
  buildCounterSwitchActiveReplicaZoneRequest++;
  if (buildCounterSwitchActiveReplicaZoneRequest < 3) {}
  buildCounterSwitchActiveReplicaZoneRequest--;
  return o;
}

void checkSwitchActiveReplicaZoneRequest(api.SwitchActiveReplicaZoneRequest o) {
  buildCounterSwitchActiveReplicaZoneRequest++;
  if (buildCounterSwitchActiveReplicaZoneRequest < 3) {}
  buildCounterSwitchActiveReplicaZoneRequest--;
}

core.int buildCounterSyncReplicationRequest = 0;
api.SyncReplicationRequest buildSyncReplicationRequest() {
  final o = api.SyncReplicationRequest();
  buildCounterSyncReplicationRequest++;
  if (buildCounterSyncReplicationRequest < 3) {}
  buildCounterSyncReplicationRequest--;
  return o;
}

void checkSyncReplicationRequest(api.SyncReplicationRequest o) {
  buildCounterSyncReplicationRequest++;
  if (buildCounterSyncReplicationRequest < 3) {}
  buildCounterSyncReplicationRequest--;
}

core.int buildCounterTieringPolicy = 0;
api.TieringPolicy buildTieringPolicy() {
  final o = api.TieringPolicy();
  buildCounterTieringPolicy++;
  if (buildCounterTieringPolicy < 3) {
    o.coolingThresholdDays = 42;
    o.tierAction = 'foo';
  }
  buildCounterTieringPolicy--;
  return o;
}

void checkTieringPolicy(api.TieringPolicy o) {
  buildCounterTieringPolicy++;
  if (buildCounterTieringPolicy < 3) {
    unittest.expect(
      o.coolingThresholdDays!,
      unittest.equals(42),
    );
    unittest.expect(
      o.tierAction!,
      unittest.equals('foo'),
    );
  }
  buildCounterTieringPolicy--;
}

core.int buildCounterTransferStats = 0;
api.TransferStats buildTransferStats() {
  final o = api.TransferStats();
  buildCounterTransferStats++;
  if (buildCounterTransferStats < 3) {
    o.lagDuration = 'foo';
    o.lastTransferBytes = 'foo';
    o.lastTransferDuration = 'foo';
    o.lastTransferEndTime = 'foo';
    o.lastTransferError = 'foo';
    o.totalTransferDuration = 'foo';
    o.transferBytes = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterTransferStats--;
  return o;
}

void checkTransferStats(api.TransferStats o) {
  buildCounterTransferStats++;
  if (buildCounterTransferStats < 3) {
    unittest.expect(
      o.lagDuration!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastTransferBytes!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastTransferDuration!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastTransferEndTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastTransferError!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.totalTransferDuration!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.transferBytes!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterTransferStats--;
}

core.int buildCounterValidateDirectoryServiceRequest = 0;
api.ValidateDirectoryServiceRequest buildValidateDirectoryServiceRequest() {
  final o = api.ValidateDirectoryServiceRequest();
  buildCounterValidateDirectoryServiceRequest++;
  if (buildCounterValidateDirectoryServiceRequest < 3) {
    o.directoryServiceType = 'foo';
  }
  buildCounterValidateDirectoryServiceRequest--;
  return o;
}

void checkValidateDirectoryServiceRequest(
    api.ValidateDirectoryServiceRequest o) {
  buildCounterValidateDirectoryServiceRequest++;
  if (buildCounterValidateDirectoryServiceRequest < 3) {
    unittest.expect(
      o.directoryServiceType!,
      unittest.equals('foo'),
    );
  }
  buildCounterValidateDirectoryServiceRequest--;
}

core.int buildCounterVerifyKmsConfigRequest = 0;
api.VerifyKmsConfigRequest buildVerifyKmsConfigRequest() {
  final o = api.VerifyKmsConfigRequest();
  buildCounterVerifyKmsConfigRequest++;
  if (buildCounterVerifyKmsConfigRequest < 3) {}
  buildCounterVerifyKmsConfigRequest--;
  return o;
}

void checkVerifyKmsConfigRequest(api.VerifyKmsConfigRequest o) {
  buildCounterVerifyKmsConfigRequest++;
  if (buildCounterVerifyKmsConfigRequest < 3) {}
  buildCounterVerifyKmsConfigRequest--;
}

core.int buildCounterVerifyKmsConfigResponse = 0;
api.VerifyKmsConfigResponse buildVerifyKmsConfigResponse() {
  final o = api.VerifyKmsConfigResponse();
  buildCounterVerifyKmsConfigResponse++;
  if (buildCounterVerifyKmsConfigResponse < 3) {
    o.healthError = 'foo';
    o.healthy = true;
    o.instructions = 'foo';
  }
  buildCounterVerifyKmsConfigResponse--;
  return o;
}

void checkVerifyKmsConfigResponse(api.VerifyKmsConfigResponse o) {
  buildCounterVerifyKmsConfigResponse++;
  if (buildCounterVerifyKmsConfigResponse < 3) {
    unittest.expect(
      o.healthError!,
      unittest.equals('foo'),
    );
    unittest.expect(o.healthy!, unittest.isTrue);
    unittest.expect(
      o.instructions!,
      unittest.equals('foo'),
    );
  }
  buildCounterVerifyKmsConfigResponse--;
}

core.Map<core.String, core.String> buildUnnamed42() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed42(core.Map<core.String, core.String> o) {
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

core.List<api.MountOption> buildUnnamed43() => [
      buildMountOption(),
      buildMountOption(),
    ];

void checkUnnamed43(core.List<api.MountOption> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMountOption(o[0]);
  checkMountOption(o[1]);
}

core.List<core.String> buildUnnamed44() => [
      'foo',
      'foo',
    ];

void checkUnnamed44(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed45() => [
      'foo',
      'foo',
    ];

void checkUnnamed45(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed46() => [
      'foo',
      'foo',
    ];

void checkUnnamed46(core.List<core.String> o) {
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

core.int buildCounterVolume = 0;
api.Volume buildVolume() {
  final o = api.Volume();
  buildCounterVolume++;
  if (buildCounterVolume < 3) {
    o.activeDirectory = 'foo';
    o.backupConfig = buildBackupConfig();
    o.capacityGib = 'foo';
    o.coldTierSizeGib = 'foo';
    o.createTime = 'foo';
    o.description = 'foo';
    o.encryptionType = 'foo';
    o.exportPolicy = buildExportPolicy();
    o.hasReplication = true;
    o.hybridReplicationParameters = buildHybridReplicationParameters();
    o.kerberosEnabled = true;
    o.kmsConfig = 'foo';
    o.labels = buildUnnamed42();
    o.largeCapacity = true;
    o.ldapEnabled = true;
    o.mountOptions = buildUnnamed43();
    o.multipleEndpoints = true;
    o.name = 'foo';
    o.network = 'foo';
    o.protocols = buildUnnamed44();
    o.psaRange = 'foo';
    o.replicaZone = 'foo';
    o.restoreParameters = buildRestoreParameters();
    o.restrictedActions = buildUnnamed45();
    o.securityStyle = 'foo';
    o.serviceLevel = 'foo';
    o.shareName = 'foo';
    o.smbSettings = buildUnnamed46();
    o.snapReserve = 42.0;
    o.snapshotDirectory = true;
    o.snapshotPolicy = buildSnapshotPolicy();
    o.state = 'foo';
    o.stateDetails = 'foo';
    o.storagePool = 'foo';
    o.tieringPolicy = buildTieringPolicy();
    o.unixPermissions = 'foo';
    o.usedGib = 'foo';
    o.zone = 'foo';
  }
  buildCounterVolume--;
  return o;
}

void checkVolume(api.Volume o) {
  buildCounterVolume++;
  if (buildCounterVolume < 3) {
    unittest.expect(
      o.activeDirectory!,
      unittest.equals('foo'),
    );
    checkBackupConfig(o.backupConfig!);
    unittest.expect(
      o.capacityGib!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.coldTierSizeGib!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.encryptionType!,
      unittest.equals('foo'),
    );
    checkExportPolicy(o.exportPolicy!);
    unittest.expect(o.hasReplication!, unittest.isTrue);
    checkHybridReplicationParameters(o.hybridReplicationParameters!);
    unittest.expect(o.kerberosEnabled!, unittest.isTrue);
    unittest.expect(
      o.kmsConfig!,
      unittest.equals('foo'),
    );
    checkUnnamed42(o.labels!);
    unittest.expect(o.largeCapacity!, unittest.isTrue);
    unittest.expect(o.ldapEnabled!, unittest.isTrue);
    checkUnnamed43(o.mountOptions!);
    unittest.expect(o.multipleEndpoints!, unittest.isTrue);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.network!,
      unittest.equals('foo'),
    );
    checkUnnamed44(o.protocols!);
    unittest.expect(
      o.psaRange!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.replicaZone!,
      unittest.equals('foo'),
    );
    checkRestoreParameters(o.restoreParameters!);
    checkUnnamed45(o.restrictedActions!);
    unittest.expect(
      o.securityStyle!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serviceLevel!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.shareName!,
      unittest.equals('foo'),
    );
    checkUnnamed46(o.smbSettings!);
    unittest.expect(
      o.snapReserve!,
      unittest.equals(42.0),
    );
    unittest.expect(o.snapshotDirectory!, unittest.isTrue);
    checkSnapshotPolicy(o.snapshotPolicy!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.stateDetails!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.storagePool!,
      unittest.equals('foo'),
    );
    checkTieringPolicy(o.tieringPolicy!);
    unittest.expect(
      o.unixPermissions!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.usedGib!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.zone!,
      unittest.equals('foo'),
    );
  }
  buildCounterVolume--;
}

core.int buildCounterWeeklySchedule = 0;
api.WeeklySchedule buildWeeklySchedule() {
  final o = api.WeeklySchedule();
  buildCounterWeeklySchedule++;
  if (buildCounterWeeklySchedule < 3) {
    o.day = 'foo';
    o.hour = 42.0;
    o.minute = 42.0;
    o.snapshotsToKeep = 42.0;
  }
  buildCounterWeeklySchedule--;
  return o;
}

void checkWeeklySchedule(api.WeeklySchedule o) {
  buildCounterWeeklySchedule++;
  if (buildCounterWeeklySchedule < 3) {
    unittest.expect(
      o.day!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.hour!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.minute!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.snapshotsToKeep!,
      unittest.equals(42.0),
    );
  }
  buildCounterWeeklySchedule--;
}

void main() {
  unittest.group('obj-schema-ActiveDirectory', () {
    unittest.test('to-json--from-json', () async {
      final o = buildActiveDirectory();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ActiveDirectory.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkActiveDirectory(od);
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

  unittest.group('obj-schema-BackupConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBackupConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BackupConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBackupConfig(od);
    });
  });

  unittest.group('obj-schema-BackupPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBackupPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BackupPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBackupPolicy(od);
    });
  });

  unittest.group('obj-schema-BackupVault', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBackupVault();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BackupVault.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBackupVault(od);
    });
  });

  unittest.group('obj-schema-CancelOperationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCancelOperationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CancelOperationRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCancelOperationRequest(od);
    });
  });

  unittest.group('obj-schema-DailySchedule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDailySchedule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DailySchedule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDailySchedule(od);
    });
  });

  unittest.group('obj-schema-DestinationVolumeParameters', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDestinationVolumeParameters();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DestinationVolumeParameters.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDestinationVolumeParameters(od);
    });
  });

  unittest.group('obj-schema-EncryptVolumesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEncryptVolumesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EncryptVolumesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEncryptVolumesRequest(od);
    });
  });

  unittest.group('obj-schema-EstablishPeeringRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEstablishPeeringRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EstablishPeeringRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEstablishPeeringRequest(od);
    });
  });

  unittest.group('obj-schema-ExportPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExportPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExportPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExportPolicy(od);
    });
  });

  unittest.group('obj-schema-GoogleProtobufEmpty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleProtobufEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleProtobufEmpty.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleProtobufEmpty(od);
    });
  });

  unittest.group('obj-schema-HourlySchedule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHourlySchedule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HourlySchedule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkHourlySchedule(od);
    });
  });

  unittest.group('obj-schema-HybridPeeringDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHybridPeeringDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HybridPeeringDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkHybridPeeringDetails(od);
    });
  });

  unittest.group('obj-schema-HybridReplicationParameters', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHybridReplicationParameters();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HybridReplicationParameters.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkHybridReplicationParameters(od);
    });
  });

  unittest.group('obj-schema-KmsConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildKmsConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.KmsConfig.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkKmsConfig(od);
    });
  });

  unittest.group('obj-schema-ListActiveDirectoriesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListActiveDirectoriesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListActiveDirectoriesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListActiveDirectoriesResponse(od);
    });
  });

  unittest.group('obj-schema-ListBackupPoliciesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListBackupPoliciesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListBackupPoliciesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListBackupPoliciesResponse(od);
    });
  });

  unittest.group('obj-schema-ListBackupVaultsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListBackupVaultsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListBackupVaultsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListBackupVaultsResponse(od);
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

  unittest.group('obj-schema-ListKmsConfigsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListKmsConfigsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListKmsConfigsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListKmsConfigsResponse(od);
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

  unittest.group('obj-schema-ListReplicationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListReplicationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListReplicationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListReplicationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListSnapshotsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListSnapshotsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListSnapshotsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListSnapshotsResponse(od);
    });
  });

  unittest.group('obj-schema-ListStoragePoolsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListStoragePoolsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListStoragePoolsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListStoragePoolsResponse(od);
    });
  });

  unittest.group('obj-schema-ListVolumesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListVolumesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListVolumesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListVolumesResponse(od);
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

  unittest.group('obj-schema-MonthlySchedule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMonthlySchedule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MonthlySchedule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMonthlySchedule(od);
    });
  });

  unittest.group('obj-schema-MountOption', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMountOption();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MountOption.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMountOption(od);
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

  unittest.group('obj-schema-Replication', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReplication();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Replication.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReplication(od);
    });
  });

  unittest.group('obj-schema-RestoreParameters', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRestoreParameters();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RestoreParameters.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRestoreParameters(od);
    });
  });

  unittest.group('obj-schema-ResumeReplicationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResumeReplicationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResumeReplicationRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResumeReplicationRequest(od);
    });
  });

  unittest.group('obj-schema-ReverseReplicationDirectionRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReverseReplicationDirectionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReverseReplicationDirectionRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReverseReplicationDirectionRequest(od);
    });
  });

  unittest.group('obj-schema-RevertVolumeRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRevertVolumeRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RevertVolumeRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRevertVolumeRequest(od);
    });
  });

  unittest.group('obj-schema-SimpleExportPolicyRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSimpleExportPolicyRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SimpleExportPolicyRule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSimpleExportPolicyRule(od);
    });
  });

  unittest.group('obj-schema-Snapshot', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSnapshot();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Snapshot.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSnapshot(od);
    });
  });

  unittest.group('obj-schema-SnapshotPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSnapshotPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SnapshotPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSnapshotPolicy(od);
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

  unittest.group('obj-schema-StopReplicationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStopReplicationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StopReplicationRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStopReplicationRequest(od);
    });
  });

  unittest.group('obj-schema-StoragePool', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStoragePool();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StoragePool.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStoragePool(od);
    });
  });

  unittest.group('obj-schema-SwitchActiveReplicaZoneRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSwitchActiveReplicaZoneRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SwitchActiveReplicaZoneRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSwitchActiveReplicaZoneRequest(od);
    });
  });

  unittest.group('obj-schema-SyncReplicationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSyncReplicationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SyncReplicationRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSyncReplicationRequest(od);
    });
  });

  unittest.group('obj-schema-TieringPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTieringPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TieringPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTieringPolicy(od);
    });
  });

  unittest.group('obj-schema-TransferStats', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTransferStats();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TransferStats.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTransferStats(od);
    });
  });

  unittest.group('obj-schema-ValidateDirectoryServiceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildValidateDirectoryServiceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ValidateDirectoryServiceRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkValidateDirectoryServiceRequest(od);
    });
  });

  unittest.group('obj-schema-VerifyKmsConfigRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVerifyKmsConfigRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VerifyKmsConfigRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVerifyKmsConfigRequest(od);
    });
  });

  unittest.group('obj-schema-VerifyKmsConfigResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVerifyKmsConfigResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VerifyKmsConfigResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVerifyKmsConfigResponse(od);
    });
  });

  unittest.group('obj-schema-Volume', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVolume();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Volume.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkVolume(od);
    });
  });

  unittest.group('obj-schema-WeeklySchedule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWeeklySchedule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WeeklySchedule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWeeklySchedule(od);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.NetAppFilesApi(mock).projects.locations;
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
      final res = api.NetAppFilesApi(mock).projects.locations;
      final arg_name = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
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

  unittest.group('resource-ProjectsLocationsActiveDirectoriesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.NetAppFilesApi(mock).projects.locations.activeDirectories;
      final arg_request = buildActiveDirectory();
      final arg_parent = 'foo';
      final arg_activeDirectoryId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ActiveDirectory.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkActiveDirectory(obj);

        final path = req.url.path;
        var pathOffset = 0;
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
          queryMap['activeDirectoryId']!.first,
          unittest.equals(arg_activeDirectoryId),
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
          activeDirectoryId: arg_activeDirectoryId, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.NetAppFilesApi(mock).projects.locations.activeDirectories;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.NetAppFilesApi(mock).projects.locations.activeDirectories;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildActiveDirectory());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkActiveDirectory(response as api.ActiveDirectory);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.NetAppFilesApi(mock).projects.locations.activeDirectories;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListActiveDirectoriesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListActiveDirectoriesResponse(
          response as api.ListActiveDirectoriesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.NetAppFilesApi(mock).projects.locations.activeDirectories;
      final arg_request = buildActiveDirectory();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ActiveDirectory.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkActiveDirectory(obj);

        final path = req.url.path;
        var pathOffset = 0;
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
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsBackupPoliciesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.NetAppFilesApi(mock).projects.locations.backupPolicies;
      final arg_request = buildBackupPolicy();
      final arg_parent = 'foo';
      final arg_backupPolicyId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BackupPolicy.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBackupPolicy(obj);

        final path = req.url.path;
        var pathOffset = 0;
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
          queryMap['backupPolicyId']!.first,
          unittest.equals(arg_backupPolicyId),
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
          backupPolicyId: arg_backupPolicyId, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.NetAppFilesApi(mock).projects.locations.backupPolicies;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.NetAppFilesApi(mock).projects.locations.backupPolicies;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildBackupPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkBackupPolicy(response as api.BackupPolicy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.NetAppFilesApi(mock).projects.locations.backupPolicies;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListBackupPoliciesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListBackupPoliciesResponse(
          response as api.ListBackupPoliciesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.NetAppFilesApi(mock).projects.locations.backupPolicies;
      final arg_request = buildBackupPolicy();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BackupPolicy.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBackupPolicy(obj);

        final path = req.url.path;
        var pathOffset = 0;
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
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsBackupVaultsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.NetAppFilesApi(mock).projects.locations.backupVaults;
      final arg_request = buildBackupVault();
      final arg_parent = 'foo';
      final arg_backupVaultId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BackupVault.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBackupVault(obj);

        final path = req.url.path;
        var pathOffset = 0;
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
          queryMap['backupVaultId']!.first,
          unittest.equals(arg_backupVaultId),
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
          backupVaultId: arg_backupVaultId, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.NetAppFilesApi(mock).projects.locations.backupVaults;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.NetAppFilesApi(mock).projects.locations.backupVaults;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildBackupVault());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkBackupVault(response as api.BackupVault);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.NetAppFilesApi(mock).projects.locations.backupVaults;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListBackupVaultsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListBackupVaultsResponse(response as api.ListBackupVaultsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.NetAppFilesApi(mock).projects.locations.backupVaults;
      final arg_request = buildBackupVault();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BackupVault.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBackupVault(obj);

        final path = req.url.path;
        var pathOffset = 0;
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
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsBackupVaultsBackupsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.NetAppFilesApi(mock).projects.locations.backupVaults.backups;
      final arg_request = buildBackup();
      final arg_parent = 'foo';
      final arg_backupId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Backup.fromJson(json as core.Map<core.String, core.dynamic>);
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
          api.NetAppFilesApi(mock).projects.locations.backupVaults.backups;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.NetAppFilesApi(mock).projects.locations.backupVaults.backups;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildBackup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkBackup(response as api.Backup);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.NetAppFilesApi(mock).projects.locations.backupVaults.backups;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
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
          api.NetAppFilesApi(mock).projects.locations.backupVaults.backups;
      final arg_request = buildBackup();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Backup.fromJson(json as core.Map<core.String, core.dynamic>);
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
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsKmsConfigsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.NetAppFilesApi(mock).projects.locations.kmsConfigs;
      final arg_request = buildKmsConfig();
      final arg_parent = 'foo';
      final arg_kmsConfigId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.KmsConfig.fromJson(json as core.Map<core.String, core.dynamic>);
        checkKmsConfig(obj);

        final path = req.url.path;
        var pathOffset = 0;
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
          queryMap['kmsConfigId']!.first,
          unittest.equals(arg_kmsConfigId),
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
          kmsConfigId: arg_kmsConfigId, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.NetAppFilesApi(mock).projects.locations.kmsConfigs;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--encrypt', () async {
      final mock = HttpServerMock();
      final res = api.NetAppFilesApi(mock).projects.locations.kmsConfigs;
      final arg_request = buildEncryptVolumesRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.EncryptVolumesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkEncryptVolumesRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.encrypt(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.NetAppFilesApi(mock).projects.locations.kmsConfigs;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildKmsConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkKmsConfig(response as api.KmsConfig);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.NetAppFilesApi(mock).projects.locations.kmsConfigs;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListKmsConfigsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListKmsConfigsResponse(response as api.ListKmsConfigsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.NetAppFilesApi(mock).projects.locations.kmsConfigs;
      final arg_request = buildKmsConfig();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.KmsConfig.fromJson(json as core.Map<core.String, core.dynamic>);
        checkKmsConfig(obj);

        final path = req.url.path;
        var pathOffset = 0;
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
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--verify', () async {
      final mock = HttpServerMock();
      final res = api.NetAppFilesApi(mock).projects.locations.kmsConfigs;
      final arg_request = buildVerifyKmsConfigRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.VerifyKmsConfigRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkVerifyKmsConfigRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildVerifyKmsConfigResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.verify(arg_request, arg_name, $fields: arg_$fields);
      checkVerifyKmsConfigResponse(response as api.VerifyKmsConfigResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.NetAppFilesApi(mock).projects.locations.operations;
      final arg_request = buildCancelOperationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CancelOperationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.cancel(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.NetAppFilesApi(mock).projects.locations.operations;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.NetAppFilesApi(mock).projects.locations.operations;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.NetAppFilesApi(mock).projects.locations.operations;
      final arg_name = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
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

  unittest.group('resource-ProjectsLocationsStoragePoolsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.NetAppFilesApi(mock).projects.locations.storagePools;
      final arg_request = buildStoragePool();
      final arg_parent = 'foo';
      final arg_storagePoolId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.StoragePool.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkStoragePool(obj);

        final path = req.url.path;
        var pathOffset = 0;
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
          queryMap['storagePoolId']!.first,
          unittest.equals(arg_storagePoolId),
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
          storagePoolId: arg_storagePoolId, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.NetAppFilesApi(mock).projects.locations.storagePools;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.NetAppFilesApi(mock).projects.locations.storagePools;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildStoragePool());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkStoragePool(response as api.StoragePool);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.NetAppFilesApi(mock).projects.locations.storagePools;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListStoragePoolsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListStoragePoolsResponse(response as api.ListStoragePoolsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.NetAppFilesApi(mock).projects.locations.storagePools;
      final arg_request = buildStoragePool();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.StoragePool.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkStoragePool(obj);

        final path = req.url.path;
        var pathOffset = 0;
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
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--switch_', () async {
      final mock = HttpServerMock();
      final res = api.NetAppFilesApi(mock).projects.locations.storagePools;
      final arg_request = buildSwitchActiveReplicaZoneRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SwitchActiveReplicaZoneRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSwitchActiveReplicaZoneRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.switch_(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--validateDirectoryService', () async {
      final mock = HttpServerMock();
      final res = api.NetAppFilesApi(mock).projects.locations.storagePools;
      final arg_request = buildValidateDirectoryServiceRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ValidateDirectoryServiceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkValidateDirectoryServiceRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.validateDirectoryService(arg_request, arg_name,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsVolumesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.NetAppFilesApi(mock).projects.locations.volumes;
      final arg_request = buildVolume();
      final arg_parent = 'foo';
      final arg_volumeId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Volume.fromJson(json as core.Map<core.String, core.dynamic>);
        checkVolume(obj);

        final path = req.url.path;
        var pathOffset = 0;
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
          queryMap['volumeId']!.first,
          unittest.equals(arg_volumeId),
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
          volumeId: arg_volumeId, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.NetAppFilesApi(mock).projects.locations.volumes;
      final arg_name = 'foo';
      final arg_force = true;
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
          await res.delete(arg_name, force: arg_force, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.NetAppFilesApi(mock).projects.locations.volumes;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildVolume());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkVolume(response as api.Volume);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.NetAppFilesApi(mock).projects.locations.volumes;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListVolumesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListVolumesResponse(response as api.ListVolumesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.NetAppFilesApi(mock).projects.locations.volumes;
      final arg_request = buildVolume();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Volume.fromJson(json as core.Map<core.String, core.dynamic>);
        checkVolume(obj);

        final path = req.url.path;
        var pathOffset = 0;
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
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--revert', () async {
      final mock = HttpServerMock();
      final res = api.NetAppFilesApi(mock).projects.locations.volumes;
      final arg_request = buildRevertVolumeRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RevertVolumeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRevertVolumeRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.revert(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsVolumesReplicationsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.NetAppFilesApi(mock).projects.locations.volumes.replications;
      final arg_request = buildReplication();
      final arg_parent = 'foo';
      final arg_replicationId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.Replication.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkReplication(obj);

        final path = req.url.path;
        var pathOffset = 0;
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
          queryMap['replicationId']!.first,
          unittest.equals(arg_replicationId),
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
          replicationId: arg_replicationId, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.NetAppFilesApi(mock).projects.locations.volumes.replications;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--establishPeering', () async {
      final mock = HttpServerMock();
      final res =
          api.NetAppFilesApi(mock).projects.locations.volumes.replications;
      final arg_request = buildEstablishPeeringRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.EstablishPeeringRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkEstablishPeeringRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.establishPeering(arg_request, arg_name,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.NetAppFilesApi(mock).projects.locations.volumes.replications;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildReplication());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkReplication(response as api.Replication);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.NetAppFilesApi(mock).projects.locations.volumes.replications;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListReplicationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListReplicationsResponse(response as api.ListReplicationsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.NetAppFilesApi(mock).projects.locations.volumes.replications;
      final arg_request = buildReplication();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.Replication.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkReplication(obj);

        final path = req.url.path;
        var pathOffset = 0;
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
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--resume', () async {
      final mock = HttpServerMock();
      final res =
          api.NetAppFilesApi(mock).projects.locations.volumes.replications;
      final arg_request = buildResumeReplicationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ResumeReplicationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkResumeReplicationRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.resume(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--reverseDirection', () async {
      final mock = HttpServerMock();
      final res =
          api.NetAppFilesApi(mock).projects.locations.volumes.replications;
      final arg_request = buildReverseReplicationDirectionRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ReverseReplicationDirectionRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkReverseReplicationDirectionRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.reverseDirection(arg_request, arg_name,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--stop', () async {
      final mock = HttpServerMock();
      final res =
          api.NetAppFilesApi(mock).projects.locations.volumes.replications;
      final arg_request = buildStopReplicationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.StopReplicationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkStopReplicationRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.stop(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--sync', () async {
      final mock = HttpServerMock();
      final res =
          api.NetAppFilesApi(mock).projects.locations.volumes.replications;
      final arg_request = buildSyncReplicationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SyncReplicationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSyncReplicationRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.sync(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsVolumesSnapshotsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.NetAppFilesApi(mock).projects.locations.volumes.snapshots;
      final arg_request = buildSnapshot();
      final arg_parent = 'foo';
      final arg_snapshotId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Snapshot.fromJson(json as core.Map<core.String, core.dynamic>);
        checkSnapshot(obj);

        final path = req.url.path;
        var pathOffset = 0;
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
          queryMap['snapshotId']!.first,
          unittest.equals(arg_snapshotId),
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
          snapshotId: arg_snapshotId, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.NetAppFilesApi(mock).projects.locations.volumes.snapshots;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.NetAppFilesApi(mock).projects.locations.volumes.snapshots;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildSnapshot());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkSnapshot(response as api.Snapshot);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.NetAppFilesApi(mock).projects.locations.volumes.snapshots;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListSnapshotsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListSnapshotsResponse(response as api.ListSnapshotsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.NetAppFilesApi(mock).projects.locations.volumes.snapshots;
      final arg_request = buildSnapshot();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Snapshot.fromJson(json as core.Map<core.String, core.dynamic>);
        checkSnapshot(obj);

        final path = req.url.path;
        var pathOffset = 0;
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
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });
}
