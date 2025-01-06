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

import 'package:googleapis/redis/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAOFConfig = 0;
api.AOFConfig buildAOFConfig() {
  final o = api.AOFConfig();
  buildCounterAOFConfig++;
  if (buildCounterAOFConfig < 3) {
    o.appendFsync = 'foo';
  }
  buildCounterAOFConfig--;
  return o;
}

void checkAOFConfig(api.AOFConfig o) {
  buildCounterAOFConfig++;
  if (buildCounterAOFConfig < 3) {
    unittest.expect(
      o.appendFsync!,
      unittest.equals('foo'),
    );
  }
  buildCounterAOFConfig--;
}

core.int buildCounterAutomatedBackupConfig = 0;
api.AutomatedBackupConfig buildAutomatedBackupConfig() {
  final o = api.AutomatedBackupConfig();
  buildCounterAutomatedBackupConfig++;
  if (buildCounterAutomatedBackupConfig < 3) {
    o.automatedBackupMode = 'foo';
    o.fixedFrequencySchedule = buildFixedFrequencySchedule();
    o.retention = 'foo';
  }
  buildCounterAutomatedBackupConfig--;
  return o;
}

void checkAutomatedBackupConfig(api.AutomatedBackupConfig o) {
  buildCounterAutomatedBackupConfig++;
  if (buildCounterAutomatedBackupConfig < 3) {
    unittest.expect(
      o.automatedBackupMode!,
      unittest.equals('foo'),
    );
    checkFixedFrequencySchedule(o.fixedFrequencySchedule!);
    unittest.expect(
      o.retention!,
      unittest.equals('foo'),
    );
  }
  buildCounterAutomatedBackupConfig--;
}

core.List<api.BackupFile> buildUnnamed0() => [
      buildBackupFile(),
      buildBackupFile(),
    ];

void checkUnnamed0(core.List<api.BackupFile> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBackupFile(o[0]);
  checkBackupFile(o[1]);
}

core.int buildCounterBackup = 0;
api.Backup buildBackup() {
  final o = api.Backup();
  buildCounterBackup++;
  if (buildCounterBackup < 3) {
    o.backupFiles = buildUnnamed0();
    o.backupType = 'foo';
    o.cluster = 'foo';
    o.clusterUid = 'foo';
    o.createTime = 'foo';
    o.encryptionInfo = buildEncryptionInfo();
    o.engineVersion = 'foo';
    o.expireTime = 'foo';
    o.name = 'foo';
    o.nodeType = 'foo';
    o.replicaCount = 42;
    o.shardCount = 42;
    o.state = 'foo';
    o.totalSizeBytes = 'foo';
    o.uid = 'foo';
  }
  buildCounterBackup--;
  return o;
}

void checkBackup(api.Backup o) {
  buildCounterBackup++;
  if (buildCounterBackup < 3) {
    checkUnnamed0(o.backupFiles!);
    unittest.expect(
      o.backupType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.cluster!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.clusterUid!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkEncryptionInfo(o.encryptionInfo!);
    unittest.expect(
      o.engineVersion!,
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
      o.nodeType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.replicaCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.shardCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.totalSizeBytes!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uid!,
      unittest.equals('foo'),
    );
  }
  buildCounterBackup--;
}

core.int buildCounterBackupClusterRequest = 0;
api.BackupClusterRequest buildBackupClusterRequest() {
  final o = api.BackupClusterRequest();
  buildCounterBackupClusterRequest++;
  if (buildCounterBackupClusterRequest < 3) {
    o.backupId = 'foo';
    o.ttl = 'foo';
  }
  buildCounterBackupClusterRequest--;
  return o;
}

void checkBackupClusterRequest(api.BackupClusterRequest o) {
  buildCounterBackupClusterRequest++;
  if (buildCounterBackupClusterRequest < 3) {
    unittest.expect(
      o.backupId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ttl!,
      unittest.equals('foo'),
    );
  }
  buildCounterBackupClusterRequest--;
}

core.int buildCounterBackupCollection = 0;
api.BackupCollection buildBackupCollection() {
  final o = api.BackupCollection();
  buildCounterBackupCollection++;
  if (buildCounterBackupCollection < 3) {
    o.cluster = 'foo';
    o.clusterUid = 'foo';
    o.createTime = 'foo';
    o.kmsKey = 'foo';
    o.name = 'foo';
    o.uid = 'foo';
  }
  buildCounterBackupCollection--;
  return o;
}

void checkBackupCollection(api.BackupCollection o) {
  buildCounterBackupCollection++;
  if (buildCounterBackupCollection < 3) {
    unittest.expect(
      o.cluster!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.clusterUid!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kmsKey!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uid!,
      unittest.equals('foo'),
    );
  }
  buildCounterBackupCollection--;
}

core.int buildCounterBackupFile = 0;
api.BackupFile buildBackupFile() {
  final o = api.BackupFile();
  buildCounterBackupFile++;
  if (buildCounterBackupFile < 3) {
    o.createTime = 'foo';
    o.fileName = 'foo';
    o.sizeBytes = 'foo';
  }
  buildCounterBackupFile--;
  return o;
}

void checkBackupFile(api.BackupFile o) {
  buildCounterBackupFile++;
  if (buildCounterBackupFile < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fileName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sizeBytes!,
      unittest.equals('foo'),
    );
  }
  buildCounterBackupFile--;
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

core.int buildCounterCertChain = 0;
api.CertChain buildCertChain() {
  final o = api.CertChain();
  buildCounterCertChain++;
  if (buildCounterCertChain < 3) {
    o.certificates = buildUnnamed1();
  }
  buildCounterCertChain--;
  return o;
}

void checkCertChain(api.CertChain o) {
  buildCounterCertChain++;
  if (buildCounterCertChain < 3) {
    checkUnnamed1(o.certificates!);
  }
  buildCounterCertChain--;
}

core.int buildCounterCertificateAuthority = 0;
api.CertificateAuthority buildCertificateAuthority() {
  final o = api.CertificateAuthority();
  buildCounterCertificateAuthority++;
  if (buildCounterCertificateAuthority < 3) {
    o.managedServerCa = buildManagedCertificateAuthority();
    o.name = 'foo';
  }
  buildCounterCertificateAuthority--;
  return o;
}

void checkCertificateAuthority(api.CertificateAuthority o) {
  buildCounterCertificateAuthority++;
  if (buildCounterCertificateAuthority < 3) {
    checkManagedCertificateAuthority(o.managedServerCa!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterCertificateAuthority--;
}

core.List<api.ClusterEndpoint> buildUnnamed2() => [
      buildClusterEndpoint(),
      buildClusterEndpoint(),
    ];

void checkUnnamed2(core.List<api.ClusterEndpoint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkClusterEndpoint(o[0]);
  checkClusterEndpoint(o[1]);
}

core.List<api.DiscoveryEndpoint> buildUnnamed3() => [
      buildDiscoveryEndpoint(),
      buildDiscoveryEndpoint(),
    ];

void checkUnnamed3(core.List<api.DiscoveryEndpoint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDiscoveryEndpoint(o[0]);
  checkDiscoveryEndpoint(o[1]);
}

core.List<api.PscConfig> buildUnnamed4() => [
      buildPscConfig(),
      buildPscConfig(),
    ];

void checkUnnamed4(core.List<api.PscConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPscConfig(o[0]);
  checkPscConfig(o[1]);
}

core.List<api.PscConnection> buildUnnamed5() => [
      buildPscConnection(),
      buildPscConnection(),
    ];

void checkUnnamed5(core.List<api.PscConnection> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPscConnection(o[0]);
  checkPscConnection(o[1]);
}

core.List<api.PscServiceAttachment> buildUnnamed6() => [
      buildPscServiceAttachment(),
      buildPscServiceAttachment(),
    ];

void checkUnnamed6(core.List<api.PscServiceAttachment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPscServiceAttachment(o[0]);
  checkPscServiceAttachment(o[1]);
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

core.int buildCounterCluster = 0;
api.Cluster buildCluster() {
  final o = api.Cluster();
  buildCounterCluster++;
  if (buildCounterCluster < 3) {
    o.asyncClusterEndpointsDeletionEnabled = true;
    o.authorizationMode = 'foo';
    o.automatedBackupConfig = buildAutomatedBackupConfig();
    o.backupCollection = 'foo';
    o.clusterEndpoints = buildUnnamed2();
    o.createTime = 'foo';
    o.crossClusterReplicationConfig = buildCrossClusterReplicationConfig();
    o.deletionProtectionEnabled = true;
    o.discoveryEndpoints = buildUnnamed3();
    o.encryptionInfo = buildEncryptionInfo();
    o.gcsSource = buildGcsBackupSource();
    o.kmsKey = 'foo';
    o.maintenancePolicy = buildClusterMaintenancePolicy();
    o.maintenanceSchedule = buildClusterMaintenanceSchedule();
    o.managedBackupSource = buildManagedBackupSource();
    o.name = 'foo';
    o.nodeType = 'foo';
    o.ondemandMaintenance = true;
    o.persistenceConfig = buildClusterPersistenceConfig();
    o.preciseSizeGb = 42.0;
    o.pscConfigs = buildUnnamed4();
    o.pscConnections = buildUnnamed5();
    o.pscServiceAttachments = buildUnnamed6();
    o.redisConfigs = buildUnnamed7();
    o.replicaCount = 42;
    o.shardCount = 42;
    o.sizeGb = 42;
    o.state = 'foo';
    o.stateInfo = buildStateInfo();
    o.transitEncryptionMode = 'foo';
    o.uid = 'foo';
    o.zoneDistributionConfig = buildZoneDistributionConfig();
  }
  buildCounterCluster--;
  return o;
}

void checkCluster(api.Cluster o) {
  buildCounterCluster++;
  if (buildCounterCluster < 3) {
    unittest.expect(o.asyncClusterEndpointsDeletionEnabled!, unittest.isTrue);
    unittest.expect(
      o.authorizationMode!,
      unittest.equals('foo'),
    );
    checkAutomatedBackupConfig(o.automatedBackupConfig!);
    unittest.expect(
      o.backupCollection!,
      unittest.equals('foo'),
    );
    checkUnnamed2(o.clusterEndpoints!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkCrossClusterReplicationConfig(o.crossClusterReplicationConfig!);
    unittest.expect(o.deletionProtectionEnabled!, unittest.isTrue);
    checkUnnamed3(o.discoveryEndpoints!);
    checkEncryptionInfo(o.encryptionInfo!);
    checkGcsBackupSource(o.gcsSource!);
    unittest.expect(
      o.kmsKey!,
      unittest.equals('foo'),
    );
    checkClusterMaintenancePolicy(o.maintenancePolicy!);
    checkClusterMaintenanceSchedule(o.maintenanceSchedule!);
    checkManagedBackupSource(o.managedBackupSource!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nodeType!,
      unittest.equals('foo'),
    );
    unittest.expect(o.ondemandMaintenance!, unittest.isTrue);
    checkClusterPersistenceConfig(o.persistenceConfig!);
    unittest.expect(
      o.preciseSizeGb!,
      unittest.equals(42.0),
    );
    checkUnnamed4(o.pscConfigs!);
    checkUnnamed5(o.pscConnections!);
    checkUnnamed6(o.pscServiceAttachments!);
    checkUnnamed7(o.redisConfigs!);
    unittest.expect(
      o.replicaCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.shardCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.sizeGb!,
      unittest.equals(42),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    checkStateInfo(o.stateInfo!);
    unittest.expect(
      o.transitEncryptionMode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uid!,
      unittest.equals('foo'),
    );
    checkZoneDistributionConfig(o.zoneDistributionConfig!);
  }
  buildCounterCluster--;
}

core.List<api.ConnectionDetail> buildUnnamed8() => [
      buildConnectionDetail(),
      buildConnectionDetail(),
    ];

void checkUnnamed8(core.List<api.ConnectionDetail> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConnectionDetail(o[0]);
  checkConnectionDetail(o[1]);
}

core.int buildCounterClusterEndpoint = 0;
api.ClusterEndpoint buildClusterEndpoint() {
  final o = api.ClusterEndpoint();
  buildCounterClusterEndpoint++;
  if (buildCounterClusterEndpoint < 3) {
    o.connections = buildUnnamed8();
  }
  buildCounterClusterEndpoint--;
  return o;
}

void checkClusterEndpoint(api.ClusterEndpoint o) {
  buildCounterClusterEndpoint++;
  if (buildCounterClusterEndpoint < 3) {
    checkUnnamed8(o.connections!);
  }
  buildCounterClusterEndpoint--;
}

core.List<api.ClusterWeeklyMaintenanceWindow> buildUnnamed9() => [
      buildClusterWeeklyMaintenanceWindow(),
      buildClusterWeeklyMaintenanceWindow(),
    ];

void checkUnnamed9(core.List<api.ClusterWeeklyMaintenanceWindow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkClusterWeeklyMaintenanceWindow(o[0]);
  checkClusterWeeklyMaintenanceWindow(o[1]);
}

core.int buildCounterClusterMaintenancePolicy = 0;
api.ClusterMaintenancePolicy buildClusterMaintenancePolicy() {
  final o = api.ClusterMaintenancePolicy();
  buildCounterClusterMaintenancePolicy++;
  if (buildCounterClusterMaintenancePolicy < 3) {
    o.createTime = 'foo';
    o.updateTime = 'foo';
    o.weeklyMaintenanceWindow = buildUnnamed9();
  }
  buildCounterClusterMaintenancePolicy--;
  return o;
}

void checkClusterMaintenancePolicy(api.ClusterMaintenancePolicy o) {
  buildCounterClusterMaintenancePolicy++;
  if (buildCounterClusterMaintenancePolicy < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
    checkUnnamed9(o.weeklyMaintenanceWindow!);
  }
  buildCounterClusterMaintenancePolicy--;
}

core.int buildCounterClusterMaintenanceSchedule = 0;
api.ClusterMaintenanceSchedule buildClusterMaintenanceSchedule() {
  final o = api.ClusterMaintenanceSchedule();
  buildCounterClusterMaintenanceSchedule++;
  if (buildCounterClusterMaintenanceSchedule < 3) {
    o.endTime = 'foo';
    o.startTime = 'foo';
  }
  buildCounterClusterMaintenanceSchedule--;
  return o;
}

void checkClusterMaintenanceSchedule(api.ClusterMaintenanceSchedule o) {
  buildCounterClusterMaintenanceSchedule++;
  if (buildCounterClusterMaintenanceSchedule < 3) {
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterClusterMaintenanceSchedule--;
}

core.int buildCounterClusterPersistenceConfig = 0;
api.ClusterPersistenceConfig buildClusterPersistenceConfig() {
  final o = api.ClusterPersistenceConfig();
  buildCounterClusterPersistenceConfig++;
  if (buildCounterClusterPersistenceConfig < 3) {
    o.aofConfig = buildAOFConfig();
    o.mode = 'foo';
    o.rdbConfig = buildRDBConfig();
  }
  buildCounterClusterPersistenceConfig--;
  return o;
}

void checkClusterPersistenceConfig(api.ClusterPersistenceConfig o) {
  buildCounterClusterPersistenceConfig++;
  if (buildCounterClusterPersistenceConfig < 3) {
    checkAOFConfig(o.aofConfig!);
    unittest.expect(
      o.mode!,
      unittest.equals('foo'),
    );
    checkRDBConfig(o.rdbConfig!);
  }
  buildCounterClusterPersistenceConfig--;
}

core.int buildCounterClusterWeeklyMaintenanceWindow = 0;
api.ClusterWeeklyMaintenanceWindow buildClusterWeeklyMaintenanceWindow() {
  final o = api.ClusterWeeklyMaintenanceWindow();
  buildCounterClusterWeeklyMaintenanceWindow++;
  if (buildCounterClusterWeeklyMaintenanceWindow < 3) {
    o.day = 'foo';
    o.startTime = buildTimeOfDay();
  }
  buildCounterClusterWeeklyMaintenanceWindow--;
  return o;
}

void checkClusterWeeklyMaintenanceWindow(api.ClusterWeeklyMaintenanceWindow o) {
  buildCounterClusterWeeklyMaintenanceWindow++;
  if (buildCounterClusterWeeklyMaintenanceWindow < 3) {
    unittest.expect(
      o.day!,
      unittest.equals('foo'),
    );
    checkTimeOfDay(o.startTime!);
  }
  buildCounterClusterWeeklyMaintenanceWindow--;
}

core.int buildCounterConnectionDetail = 0;
api.ConnectionDetail buildConnectionDetail() {
  final o = api.ConnectionDetail();
  buildCounterConnectionDetail++;
  if (buildCounterConnectionDetail < 3) {
    o.pscAutoConnection = buildPscAutoConnection();
    o.pscConnection = buildPscConnection();
  }
  buildCounterConnectionDetail--;
  return o;
}

void checkConnectionDetail(api.ConnectionDetail o) {
  buildCounterConnectionDetail++;
  if (buildCounterConnectionDetail < 3) {
    checkPscAutoConnection(o.pscAutoConnection!);
    checkPscConnection(o.pscConnection!);
  }
  buildCounterConnectionDetail--;
}

core.List<api.RemoteCluster> buildUnnamed10() => [
      buildRemoteCluster(),
      buildRemoteCluster(),
    ];

void checkUnnamed10(core.List<api.RemoteCluster> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRemoteCluster(o[0]);
  checkRemoteCluster(o[1]);
}

core.int buildCounterCrossClusterReplicationConfig = 0;
api.CrossClusterReplicationConfig buildCrossClusterReplicationConfig() {
  final o = api.CrossClusterReplicationConfig();
  buildCounterCrossClusterReplicationConfig++;
  if (buildCounterCrossClusterReplicationConfig < 3) {
    o.clusterRole = 'foo';
    o.membership = buildMembership();
    o.primaryCluster = buildRemoteCluster();
    o.secondaryClusters = buildUnnamed10();
    o.updateTime = 'foo';
  }
  buildCounterCrossClusterReplicationConfig--;
  return o;
}

void checkCrossClusterReplicationConfig(api.CrossClusterReplicationConfig o) {
  buildCounterCrossClusterReplicationConfig++;
  if (buildCounterCrossClusterReplicationConfig < 3) {
    unittest.expect(
      o.clusterRole!,
      unittest.equals('foo'),
    );
    checkMembership(o.membership!);
    checkRemoteCluster(o.primaryCluster!);
    checkUnnamed10(o.secondaryClusters!);
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterCrossClusterReplicationConfig--;
}

core.int buildCounterDiscoveryEndpoint = 0;
api.DiscoveryEndpoint buildDiscoveryEndpoint() {
  final o = api.DiscoveryEndpoint();
  buildCounterDiscoveryEndpoint++;
  if (buildCounterDiscoveryEndpoint < 3) {
    o.address = 'foo';
    o.port = 42;
    o.pscConfig = buildPscConfig();
  }
  buildCounterDiscoveryEndpoint--;
  return o;
}

void checkDiscoveryEndpoint(api.DiscoveryEndpoint o) {
  buildCounterDiscoveryEndpoint++;
  if (buildCounterDiscoveryEndpoint < 3) {
    unittest.expect(
      o.address!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.port!,
      unittest.equals(42),
    );
    checkPscConfig(o.pscConfig!);
  }
  buildCounterDiscoveryEndpoint--;
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

core.int buildCounterEncryptionInfo = 0;
api.EncryptionInfo buildEncryptionInfo() {
  final o = api.EncryptionInfo();
  buildCounterEncryptionInfo++;
  if (buildCounterEncryptionInfo < 3) {
    o.encryptionType = 'foo';
    o.kmsKeyPrimaryState = 'foo';
    o.kmsKeyVersions = buildUnnamed11();
    o.lastUpdateTime = 'foo';
  }
  buildCounterEncryptionInfo--;
  return o;
}

void checkEncryptionInfo(api.EncryptionInfo o) {
  buildCounterEncryptionInfo++;
  if (buildCounterEncryptionInfo < 3) {
    unittest.expect(
      o.encryptionType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kmsKeyPrimaryState!,
      unittest.equals('foo'),
    );
    checkUnnamed11(o.kmsKeyVersions!);
    unittest.expect(
      o.lastUpdateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterEncryptionInfo--;
}

core.int buildCounterExportBackupRequest = 0;
api.ExportBackupRequest buildExportBackupRequest() {
  final o = api.ExportBackupRequest();
  buildCounterExportBackupRequest++;
  if (buildCounterExportBackupRequest < 3) {
    o.gcsBucket = 'foo';
  }
  buildCounterExportBackupRequest--;
  return o;
}

void checkExportBackupRequest(api.ExportBackupRequest o) {
  buildCounterExportBackupRequest++;
  if (buildCounterExportBackupRequest < 3) {
    unittest.expect(
      o.gcsBucket!,
      unittest.equals('foo'),
    );
  }
  buildCounterExportBackupRequest--;
}

core.int buildCounterExportInstanceRequest = 0;
api.ExportInstanceRequest buildExportInstanceRequest() {
  final o = api.ExportInstanceRequest();
  buildCounterExportInstanceRequest++;
  if (buildCounterExportInstanceRequest < 3) {
    o.outputConfig = buildOutputConfig();
  }
  buildCounterExportInstanceRequest--;
  return o;
}

void checkExportInstanceRequest(api.ExportInstanceRequest o) {
  buildCounterExportInstanceRequest++;
  if (buildCounterExportInstanceRequest < 3) {
    checkOutputConfig(o.outputConfig!);
  }
  buildCounterExportInstanceRequest--;
}

core.int buildCounterFailoverInstanceRequest = 0;
api.FailoverInstanceRequest buildFailoverInstanceRequest() {
  final o = api.FailoverInstanceRequest();
  buildCounterFailoverInstanceRequest++;
  if (buildCounterFailoverInstanceRequest < 3) {
    o.dataProtectionMode = 'foo';
  }
  buildCounterFailoverInstanceRequest--;
  return o;
}

void checkFailoverInstanceRequest(api.FailoverInstanceRequest o) {
  buildCounterFailoverInstanceRequest++;
  if (buildCounterFailoverInstanceRequest < 3) {
    unittest.expect(
      o.dataProtectionMode!,
      unittest.equals('foo'),
    );
  }
  buildCounterFailoverInstanceRequest--;
}

core.int buildCounterFixedFrequencySchedule = 0;
api.FixedFrequencySchedule buildFixedFrequencySchedule() {
  final o = api.FixedFrequencySchedule();
  buildCounterFixedFrequencySchedule++;
  if (buildCounterFixedFrequencySchedule < 3) {
    o.startTime = buildTimeOfDay();
  }
  buildCounterFixedFrequencySchedule--;
  return o;
}

void checkFixedFrequencySchedule(api.FixedFrequencySchedule o) {
  buildCounterFixedFrequencySchedule++;
  if (buildCounterFixedFrequencySchedule < 3) {
    checkTimeOfDay(o.startTime!);
  }
  buildCounterFixedFrequencySchedule--;
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

core.int buildCounterGcsBackupSource = 0;
api.GcsBackupSource buildGcsBackupSource() {
  final o = api.GcsBackupSource();
  buildCounterGcsBackupSource++;
  if (buildCounterGcsBackupSource < 3) {
    o.uris = buildUnnamed12();
  }
  buildCounterGcsBackupSource--;
  return o;
}

void checkGcsBackupSource(api.GcsBackupSource o) {
  buildCounterGcsBackupSource++;
  if (buildCounterGcsBackupSource < 3) {
    checkUnnamed12(o.uris!);
  }
  buildCounterGcsBackupSource--;
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
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGcsDestination--;
}

core.int buildCounterGcsSource = 0;
api.GcsSource buildGcsSource() {
  final o = api.GcsSource();
  buildCounterGcsSource++;
  if (buildCounterGcsSource < 3) {
    o.uri = 'foo';
  }
  buildCounterGcsSource--;
  return o;
}

void checkGcsSource(api.GcsSource o) {
  buildCounterGcsSource++;
  if (buildCounterGcsSource < 3) {
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGcsSource--;
}

core.int buildCounterImportInstanceRequest = 0;
api.ImportInstanceRequest buildImportInstanceRequest() {
  final o = api.ImportInstanceRequest();
  buildCounterImportInstanceRequest++;
  if (buildCounterImportInstanceRequest < 3) {
    o.inputConfig = buildInputConfig();
  }
  buildCounterImportInstanceRequest--;
  return o;
}

void checkImportInstanceRequest(api.ImportInstanceRequest o) {
  buildCounterImportInstanceRequest++;
  if (buildCounterImportInstanceRequest < 3) {
    checkInputConfig(o.inputConfig!);
  }
  buildCounterImportInstanceRequest--;
}

core.int buildCounterInputConfig = 0;
api.InputConfig buildInputConfig() {
  final o = api.InputConfig();
  buildCounterInputConfig++;
  if (buildCounterInputConfig < 3) {
    o.gcsSource = buildGcsSource();
  }
  buildCounterInputConfig--;
  return o;
}

void checkInputConfig(api.InputConfig o) {
  buildCounterInputConfig++;
  if (buildCounterInputConfig < 3) {
    checkGcsSource(o.gcsSource!);
  }
  buildCounterInputConfig--;
}

core.List<core.String> buildUnnamed13() => [
      'foo',
      'foo',
    ];

void checkUnnamed13(core.List<core.String> o) {
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

core.Map<core.String, core.String> buildUnnamed14() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed14(core.Map<core.String, core.String> o) {
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

core.List<api.NodeInfo> buildUnnamed15() => [
      buildNodeInfo(),
      buildNodeInfo(),
    ];

void checkUnnamed15(core.List<api.NodeInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNodeInfo(o[0]);
  checkNodeInfo(o[1]);
}

core.Map<core.String, core.String> buildUnnamed16() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed16(core.Map<core.String, core.String> o) {
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

core.List<api.TlsCertificate> buildUnnamed17() => [
      buildTlsCertificate(),
      buildTlsCertificate(),
    ];

void checkUnnamed17(core.List<api.TlsCertificate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTlsCertificate(o[0]);
  checkTlsCertificate(o[1]);
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

core.int buildCounterInstance = 0;
api.Instance buildInstance() {
  final o = api.Instance();
  buildCounterInstance++;
  if (buildCounterInstance < 3) {
    o.alternativeLocationId = 'foo';
    o.authEnabled = true;
    o.authorizedNetwork = 'foo';
    o.availableMaintenanceVersions = buildUnnamed13();
    o.connectMode = 'foo';
    o.createTime = 'foo';
    o.currentLocationId = 'foo';
    o.customerManagedKey = 'foo';
    o.displayName = 'foo';
    o.host = 'foo';
    o.labels = buildUnnamed14();
    o.locationId = 'foo';
    o.maintenancePolicy = buildMaintenancePolicy();
    o.maintenanceSchedule = buildMaintenanceSchedule();
    o.maintenanceVersion = 'foo';
    o.memorySizeGb = 42;
    o.name = 'foo';
    o.nodes = buildUnnamed15();
    o.persistenceConfig = buildPersistenceConfig();
    o.persistenceIamIdentity = 'foo';
    o.port = 42;
    o.readEndpoint = 'foo';
    o.readEndpointPort = 42;
    o.readReplicasMode = 'foo';
    o.redisConfigs = buildUnnamed16();
    o.redisVersion = 'foo';
    o.replicaCount = 42;
    o.reservedIpRange = 'foo';
    o.satisfiesPzi = true;
    o.satisfiesPzs = true;
    o.secondaryIpRange = 'foo';
    o.serverCaCerts = buildUnnamed17();
    o.state = 'foo';
    o.statusMessage = 'foo';
    o.suspensionReasons = buildUnnamed18();
    o.tier = 'foo';
    o.transitEncryptionMode = 'foo';
  }
  buildCounterInstance--;
  return o;
}

void checkInstance(api.Instance o) {
  buildCounterInstance++;
  if (buildCounterInstance < 3) {
    unittest.expect(
      o.alternativeLocationId!,
      unittest.equals('foo'),
    );
    unittest.expect(o.authEnabled!, unittest.isTrue);
    unittest.expect(
      o.authorizedNetwork!,
      unittest.equals('foo'),
    );
    checkUnnamed13(o.availableMaintenanceVersions!);
    unittest.expect(
      o.connectMode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.currentLocationId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.customerManagedKey!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.host!,
      unittest.equals('foo'),
    );
    checkUnnamed14(o.labels!);
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
    checkMaintenancePolicy(o.maintenancePolicy!);
    checkMaintenanceSchedule(o.maintenanceSchedule!);
    unittest.expect(
      o.maintenanceVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.memorySizeGb!,
      unittest.equals(42),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed15(o.nodes!);
    checkPersistenceConfig(o.persistenceConfig!);
    unittest.expect(
      o.persistenceIamIdentity!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.port!,
      unittest.equals(42),
    );
    unittest.expect(
      o.readEndpoint!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.readEndpointPort!,
      unittest.equals(42),
    );
    unittest.expect(
      o.readReplicasMode!,
      unittest.equals('foo'),
    );
    checkUnnamed16(o.redisConfigs!);
    unittest.expect(
      o.redisVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.replicaCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.reservedIpRange!,
      unittest.equals('foo'),
    );
    unittest.expect(o.satisfiesPzi!, unittest.isTrue);
    unittest.expect(o.satisfiesPzs!, unittest.isTrue);
    unittest.expect(
      o.secondaryIpRange!,
      unittest.equals('foo'),
    );
    checkUnnamed17(o.serverCaCerts!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.statusMessage!,
      unittest.equals('foo'),
    );
    checkUnnamed18(o.suspensionReasons!);
    unittest.expect(
      o.tier!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.transitEncryptionMode!,
      unittest.equals('foo'),
    );
  }
  buildCounterInstance--;
}

core.int buildCounterInstanceAuthString = 0;
api.InstanceAuthString buildInstanceAuthString() {
  final o = api.InstanceAuthString();
  buildCounterInstanceAuthString++;
  if (buildCounterInstanceAuthString < 3) {
    o.authString = 'foo';
  }
  buildCounterInstanceAuthString--;
  return o;
}

void checkInstanceAuthString(api.InstanceAuthString o) {
  buildCounterInstanceAuthString++;
  if (buildCounterInstanceAuthString < 3) {
    unittest.expect(
      o.authString!,
      unittest.equals('foo'),
    );
  }
  buildCounterInstanceAuthString--;
}

core.List<api.BackupCollection> buildUnnamed19() => [
      buildBackupCollection(),
      buildBackupCollection(),
    ];

void checkUnnamed19(core.List<api.BackupCollection> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBackupCollection(o[0]);
  checkBackupCollection(o[1]);
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

core.int buildCounterListBackupCollectionsResponse = 0;
api.ListBackupCollectionsResponse buildListBackupCollectionsResponse() {
  final o = api.ListBackupCollectionsResponse();
  buildCounterListBackupCollectionsResponse++;
  if (buildCounterListBackupCollectionsResponse < 3) {
    o.backupCollections = buildUnnamed19();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed20();
  }
  buildCounterListBackupCollectionsResponse--;
  return o;
}

void checkListBackupCollectionsResponse(api.ListBackupCollectionsResponse o) {
  buildCounterListBackupCollectionsResponse++;
  if (buildCounterListBackupCollectionsResponse < 3) {
    checkUnnamed19(o.backupCollections!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed20(o.unreachable!);
  }
  buildCounterListBackupCollectionsResponse--;
}

core.List<api.Backup> buildUnnamed21() => [
      buildBackup(),
      buildBackup(),
    ];

void checkUnnamed21(core.List<api.Backup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBackup(o[0]);
  checkBackup(o[1]);
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
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed22(o.unreachable!);
  }
  buildCounterListBackupsResponse--;
}

core.List<api.Cluster> buildUnnamed23() => [
      buildCluster(),
      buildCluster(),
    ];

void checkUnnamed23(core.List<api.Cluster> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCluster(o[0]);
  checkCluster(o[1]);
}

core.List<core.String> buildUnnamed24() => [
      'foo',
      'foo',
    ];

void checkUnnamed24(core.List<core.String> o) {
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
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed24(o.unreachable!);
  }
  buildCounterListClustersResponse--;
}

core.List<api.Instance> buildUnnamed25() => [
      buildInstance(),
      buildInstance(),
    ];

void checkUnnamed25(core.List<api.Instance> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInstance(o[0]);
  checkInstance(o[1]);
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
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed26(o.unreachable!);
  }
  buildCounterListInstancesResponse--;
}

core.List<api.Location> buildUnnamed27() => [
      buildLocation(),
      buildLocation(),
    ];

void checkUnnamed27(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  final o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed27();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed27(o.locations!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListLocationsResponse--;
}

core.List<api.Operation> buildUnnamed28() => [
      buildOperation(),
      buildOperation(),
    ];

void checkUnnamed28(core.List<api.Operation> o) {
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
    o.operations = buildUnnamed28();
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
    checkUnnamed28(o.operations!);
  }
  buildCounterListOperationsResponse--;
}

core.Map<core.String, core.String> buildUnnamed29() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed29(core.Map<core.String, core.String> o) {
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

core.Map<core.String, core.Object?> buildUnnamed30() => {
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

void checkUnnamed30(core.Map<core.String, core.Object?> o) {
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
    o.labels = buildUnnamed29();
    o.locationId = 'foo';
    o.metadata = buildUnnamed30();
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
    checkUnnamed29(o.labels!);
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
    checkUnnamed30(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterLocation--;
}

core.List<api.WeeklyMaintenanceWindow> buildUnnamed31() => [
      buildWeeklyMaintenanceWindow(),
      buildWeeklyMaintenanceWindow(),
    ];

void checkUnnamed31(core.List<api.WeeklyMaintenanceWindow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWeeklyMaintenanceWindow(o[0]);
  checkWeeklyMaintenanceWindow(o[1]);
}

core.int buildCounterMaintenancePolicy = 0;
api.MaintenancePolicy buildMaintenancePolicy() {
  final o = api.MaintenancePolicy();
  buildCounterMaintenancePolicy++;
  if (buildCounterMaintenancePolicy < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.updateTime = 'foo';
    o.weeklyMaintenanceWindow = buildUnnamed31();
  }
  buildCounterMaintenancePolicy--;
  return o;
}

void checkMaintenancePolicy(api.MaintenancePolicy o) {
  buildCounterMaintenancePolicy++;
  if (buildCounterMaintenancePolicy < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
    checkUnnamed31(o.weeklyMaintenanceWindow!);
  }
  buildCounterMaintenancePolicy--;
}

core.int buildCounterMaintenanceSchedule = 0;
api.MaintenanceSchedule buildMaintenanceSchedule() {
  final o = api.MaintenanceSchedule();
  buildCounterMaintenanceSchedule++;
  if (buildCounterMaintenanceSchedule < 3) {
    o.canReschedule = true;
    o.endTime = 'foo';
    o.scheduleDeadlineTime = 'foo';
    o.startTime = 'foo';
  }
  buildCounterMaintenanceSchedule--;
  return o;
}

void checkMaintenanceSchedule(api.MaintenanceSchedule o) {
  buildCounterMaintenanceSchedule++;
  if (buildCounterMaintenanceSchedule < 3) {
    unittest.expect(o.canReschedule!, unittest.isTrue);
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.scheduleDeadlineTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterMaintenanceSchedule--;
}

core.int buildCounterManagedBackupSource = 0;
api.ManagedBackupSource buildManagedBackupSource() {
  final o = api.ManagedBackupSource();
  buildCounterManagedBackupSource++;
  if (buildCounterManagedBackupSource < 3) {
    o.backup = 'foo';
  }
  buildCounterManagedBackupSource--;
  return o;
}

void checkManagedBackupSource(api.ManagedBackupSource o) {
  buildCounterManagedBackupSource++;
  if (buildCounterManagedBackupSource < 3) {
    unittest.expect(
      o.backup!,
      unittest.equals('foo'),
    );
  }
  buildCounterManagedBackupSource--;
}

core.List<api.CertChain> buildUnnamed32() => [
      buildCertChain(),
      buildCertChain(),
    ];

void checkUnnamed32(core.List<api.CertChain> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCertChain(o[0]);
  checkCertChain(o[1]);
}

core.int buildCounterManagedCertificateAuthority = 0;
api.ManagedCertificateAuthority buildManagedCertificateAuthority() {
  final o = api.ManagedCertificateAuthority();
  buildCounterManagedCertificateAuthority++;
  if (buildCounterManagedCertificateAuthority < 3) {
    o.caCerts = buildUnnamed32();
  }
  buildCounterManagedCertificateAuthority--;
  return o;
}

void checkManagedCertificateAuthority(api.ManagedCertificateAuthority o) {
  buildCounterManagedCertificateAuthority++;
  if (buildCounterManagedCertificateAuthority < 3) {
    checkUnnamed32(o.caCerts!);
  }
  buildCounterManagedCertificateAuthority--;
}

core.List<api.RemoteCluster> buildUnnamed33() => [
      buildRemoteCluster(),
      buildRemoteCluster(),
    ];

void checkUnnamed33(core.List<api.RemoteCluster> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRemoteCluster(o[0]);
  checkRemoteCluster(o[1]);
}

core.int buildCounterMembership = 0;
api.Membership buildMembership() {
  final o = api.Membership();
  buildCounterMembership++;
  if (buildCounterMembership < 3) {
    o.primaryCluster = buildRemoteCluster();
    o.secondaryClusters = buildUnnamed33();
  }
  buildCounterMembership--;
  return o;
}

void checkMembership(api.Membership o) {
  buildCounterMembership++;
  if (buildCounterMembership < 3) {
    checkRemoteCluster(o.primaryCluster!);
    checkUnnamed33(o.secondaryClusters!);
  }
  buildCounterMembership--;
}

core.int buildCounterNodeInfo = 0;
api.NodeInfo buildNodeInfo() {
  final o = api.NodeInfo();
  buildCounterNodeInfo++;
  if (buildCounterNodeInfo < 3) {
    o.id = 'foo';
    o.zone = 'foo';
  }
  buildCounterNodeInfo--;
  return o;
}

void checkNodeInfo(api.NodeInfo o) {
  buildCounterNodeInfo++;
  if (buildCounterNodeInfo < 3) {
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.zone!,
      unittest.equals('foo'),
    );
  }
  buildCounterNodeInfo--;
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
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed35(o.response!);
  }
  buildCounterOperation--;
}

core.int buildCounterOutputConfig = 0;
api.OutputConfig buildOutputConfig() {
  final o = api.OutputConfig();
  buildCounterOutputConfig++;
  if (buildCounterOutputConfig < 3) {
    o.gcsDestination = buildGcsDestination();
  }
  buildCounterOutputConfig--;
  return o;
}

void checkOutputConfig(api.OutputConfig o) {
  buildCounterOutputConfig++;
  if (buildCounterOutputConfig < 3) {
    checkGcsDestination(o.gcsDestination!);
  }
  buildCounterOutputConfig--;
}

core.int buildCounterPersistenceConfig = 0;
api.PersistenceConfig buildPersistenceConfig() {
  final o = api.PersistenceConfig();
  buildCounterPersistenceConfig++;
  if (buildCounterPersistenceConfig < 3) {
    o.persistenceMode = 'foo';
    o.rdbNextSnapshotTime = 'foo';
    o.rdbSnapshotPeriod = 'foo';
    o.rdbSnapshotStartTime = 'foo';
  }
  buildCounterPersistenceConfig--;
  return o;
}

void checkPersistenceConfig(api.PersistenceConfig o) {
  buildCounterPersistenceConfig++;
  if (buildCounterPersistenceConfig < 3) {
    unittest.expect(
      o.persistenceMode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rdbNextSnapshotTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rdbSnapshotPeriod!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rdbSnapshotStartTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterPersistenceConfig--;
}

core.int buildCounterPscAutoConnection = 0;
api.PscAutoConnection buildPscAutoConnection() {
  final o = api.PscAutoConnection();
  buildCounterPscAutoConnection++;
  if (buildCounterPscAutoConnection < 3) {
    o.address = 'foo';
    o.connectionType = 'foo';
    o.forwardingRule = 'foo';
    o.network = 'foo';
    o.projectId = 'foo';
    o.pscConnectionId = 'foo';
    o.pscConnectionStatus = 'foo';
    o.serviceAttachment = 'foo';
  }
  buildCounterPscAutoConnection--;
  return o;
}

void checkPscAutoConnection(api.PscAutoConnection o) {
  buildCounterPscAutoConnection++;
  if (buildCounterPscAutoConnection < 3) {
    unittest.expect(
      o.address!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.connectionType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.forwardingRule!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.network!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pscConnectionId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pscConnectionStatus!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serviceAttachment!,
      unittest.equals('foo'),
    );
  }
  buildCounterPscAutoConnection--;
}

core.int buildCounterPscConfig = 0;
api.PscConfig buildPscConfig() {
  final o = api.PscConfig();
  buildCounterPscConfig++;
  if (buildCounterPscConfig < 3) {
    o.network = 'foo';
  }
  buildCounterPscConfig--;
  return o;
}

void checkPscConfig(api.PscConfig o) {
  buildCounterPscConfig++;
  if (buildCounterPscConfig < 3) {
    unittest.expect(
      o.network!,
      unittest.equals('foo'),
    );
  }
  buildCounterPscConfig--;
}

core.int buildCounterPscConnection = 0;
api.PscConnection buildPscConnection() {
  final o = api.PscConnection();
  buildCounterPscConnection++;
  if (buildCounterPscConnection < 3) {
    o.address = 'foo';
    o.connectionType = 'foo';
    o.forwardingRule = 'foo';
    o.network = 'foo';
    o.port = 42;
    o.projectId = 'foo';
    o.pscConnectionId = 'foo';
    o.pscConnectionStatus = 'foo';
    o.serviceAttachment = 'foo';
  }
  buildCounterPscConnection--;
  return o;
}

void checkPscConnection(api.PscConnection o) {
  buildCounterPscConnection++;
  if (buildCounterPscConnection < 3) {
    unittest.expect(
      o.address!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.connectionType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.forwardingRule!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.network!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.port!,
      unittest.equals(42),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pscConnectionId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pscConnectionStatus!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serviceAttachment!,
      unittest.equals('foo'),
    );
  }
  buildCounterPscConnection--;
}

core.int buildCounterPscServiceAttachment = 0;
api.PscServiceAttachment buildPscServiceAttachment() {
  final o = api.PscServiceAttachment();
  buildCounterPscServiceAttachment++;
  if (buildCounterPscServiceAttachment < 3) {
    o.connectionType = 'foo';
    o.serviceAttachment = 'foo';
  }
  buildCounterPscServiceAttachment--;
  return o;
}

void checkPscServiceAttachment(api.PscServiceAttachment o) {
  buildCounterPscServiceAttachment++;
  if (buildCounterPscServiceAttachment < 3) {
    unittest.expect(
      o.connectionType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serviceAttachment!,
      unittest.equals('foo'),
    );
  }
  buildCounterPscServiceAttachment--;
}

core.int buildCounterRDBConfig = 0;
api.RDBConfig buildRDBConfig() {
  final o = api.RDBConfig();
  buildCounterRDBConfig++;
  if (buildCounterRDBConfig < 3) {
    o.rdbSnapshotPeriod = 'foo';
    o.rdbSnapshotStartTime = 'foo';
  }
  buildCounterRDBConfig--;
  return o;
}

void checkRDBConfig(api.RDBConfig o) {
  buildCounterRDBConfig++;
  if (buildCounterRDBConfig < 3) {
    unittest.expect(
      o.rdbSnapshotPeriod!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rdbSnapshotStartTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterRDBConfig--;
}

core.int buildCounterRemoteCluster = 0;
api.RemoteCluster buildRemoteCluster() {
  final o = api.RemoteCluster();
  buildCounterRemoteCluster++;
  if (buildCounterRemoteCluster < 3) {
    o.cluster = 'foo';
    o.uid = 'foo';
  }
  buildCounterRemoteCluster--;
  return o;
}

void checkRemoteCluster(api.RemoteCluster o) {
  buildCounterRemoteCluster++;
  if (buildCounterRemoteCluster < 3) {
    unittest.expect(
      o.cluster!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uid!,
      unittest.equals('foo'),
    );
  }
  buildCounterRemoteCluster--;
}

core.int buildCounterRescheduleClusterMaintenanceRequest = 0;
api.RescheduleClusterMaintenanceRequest
    buildRescheduleClusterMaintenanceRequest() {
  final o = api.RescheduleClusterMaintenanceRequest();
  buildCounterRescheduleClusterMaintenanceRequest++;
  if (buildCounterRescheduleClusterMaintenanceRequest < 3) {
    o.rescheduleType = 'foo';
    o.scheduleTime = 'foo';
  }
  buildCounterRescheduleClusterMaintenanceRequest--;
  return o;
}

void checkRescheduleClusterMaintenanceRequest(
    api.RescheduleClusterMaintenanceRequest o) {
  buildCounterRescheduleClusterMaintenanceRequest++;
  if (buildCounterRescheduleClusterMaintenanceRequest < 3) {
    unittest.expect(
      o.rescheduleType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.scheduleTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterRescheduleClusterMaintenanceRequest--;
}

core.int buildCounterRescheduleMaintenanceRequest = 0;
api.RescheduleMaintenanceRequest buildRescheduleMaintenanceRequest() {
  final o = api.RescheduleMaintenanceRequest();
  buildCounterRescheduleMaintenanceRequest++;
  if (buildCounterRescheduleMaintenanceRequest < 3) {
    o.rescheduleType = 'foo';
    o.scheduleTime = 'foo';
  }
  buildCounterRescheduleMaintenanceRequest--;
  return o;
}

void checkRescheduleMaintenanceRequest(api.RescheduleMaintenanceRequest o) {
  buildCounterRescheduleMaintenanceRequest++;
  if (buildCounterRescheduleMaintenanceRequest < 3) {
    unittest.expect(
      o.rescheduleType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.scheduleTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterRescheduleMaintenanceRequest--;
}

core.int buildCounterStateInfo = 0;
api.StateInfo buildStateInfo() {
  final o = api.StateInfo();
  buildCounterStateInfo++;
  if (buildCounterStateInfo < 3) {
    o.updateInfo = buildUpdateInfo();
  }
  buildCounterStateInfo--;
  return o;
}

void checkStateInfo(api.StateInfo o) {
  buildCounterStateInfo++;
  if (buildCounterStateInfo < 3) {
    checkUpdateInfo(o.updateInfo!);
  }
  buildCounterStateInfo--;
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed37() => [
      buildUnnamed36(),
      buildUnnamed36(),
    ];

void checkUnnamed37(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed36(o[0]);
  checkUnnamed36(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed37();
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
    checkUnnamed37(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
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
    unittest.expect(
      o.hours!,
      unittest.equals(42),
    );
    unittest.expect(
      o.minutes!,
      unittest.equals(42),
    );
    unittest.expect(
      o.nanos!,
      unittest.equals(42),
    );
    unittest.expect(
      o.seconds!,
      unittest.equals(42),
    );
  }
  buildCounterTimeOfDay--;
}

core.int buildCounterTlsCertificate = 0;
api.TlsCertificate buildTlsCertificate() {
  final o = api.TlsCertificate();
  buildCounterTlsCertificate++;
  if (buildCounterTlsCertificate < 3) {
    o.cert = 'foo';
    o.createTime = 'foo';
    o.expireTime = 'foo';
    o.serialNumber = 'foo';
    o.sha1Fingerprint = 'foo';
  }
  buildCounterTlsCertificate--;
  return o;
}

void checkTlsCertificate(api.TlsCertificate o) {
  buildCounterTlsCertificate++;
  if (buildCounterTlsCertificate < 3) {
    unittest.expect(
      o.cert!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expireTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serialNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sha1Fingerprint!,
      unittest.equals('foo'),
    );
  }
  buildCounterTlsCertificate--;
}

core.int buildCounterUpdateInfo = 0;
api.UpdateInfo buildUpdateInfo() {
  final o = api.UpdateInfo();
  buildCounterUpdateInfo++;
  if (buildCounterUpdateInfo < 3) {
    o.targetNodeType = 'foo';
    o.targetReplicaCount = 42;
    o.targetShardCount = 42;
  }
  buildCounterUpdateInfo--;
  return o;
}

void checkUpdateInfo(api.UpdateInfo o) {
  buildCounterUpdateInfo++;
  if (buildCounterUpdateInfo < 3) {
    unittest.expect(
      o.targetNodeType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.targetReplicaCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.targetShardCount!,
      unittest.equals(42),
    );
  }
  buildCounterUpdateInfo--;
}

core.int buildCounterUpgradeInstanceRequest = 0;
api.UpgradeInstanceRequest buildUpgradeInstanceRequest() {
  final o = api.UpgradeInstanceRequest();
  buildCounterUpgradeInstanceRequest++;
  if (buildCounterUpgradeInstanceRequest < 3) {
    o.redisVersion = 'foo';
  }
  buildCounterUpgradeInstanceRequest--;
  return o;
}

void checkUpgradeInstanceRequest(api.UpgradeInstanceRequest o) {
  buildCounterUpgradeInstanceRequest++;
  if (buildCounterUpgradeInstanceRequest < 3) {
    unittest.expect(
      o.redisVersion!,
      unittest.equals('foo'),
    );
  }
  buildCounterUpgradeInstanceRequest--;
}

core.int buildCounterWeeklyMaintenanceWindow = 0;
api.WeeklyMaintenanceWindow buildWeeklyMaintenanceWindow() {
  final o = api.WeeklyMaintenanceWindow();
  buildCounterWeeklyMaintenanceWindow++;
  if (buildCounterWeeklyMaintenanceWindow < 3) {
    o.day = 'foo';
    o.duration = 'foo';
    o.startTime = buildTimeOfDay();
  }
  buildCounterWeeklyMaintenanceWindow--;
  return o;
}

void checkWeeklyMaintenanceWindow(api.WeeklyMaintenanceWindow o) {
  buildCounterWeeklyMaintenanceWindow++;
  if (buildCounterWeeklyMaintenanceWindow < 3) {
    unittest.expect(
      o.day!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.duration!,
      unittest.equals('foo'),
    );
    checkTimeOfDay(o.startTime!);
  }
  buildCounterWeeklyMaintenanceWindow--;
}

core.int buildCounterZoneDistributionConfig = 0;
api.ZoneDistributionConfig buildZoneDistributionConfig() {
  final o = api.ZoneDistributionConfig();
  buildCounterZoneDistributionConfig++;
  if (buildCounterZoneDistributionConfig < 3) {
    o.mode = 'foo';
    o.zone = 'foo';
  }
  buildCounterZoneDistributionConfig--;
  return o;
}

void checkZoneDistributionConfig(api.ZoneDistributionConfig o) {
  buildCounterZoneDistributionConfig++;
  if (buildCounterZoneDistributionConfig < 3) {
    unittest.expect(
      o.mode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.zone!,
      unittest.equals('foo'),
    );
  }
  buildCounterZoneDistributionConfig--;
}

void main() {
  unittest.group('obj-schema-AOFConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAOFConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.AOFConfig.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAOFConfig(od);
    });
  });

  unittest.group('obj-schema-AutomatedBackupConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAutomatedBackupConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AutomatedBackupConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAutomatedBackupConfig(od);
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

  unittest.group('obj-schema-BackupClusterRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBackupClusterRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BackupClusterRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBackupClusterRequest(od);
    });
  });

  unittest.group('obj-schema-BackupCollection', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBackupCollection();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BackupCollection.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBackupCollection(od);
    });
  });

  unittest.group('obj-schema-BackupFile', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBackupFile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.BackupFile.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkBackupFile(od);
    });
  });

  unittest.group('obj-schema-CertChain', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCertChain();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.CertChain.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCertChain(od);
    });
  });

  unittest.group('obj-schema-CertificateAuthority', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCertificateAuthority();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CertificateAuthority.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCertificateAuthority(od);
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

  unittest.group('obj-schema-ClusterEndpoint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClusterEndpoint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ClusterEndpoint.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkClusterEndpoint(od);
    });
  });

  unittest.group('obj-schema-ClusterMaintenancePolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClusterMaintenancePolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ClusterMaintenancePolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkClusterMaintenancePolicy(od);
    });
  });

  unittest.group('obj-schema-ClusterMaintenanceSchedule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClusterMaintenanceSchedule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ClusterMaintenanceSchedule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkClusterMaintenanceSchedule(od);
    });
  });

  unittest.group('obj-schema-ClusterPersistenceConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClusterPersistenceConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ClusterPersistenceConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkClusterPersistenceConfig(od);
    });
  });

  unittest.group('obj-schema-ClusterWeeklyMaintenanceWindow', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClusterWeeklyMaintenanceWindow();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ClusterWeeklyMaintenanceWindow.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkClusterWeeklyMaintenanceWindow(od);
    });
  });

  unittest.group('obj-schema-ConnectionDetail', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConnectionDetail();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConnectionDetail.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConnectionDetail(od);
    });
  });

  unittest.group('obj-schema-CrossClusterReplicationConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCrossClusterReplicationConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CrossClusterReplicationConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCrossClusterReplicationConfig(od);
    });
  });

  unittest.group('obj-schema-DiscoveryEndpoint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDiscoveryEndpoint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DiscoveryEndpoint.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDiscoveryEndpoint(od);
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

  unittest.group('obj-schema-EncryptionInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEncryptionInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EncryptionInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEncryptionInfo(od);
    });
  });

  unittest.group('obj-schema-ExportBackupRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExportBackupRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExportBackupRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExportBackupRequest(od);
    });
  });

  unittest.group('obj-schema-ExportInstanceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExportInstanceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExportInstanceRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExportInstanceRequest(od);
    });
  });

  unittest.group('obj-schema-FailoverInstanceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFailoverInstanceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FailoverInstanceRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFailoverInstanceRequest(od);
    });
  });

  unittest.group('obj-schema-FixedFrequencySchedule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFixedFrequencySchedule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FixedFrequencySchedule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFixedFrequencySchedule(od);
    });
  });

  unittest.group('obj-schema-GcsBackupSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGcsBackupSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GcsBackupSource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGcsBackupSource(od);
    });
  });

  unittest.group('obj-schema-GcsDestination', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGcsDestination();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GcsDestination.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGcsDestination(od);
    });
  });

  unittest.group('obj-schema-GcsSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGcsSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GcsSource.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGcsSource(od);
    });
  });

  unittest.group('obj-schema-ImportInstanceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImportInstanceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImportInstanceRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkImportInstanceRequest(od);
    });
  });

  unittest.group('obj-schema-InputConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInputConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InputConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInputConfig(od);
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

  unittest.group('obj-schema-InstanceAuthString', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInstanceAuthString();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InstanceAuthString.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInstanceAuthString(od);
    });
  });

  unittest.group('obj-schema-ListBackupCollectionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListBackupCollectionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListBackupCollectionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListBackupCollectionsResponse(od);
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

  unittest.group('obj-schema-Location', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Location.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLocation(od);
    });
  });

  unittest.group('obj-schema-MaintenancePolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMaintenancePolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MaintenancePolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMaintenancePolicy(od);
    });
  });

  unittest.group('obj-schema-MaintenanceSchedule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMaintenanceSchedule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MaintenanceSchedule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMaintenanceSchedule(od);
    });
  });

  unittest.group('obj-schema-ManagedBackupSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildManagedBackupSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ManagedBackupSource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkManagedBackupSource(od);
    });
  });

  unittest.group('obj-schema-ManagedCertificateAuthority', () {
    unittest.test('to-json--from-json', () async {
      final o = buildManagedCertificateAuthority();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ManagedCertificateAuthority.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkManagedCertificateAuthority(od);
    });
  });

  unittest.group('obj-schema-Membership', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMembership();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Membership.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMembership(od);
    });
  });

  unittest.group('obj-schema-NodeInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNodeInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.NodeInfo.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkNodeInfo(od);
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

  unittest.group('obj-schema-OutputConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOutputConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OutputConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOutputConfig(od);
    });
  });

  unittest.group('obj-schema-PersistenceConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPersistenceConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PersistenceConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPersistenceConfig(od);
    });
  });

  unittest.group('obj-schema-PscAutoConnection', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPscAutoConnection();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PscAutoConnection.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPscAutoConnection(od);
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

  unittest.group('obj-schema-PscConnection', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPscConnection();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PscConnection.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPscConnection(od);
    });
  });

  unittest.group('obj-schema-PscServiceAttachment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPscServiceAttachment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PscServiceAttachment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPscServiceAttachment(od);
    });
  });

  unittest.group('obj-schema-RDBConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRDBConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.RDBConfig.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkRDBConfig(od);
    });
  });

  unittest.group('obj-schema-RemoteCluster', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRemoteCluster();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RemoteCluster.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRemoteCluster(od);
    });
  });

  unittest.group('obj-schema-RescheduleClusterMaintenanceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRescheduleClusterMaintenanceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RescheduleClusterMaintenanceRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRescheduleClusterMaintenanceRequest(od);
    });
  });

  unittest.group('obj-schema-RescheduleMaintenanceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRescheduleMaintenanceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RescheduleMaintenanceRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRescheduleMaintenanceRequest(od);
    });
  });

  unittest.group('obj-schema-StateInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStateInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.StateInfo.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkStateInfo(od);
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

  unittest.group('obj-schema-TimeOfDay', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTimeOfDay();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.TimeOfDay.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTimeOfDay(od);
    });
  });

  unittest.group('obj-schema-TlsCertificate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTlsCertificate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TlsCertificate.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTlsCertificate(od);
    });
  });

  unittest.group('obj-schema-UpdateInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.UpdateInfo.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkUpdateInfo(od);
    });
  });

  unittest.group('obj-schema-UpgradeInstanceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpgradeInstanceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpgradeInstanceRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpgradeInstanceRequest(od);
    });
  });

  unittest.group('obj-schema-WeeklyMaintenanceWindow', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWeeklyMaintenanceWindow();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WeeklyMaintenanceWindow.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWeeklyMaintenanceWindow(od);
    });
  });

  unittest.group('obj-schema-ZoneDistributionConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildZoneDistributionConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ZoneDistributionConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkZoneDistributionConfig(od);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudRedisApi(mock).projects.locations;
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
      final res = api.CloudRedisApi(mock).projects.locations;
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

  unittest.group('resource-ProjectsLocationsBackupCollectionsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudRedisApi(mock).projects.locations.backupCollections;
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
        final resp = convert.json.encode(buildBackupCollection());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkBackupCollection(response as api.BackupCollection);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudRedisApi(mock).projects.locations.backupCollections;
      final arg_parent = 'foo';
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
        final resp = convert.json.encode(buildListBackupCollectionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListBackupCollectionsResponse(
          response as api.ListBackupCollectionsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsBackupCollectionsBackupsResource',
      () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudRedisApi(mock).projects.locations.backupCollections.backups;
      final arg_name = 'foo';
      final arg_requestId = 'foo';
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
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
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
      final response = await res.delete(arg_name,
          requestId: arg_requestId, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--export', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudRedisApi(mock).projects.locations.backupCollections.backups;
      final arg_request = buildExportBackupRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ExportBackupRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkExportBackupRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
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
          await res.export(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudRedisApi(mock).projects.locations.backupCollections.backups;
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
          api.CloudRedisApi(mock).projects.locations.backupCollections.backups;
      final arg_parent = 'foo';
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
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListBackupsResponse(response as api.ListBackupsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsClustersResource', () {
    unittest.test('method--backup', () async {
      final mock = HttpServerMock();
      final res = api.CloudRedisApi(mock).projects.locations.clusters;
      final arg_request = buildBackupClusterRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BackupClusterRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBackupClusterRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
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
          await res.backup(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudRedisApi(mock).projects.locations.clusters;
      final arg_request = buildCluster();
      final arg_parent = 'foo';
      final arg_clusterId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Cluster.fromJson(json as core.Map<core.String, core.dynamic>);
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
          clusterId: arg_clusterId,
          requestId: arg_requestId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudRedisApi(mock).projects.locations.clusters;
      final arg_name = 'foo';
      final arg_requestId = 'foo';
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
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
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
      final response = await res.delete(arg_name,
          requestId: arg_requestId, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudRedisApi(mock).projects.locations.clusters;
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
        final resp = convert.json.encode(buildCluster());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkCluster(response as api.Cluster);
    });

    unittest.test('method--getCertificateAuthority', () async {
      final mock = HttpServerMock();
      final res = api.CloudRedisApi(mock).projects.locations.clusters;
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
        final resp = convert.json.encode(buildCertificateAuthority());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.getCertificateAuthority(arg_name, $fields: arg_$fields);
      checkCertificateAuthority(response as api.CertificateAuthority);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudRedisApi(mock).projects.locations.clusters;
      final arg_parent = 'foo';
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
        final resp = convert.json.encode(buildListClustersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListClustersResponse(response as api.ListClustersResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CloudRedisApi(mock).projects.locations.clusters;
      final arg_request = buildCluster();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Cluster.fromJson(json as core.Map<core.String, core.dynamic>);
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          requestId: arg_requestId,
          updateMask: arg_updateMask,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--rescheduleClusterMaintenance', () async {
      final mock = HttpServerMock();
      final res = api.CloudRedisApi(mock).projects.locations.clusters;
      final arg_request = buildRescheduleClusterMaintenanceRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RescheduleClusterMaintenanceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRescheduleClusterMaintenanceRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
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
      final response = await res.rescheduleClusterMaintenance(
          arg_request, arg_name,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsInstancesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudRedisApi(mock).projects.locations.instances;
      final arg_request = buildInstance();
      final arg_parent = 'foo';
      final arg_instanceId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Instance.fromJson(json as core.Map<core.String, core.dynamic>);
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
          instanceId: arg_instanceId, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudRedisApi(mock).projects.locations.instances;
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

    unittest.test('method--export', () async {
      final mock = HttpServerMock();
      final res = api.CloudRedisApi(mock).projects.locations.instances;
      final arg_request = buildExportInstanceRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ExportInstanceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkExportInstanceRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
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
          await res.export(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--failover', () async {
      final mock = HttpServerMock();
      final res = api.CloudRedisApi(mock).projects.locations.instances;
      final arg_request = buildFailoverInstanceRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.FailoverInstanceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.failover(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudRedisApi(mock).projects.locations.instances;
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
        final resp = convert.json.encode(buildInstance());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkInstance(response as api.Instance);
    });

    unittest.test('method--getAuthString', () async {
      final mock = HttpServerMock();
      final res = api.CloudRedisApi(mock).projects.locations.instances;
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
        final resp = convert.json.encode(buildInstanceAuthString());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getAuthString(arg_name, $fields: arg_$fields);
      checkInstanceAuthString(response as api.InstanceAuthString);
    });

    unittest.test('method--import', () async {
      final mock = HttpServerMock();
      final res = api.CloudRedisApi(mock).projects.locations.instances;
      final arg_request = buildImportInstanceRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ImportInstanceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkImportInstanceRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
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
          await res.import(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudRedisApi(mock).projects.locations.instances;
      final arg_parent = 'foo';
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
        final resp = convert.json.encode(buildListInstancesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListInstancesResponse(response as api.ListInstancesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CloudRedisApi(mock).projects.locations.instances;
      final arg_request = buildInstance();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Instance.fromJson(json as core.Map<core.String, core.dynamic>);
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

    unittest.test('method--rescheduleMaintenance', () async {
      final mock = HttpServerMock();
      final res = api.CloudRedisApi(mock).projects.locations.instances;
      final arg_request = buildRescheduleMaintenanceRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RescheduleMaintenanceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRescheduleMaintenanceRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
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
      final response = await res.rescheduleMaintenance(arg_request, arg_name,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--upgrade', () async {
      final mock = HttpServerMock();
      final res = api.CloudRedisApi(mock).projects.locations.instances;
      final arg_request = buildUpgradeInstanceRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.UpgradeInstanceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUpgradeInstanceRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
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
          await res.upgrade(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.CloudRedisApi(mock).projects.locations.operations;
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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.cancel(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudRedisApi(mock).projects.locations.operations;
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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudRedisApi(mock).projects.locations.operations;
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
      final res = api.CloudRedisApi(mock).projects.locations.operations;
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
}
